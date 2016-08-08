EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:27c801
LIBS:anotherworld-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
Title ""
Date "8 aug 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74LS374 U?
U 1 1 57A82FC5
P 6450 2800
F 0 "U?" H 6350 2450 60  0000 C CNN
F 1 "74LS374" H 6500 2300 60  0000 C CNN
F 2 "~" H 6450 2800 60  0000 C CNN
F 3 "~" H 6450 2800 60  0000 C CNN
	1    6450 2800
	0    1    -1   0   
$EndComp
Text Notes 5650 2750 2    60   ~ 0
Instruction Pointer\nRegister - High
Text Notes 6950 2750 2    60   ~ 0
Instruction Pointer\nRegister - Low
Text GLabel 1450 1950 0    60   Input ~ 0
DATA_0
Text GLabel 1450 1800 0    60   Input ~ 0
DATA_1
Text GLabel 1450 1650 0    60   Input ~ 0
DATA_2
Text GLabel 1450 1500 0    60   Input ~ 0
DATA_3
Text GLabel 1450 1350 0    60   Input ~ 0
DATA_4
Text GLabel 1450 1200 0    60   Input ~ 0
DATA_5
Text GLabel 1450 1050 0    60   Input ~ 0
DATA_6
Text GLabel 1450 900  0    60   Input ~ 0
DATA_7
Wire Wire Line
	6950 1950 6950 2100
Wire Wire Line
	1450 1950 3000 1950
Wire Wire Line
	3000 1950 4350 1950
Wire Wire Line
	4350 1950 5650 1950
Wire Wire Line
	5650 1950 6950 1950
Wire Wire Line
	6850 1800 6850 2100
Wire Wire Line
	1450 1800 2950 1800
Wire Wire Line
	2950 1800 4250 1800
Wire Wire Line
	4250 1800 5550 1800
Wire Wire Line
	5550 1800 6850 1800
Wire Wire Line
	1450 1650 2900 1650
Wire Wire Line
	2900 1650 4150 1650
Wire Wire Line
	4150 1650 5450 1650
Wire Wire Line
	5450 1650 6750 1650
Wire Wire Line
	6750 1650 6750 2100
Wire Wire Line
	6650 1500 6650 2100
Wire Wire Line
	1450 1500 2850 1500
Wire Wire Line
	2850 1500 4050 1500
Wire Wire Line
	4050 1500 5350 1500
Wire Wire Line
	5350 1500 6650 1500
Wire Wire Line
	1450 1350 2800 1350
Wire Wire Line
	2800 1350 3950 1350
Wire Wire Line
	3950 1350 5250 1350
Wire Wire Line
	5250 1350 6550 1350
Wire Wire Line
	6550 1350 6550 2100
Wire Wire Line
	6450 1200 6450 2100
Wire Wire Line
	1450 1200 2750 1200
Wire Wire Line
	2750 1200 3850 1200
Wire Wire Line
	3850 1200 5150 1200
Wire Wire Line
	5150 1200 6450 1200
Wire Wire Line
	1450 1050 2700 1050
Wire Wire Line
	2700 1050 3750 1050
Wire Wire Line
	3750 1050 5050 1050
Wire Wire Line
	5050 1050 6350 1050
Wire Wire Line
	6350 1050 6350 2100
Wire Wire Line
	6250 900  6250 2100
Wire Wire Line
	1450 900  2650 900 
Wire Wire Line
	2650 900  3650 900 
Wire Wire Line
	3650 900  4950 900 
Wire Wire Line
	4950 900  6250 900 
Wire Wire Line
	5650 1950 5650 2100
Wire Wire Line
	5550 2100 5550 1800
Wire Wire Line
	5450 1650 5450 2100
Wire Wire Line
	5350 2100 5350 1500
Wire Wire Line
	5250 1350 5250 2100
Wire Wire Line
	5150 2100 5150 1200
Wire Wire Line
	5050 1050 5050 2100
Wire Wire Line
	4950 900  4950 2100
Wire Wire Line
	3000 4800 5650 4800
Wire Wire Line
	5650 4800 6950 4800
Wire Wire Line
	6950 4800 6950 3500
Wire Wire Line
	6850 4850 6850 3500
Wire Wire Line
	2950 4850 5550 4850
Wire Wire Line
	5550 4850 6850 4850
Wire Wire Line
	2900 4900 5450 4900
Wire Wire Line
	5450 4900 6750 4900
Wire Wire Line
	6750 4900 6750 3500
Wire Wire Line
	5650 4800 5650 3500
Wire Wire Line
	5550 4850 5550 3500
Wire Wire Line
	5450 4900 5450 3500
Wire Wire Line
	5350 3500 5350 4950
Wire Wire Line
	2850 4950 5350 4950
Wire Wire Line
	5350 4950 6650 4950
Wire Wire Line
	2800 5000 5250 5000
Wire Wire Line
	5250 5000 6550 5000
Wire Wire Line
	5250 5000 5250 3500
Wire Wire Line
	5150 3500 5150 5050
Wire Wire Line
	2750 5050 5150 5050
Wire Wire Line
	5150 5050 6450 5050
Wire Wire Line
	2700 5100 5050 5100
Wire Wire Line
	5050 5100 6350 5100
Wire Wire Line
	5050 5100 5050 3500
Wire Wire Line
	4950 3500 4950 5150
Wire Wire Line
	2650 5150 4950 5150
Wire Wire Line
	4950 5150 6250 5150
Wire Wire Line
	6650 4950 6650 3500
Wire Wire Line
	6550 5000 6550 3500
Wire Wire Line
	6450 5050 6450 3500
Wire Wire Line
	6350 5100 6350 3500
Wire Wire Line
	6250 5150 6250 3500
Connection ~ 4950 900 
Connection ~ 5050 1050
Connection ~ 5150 1200
Connection ~ 5250 1350
Connection ~ 5350 1500
Connection ~ 5450 1650
Connection ~ 5550 1800
Connection ~ 5650 1950
Wire Wire Line
	3000 4800 3000 1950
Connection ~ 3000 1950
Connection ~ 5650 4800
Wire Wire Line
	2950 4850 2950 1800
Connection ~ 2950 1800
Connection ~ 5550 4850
Wire Wire Line
	2900 4900 2900 1650
Connection ~ 2900 1650
Connection ~ 5450 4900
Wire Wire Line
	2850 4950 2850 1500
Connection ~ 2850 1500
Connection ~ 5350 4950
Wire Wire Line
	2800 5000 2800 1350
Connection ~ 2800 1350
Connection ~ 5250 5000
Wire Wire Line
	2750 5050 2750 1200
Connection ~ 2750 1200
Connection ~ 5150 5050
Wire Wire Line
	2700 1050 2700 5100
Connection ~ 5050 5100
Connection ~ 2700 1050
Wire Wire Line
	2650 5150 2650 900 
Connection ~ 2650 900 
Connection ~ 4950 5150
Text GLabel 2450 4100 0    60   Input ~ 0
-IPH_OE
Wire Wire Line
	4650 3500 4650 4100
Wire Wire Line
	4650 4100 2450 4100
Text GLabel 2450 4250 0    60   Input ~ 0
IPH_CLK
Wire Wire Line
	4750 3500 4750 4250
Wire Wire Line
	4750 4250 2450 4250
Text GLabel 2450 4450 0    60   Input ~ 0
-IPL_OE
Text GLabel 2450 4600 0    60   Input ~ 0
IPL_CLK
$Comp
L 74LS374 U?
U 1 1 57A82FD7
P 5150 2800
F 0 "U?" H 5050 2450 60  0000 C CNN
F 1 "74LS374" H 5200 2300 60  0000 C CNN
F 2 "~" H 5150 2800 60  0000 C CNN
F 3 "~" H 5150 2800 60  0000 C CNN
	1    5150 2800
	0    1    -1   0   
$EndComp
Wire Wire Line
	5950 3500 5950 4450
Wire Wire Line
	6050 3500 6050 4600
Wire Wire Line
	5950 4450 2450 4450
Wire Wire Line
	6050 4600 2450 4600
$Comp
L 74LS374 U?
U 1 1 57A84059
P 3850 2800
F 0 "U?" H 3750 2450 60  0000 C CNN
F 1 "74LS374" H 3900 2300 60  0000 C CNN
F 2 "~" H 3850 2800 60  0000 C CNN
F 3 "~" H 3850 2800 60  0000 C CNN
	1    3850 2800
	0    1    -1   0   
$EndComp
Text Notes 4350 2750 2    60   ~ 0
Code Bank Select\nRegister
$Comp
L GND #PWR?
U 1 1 57A841C1
P 3350 3600
F 0 "#PWR?" H 3350 3600 30  0001 C CNN
F 1 "GND" H 3350 3530 30  0001 C CNN
F 2 "" H 3350 3600 60  0000 C CNN
F 3 "" H 3350 3600 60  0000 C CNN
	1    3350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3500 3350 3600
Text GLabel 2450 3900 0    60   Input ~ 0
CODEBANK_REG_CLK
Wire Wire Line
	2450 3900 3450 3900
Wire Wire Line
	3450 3900 3450 3500
Wire Wire Line
	4350 2100 4350 1950
Connection ~ 4350 1950
Wire Wire Line
	4250 2100 4250 1800
Connection ~ 4250 1800
Wire Wire Line
	4150 2100 4150 1650
Connection ~ 4150 1650
Wire Wire Line
	4050 2100 4050 1500
Connection ~ 4050 1500
Wire Wire Line
	3950 2100 3950 1350
Connection ~ 3950 1350
Wire Wire Line
	3850 2100 3850 1200
Connection ~ 3850 1200
Wire Wire Line
	3750 2100 3750 1050
Connection ~ 3750 1050
Wire Wire Line
	3650 2100 3650 900 
Connection ~ 3650 900 
$EndSCHEMATC
