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
Text Label 2000 4800 2    50   ~ 0
A0
Text Label 2000 4700 2    50   ~ 0
A1
Text Label 2000 4600 2    50   ~ 0
A2
Text Label 2000 4500 2    50   ~ 0
A3
Text Label 2000 4400 2    50   ~ 0
A4
Text Label 2000 4300 2    50   ~ 0
A5
Text Label 2000 4200 2    50   ~ 0
A6
Text Label 2000 4100 2    50   ~ 0
A7
Text Label 2000 4000 2    50   ~ 0
A8
Text Label 2000 3900 2    50   ~ 0
A9
Text Label 2000 3800 2    50   ~ 0
A10
Text Label 2000 3700 2    50   ~ 0
A11
Text Label 2000 3600 2    50   ~ 0
A12
Text Label 2000 3500 2    50   ~ 0
A13
Text Label 2000 3400 2    50   ~ 0
A14
Text Label 2000 3300 2    50   ~ 0
A15
Entry Wire Line
	2000 4800 2100 4900
Entry Wire Line
	2000 4700 2100 4800
Entry Wire Line
	2000 4600 2100 4700
Entry Wire Line
	2000 4500 2100 4600
Entry Wire Line
	2000 4400 2100 4500
Entry Wire Line
	2000 4300 2100 4400
Entry Wire Line
	2000 4200 2100 4300
Entry Wire Line
	2000 4100 2100 4200
Entry Wire Line
	2000 4000 2100 4100
Entry Wire Line
	2000 3900 2100 4000
Entry Wire Line
	2000 3800 2100 3900
Entry Wire Line
	2000 3800 2100 3900
Entry Wire Line
	2000 3700 2100 3800
Entry Wire Line
	2000 3600 2100 3700
Entry Wire Line
	2000 3500 2100 3600
Entry Wire Line
	2000 3400 2100 3500
Entry Wire Line
	2000 3300 2100 3400
Text Label 2000 4900 2    50   ~ 0
GND
Entry Wire Line
	2000 4900 2100 5000
Text Label 900  3200 0    50   ~ 0
R,_W
Entry Wire Line
	800  3300 900  3200
Text Label 2000 3200 2    50   ~ 0
PHI2
Entry Wire Line
	2000 3200 2100 3300
Text Label 900  4800 0    50   ~ 0
D0
Text Label 900  4700 0    50   ~ 0
D1
Text Label 900  4600 0    50   ~ 0
D2
Text Label 900  4500 0    50   ~ 0
D3
Text Label 900  4400 0    50   ~ 0
D4
Text Label 900  4300 0    50   ~ 0
D5
Text Label 900  4200 0    50   ~ 0
D6
Text Label 900  4100 0    50   ~ 0
D7
Entry Wire Line
	800  4900 900  4800
Entry Wire Line
	800  4800 900  4700
Entry Wire Line
	800  4700 900  4600
Entry Wire Line
	800  4600 900  4500
Entry Wire Line
	800  4500 900  4400
Entry Wire Line
	800  4400 900  4300
Entry Wire Line
	800  4300 900  4200
Entry Wire Line
	800  4200 900  4100
Text Label 900  3900 0    50   ~ 0
BA
Entry Wire Line
	800  4000 900  3900
Text Label 2000 2900 2    50   ~ 0
_ROMH
Text Label 900  3800 0    50   ~ 0
_ROML
Entry Wire Line
	2100 3000 2000 2900
Entry Wire Line
	800  3900 900  3800
Entry Wire Line
	800  3900 900  3800
Text Label 900  3700 0    50   ~ 0
_IO2
Entry Wire Line
	800  3800 900  3700
Text Label 900  3400 0    50   ~ 0
_IO1
Entry Wire Line
	800  3500 900  3400
Text Label 900  3500 0    50   ~ 0
_GAME
Entry Wire Line
	800  3600 900  3500
Text Label 900  3000 0    50   ~ 0
5VDC
Text Label 900  2900 0    50   ~ 0
5VDC
Entry Wire Line
	800  3100 900  3000
Entry Wire Line
	800  3000 900  2900
Text Label 2000 2800 2    50   ~ 0
GND
Text Label 900  4900 0    50   ~ 0
GND
Text Label 900  2800 0    50   ~ 0
GND
Entry Wire Line
	900  4900 800  5000
Entry Wire Line
	2100 2900 2000 2800
Entry Wire Line
	800  2900 900  2800
$Comp
L Commodore:Expansion_Cartridge J1
U 1 1 5EDDBBBA
P 1400 3800
F 0 "J1" H 1450 5017 50  0000 C CNN
F 1 "Expansion_Cartridge" H 1450 4926 50  0000 C CNN
F 2 "" H 1400 3800 50  0001 C CNN
F 3 "~" H 1400 3800 50  0001 C CNN
	1    1400 3800
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MIC5504-3.3YM5 U?
U 1 1 5EE1E9B2
P 1450 1500
F 0 "U?" H 1450 1867 50  0000 C CNN
F 1 "MIC5504-3.3YM5" H 1450 1776 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1450 1100 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC550X.pdf" H 1200 1750 50  0001 C CNN
	1    1450 1500
	1    0    0    -1  
$EndComp
Entry Wire Line
	800  2500 900  2400
Text Label 900  2400 0    50   ~ 0
5VDC
$Comp
L power:GND #PWR?
U 1 1 5EE2CA5F
P 1150 4900
F 0 "#PWR?" H 1150 4650 50  0001 C CNN
F 1 "GND" H 1155 4727 50  0000 C CNN
F 2 "" H 1150 4900 50  0001 C CNN
F 3 "" H 1150 4900 50  0001 C CNN
	1    1150 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE37897
P 1450 2400
F 0 "#PWR?" H 1450 2250 50  0001 C CNN
F 1 "+5V" H 1465 2573 50  0000 C CNN
F 2 "" H 1450 2400 50  0001 C CNN
F 3 "" H 1450 2400 50  0001 C CNN
	1    1450 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5EE38269
P 750 1200
F 0 "#PWR?" H 750 1050 50  0001 C CNN
F 1 "+5V" H 765 1373 50  0000 C CNN
F 2 "" H 750 1200 50  0001 C CNN
F 3 "" H 750 1200 50  0001 C CNN
	1    750  1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EE3BDCA
P 2150 1200
F 0 "#PWR?" H 2150 1050 50  0001 C CNN
F 1 "+3.3V" H 2165 1373 50  0000 C CNN
F 2 "" H 2150 1200 50  0001 C CNN
F 3 "" H 2150 1200 50  0001 C CNN
	1    2150 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE41128
P 1450 1800
F 0 "#PWR?" H 1450 1550 50  0001 C CNN
F 1 "GND" H 1455 1627 50  0000 C CNN
F 2 "" H 1450 1800 50  0001 C CNN
F 3 "" H 1450 1800 50  0001 C CNN
	1    1450 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EE42D99
P 750 1550
F 0 "C?" H 865 1596 50  0000 L CNN
F 1 "1u" H 865 1505 50  0000 L CNN
F 2 "" H 788 1400 50  0001 C CNN
F 3 "~" H 750 1550 50  0001 C CNN
	1    750  1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5EE436C8
P 2150 1550
F 0 "C?" H 2265 1596 50  0000 L CNN
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
L MCU_ST_STM32F4:STM32F446RCTx U?
U 1 1 5EE6A02E
P 6600 3200
F 0 "U?" H 6600 1311 50  0000 C CNN
F 1 "STM32F446RCTx" H 6600 1220 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 6000 1500 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00141306.pdf" H 6600 3200 50  0001 C CNN
	1    6600 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE6FB65
P 7200 5000
F 0 "#PWR?" H 7200 4750 50  0001 C CNN
F 1 "GND" H 7205 4827 50  0000 C CNN
F 2 "" H 7200 5000 50  0001 C CNN
F 3 "" H 7200 5000 50  0001 C CNN
	1    7200 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EE726C9
P 6700 1500
F 0 "#PWR?" H 6700 1350 50  0001 C CNN
F 1 "+3.3V" H 6715 1673 50  0000 C CNN
F 2 "" H 6700 1500 50  0001 C CNN
F 3 "" H 6700 1500 50  0001 C CNN
	1    6700 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J?
U 1 1 5EE73515
P 9000 3350
F 0 "J?" H 8556 3396 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 8556 3305 50  0000 R CNN
F 2 "" H 9000 3350 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 8650 2100 50  0001 C CNN
	1    9000 3350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE90F77
P 9000 2400
F 0 "#PWR?" H 9000 2150 50  0001 C CNN
F 1 "GND" H 9005 2227 50  0000 C CNN
F 2 "" H 9000 2400 50  0001 C CNN
F 3 "" H 9000 2400 50  0001 C CNN
	1    9000 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J?
U 1 1 5EE8420B
P 9000 2000
F 0 "J?" H 8770 1989 50  0000 R CNN
F 1 "USB_B_Micro" H 8770 1898 50  0000 R CNN
F 2 "" H 9150 1950 50  0001 C CNN
F 3 "~" H 9150 1950 50  0001 C CNN
	1    9000 2000
	-1   0    0    -1  
$EndComp
Text Notes 7050 7050 0    50   ~ 0
* none of the bypass capacitors exist yet\n* the crystal is chosen at random, series resistance still needs to be evaluated\n* combinatoric logic for "chip enable" is still todo\n* PA4 and PA5 seem to only be 3.3V
$Comp
L power:GND #PWR?
U 1 1 5EEB8F44
P 9000 3950
F 0 "#PWR?" H 9000 3700 50  0001 C CNN
F 1 "GND" H 9005 3777 50  0000 C CNN
F 2 "" H 9000 3950 50  0001 C CNN
F 3 "" H 9000 3950 50  0001 C CNN
	1    9000 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5EEB987C
P 5150 2850
F 0 "Y?" V 5104 2981 50  0000 L CNN
F 1 "Crystal" V 5195 2981 50  0000 L CNN
F 2 "" H 5150 2850 50  0001 C CNN
F 3 "~" H 5150 2850 50  0001 C CNN
	1    5150 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5EEC0DF6
P 4800 3100
F 0 "C?" V 4548 3100 50  0000 C CNN
F 1 "C" V 4639 3100 50  0000 C CNN
F 2 "" H 4838 2950 50  0001 C CNN
F 3 "~" H 4800 3100 50  0001 C CNN
	1    4800 3100
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5EEC16A2
P 4800 2600
F 0 "C?" V 4548 2600 50  0000 C CNN
F 1 "C" V 4639 2600 50  0000 C CNN
F 2 "" H 4838 2450 50  0001 C CNN
F 3 "~" H 4800 2600 50  0001 C CNN
	1    4800 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EECF8D8
P 4450 3000
F 0 "#PWR?" H 4450 2750 50  0001 C CNN
F 1 "GND" H 4455 2827 50  0000 C CNN
F 2 "" H 4450 3000 50  0001 C CNN
F 3 "" H 4450 3000 50  0001 C CNN
	1    4450 3000
	1    0    0    -1  
$EndComp
Entry Wire Line
	7600 1700 7700 1800
Wire Wire Line
	1700 3300 2000 3300
Wire Wire Line
	2000 3400 1700 3400
Wire Wire Line
	1700 3500 2000 3500
Wire Wire Line
	2000 3600 1700 3600
Wire Wire Line
	1700 3700 2000 3700
Wire Wire Line
	2000 3800 1700 3800
Wire Wire Line
	1700 3900 2000 3900
Wire Wire Line
	2000 4000 1700 4000
Wire Wire Line
	2000 4100 1700 4100
Wire Wire Line
	1700 4200 2000 4200
Wire Wire Line
	2000 4300 1700 4300
Wire Wire Line
	1700 4400 2000 4400
Wire Wire Line
	2000 4500 1700 4500
Wire Wire Line
	1700 4600 2000 4600
Wire Wire Line
	2000 4700 1700 4700
Wire Wire Line
	2000 4800 1700 4800
Wire Wire Line
	2000 4900 1700 4900
Wire Wire Line
	900  3200 1200 3200
Wire Wire Line
	2000 3200 1700 3200
Wire Wire Line
	900  4800 1200 4800
Wire Wire Line
	1200 4700 900  4700
Wire Wire Line
	900  4600 1200 4600
Wire Wire Line
	900  4500 1200 4500
Wire Wire Line
	1200 4400 900  4400
Wire Wire Line
	1200 4300 900  4300
Wire Wire Line
	1200 4200 900  4200
Wire Wire Line
	900  4100 1200 4100
Wire Wire Line
	900  3900 1200 3900
Wire Wire Line
	1700 2900 2000 2900
Wire Wire Line
	900  3800 1200 3800
Wire Wire Line
	900  4900 1150 4900
Wire Wire Line
	900  3700 1200 3700
Wire Wire Line
	900  3400 1200 3400
Wire Wire Line
	900  3500 1200 3500
Wire Wire Line
	1200 3000 900  3000
Wire Wire Line
	900  2900 1200 2900
Wire Wire Line
	1700 2800 2000 2800
Wire Wire Line
	1200 2800 900  2800
Wire Bus Line
	800  5200 2100 5200
Wire Wire Line
	900  2400 1450 2400
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
Connection ~ 1150 4900
Wire Wire Line
	1150 4900 1200 4900
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
	8300 2000 8300 2900
Wire Wire Line
	8300 2900 7300 2900
Wire Wire Line
	8200 2100 8200 2800
Wire Wire Line
	8200 2800 7300 2800
Wire Wire Line
	8100 2200 8100 2700
Wire Wire Line
	8100 2700 7300 2700
Wire Wire Line
	8700 2200 8100 2200
Wire Wire Line
	8700 2000 8300 2000
Wire Wire Line
	8700 2100 8200 2100
Wire Wire Line
	9000 2400 9100 2400
Connection ~ 9000 2400
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
Connection ~ 2100 5200
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
	2100 5200 5500 5200
Wire Bus Line
	5500 5200 7700 5200
Entry Wire Line
	7600 1800 7700 1900
Entry Wire Line
	7600 1900 7700 2000
Entry Wire Line
	7600 2000 7700 2100
Entry Wire Line
	7600 3500 7700 3600
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
	7600 3400 7700 3500
Wire Wire Line
	7300 3700 8300 3700
Wire Wire Line
	7300 3400 7600 3400
Wire Wire Line
	7600 3500 7300 3500
Wire Bus Line
	7700 1800 7700 5200
Wire Bus Line
	2100 2900 2100 5200
Wire Bus Line
	5500 3400 5500 5200
Wire Bus Line
	800  2500 800  5200
$EndSCHEMATC
