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
$Descr A2 23386 16535
encoding utf-8
Sheet 8 8
Title ""
Date "12 aug 2016"
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
P 13200 6250
F 0 "U?" H 13100 5900 60  0000 C CNN
F 1 "74LS374" H 13250 5750 60  0000 C CNN
F 2 "~" H 13200 6250 60  0000 C CNN
F 3 "~" H 13200 6250 60  0000 C CNN
	1    13200 6250
	0    1    -1   0   
$EndComp
Text Notes 12400 6200 2    60   ~ 0
Instruction Pointer\nRegister - High
Text Notes 13700 6200 2    60   ~ 0
Instruction Pointer\nRegister - Low
Text GLabel 9250 5400 0    60   Input ~ 0
DATA_0
Text GLabel 9250 5250 0    60   Input ~ 0
DATA_1
Text GLabel 9250 5100 0    60   Input ~ 0
DATA_2
Text GLabel 9250 4950 0    60   Input ~ 0
DATA_3
Text GLabel 9250 4800 0    60   Input ~ 0
DATA_4
Text GLabel 9250 4650 0    60   Input ~ 0
DATA_5
Text GLabel 9250 4500 0    60   Input ~ 0
DATA_6
Text GLabel 9250 4350 0    60   Input ~ 0
DATA_7
Wire Wire Line
	13700 5400 13700 5550
Wire Wire Line
	9250 5400 11100 5400
Wire Wire Line
	11100 5400 12400 5400
Wire Wire Line
	12400 5400 13700 5400
Wire Wire Line
	13600 5250 13600 5550
Wire Wire Line
	9250 5250 11000 5250
Wire Wire Line
	11000 5250 12300 5250
Wire Wire Line
	12300 5250 13600 5250
Wire Wire Line
	9250 5100 10900 5100
Wire Wire Line
	10900 5100 12200 5100
Wire Wire Line
	12200 5100 13500 5100
Wire Wire Line
	13500 5100 13500 5550
Wire Wire Line
	13400 4950 13400 5550
Wire Wire Line
	9250 4950 10800 4950
Wire Wire Line
	10800 4950 12100 4950
Wire Wire Line
	12100 4950 13400 4950
Wire Wire Line
	9250 4800 12000 4800
Wire Wire Line
	12000 4800 13300 4800
Wire Wire Line
	13300 4800 13300 5550
Wire Wire Line
	13200 4650 13200 5550
Wire Wire Line
	9250 4650 11900 4650
Wire Wire Line
	11900 4650 13200 4650
Wire Wire Line
	9250 4500 11800 4500
Wire Wire Line
	11800 4500 13100 4500
Wire Wire Line
	13100 4500 13100 5550
Wire Wire Line
	13000 4350 13000 5550
Wire Wire Line
	9250 4350 11700 4350
Wire Wire Line
	11700 4350 13000 4350
Wire Wire Line
	12400 5400 12400 5550
Wire Wire Line
	12300 5550 12300 5250
Wire Wire Line
	12200 5100 12200 5550
Wire Wire Line
	12100 5550 12100 4950
Wire Wire Line
	12000 4800 12000 5550
Wire Wire Line
	11900 5550 11900 4650
Wire Wire Line
	11800 4500 11800 5550
Wire Wire Line
	11700 4350 11700 5550
Connection ~ 11700 4350
Connection ~ 11800 4500
Connection ~ 11900 4650
Connection ~ 12000 4800
Connection ~ 12100 4950
Connection ~ 12200 5100
Connection ~ 12300 5250
Connection ~ 12400 5400
Wire Wire Line
	11400 6950 11400 7050
Text GLabel 9200 7400 0    60   Input ~ 0
IPH_CLK
Wire Wire Line
	11500 6950 11500 7400
Wire Wire Line
	11500 7400 9200 7400
Text GLabel 9200 7550 0    60   Input ~ 0
IPL_CLK
$Comp
L 74LS374 U?
U 1 1 57A82FD7
P 11900 6250
F 0 "U?" H 11800 5900 60  0000 C CNN
F 1 "74LS374" H 11950 5750 60  0000 C CNN
F 2 "~" H 11900 6250 60  0000 C CNN
F 3 "~" H 11900 6250 60  0000 C CNN
	1    11900 6250
	0    1    -1   0   
$EndComp
Wire Wire Line
	12700 6950 12700 7050
$Comp
L 74LS374 U?
U 1 1 57A84059
P 10600 6250
F 0 "U?" H 10500 5900 60  0000 C CNN
F 1 "74LS374" H 10650 5750 60  0000 C CNN
F 2 "~" H 10600 6250 60  0000 C CNN
F 3 "~" H 10600 6250 60  0000 C CNN
	1    10600 6250
	0    1    -1   0   
$EndComp
Text Notes 11100 6200 2    60   ~ 0
Resource\nBank Select\nRegister
$Comp
L GND #PWR?
U 1 1 57A841C1
P 10100 7050
F 0 "#PWR?" H 10100 7050 30  0001 C CNN
F 1 "GND" H 10100 6980 30  0001 C CNN
F 2 "" H 10100 7050 60  0000 C CNN
F 3 "" H 10100 7050 60  0000 C CNN
	1    10100 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 6950 10100 7050
Text GLabel 9200 7250 0    60   Input ~ 0
RESOURCE_BANK_CLK
Wire Wire Line
	9200 7250 10200 7250
Wire Wire Line
	10200 7250 10200 6950
Wire Wire Line
	11100 5550 11100 5400
Connection ~ 11100 5400
Wire Wire Line
	11000 5550 11000 5250
Connection ~ 11000 5250
Wire Wire Line
	10900 5550 10900 5100
Connection ~ 10900 5100
Wire Wire Line
	10800 5550 10800 4950
Connection ~ 10800 4950
$Comp
L 27C801 U?
U 1 1 57A7D10C
P 12800 10300
F 0 "U?" H 12500 11350 70  0000 C CNN
F 1 "27C801" H 12800 9100 70  0000 C CNN
F 2 "~" H 12800 10300 60  0000 C CNN
F 3 "~" H 12800 10300 60  0000 C CNN
	1    12800 10300
	0    1    1    0   
$EndComp
Wire Wire Line
	13700 6950 13700 9600
Wire Wire Line
	13600 9600 13600 6950
Wire Wire Line
	13500 6950 13500 9600
Wire Wire Line
	13400 9600 13400 6950
Wire Wire Line
	13300 6950 13300 9600
Wire Wire Line
	13200 9600 13200 6950
Wire Wire Line
	13100 6950 13100 9600
Wire Wire Line
	13000 9600 13000 6950
Wire Wire Line
	12900 9600 12900 8300
Wire Wire Line
	12900 8300 12400 8300
Wire Wire Line
	12400 8300 12400 6950
Wire Wire Line
	12300 6950 12300 8350
Wire Wire Line
	12300 8350 12800 8350
Wire Wire Line
	12800 8350 12800 9600
Wire Wire Line
	12700 9600 12700 8400
Wire Wire Line
	12700 8400 12200 8400
Wire Wire Line
	12200 8400 12200 6950
Wire Wire Line
	12100 6950 12100 8450
Wire Wire Line
	12100 8450 12600 8450
Wire Wire Line
	12600 8450 12600 9600
Wire Wire Line
	12500 9600 12500 8500
Wire Wire Line
	12500 8500 12000 8500
Wire Wire Line
	12000 8500 12000 6950
Wire Wire Line
	11900 6950 11900 8550
Wire Wire Line
	11900 8550 12400 8550
Wire Wire Line
	12400 8550 12400 9600
Wire Wire Line
	12300 9600 12300 8600
Wire Wire Line
	12300 8600 11800 8600
Wire Wire Line
	11800 8600 11800 6950
Wire Wire Line
	11700 6950 11700 8650
Wire Wire Line
	11700 8650 12200 8650
Wire Wire Line
	12200 8650 12200 9600
Wire Wire Line
	12100 9600 12100 8850
Wire Wire Line
	12100 8850 11100 8850
Wire Wire Line
	11000 8900 12000 8900
Wire Wire Line
	12000 8900 12000 9600
Wire Wire Line
	11900 9600 11900 8950
Wire Wire Line
	11900 8950 10900 8950
Wire Wire Line
	10800 9000 11800 9000
Wire Wire Line
	11800 9000 11800 9600
NoConn ~ 10700 6950
NoConn ~ 10600 6950
NoConn ~ 10500 6950
NoConn ~ 10400 6950
NoConn ~ 10700 5550
NoConn ~ 10600 5550
NoConn ~ 10500 5550
NoConn ~ 10400 5550
Text GLabel 13950 12300 2    60   Output ~ 0
DATA_0
Text GLabel 13950 12150 2    60   Output ~ 0
DATA_1
Text GLabel 13950 12000 2    60   Output ~ 0
DATA_2
Text GLabel 13950 11850 2    60   Output ~ 0
DATA_3
Text GLabel 13950 11700 2    60   Output ~ 0
DATA_4
Text GLabel 13950 11550 2    60   Output ~ 0
DATA_5
Text GLabel 13950 11400 2    60   Output ~ 0
DATA_6
Text GLabel 13950 11250 2    60   Output ~ 0
DATA_7
Wire Wire Line
	12950 11000 12950 11250
Wire Wire Line
	12950 11250 13950 11250
Wire Wire Line
	13050 11000 13050 11400
Wire Wire Line
	13050 11400 13950 11400
Wire Wire Line
	13150 11000 13150 11550
Wire Wire Line
	13150 11550 13950 11550
Wire Wire Line
	13250 11000 13250 11700
Wire Wire Line
	13250 11700 13950 11700
Wire Wire Line
	13350 11000 13350 11850
Wire Wire Line
	13350 11850 13950 11850
Wire Wire Line
	13450 11000 13450 12000
Wire Wire Line
	13450 12000 13950 12000
Wire Wire Line
	13950 12150 13550 12150
Wire Wire Line
	13550 12150 13550 11000
Wire Wire Line
	13650 11000 13650 12300
Wire Wire Line
	13650 12300 13950 12300
NoConn ~ 12450 11000
Text GLabel 11800 11150 0    60   Input ~ 0
-CODEROM_OE
Wire Wire Line
	11800 11150 11950 11150
Wire Wire Line
	11950 11150 11950 11000
Wire Wire Line
	9200 7550 12800 7550
Wire Wire Line
	12800 7550 12800 6950
$Comp
L GND #PWR?
U 1 1 57A7F509
P 11400 7050
F 0 "#PWR?" H 11400 7050 30  0001 C CNN
F 1 "GND" H 11400 6980 30  0001 C CNN
F 2 "" H 11400 7050 60  0000 C CNN
F 3 "" H 11400 7050 60  0000 C CNN
	1    11400 7050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57A7F50F
P 12700 7050
F 0 "#PWR?" H 12700 7050 30  0001 C CNN
F 1 "GND" H 12700 6980 30  0001 C CNN
F 2 "" H 12700 7050 60  0000 C CNN
F 3 "" H 12700 7050 60  0000 C CNN
	1    12700 7050
	1    0    0    -1  
$EndComp
Text GLabel 14300 7700 2    60   Output ~ 0
RESOURCE_BANK_0
Text GLabel 14300 7850 2    60   Output ~ 0
RESOURCE_BANK_1
Text GLabel 14300 8000 2    60   Output ~ 0
RESOURCE_BANK_2
Text GLabel 14300 8150 2    60   Output ~ 0
RESOURCE_BANK_3
Wire Wire Line
	11100 7700 14300 7700
Wire Wire Line
	11000 7850 14300 7850
Wire Wire Line
	10900 8000 14300 8000
Wire Wire Line
	10800 8150 14300 8150
Connection ~ 11100 7700
Connection ~ 11000 7850
Connection ~ 10900 8000
Connection ~ 10800 8150
Wire Wire Line
	11100 8850 11100 7700
Wire Wire Line
	11100 7700 11100 6950
Wire Wire Line
	11000 6950 11000 7850
Wire Wire Line
	11000 7850 11000 8900
Wire Wire Line
	10900 8950 10900 8000
Wire Wire Line
	10900 8000 10900 6950
Wire Wire Line
	10800 6950 10800 8150
Wire Wire Line
	10800 8150 10800 9000
$EndSCHEMATC
