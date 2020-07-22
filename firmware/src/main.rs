#![no_main]
#![no_std]

use panic_itm as _;

use stm32f4xx_hal::prelude::*;
use stm32f4xx_hal::stm32;

#[cortex_m_rt::entry]
fn main() -> ! {
    let peripherals = stm32::Peripherals::take().unwrap();
    let core_peripherals = cortex_m::Peripherals::take().unwrap();

    let clocks = peripherals
        .RCC
        .constrain()
        .cfgr
        .use_hse(8.mhz())
        .sysclk(168.mhz())
        .freeze();

    let portd = peripherals.GPIOD.split();
    let mut led = portd.pd13.into_push_pull_output();
    let mut delay = stm32f4xx_hal::delay::Delay::new(core_peripherals.SYST, clocks);

    loop {
        led.set_high().unwrap();
        delay.delay_ms(250u8);
        led.set_low().unwrap();
        delay.delay_ms(250u8);
    }
}
