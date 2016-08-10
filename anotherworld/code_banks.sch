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
LIBS:o_ttl
LIBS:anotherworld-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 7 8
Title ""
Date "10 aug 2016"
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
P 9200 3600
F 0 "U?" H 9100 3250 60  0000 C CNN
F 1 "74LS374" H 9250 3100 60  0000 C CNN
F 2 "~" H 9200 3600 60  0000 C CNN
F 3 "~" H 9200 3600 60  0000 C CNN
	1    9200 3600
	0    1    -1   0   
$EndComp
Text Notes 8400 3550 2    60   ~ 0
Instruction Pointer\nRegister - High
Text Notes 9700 3550 2    60   ~ 0
Instruction Pointer\nRegister - Low
Text GLabel 5250 2750 0    60   Input ~ 0
DATA_0
Text GLabel 5250 2600 0    60   Input ~ 0
DATA_1
Text GLabel 5250 2450 0    60   Input ~ 0
DATA_2
Text GLabel 5250 2300 0    60   Input ~ 0
DATA_3
Text GLabel 5250 2150 0    60   Input ~ 0
DATA_4
Text GLabel 5250 2000 0    60   Input ~ 0
DATA_5
Text GLabel 5250 1850 0    60   Input ~ 0
DATA_6
Text GLabel 5250 1700 0    60   Input ~ 0
DATA_7
Wire Wire Line
	9700 2750 9700 2900
Wire Wire Line
	5250 2750 7100 2750
Wire Wire Line
	7100 2750 8400 2750
Wire Wire Line
	8400 2750 9700 2750
Wire Wire Line
	9600 2600 9600 2900
Wire Wire Line
	5250 2600 7000 2600
Wire Wire Line
	7000 2600 8300 2600
Wire Wire Line
	8300 2600 9600 2600
Wire Wire Line
	5250 2450 6900 2450
Wire Wire Line
	6900 2450 8200 2450
Wire Wire Line
	8200 2450 9500 2450
Wire Wire Line
	9500 2450 9500 2900
Wire Wire Line
	9400 2300 9400 2900
Wire Wire Line
	5250 2300 6800 2300
Wire Wire Line
	6800 2300 8100 2300
Wire Wire Line
	8100 2300 9400 2300
Wire Wire Line
	5250 2150 8000 2150
Wire Wire Line
	8000 2150 9300 2150
Wire Wire Line
	9300 2150 9300 2900
Wire Wire Line
	9200 2000 9200 2900
Wire Wire Line
	5250 2000 7900 2000
Wire Wire Line
	7900 2000 9200 2000
Wire Wire Line
	5250 1850 7800 1850
Wire Wire Line
	7800 1850 9100 1850
Wire Wire Line
	9100 1850 9100 2900
Wire Wire Line
	9000 1700 9000 2900
Wire Wire Line
	5250 1700 7700 1700
Wire Wire Line
	7700 1700 9000 1700
Wire Wire Line
	8400 2750 8400 2900
Wire Wire Line
	8300 2900 8300 2600
Wire Wire Line
	8200 2450 8200 2900
Wire Wire Line
	8100 2900 8100 2300
Wire Wire Line
	8000 2150 8000 2900
Wire Wire Line
	7900 2900 7900 2000
Wire Wire Line
	7800 1850 7800 2900
Wire Wire Line
	7700 1700 7700 2900
Connection ~ 7700 1700
Connection ~ 7800 1850
Connection ~ 7900 2000
Connection ~ 8000 2150
Connection ~ 8100 2300
Connection ~ 8200 2450
Connection ~ 8300 2600
Connection ~ 8400 2750
Wire Wire Line
	7400 4300 7400 4400
Text GLabel 5200 4750 0    60   Input ~ 0
IPH_CLK
Wire Wire Line
	7500 4300 7500 4750
Wire Wire Line
	7500 4750 5200 4750
Text GLabel 5200 4900 0    60   Input ~ 0
IPL_CLK
$Comp
L 74LS374 U?
U 1 1 57A82FD7
P 7900 3600
F 0 "U?" H 7800 3250 60  0000 C CNN
F 1 "74LS374" H 7950 3100 60  0000 C CNN
F 2 "~" H 7900 3600 60  0000 C CNN
F 3 "~" H 7900 3600 60  0000 C CNN
	1    7900 3600
	0    1    -1   0   
$EndComp
Wire Wire Line
	8700 4300 8700 4400
$Comp
L 74LS374 U?
U 1 1 57A84059
P 6600 3600
F 0 "U?" H 6500 3250 60  0000 C CNN
F 1 "74LS374" H 6650 3100 60  0000 C CNN
F 2 "~" H 6600 3600 60  0000 C CNN
F 3 "~" H 6600 3600 60  0000 C CNN
	1    6600 3600
	0    1    -1   0   
$EndComp
Text Notes 7100 3550 2    60   ~ 0
Resource\nBank Select\nRegister
$Comp
L GND #PWR?
U 1 1 57A841C1
P 6100 4400
F 0 "#PWR?" H 6100 4400 30  0001 C CNN
F 1 "GND" H 6100 4330 30  0001 C CNN
F 2 "" H 6100 4400 60  0000 C CNN
F 3 "" H 6100 4400 60  0000 C CNN
	1    6100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4300 6100 4400
Text GLabel 5200 4600 0    60   Input ~ 0
RESOURCE_BANK_CLK
Wire Wire Line
	5200 4600 6200 4600
Wire Wire Line
	6200 4600 6200 4300
Wire Wire Line
	7100 2900 7100 2750
Connection ~ 7100 2750
Wire Wire Line
	7000 2900 7000 2600
Connection ~ 7000 2600
Wire Wire Line
	6900 2900 6900 2450
Connection ~ 6900 2450
Wire Wire Line
	6800 2900 6800 2300
Connection ~ 6800 2300
$Comp
L 27C801 U?
U 1 1 57A7D10C
P 8800 7650
F 0 "U?" H 8500 8700 70  0000 C CNN
F 1 "27C801" H 8800 6450 70  0000 C CNN
F 2 "~" H 8800 7650 60  0000 C CNN
F 3 "~" H 8800 7650 60  0000 C CNN
	1    8800 7650
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 4300 9700 6950
Wire Wire Line
	9600 6950 9600 4300
Wire Wire Line
	9500 4300 9500 6950
Wire Wire Line
	9400 6950 9400 4300
Wire Wire Line
	9300 4300 9300 6950
Wire Wire Line
	9200 6950 9200 4300
Wire Wire Line
	9100 4300 9100 6950
Wire Wire Line
	9000 6950 9000 4300
Wire Wire Line
	8900 6950 8900 5650
Wire Wire Line
	8900 5650 8400 5650
Wire Wire Line
	8400 5650 8400 4300
Wire Wire Line
	8300 4300 8300 5700
Wire Wire Line
	8300 5700 8800 5700
Wire Wire Line
	8800 5700 8800 6950
Wire Wire Line
	8700 6950 8700 5750
Wire Wire Line
	8700 5750 8200 5750
Wire Wire Line
	8200 5750 8200 4300
Wire Wire Line
	8100 4300 8100 5800
Wire Wire Line
	8100 5800 8600 5800
Wire Wire Line
	8600 5800 8600 6950
Wire Wire Line
	8500 6950 8500 5850
Wire Wire Line
	8500 5850 8000 5850
Wire Wire Line
	8000 5850 8000 4300
Wire Wire Line
	7900 4300 7900 5900
Wire Wire Line
	7900 5900 8400 5900
Wire Wire Line
	8400 5900 8400 6950
Wire Wire Line
	8300 6950 8300 5950
Wire Wire Line
	8300 5950 7800 5950
Wire Wire Line
	7800 5950 7800 4300
Wire Wire Line
	7700 4300 7700 6000
Wire Wire Line
	7700 6000 8200 6000
Wire Wire Line
	8200 6000 8200 6950
Wire Wire Line
	8100 6950 8100 6200
Wire Wire Line
	8100 6200 7100 6200
Wire Wire Line
	7000 6250 8000 6250
Wire Wire Line
	8000 6250 8000 6950
Wire Wire Line
	7900 6950 7900 6300
Wire Wire Line
	7900 6300 6900 6300
Wire Wire Line
	6800 6350 7800 6350
Wire Wire Line
	7800 6350 7800 6950
NoConn ~ 6700 4300
NoConn ~ 6600 4300
NoConn ~ 6500 4300
NoConn ~ 6400 4300
NoConn ~ 6700 2900
NoConn ~ 6600 2900
NoConn ~ 6500 2900
NoConn ~ 6400 2900
Text GLabel 9950 9650 2    60   Output ~ 0
DATA_0
Text GLabel 9950 9500 2    60   Output ~ 0
DATA_1
Text GLabel 9950 9350 2    60   Output ~ 0
DATA_2
Text GLabel 9950 9200 2    60   Output ~ 0
DATA_3
Text GLabel 9950 9050 2    60   Output ~ 0
DATA_4
Text GLabel 9950 8900 2    60   Output ~ 0
DATA_5
Text GLabel 9950 8750 2    60   Output ~ 0
DATA_6
Text GLabel 9950 8600 2    60   Output ~ 0
DATA_7
Wire Wire Line
	8950 8350 8950 8600
Wire Wire Line
	8950 8600 9950 8600
Wire Wire Line
	9050 8350 9050 8750
Wire Wire Line
	9050 8750 9950 8750
Wire Wire Line
	9150 8350 9150 8900
Wire Wire Line
	9150 8900 9950 8900
Wire Wire Line
	9250 8350 9250 9050
Wire Wire Line
	9250 9050 9950 9050
Wire Wire Line
	9350 8350 9350 9200
Wire Wire Line
	9350 9200 9950 9200
Wire Wire Line
	9450 8350 9450 9350
Wire Wire Line
	9450 9350 9950 9350
Wire Wire Line
	9950 9500 9550 9500
Wire Wire Line
	9550 9500 9550 8350
Wire Wire Line
	9650 8350 9650 9650
Wire Wire Line
	9650 9650 9950 9650
NoConn ~ 8450 8350
Text GLabel 7800 8500 0    60   Input ~ 0
-CODEROM_OE
Wire Wire Line
	7800 8500 7950 8500
Wire Wire Line
	7950 8500 7950 8350
Wire Wire Line
	5200 4900 8800 4900
Wire Wire Line
	8800 4900 8800 4300
$Comp
L GND #PWR?
U 1 1 57A7F509
P 7400 4400
F 0 "#PWR?" H 7400 4400 30  0001 C CNN
F 1 "GND" H 7400 4330 30  0001 C CNN
F 2 "" H 7400 4400 60  0000 C CNN
F 3 "" H 7400 4400 60  0000 C CNN
	1    7400 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57A7F50F
P 8700 4400
F 0 "#PWR?" H 8700 4400 30  0001 C CNN
F 1 "GND" H 8700 4330 30  0001 C CNN
F 2 "" H 8700 4400 60  0000 C CNN
F 3 "" H 8700 4400 60  0000 C CNN
	1    8700 4400
	1    0    0    -1  
$EndComp
Text GLabel 10300 5050 2    60   Output ~ 0
RESOURCE_BANK_0
Text GLabel 10300 5200 2    60   Output ~ 0
RESOURCE_BANK_1
Text GLabel 10300 5350 2    60   Output ~ 0
RESOURCE_BANK_2
Text GLabel 10300 5500 2    60   Output ~ 0
RESOURCE_BANK_3
Wire Wire Line
	7100 5050 10300 5050
Wire Wire Line
	7000 5200 10300 5200
Wire Wire Line
	6900 5350 10300 5350
Wire Wire Line
	6800 5500 10300 5500
Connection ~ 7100 5050
Connection ~ 7000 5200
Connection ~ 6900 5350
Connection ~ 6800 5500
Wire Wire Line
	7100 6200 7100 5050
Wire Wire Line
	7100 5050 7100 4300
Wire Wire Line
	7000 4300 7000 5200
Wire Wire Line
	7000 5200 7000 6250
Wire Wire Line
	6900 6300 6900 5350
Wire Wire Line
	6900 5350 6900 4300
Wire Wire Line
	6800 4300 6800 5500
Wire Wire Line
	6800 5500 6800 6350
$EndSCHEMATC
