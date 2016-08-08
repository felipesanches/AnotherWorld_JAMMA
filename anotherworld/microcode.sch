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
$Descr A3 16535 11693
encoding utf-8
Sheet 8 8
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
L 27C512 U?
U 1 1 57A7E623
P 4950 5900
F 0 "U?" H 4650 6950 70  0000 C CNN
F 1 "27C512" H 4950 4850 70  0000 C CNN
F 2 "" H 4950 5900 60  0000 C CNN
F 3 "" H 4950 5900 60  0000 C CNN
	1    4950 5900
	0    -1   1    0   
$EndComp
$Comp
L 27C512 U?
U 1 1 57A7E630
P 7300 5900
F 0 "U?" H 7000 6950 70  0000 C CNN
F 1 "27C512" H 7300 4850 70  0000 C CNN
F 2 "" H 7300 5900 60  0000 C CNN
F 3 "" H 7300 5900 60  0000 C CNN
	1    7300 5900
	0    -1   1    0   
$EndComp
Wire Wire Line
	3700 4200 4050 4200
Wire Wire Line
	4050 4200 6400 4200
Wire Wire Line
	4050 4200 4050 5200
Wire Wire Line
	3600 4300 4150 4300
Wire Wire Line
	4150 4300 6500 4300
Wire Wire Line
	4150 4300 4150 5200
Wire Wire Line
	4250 5200 4250 4400
Wire Wire Line
	3500 4400 4250 4400
Wire Wire Line
	4250 4400 6600 4400
Wire Wire Line
	3400 4500 4350 4500
Wire Wire Line
	4350 4500 6700 4500
Wire Wire Line
	4350 4500 4350 5200
Wire Wire Line
	4450 5200 4450 4600
Wire Wire Line
	3300 4600 4450 4600
Wire Wire Line
	4450 4600 6800 4600
Wire Wire Line
	3200 4700 4550 4700
Wire Wire Line
	4550 4700 6900 4700
Wire Wire Line
	4550 4700 4550 5200
Wire Wire Line
	4650 5200 4650 4800
Wire Wire Line
	3100 4800 4650 4800
Wire Wire Line
	4650 4800 7000 4800
Wire Wire Line
	3000 4900 4750 4900
Wire Wire Line
	4750 4900 7100 4900
Wire Wire Line
	4750 4900 4750 5200
Wire Wire Line
	7100 4900 7100 5200
Connection ~ 4750 4900
Wire Wire Line
	7000 4800 7000 5200
Connection ~ 4650 4800
Wire Wire Line
	6900 4700 6900 5200
Connection ~ 4550 4700
Wire Wire Line
	6800 4600 6800 5200
Connection ~ 4450 4600
Wire Wire Line
	6700 4500 6700 5200
Connection ~ 4350 4500
Wire Wire Line
	6600 4400 6600 5200
Connection ~ 4250 4400
Wire Wire Line
	6500 4300 6500 5200
Connection ~ 4150 4300
Wire Wire Line
	6400 4200 6400 5200
Connection ~ 4050 4200
$Comp
L GND #PWR?
U 1 1 57A7E78D
P 8200 5000
F 0 "#PWR?" H 8200 5000 30  0001 C CNN
F 1 "GND" H 8200 4930 30  0001 C CNN
F 2 "" H 8200 5000 60  0000 C CNN
F 3 "" H 8200 5000 60  0000 C CNN
	1    8200 5000
	1    0    0    1   
$EndComp
Wire Wire Line
	8100 5200 8100 5100
Wire Wire Line
	8100 5100 8200 5100
Wire Wire Line
	8200 5000 8200 5100
Wire Wire Line
	8200 5100 8200 5200
Connection ~ 8200 5100
$Comp
L GND #PWR?
U 1 1 57A7E7E0
P 5850 5000
F 0 "#PWR?" H 5850 5000 30  0001 C CNN
F 1 "GND" H 5850 4930 30  0001 C CNN
F 2 "" H 5850 5000 60  0000 C CNN
F 3 "" H 5850 5000 60  0000 C CNN
	1    5850 5000
	1    0    0    1   
$EndComp
Wire Wire Line
	5750 5200 5750 5100
Wire Wire Line
	5750 5100 5850 5100
Wire Wire Line
	5850 5000 5850 5100
Wire Wire Line
	5850 5100 5850 5200
Connection ~ 5850 5100
$Comp
L 74LS374 U?
U 1 1 57A7EB1A
P 3200 3400
F 0 "U?" H 3200 3400 60  0000 C CNN
F 1 "74LS374" H 3250 3050 60  0000 C CNN
F 2 "~" H 3200 3400 60  0000 C CNN
F 3 "~" H 3200 3400 60  0000 C CNN
	1    3200 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 4200 3700 4100
Wire Wire Line
	3600 4100 3600 4300
Wire Wire Line
	3500 4400 3500 4100
Wire Wire Line
	3400 4500 3400 4100
Wire Wire Line
	3300 4100 3300 4600
Wire Wire Line
	3200 4700 3200 4100
Wire Wire Line
	3100 4100 3100 4800
Wire Wire Line
	3000 4900 3000 4100
Text Notes 2950 3300 0    60   ~ 0
Opcode Register
Text GLabel 2250 1250 0    60   Input ~ 0
DATA_7
Text GLabel 2250 1400 0    60   Input ~ 0
DATA_6
Text GLabel 2250 1550 0    60   Input ~ 0
DATA_5
Text GLabel 2250 1700 0    60   Input ~ 0
DATA_4
Text GLabel 2250 1850 0    60   Input ~ 0
DATA_3
Text GLabel 2250 2000 0    60   Input ~ 0
DATA_2
Text GLabel 2250 2150 0    60   Input ~ 0
DATA_1
Text GLabel 2250 2300 0    60   Input ~ 0
DATA_0
Wire Wire Line
	2250 2300 3700 2300
Wire Wire Line
	3700 2300 3700 2700
Wire Wire Line
	3600 2700 3600 2150
Wire Wire Line
	3600 2150 2250 2150
Wire Wire Line
	2250 2000 3500 2000
Wire Wire Line
	3500 2000 3500 2700
Wire Wire Line
	3400 2700 3400 1850
Wire Wire Line
	3400 1850 2250 1850
Wire Wire Line
	2250 1700 3300 1700
Wire Wire Line
	3300 1700 3300 2700
Wire Wire Line
	3200 2700 3200 1550
Wire Wire Line
	3200 1550 2250 1550
Wire Wire Line
	2250 1400 3100 1400
Wire Wire Line
	3100 1400 3100 2700
Wire Wire Line
	3000 2700 3000 1250
Wire Wire Line
	3000 1250 2250 1250
Text GLabel 2250 2500 0    60   Input ~ 0
OPCODE_CLK
$Comp
L GND #PWR?
U 1 1 57A7F0BD
P 2500 2800
F 0 "#PWR?" H 2500 2800 30  0001 C CNN
F 1 "GND" H 2500 2730 30  0001 C CNN
F 2 "" H 2500 2800 60  0000 C CNN
F 3 "" H 2500 2800 60  0000 C CNN
	1    2500 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2500 2800 2500 2600
Wire Wire Line
	2500 2600 2700 2600
Wire Wire Line
	2700 2600 2700 2700
Wire Wire Line
	2250 2500 2800 2500
Wire Wire Line
	2800 2500 2800 2700
Text GLabel 5550 7500 3    60   Output ~ 0
OPCODE_CLK
Text GLabel 5700 7500 3    60   Output ~ 0
ALU_AH_CLK
Text GLabel 5850 7500 3    60   Output ~ 0
ALU_AL_CLK
Text GLabel 6000 7500 3    60   Output ~ 0
ALU_BH_CLK
Text GLabel 6150 7500 3    60   Output ~ 0
ALU_BL_CLK
Text GLabel 6300 7500 3    60   Output ~ 0
ALU_OUT_H
Text GLabel 6450 7500 3    60   Output ~ 0
ALU_OUT_L
Text GLabel 5400 7500 3    60   Output ~ 0
CODEBANK_CLK
Text GLabel 5250 7500 3    60   Output ~ 0
IPL_CLK
Text GLabel 5100 7500 3    60   Output ~ 0
IPH_CLK
$EndSCHEMATC
