EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 2850 4800 2    50   ~ 0
A0
Text Label 2850 4700 2    50   ~ 0
A1
Text Label 2850 4600 2    50   ~ 0
A2
Text Label 2850 4500 2    50   ~ 0
A3
Text Label 2850 4400 2    50   ~ 0
A4
Text Label 2850 4300 2    50   ~ 0
A5
Text Label 2850 4200 2    50   ~ 0
A6
Text Label 2850 4100 2    50   ~ 0
A7
Text Label 2850 4000 2    50   ~ 0
A8
Text Label 2850 3900 2    50   ~ 0
A9
Text Label 2850 3800 2    50   ~ 0
A10
Text Label 2850 3700 2    50   ~ 0
A11
Text Label 2850 3600 2    50   ~ 0
A12
Text Label 2850 3500 2    50   ~ 0
A13
Text Label 2850 3400 2    50   ~ 0
A14
Text Label 2850 3300 2    50   ~ 0
A15
Entry Wire Line
	2850 4800 2950 4900
Entry Wire Line
	2850 4700 2950 4800
Entry Wire Line
	2850 4600 2950 4700
Entry Wire Line
	2850 4500 2950 4600
Entry Wire Line
	2850 4400 2950 4500
Entry Wire Line
	2850 4300 2950 4400
Entry Wire Line
	2850 4200 2950 4300
Entry Wire Line
	2850 4100 2950 4200
Entry Wire Line
	2850 4000 2950 4100
Entry Wire Line
	2850 3900 2950 4000
Entry Wire Line
	2850 3800 2950 3900
Entry Wire Line
	2850 3800 2950 3900
Entry Wire Line
	2850 3700 2950 3800
Entry Wire Line
	2850 3600 2950 3700
Entry Wire Line
	2850 3500 2950 3600
Entry Wire Line
	2850 3400 2950 3500
Entry Wire Line
	2850 3300 2950 3400
Text Label 2850 4900 2    50   ~ 0
GND
Entry Wire Line
	2850 4900 2950 5000
Text Label 2850 3200 2    50   ~ 0
PHI2
Entry Wire Line
	2850 3200 2950 3300
Text Label 1350 4800 0    50   ~ 0
D0
Text Label 1350 4700 0    50   ~ 0
D1
Text Label 1350 4600 0    50   ~ 0
D2
Text Label 1350 4500 0    50   ~ 0
D3
Text Label 1350 4400 0    50   ~ 0
D4
Text Label 1350 4300 0    50   ~ 0
D5
Text Label 1350 4200 0    50   ~ 0
D6
Text Label 1350 4100 0    50   ~ 0
D7
Entry Wire Line
	1250 4900 1350 4800
Entry Wire Line
	1250 4800 1350 4700
Entry Wire Line
	1250 4700 1350 4600
Entry Wire Line
	1250 4600 1350 4500
Entry Wire Line
	1250 4500 1350 4400
Entry Wire Line
	1250 4400 1350 4300
Entry Wire Line
	1250 4300 1350 4200
Entry Wire Line
	1250 4200 1350 4100
Text Label 2850 2900 2    50   ~ 0
_ROMH
Entry Wire Line
	2950 3000 2850 2900
Text Label 2850 2800 2    50   ~ 0
GND
Text Label 1350 4900 0    50   ~ 0
GND
Entry Wire Line
	1350 4900 1250 5000
Entry Wire Line
	2950 2900 2850 2800
$Comp
L Commodore:Expansion_Cartridge J1
U 1 1 5EDDBBBA
P 2250 3800
F 0 "J1" H 2300 5017 50  0000 C CNN
F 1 "Expansion_Cartridge" H 2300 4926 50  0000 C CNN
F 2 "" H 2250 3800 50  0001 C CNN
F 3 "~" H 2250 3800 50  0001 C CNN
	1    2250 3800
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MIC5504-3.3YM5 U2
U 1 1 5EE1E9B2
P 1450 1500
F 0 "U2" H 1450 1867 50  0000 C CNN
F 1 "MIC5504-3.3YM5" H 1450 1776 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1450 1100 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC550X.pdf" H 1200 1750 50  0001 C CNN
	1    1450 1500
	1    0    0    -1  
$EndComp
Entry Wire Line
	1150 2900 1250 3000
Text Label 1150 2900 2    50   ~ 0
5VDC
$Comp
L power:GND #PWR0101
U 1 1 5EE2CA5F
P 2000 4900
F 0 "#PWR0101" H 2000 4650 50  0001 C CNN
F 1 "GND" H 2005 4727 50  0000 C CNN
F 2 "" H 2000 4900 50  0001 C CNN
F 3 "" H 2000 4900 50  0001 C CNN
	1    2000 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5EE37897
P 950 2800
F 0 "#PWR0102" H 950 2650 50  0001 C CNN
F 1 "+5V" H 965 2973 50  0000 C CNN
F 2 "" H 950 2800 50  0001 C CNN
F 3 "" H 950 2800 50  0001 C CNN
	1    950  2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5EE38269
P 750 1200
F 0 "#PWR0103" H 750 1050 50  0001 C CNN
F 1 "+5V" H 765 1373 50  0000 C CNN
F 2 "" H 750 1200 50  0001 C CNN
F 3 "" H 750 1200 50  0001 C CNN
	1    750  1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5EE3BDCA
P 2150 1200
F 0 "#PWR0104" H 2150 1050 50  0001 C CNN
F 1 "+3.3V" H 2165 1373 50  0000 C CNN
F 2 "" H 2150 1200 50  0001 C CNN
F 3 "" H 2150 1200 50  0001 C CNN
	1    2150 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EE41128
P 1450 1800
F 0 "#PWR0105" H 1450 1550 50  0001 C CNN
F 1 "GND" H 1455 1627 50  0000 C CNN
F 2 "" H 1450 1800 50  0001 C CNN
F 3 "" H 1450 1800 50  0001 C CNN
	1    1450 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5EE42D99
P 750 1550
F 0 "C2" H 865 1596 50  0000 L CNN
F 1 "1u" H 865 1505 50  0000 L CNN
F 2 "" H 788 1400 50  0001 C CNN
F 3 "~" H 750 1550 50  0001 C CNN
	1    750  1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5EE436C8
P 2150 1550
F 0 "C3" H 2265 1596 50  0000 L CNN
F 1 "1u" H 2265 1505 50  0000 L CNN
F 2 "" H 2188 1400 50  0001 C CNN
F 3 "~" H 2150 1550 50  0001 C CNN
	1    2150 1550
	1    0    0    -1  
$EndComp
Entry Wire Line
	5500 3400 5600 3300
Entry Wire Line
	5500 3500 5600 3400
Entry Wire Line
	5500 3600 5600 3500
Entry Wire Line
	5500 3700 5600 3600
Entry Wire Line
	5500 3800 5600 3700
Entry Wire Line
	5500 3900 5600 3800
Entry Wire Line
	5500 4000 5600 3900
Entry Wire Line
	5500 4100 5600 4000
Text Label 5600 3300 0    50   ~ 0
A0
Text Label 5600 3400 0    50   ~ 0
A1
Text Label 5600 3500 0    50   ~ 0
A2
Text Label 5600 3600 0    50   ~ 0
A3
Text Label 5600 3700 0    50   ~ 0
A4
Text Label 5600 3800 0    50   ~ 0
A5
Text Label 5600 3900 0    50   ~ 0
A6
Text Label 5600 4000 0    50   ~ 0
A7
Entry Wire Line
	5500 4200 5600 4100
Entry Wire Line
	5500 4300 5600 4200
Entry Wire Line
	5500 4400 5600 4300
Entry Wire Line
	5500 4500 5600 4400
Entry Wire Line
	5500 4600 5600 4500
Text Label 5600 4100 0    50   ~ 0
A8
Text Label 5600 4200 0    50   ~ 0
A9
Text Label 5600 4300 0    50   ~ 0
A10
Text Label 5600 4400 0    50   ~ 0
A11
Text Label 5600 4500 0    50   ~ 0
A12
$Comp
L MCU_ST_STM32F4:STM32F446RCTx U1
U 1 1 5EE6A02E
P 6600 3200
F 0 "U1" H 6600 1311 50  0000 C CNN
F 1 "STM32F446RCTx" H 6600 1220 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 6000 1500 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00141306.pdf" H 6600 3200 50  0001 C CNN
	1    6600 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5EE6FB65
P 7200 5000
F 0 "#PWR0106" H 7200 4750 50  0001 C CNN
F 1 "GND" H 7205 4827 50  0000 C CNN
F 2 "" H 7200 5000 50  0001 C CNN
F 3 "" H 7200 5000 50  0001 C CNN
	1    7200 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 5EE726C9
P 6700 1500
F 0 "#PWR0107" H 6700 1350 50  0001 C CNN
F 1 "+3.3V" H 6715 1673 50  0000 C CNN
F 2 "" H 6700 1500 50  0001 C CNN
F 3 "" H 6700 1500 50  0001 C CNN
	1    6700 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5EE90F77
P 9000 2150
F 0 "#PWR0108" H 9000 1900 50  0001 C CNN
F 1 "GND" H 9005 1977 50  0000 C CNN
F 2 "" H 9000 2150 50  0001 C CNN
F 3 "" H 9000 2150 50  0001 C CNN
	1    9000 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J2
U 1 1 5EE8420B
P 9000 1750
F 0 "J2" H 8770 1739 50  0000 R CNN
F 1 "USB_B_Micro" H 8770 1648 50  0000 R CNN
F 2 "" H 9150 1700 50  0001 C CNN
F 3 "~" H 9150 1700 50  0001 C CNN
	1    9000 1750
	-1   0    0    -1  
$EndComp
Text Notes 7050 7050 0    50   ~ 0
* none of the bypass capacitors exist yet\n* the crystal is chosen at random, series resistance still needs to be evaluated\n* combinatoric logic for "chip enable" doesn't even need to be done - the PLA does that for me\n    as #ROML/#ROMH/#IO1/#IO2\n* still need to figure out BOOT0 and power rail switching if I want USB programming\n* do I want any breakout headers for debugging
$Comp
L power:GND #PWR0109
U 1 1 5EEB8F44
P 9000 3950
F 0 "#PWR0109" H 9000 3700 50  0001 C CNN
F 1 "GND" H 9005 3777 50  0000 C CNN
F 2 "" H 9000 3950 50  0001 C CNN
F 3 "" H 9000 3950 50  0001 C CNN
	1    9000 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5EEB987C
P 5150 2850
F 0 "Y1" V 5104 2981 50  0000 L CNN
F 1 "Crystal" V 5195 2981 50  0000 L CNN
F 2 "" H 5150 2850 50  0001 C CNN
F 3 "~" H 5150 2850 50  0001 C CNN
	1    5150 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5EEC0DF6
P 4800 3100
F 0 "C5" V 4548 3100 50  0000 C CNN
F 1 "C" V 4639 3100 50  0000 C CNN
F 2 "" H 4838 2950 50  0001 C CNN
F 3 "~" H 4800 3100 50  0001 C CNN
	1    4800 3100
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5EEC16A2
P 4800 2600
F 0 "C4" V 4548 2600 50  0000 C CNN
F 1 "C" V 4639 2600 50  0000 C CNN
F 2 "" H 4838 2450 50  0001 C CNN
F 3 "~" H 4800 2600 50  0001 C CNN
	1    4800 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5EECF8D8
P 4450 3000
F 0 "#PWR0110" H 4450 2750 50  0001 C CNN
F 1 "GND" H 4455 2827 50  0000 C CNN
F 2 "" H 4450 3000 50  0001 C CNN
F 3 "" H 4450 3000 50  0001 C CNN
	1    4450 3000
	1    0    0    -1  
$EndComp
Entry Wire Line
	7600 1700 7700 1800
Wire Wire Line
	2550 3300 2850 3300
Wire Wire Line
	2850 3400 2550 3400
Wire Wire Line
	2550 3500 2850 3500
Wire Wire Line
	2850 3600 2550 3600
Wire Wire Line
	2550 3700 2850 3700
Wire Wire Line
	2850 3800 2550 3800
Wire Wire Line
	2550 3900 2850 3900
Wire Wire Line
	2850 4000 2550 4000
Wire Wire Line
	2850 4100 2550 4100
Wire Wire Line
	2550 4200 2850 4200
Wire Wire Line
	2850 4300 2550 4300
Wire Wire Line
	2550 4400 2850 4400
Wire Wire Line
	2850 4500 2550 4500
Wire Wire Line
	2550 4600 2850 4600
Wire Wire Line
	2850 4700 2550 4700
Wire Wire Line
	2850 4800 2550 4800
Wire Wire Line
	2850 4900 2550 4900
Wire Wire Line
	2850 3200 2550 3200
Wire Wire Line
	2550 2900 2850 2900
Wire Wire Line
	2550 2800 2850 2800
Wire Wire Line
	950  2800 950  2900
Wire Wire Line
	750  1400 1050 1400
Wire Wire Line
	750  1200 750  1400
Wire Wire Line
	2150 1200 2150 1400
Wire Wire Line
	2150 1400 1850 1400
Connection ~ 750  1400
Connection ~ 2150 1400
Wire Wire Line
	750  1700 750  1800
Wire Wire Line
	750  1800 1450 1800
Connection ~ 1450 1800
Wire Wire Line
	1450 1800 2150 1800
Wire Wire Line
	2150 1800 2150 1700
Connection ~ 2000 4900
Wire Wire Line
	2000 4900 2050 4900
Wire Wire Line
	6500 1500 6600 1500
Connection ~ 6600 1500
Wire Wire Line
	6600 1500 6700 1500
Connection ~ 6700 1500
Wire Wire Line
	6700 1500 6800 1500
Connection ~ 6800 1500
Wire Wire Line
	6800 1500 6900 1500
Wire Wire Line
	6800 5000 6700 5000
Connection ~ 6600 5000
Wire Wire Line
	6600 5000 6500 5000
Connection ~ 6700 5000
Wire Wire Line
	6700 5000 6600 5000
Connection ~ 6800 5000
Wire Wire Line
	7200 5000 6800 5000
Wire Wire Line
	7300 3000 8200 3000
Wire Wire Line
	8200 3000 8200 3350
Wire Wire Line
	8200 3350 8500 3350
Wire Wire Line
	7300 3100 8300 3100
Wire Wire Line
	8300 3100 8300 3250
Wire Wire Line
	8300 3250 8500 3250
Wire Wire Line
	7300 3200 8100 3200
Wire Wire Line
	8100 3200 8100 3550
Wire Wire Line
	8100 3550 8500 3550
Wire Wire Line
	8300 3700 8300 3450
Wire Wire Line
	8300 3450 8500 3450
Wire Wire Line
	9000 2150 9100 2150
Connection ~ 9000 2150
Wire Wire Line
	5900 2800 5700 2800
Wire Wire Line
	5700 2800 5700 2700
Wire Wire Line
	5700 2700 5150 2700
Wire Wire Line
	5150 3000 5700 3000
Wire Wire Line
	5700 3000 5700 2900
Wire Wire Line
	5700 2900 5900 2900
Wire Wire Line
	4950 3100 4950 3000
Wire Wire Line
	4950 3000 5150 3000
Connection ~ 5150 3000
Wire Wire Line
	5150 2700 4950 2700
Wire Wire Line
	4950 2700 4950 2600
Connection ~ 5150 2700
Wire Wire Line
	4650 2600 4650 2850
Wire Wire Line
	4650 2850 4450 2850
Wire Wire Line
	4450 2850 4450 3000
Connection ~ 4650 2850
Wire Wire Line
	4650 2850 4650 3100
Wire Wire Line
	5600 3300 5900 3300
Wire Wire Line
	5600 3500 5900 3500
Wire Wire Line
	5600 3700 5900 3700
Wire Wire Line
	5600 3900 5900 3900
Wire Wire Line
	5600 4100 5900 4100
Wire Wire Line
	5600 4300 5900 4300
Wire Wire Line
	5600 4500 5900 4500
Connection ~ 5500 5200
Wire Wire Line
	5900 3400 5600 3400
Wire Wire Line
	5900 3600 5600 3600
Wire Wire Line
	5900 3800 5600 3800
Wire Wire Line
	5900 4000 5600 4000
Wire Wire Line
	5900 4200 5600 4200
Wire Wire Line
	5900 4400 5600 4400
Wire Bus Line
	5500 5200 7700 5200
Entry Wire Line
	7600 1800 7700 1900
Entry Wire Line
	7600 1900 7700 2000
Entry Wire Line
	7600 2000 7700 2100
Entry Wire Line
	7600 3500 7700 3400
Entry Wire Line
	7600 2300 7700 2400
Entry Wire Line
	7600 2400 7700 2500
Wire Wire Line
	7600 1700 7300 1700
Wire Wire Line
	7600 1800 7300 1800
Wire Wire Line
	7300 1900 7600 1900
Wire Wire Line
	7600 2000 7300 2000
Wire Wire Line
	7300 2300 7600 2300
Wire Wire Line
	7600 2400 7300 2400
Text Label 7600 1700 2    50   ~ 0
D0
Text Label 7600 1800 2    50   ~ 0
D1
Text Label 7600 1900 2    50   ~ 0
D2
Text Label 7600 2000 2    50   ~ 0
D3
Text Label 7600 3400 2    50   ~ 0
D4
Text Label 7600 3500 2    50   ~ 0
D5
Text Label 7600 2300 2    50   ~ 0
D6
Text Label 7600 2400 2    50   ~ 0
D7
Entry Wire Line
	7600 3400 7700 3300
Wire Wire Line
	7300 3400 7600 3400
Wire Wire Line
	7600 3500 7300 3500
$Comp
L Device:C C1
U 1 1 5EE9FD77
P 5650 2250
F 0 "C1" H 5765 2296 50  0000 L CNN
F 1 "4u7" H 5765 2205 50  0000 L CNN
F 2 "" H 5688 2100 50  0001 C CNN
F 3 "~" H 5650 2250 50  0001 C CNN
	1    5650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2100 5900 2100
$Comp
L power:GND #PWR0111
U 1 1 5EEA598D
P 5650 2400
F 0 "#PWR0111" H 5650 2150 50  0001 C CNN
F 1 "GND" H 5655 2227 50  0000 C CNN
F 2 "" H 5650 2400 50  0001 C CNN
F 3 "" H 5650 2400 50  0001 C CNN
	1    5650 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5000 6500 5000
Connection ~ 6500 5000
NoConn ~ 2050 3900
NoConn ~ 2050 4000
NoConn ~ 2050 3300
Wire Wire Line
	2550 3100 2850 3100
Entry Wire Line
	2850 3100 2950 3200
Entry Wire Line
	2850 3000 2950 3100
Wire Wire Line
	2850 3000 2550 3000
Connection ~ 2950 5200
Wire Bus Line
	2950 5200 5500 5200
Wire Bus Line
	1250 5200 2950 5200
Text Label 2850 3000 2    50   ~ 0
_RESET
Text Label 2850 3100 2    50   ~ 0
_NMI
Wire Wire Line
	1350 4100 1750 4100
Wire Wire Line
	1350 4200 1750 4200
Wire Wire Line
	1350 4300 1750 4300
Wire Wire Line
	1350 4400 1750 4400
Wire Wire Line
	1350 4500 1750 4500
Wire Wire Line
	1350 4600 1750 4600
Wire Wire Line
	1350 4700 1750 4700
Wire Wire Line
	1350 4800 1750 4800
Wire Wire Line
	1350 4900 2000 4900
Text Label 1350 3100 0    50   ~ 0
_IRQ
Entry Wire Line
	1250 3200 1350 3100
Wire Wire Line
	2050 3100 1350 3100
Text Label 1350 3600 0    50   ~ 0
_EXROM
Entry Wire Line
	1250 3700 1350 3600
Wire Wire Line
	2050 3600 1350 3600
Wire Wire Line
	2050 2800 1350 2800
Wire Wire Line
	1350 2900 2050 2900
Wire Wire Line
	2050 3000 1350 3000
Wire Wire Line
	1350 3500 2050 3500
Wire Wire Line
	1350 3400 2050 3400
Wire Wire Line
	1350 3700 2050 3700
Wire Wire Line
	1350 3800 2050 3800
Wire Wire Line
	1350 3200 2050 3200
Entry Wire Line
	1250 2900 1350 2800
Text Label 1350 2800 0    50   ~ 0
GND
Entry Wire Line
	1250 3000 1350 2900
Entry Wire Line
	1250 3100 1350 3000
Text Label 1350 2900 0    50   ~ 0
5VDC
Text Label 1350 3000 0    50   ~ 0
5VDC
Entry Wire Line
	1250 3600 1350 3500
Text Label 1350 3500 0    50   ~ 0
_GAME
Entry Wire Line
	1250 3500 1350 3400
Text Label 1350 3400 0    50   ~ 0
_IO1
Entry Wire Line
	1250 3800 1350 3700
Text Label 1350 3700 0    50   ~ 0
_IO2
Entry Wire Line
	1250 3900 1350 3800
Entry Wire Line
	1250 3900 1350 3800
Text Label 1350 3800 0    50   ~ 0
_ROML
Entry Wire Line
	1250 3300 1350 3200
Text Label 1350 3200 0    50   ~ 0
R,_W
Wire Wire Line
	950  2900 1150 2900
Text Notes 2000 3900 2    50   ~ 0
BA
Text Notes 2000 4000 2    50   ~ 0
_DMA
Text Notes 2000 3300 2    50   ~ 0
DOTCLK
NoConn ~ 7300 2100
NoConn ~ 7300 2200
Text Notes 7300 2100 0    50   ~ 0
TTa I/O
Text Notes 7300 2200 0    50   ~ 0
TTa I/O
Wire Wire Line
	8400 1750 8400 2900
Wire Wire Line
	8400 2900 7300 2900
Wire Wire Line
	8300 1850 8300 2800
Wire Wire Line
	8300 2800 7300 2800
Wire Wire Line
	8700 1750 8400 1750
Wire Wire Line
	8700 1850 8300 1850
Wire Wire Line
	8200 2600 8200 1550
Wire Wire Line
	8200 1550 8700 1550
Wire Wire Line
	7300 2600 8200 2600
NoConn ~ 8700 1950
Entry Wire Line
	7600 3900 7700 4000
Entry Wire Line
	7600 4000 7700 4100
Entry Wire Line
	7600 4200 7700 4300
Entry Wire Line
	7600 4300 7700 4400
Wire Wire Line
	7300 3900 7600 3900
Wire Wire Line
	7300 4000 7600 4000
Wire Wire Line
	7600 4100 7300 4100
Wire Wire Line
	7300 4300 7600 4300
Wire Wire Line
	7600 4800 7300 4800
Entry Wire Line
	7600 4800 7700 4900
Text Label 7600 4800 2    50   ~ 0
PHI2
Text Label 7600 4300 2    50   ~ 0
_ROMH
Text Label 7600 4400 2    50   ~ 0
_ROML
Text Label 7600 4500 2    50   ~ 0
_IO1
Text Label 7600 4600 2    50   ~ 0
_IO2
Text Label 7600 3900 2    50   ~ 0
_GAME
Text Label 7600 4000 2    50   ~ 0
_EXROM
Entry Wire Line
	7600 4400 7700 4500
Entry Wire Line
	7600 4500 7700 4600
Entry Wire Line
	7600 4600 7700 4700
Wire Wire Line
	7600 4400 7300 4400
Wire Wire Line
	7300 4500 7600 4500
Wire Wire Line
	7600 4600 7300 4600
Text Label 7600 4100 2    50   ~ 0
_RESET
Text Label 7600 3600 2    50   ~ 0
_NMI
Entry Wire Line
	7600 3600 7700 3500
Wire Wire Line
	7600 3600 7300 3600
Text Label 7600 4700 2    50   ~ 0
R,_W
Wire Wire Line
	7300 4700 7600 4700
Entry Wire Line
	7600 4700 7700 4800
Entry Wire Line
	7600 4100 7700 4200
Wire Wire Line
	7600 4200 7300 4200
Text Label 7600 4200 2    50   ~ 0
_IRQ
NoConn ~ 9100 3950
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J3
U 1 1 5EE73515
P 9000 3350
F 0 "J3" H 8556 3396 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 8556 3305 50  0000 R CNN
F 2 "" H 9000 3350 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 8650 2100 50  0001 C CNN
	1    9000 3350
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0112
U 1 1 5F23726B
P 9000 2750
F 0 "#PWR0112" H 9000 2600 50  0001 C CNN
F 1 "+3.3V" H 9015 2923 50  0000 C CNN
F 2 "" H 9000 2750 50  0001 C CNN
F 3 "" H 9000 2750 50  0001 C CNN
	1    9000 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3800 8400 3800
Wire Wire Line
	8400 3800 8400 3050
Wire Wire Line
	8400 3050 8500 3050
Wire Wire Line
	7300 3700 8300 3700
NoConn ~ 6400 1500
Entry Wire Line
	5500 4700 5600 4600
Entry Wire Line
	5500 4800 5600 4700
Entry Wire Line
	5500 4900 5600 4800
Wire Wire Line
	5600 4600 5900 4600
Wire Wire Line
	5900 4700 5600 4700
Wire Wire Line
	5600 4800 5900 4800
Wire Bus Line
	2950 2900 2950 5200
Wire Bus Line
	7700 1800 7700 5200
Wire Bus Line
	5500 3400 5500 5200
Wire Bus Line
	1250 2900 1250 5200
Text Label 5600 4600 0    50   ~ 0
A13
Text Label 5600 4700 0    50   ~ 0
A14
Text Label 5600 4800 0    50   ~ 0
A15
$Comp
L Device:R R7
U 1 1 5F283D5C
P 1900 4100
F 0 "R7" V 1850 3950 50  0000 C CNN
F 1 "100" V 1900 4100 50  0000 C CNN
F 2 "" V 1830 4100 50  0001 C CNN
F 3 "~" H 1900 4100 50  0001 C CNN
	1    1900 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F284F0F
P 1900 4200
F 0 "R6" V 1850 4050 50  0000 C CNN
F 1 "100" V 1900 4200 50  0000 C CNN
F 2 "" V 1830 4200 50  0001 C CNN
F 3 "~" H 1900 4200 50  0001 C CNN
	1    1900 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F285169
P 1900 4300
F 0 "R5" V 1850 4150 50  0000 C CNN
F 1 "100" V 1900 4300 50  0000 C CNN
F 2 "" V 1830 4300 50  0001 C CNN
F 3 "~" H 1900 4300 50  0001 C CNN
	1    1900 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F2853A2
P 1900 4400
F 0 "R4" V 1850 4250 50  0000 C CNN
F 1 "100" V 1900 4400 50  0000 C CNN
F 2 "" V 1830 4400 50  0001 C CNN
F 3 "~" H 1900 4400 50  0001 C CNN
	1    1900 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F2855AD
P 1900 4500
F 0 "R3" V 1850 4350 50  0000 C CNN
F 1 "100" V 1900 4500 50  0000 C CNN
F 2 "" V 1830 4500 50  0001 C CNN
F 3 "~" H 1900 4500 50  0001 C CNN
	1    1900 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F285793
P 1900 4600
F 0 "R2" V 1850 4450 50  0000 C CNN
F 1 "100" V 1900 4600 50  0000 C CNN
F 2 "" V 1830 4600 50  0001 C CNN
F 3 "~" H 1900 4600 50  0001 C CNN
	1    1900 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F28598F
P 1900 4700
F 0 "R1" V 1850 4550 50  0000 C CNN
F 1 "100" V 1900 4700 50  0000 C CNN
F 2 "" V 1830 4700 50  0001 C CNN
F 3 "~" H 1900 4700 50  0001 C CNN
	1    1900 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R R0
U 1 1 5F285BBF
P 1900 4800
F 0 "R0" V 1850 4650 50  0000 C CNN
F 1 "100" V 1900 4800 50  0000 C CNN
F 2 "" V 1830 4800 50  0001 C CNN
F 3 "~" H 1900 4800 50  0001 C CNN
	1    1900 4800
	0    1    1    0   
$EndComp
$EndSCHEMATC
