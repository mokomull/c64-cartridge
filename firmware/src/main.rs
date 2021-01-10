#![no_main]
#![no_std]

use panic_itm as _;

use static_assertions::const_assert;
use stm32f4xx_hal::prelude::*;
use stm32f4xx_hal::stm32;

enum DataBus {
    Listen,
    Drive,
}

static FROGGER: &[u8; 8192] = include_bytes!("frogger.img");

#[cortex_m_rt::entry]
fn main() -> ! {
    let mut peripherals = stm32::Peripherals::take().unwrap();
    let core_peripherals = cortex_m::Peripherals::take().unwrap();

    let clocks = peripherals
        .RCC
        .constrain()
        .cfgr
        .use_hse(8.mhz())
        .sysclk(168.mhz())
        .freeze();

    // enable the GPIO blocks I'll be using
    {
        // SAFETY: nothing else is running yet, and I'm not changing the clock speed out from under
        // the PLL settings we just set.
        let rcc = unsafe { &*stm32::RCC::ptr() };
        rcc.ahb1enr.modify(|_r, w| {
            w.gpioaen().set_bit();
            w.gpioben().set_bit();
            w.gpiocen().set_bit()
        });
    }

    let frogger_cache: [u8; 8192] = FROGGER.clone();
    const_assert!(8192 == (0x9fff - 0x8000 + 1));
    let frogger: *const u8 = &frogger_cache[0];

    setup_cartridge(
        &mut peripherals.GPIOA,
        &mut peripherals.GPIOB,
        &mut peripherals.GPIOC,
    );

    // turn on the green LED to show we're ready to go
    let gpiod = peripherals.GPIOD.split();
    let mut green_led = gpiod.pd12.into_push_pull_output();
    green_led.set_high().unwrap();

    loop {
        // wait for #ROMH to go low
        while !is_rom_request(&peripherals.GPIOB) {}

        // the top 16 bits are "reserved" per the datasheet
        let address: u16 = peripherals.GPIOC.idr.read().bits() as u16;

        if (0x8000..=0x9fff).contains(&address) {
            // mix the top byte of the address so I can at least check the results
            let data: u8 =
                unsafe { core::ptr::read_volatile(frogger.offset(address as isize & !0x8000)) };
            drive_data_bus(&mut peripherals.GPIOA, &mut peripherals.GPIOB, data);
        }

        // stop driving the bus once it's no longer our turn
        while is_rom_request(&peripherals.GPIOB) {}
        setup_direction(
            &mut peripherals.GPIOA,
            &mut peripherals.GPIOB,
            DataBus::Listen,
        );
    }
}

fn setup_cartridge(gpioa: &mut stm32::GPIOA, gpiob: &mut stm32::GPIOB, gpioc: &mut stm32::GPIOC) {
    // port C is the entire address bus.  It is all inputs.
    gpioc.moder.write(|w| {
        use stm32::gpioi::moder::MODER15_A::INPUT;
        w.moder0().variant(INPUT);
        w.moder1().variant(INPUT);
        w.moder2().variant(INPUT);
        w.moder3().variant(INPUT);
        w.moder4().variant(INPUT);
        w.moder5().variant(INPUT);
        w.moder6().variant(INPUT);
        w.moder7().variant(INPUT);
        w.moder8().variant(INPUT);
        w.moder9().variant(INPUT);
        w.moder10().variant(INPUT);
        w.moder11().variant(INPUT);
        w.moder12().variant(INPUT);
        w.moder13().variant(INPUT);
        w.moder14().variant(INPUT);
        w.moder15().variant(INPUT)
    });

    // setup #EXROM values before setting drive, to avoid flappy values
    gpiob.bsrr.write(|w| {
        w.br6().set_bit() // but do assert #EXROM to get 0x8000..=0xBFFF mapped
    });

    // now set up the control and data bus lines
    setup_direction(gpioa, gpiob, DataBus::Listen);
}

fn setup_direction(gpioa: &mut stm32::GPIOA, gpiob: &mut stm32::GPIOB, direction: DataBus) {
    // a bit janky -- this is a two-element tuple because the port A and port B types are different,
    // even though the bit field is exactly the same
    let (data_dir_a, data_dir_b) = match direction {
        DataBus::Listen => (
            stm32::gpioa::moder::MODER15_A::INPUT,
            stm32::gpiob::moder::MODER15_A::INPUT,
        ),
        DataBus::Drive => (
            stm32::gpioa::moder::MODER15_A::OUTPUT,
            stm32::gpiob::moder::MODER15_A::OUTPUT,
        ),
    };

    gpioa.moder.write(|w| {
        use stm32::gpioa::moder::MODER15_A::*;
        w.moder0().variant(data_dir_a);
        w.moder1().variant(data_dir_a);
        w.moder2().variant(data_dir_a);
        w.moder3().variant(data_dir_a);
        w.moder4().variant(INPUT);
        w.moder5().variant(INPUT);
        w.moder6().variant(data_dir_a);
        w.moder7().variant(data_dir_a);
        w.moder8().variant(INPUT); // unused
        w.moder9().variant(INPUT); // TODO: USB VBUS
        w.moder10().variant(INPUT); // unused
        w.moder11().variant(INPUT); // TODO: USB D-
        w.moder12().variant(INPUT); // TODO: USB D+
        w.moder13().variant(ALTERNATE); // TMS
        w.moder14().variant(ALTERNATE); // TCK
        w.moder15().variant(ALTERNATE) // TDI
    });
    gpiob.moder.write(|w| {
        use stm32::gpiob::moder::MODER15_A::*;
        w.moder0().variant(data_dir_b); // bits 4 and 5 from the data bus
        w.moder1().variant(data_dir_b);
        w.moder2().variant(INPUT); // NMI
        w.moder3().variant(ALTERNATE); // TDO
        w.moder4().variant(ALTERNATE); // #JTRST
        w.moder5().variant(INPUT); // C64: #GAME - tri-state is pulled-up inside the C64
        w.moder6().variant(OUTPUT); // C64: #EXROM
        w.moder7().variant(INPUT); // C64: #RESET
        w.moder8().variant(INPUT); // C64: #IRO
        w.moder9().variant(INPUT); // C64: #ROMH
        w.moder10().variant(INPUT); // C64: #ROML
        w.moder11().variant(INPUT); // unused
        w.moder12().variant(INPUT); // C64: #IO1
        w.moder13().variant(INPUT); // C64: #IO2
        w.moder14().variant(INPUT); // C64: R/#W
        w.moder15().variant(INPUT) // C64: PHI2
    });
}

fn is_rom_request(gpiob: &stm32::GPIOB) -> bool {
    let bits = gpiob.idr.read();
    // let phi2 = bits.idr15().bit();
    let roml = bits.idr10().bit();
    let r_notw = bits.idr14().bit();

    r_notw && !roml
}

fn drive_data_bus(gpioa: &mut stm32::GPIOA, gpiob: &mut stm32::GPIOB, data: u8) {
    // SAFETY: the bits of GPIO port A are either the data bus (in the right bit positions), unconnected, or
    // configured as alternate functions (and thus not affected by the ODR)
    gpioa.odr.write(|w| unsafe { w.bits(data as u32) });

    // but we need to extract bits 4 and 5, and not disturb the other control bits that are being
    // output (particularly, #GAME and #EXROM)
    let data4: bool = data & (1 << 4) != 0;
    let data5: bool = data & (1 << 5) != 0;
    gpiob.odr.modify(|_r, w| {
        w.odr0().bit(data4);
        w.odr1().bit(data5)
    });

    setup_direction(gpioa, gpiob, DataBus::Drive);
}
