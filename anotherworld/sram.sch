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
Sheet 5 8
Title ""
Date "9 aug 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 6116 IC?
U 1 1 57A2BAA0
P 5750 7550
F 0 "IC?" H 5350 8350 40  0000 C CNN
F 1 "6116" H 6100 6750 40  0000 C CNN
F 2 "" H 5750 7550 60  0000 C CNN
F 3 "" H 5750 7550 60  0000 C CNN
	1    5750 7550
	0    1    1    0   
$EndComp
Text GLabel 4550 6700 0    60   Input ~ 0
-SRAM_WE
Text GLabel 4550 6550 0    60   Input ~ 0
-SRAM_OE
Text GLabel 4550 6250 0    60   Input ~ 0
BYTE_SELECT
Text GLabel 4800 9400 0    60   3State ~ 0
DATA_0
Text GLabel 4800 9250 0    60   3State ~ 0
DATA_1
Text GLabel 4800 9100 0    60   3State ~ 0
DATA_2
Text GLabel 4800 8950 0    60   3State ~ 0
DATA_3
Text GLabel 4800 8800 0    60   3State ~ 0
DATA_4
Text GLabel 4800 8650 0    60   3State ~ 0
DATA_5
Text GLabel 4800 8500 0    60   3State ~ 0
DATA_6
Text GLabel 4800 8350 0    60   3State ~ 0
DATA_7
$Comp
L GND #PWR?
U 1 1 57A95CE7
P 4900 6900
F 0 "#PWR?" H 4900 6900 30  0001 C CNN
F 1 "GND" H 4900 6830 30  0001 C CNN
F 2 "" H 4900 6900 60  0000 C CNN
F 3 "" H 4900 6900 60  0000 C CNN
	1    4900 6900
	1    0    0    -1  
$EndComp
$Comp
L 74LS374 U?
U 1 1 57A95F2B
P 5850 5000
F 0 "U?" H 5950 4700 60  0000 C CNN
F 1 "74LS374" H 5900 4550 60  0000 C CNN
F 2 "~" H 5850 5000 60  0000 C CNN
F 3 "~" H 5850 5000 60  0000 C CNN
	1    5850 5000
	0    1    1    0   
$EndComp
Text GLabel 4550 6000 0    60   Input ~ 0
SRAM_SEL_1
Text GLabel 4550 5850 0    60   Input ~ 0
SRAM_SEL_0
Text GLabel 4700 3800 0    60   Input ~ 0
DATA_0
Text GLabel 4700 3650 0    60   Input ~ 0
DATA_1
Text GLabel 4700 3500 0    60   Input ~ 0
DATA_2
Text GLabel 4700 3350 0    60   Input ~ 0
DATA_3
Text GLabel 4700 3200 0    60   Input ~ 0
DATA_4
Text GLabel 4700 3050 0    60   Input ~ 0
DATA_5
Text GLabel 4700 2900 0    60   Input ~ 0
DATA_6
Text GLabel 4700 2750 0    60   Input ~ 0
DATA_7
Text Notes 5650 4950 0    59   ~ 12
SRAM Address\nRegister
Text Notes 5400 7500 0    59   ~ 12
Static RAM\n4x 512bytes
Text Notes 2650 7050 0    59   ~ 0
Memory Ranges:\n\n0 - Channel Pointers\n     64 x 16-bit instruction pointer values\n\n1 - "VM" variables (a.k.a. proper system RAM)\n     256 x 16-bit values\n\n2 - Stack\n     256 x 16-bit values\n\n3 - "scratch pad" memory area\n     General purpose (512 bytes)
Text GLabel 4700 4000 0    60   Input ~ 0
SRAM_ADDR_CLK
$Comp
L 74469 U?
U 1 1 57A96493
P 8850 5000
F 0 "U?" H 8850 4600 70  0000 C CNN
F 1 "74469" H 8950 4450 70  0000 C CNN
F 2 "~" H 8850 5000 60  0000 C CNN
F 3 "~" H 8850 5000 60  0000 C CNN
	1    8850 5000
	0    1    1    0   
$EndComp
Text Notes 8800 5000 0    59   ~ 12
Stack Pointer\nRegister
Text GLabel 8300 6050 0    60   Input ~ 0
-STACK_POINTER_OE
Text GLabel 8000 3950 0    60   Input ~ 0
STACK_CLK
Wire Wire Line
	6450 6250 6450 6950
Wire Wire Line
	6350 5700 6350 6950
Wire Wire Line
	6250 5700 6250 6950
Wire Wire Line
	6150 5700 6150 6950
Wire Wire Line
	6050 5700 6050 6950
Wire Wire Line
	5950 5700 5950 6950
Wire Wire Line
	5850 5700 5850 6950
Wire Wire Line
	5750 5700 5750 6950
Wire Wire Line
	5250 6950 5250 6550
Wire Wire Line
	5150 6950 5150 6700
Wire Wire Line
	6450 6250 4550 6250
Wire Wire Line
	4800 8350 5750 8350
Wire Wire Line
	5750 8350 5750 8150
Wire Wire Line
	5850 8150 5850 8500
Wire Wire Line
	5850 8500 4800 8500
Wire Wire Line
	4800 8650 5950 8650
Wire Wire Line
	5950 8650 5950 8150
Wire Wire Line
	6050 8150 6050 8800
Wire Wire Line
	6050 8800 4800 8800
Wire Wire Line
	4800 8950 6150 8950
Wire Wire Line
	6150 8950 6150 8150
Wire Wire Line
	6250 8150 6250 9100
Wire Wire Line
	6250 9100 4800 9100
Wire Wire Line
	4800 9250 6350 9250
Wire Wire Line
	6350 9250 6350 8150
Wire Wire Line
	6450 8150 6450 9400
Wire Wire Line
	6450 9400 4800 9400
Wire Wire Line
	5150 6700 4550 6700
Wire Wire Line
	5250 6550 4550 6550
Wire Wire Line
	5050 6950 5050 6800
Wire Wire Line
	4900 6900 4900 6800
Wire Wire Line
	4900 6800 5050 6800
Wire Wire Line
	5650 5700 5650 6950
Wire Wire Line
	4550 6000 5450 6000
Wire Wire Line
	5450 6000 5450 6950
Wire Wire Line
	5550 6950 5550 5850
Wire Wire Line
	5550 5850 4550 5850
Wire Wire Line
	4700 2750 11850 2750
Wire Wire Line
	4700 2900 11950 2900
Wire Wire Line
	4700 3050 12050 3050
Wire Wire Line
	4700 3200 12150 3200
Wire Wire Line
	4700 3350 12250 3350
Wire Wire Line
	4700 3500 12350 3500
Wire Wire Line
	4700 3650 12450 3650
Wire Wire Line
	4700 3800 12550 3800
Wire Wire Line
	6350 3800 6350 4300
Wire Wire Line
	6250 3650 6250 4300
Wire Wire Line
	6150 3500 6150 4300
Wire Wire Line
	6050 3350 6050 4300
Wire Wire Line
	5950 3200 5950 4300
Wire Wire Line
	5850 3050 5850 4300
Wire Wire Line
	5750 2900 5750 4300
Wire Wire Line
	5650 2750 5650 4300
Wire Wire Line
	5200 4200 5350 4200
Wire Wire Line
	5350 4200 5350 4300
Wire Wire Line
	4700 4000 5450 4000
Wire Wire Line
	5450 4000 5450 4300
Wire Wire Line
	9450 3800 9450 4350
Connection ~ 6350 3800
Wire Wire Line
	9350 3650 9350 4350
Connection ~ 6250 3650
Wire Wire Line
	9250 3500 9250 4350
Connection ~ 6150 3500
Wire Wire Line
	9150 3350 9150 4350
Connection ~ 6050 3350
Wire Wire Line
	9050 3200 9050 4350
Connection ~ 5950 3200
Wire Wire Line
	8950 3050 8950 4350
Connection ~ 5850 3050
Wire Wire Line
	8850 2900 8850 4350
Connection ~ 5750 2900
Wire Wire Line
	8750 2750 8750 4350
Connection ~ 5650 2750
Wire Wire Line
	8750 5650 8750 6800
Wire Wire Line
	5650 6800 11850 6800
Connection ~ 5650 6800
Wire Wire Line
	8850 5650 8850 6750
Wire Wire Line
	5750 6750 11950 6750
Connection ~ 5750 6750
Wire Wire Line
	5850 6700 12050 6700
Wire Wire Line
	8950 6700 8950 5650
Connection ~ 5850 6700
Wire Wire Line
	9050 5650 9050 6650
Wire Wire Line
	5950 6650 12150 6650
Connection ~ 5950 6650
Wire Wire Line
	6050 6600 12250 6600
Wire Wire Line
	9150 6600 9150 5650
Connection ~ 6050 6600
Wire Wire Line
	9250 5650 9250 6550
Wire Wire Line
	6150 6550 12350 6550
Connection ~ 6150 6550
Wire Wire Line
	6250 6500 12450 6500
Wire Wire Line
	9350 6500 9350 5650
Connection ~ 6250 6500
Wire Wire Line
	9450 5650 9450 6450
Wire Wire Line
	6350 6450 12550 6450
Connection ~ 6350 6450
Wire Wire Line
	8300 6050 8550 6050
Wire Wire Line
	8550 6050 8550 5650
Wire Wire Line
	8000 3950 8550 3950
Wire Wire Line
	8550 3950 8550 4350
NoConn ~ 8250 4350
Text GLabel 9700 5850 2    60   Output ~ 0
STACK_OVERFLOW
Wire Wire Line
	9700 5850 8450 5850
Wire Wire Line
	8450 5850 8450 5650
Text GLabel 8000 4100 0    60   Input ~ 0
STACK_COUNTER_FUNCTION_0
Text GLabel 8000 4250 0    60   Input ~ 0
STACK_COUNTER_FUNCTION_1
Wire Wire Line
	8000 4250 8350 4250
Wire Wire Line
	8350 4250 8350 4350
Wire Wire Line
	8000 4100 8450 4100
Wire Wire Line
	8450 4100 8450 4350
$Comp
L 74469 U?
U 1 1 57A9717D
P 11950 5000
F 0 "U?" H 11950 4600 70  0000 C CNN
F 1 "74469" H 12050 4450 70  0000 C CNN
F 2 "~" H 11950 5000 60  0000 C CNN
F 3 "~" H 11950 5000 60  0000 C CNN
	1    11950 5000
	0    1    1    0   
$EndComp
Text Notes 11750 5000 0    59   ~ 12
Current Channel\nRegister
Text GLabel 11400 6050 0    60   Input ~ 0
-CURRENT_CHANNEL_OE
Text GLabel 11100 3950 0    60   Input ~ 0
CURRENT_CHANNEL_CLK
Wire Wire Line
	12550 3800 12550 4350
Wire Wire Line
	12450 3650 12450 4350
Wire Wire Line
	12350 3500 12350 4350
Wire Wire Line
	12250 3350 12250 4350
Wire Wire Line
	12150 3200 12150 4350
Wire Wire Line
	12050 3050 12050 4350
Wire Wire Line
	11950 2900 11950 4350
Wire Wire Line
	11850 2750 11850 4350
Wire Wire Line
	11850 6800 11850 5650
Wire Wire Line
	11950 6750 11950 5650
Wire Wire Line
	12050 6700 12050 5650
Wire Wire Line
	12150 6650 12150 5650
Wire Wire Line
	12250 6600 12250 5650
Wire Wire Line
	12350 6550 12350 5650
Wire Wire Line
	12450 6500 12450 5650
Wire Wire Line
	12550 6450 12550 5650
Wire Wire Line
	11400 6050 11650 6050
Wire Wire Line
	11650 6050 11650 5650
Wire Wire Line
	11100 3950 11650 3950
Wire Wire Line
	11650 3950 11650 4350
NoConn ~ 11350 4350
Text GLabel 12800 5850 2    60   Output ~ 0
NEXT_FRAME
Wire Wire Line
	12800 5850 11550 5850
Wire Wire Line
	11550 5850 11550 5650
Text GLabel 11100 4100 0    60   Input ~ 0
CHANNEL_COUNTER_FUNCTION_0
Text GLabel 11100 4250 0    60   Input ~ 0
CHANNEL_COUNTER_FUNCTION_1
Wire Wire Line
	11100 4250 11450 4250
Wire Wire Line
	11450 4250 11450 4350
Wire Wire Line
	11100 4100 11550 4100
Wire Wire Line
	11550 4100 11550 4350
Connection ~ 9450 3800
Connection ~ 9350 3650
Connection ~ 9250 3500
Connection ~ 9150 3350
Connection ~ 9050 3200
Connection ~ 8950 3050
Connection ~ 8850 2900
Connection ~ 8750 2750
Connection ~ 8750 6800
Connection ~ 8850 6750
Connection ~ 8950 6700
Connection ~ 9050 6650
Connection ~ 9150 6600
Connection ~ 9250 6550
Connection ~ 9350 6500
Connection ~ 9450 6450
$Comp
L 74LS139 U?
U 1 1 57A97549
P 10600 8600
F 0 "U?" H 10600 8700 60  0000 C CNN
F 1 "74LS139" H 10600 8500 60  0000 C CNN
F 2 "~" H 10600 8600 60  0000 C CNN
F 3 "~" H 10600 8600 60  0000 C CNN
	1    10600 8600
	1    0    0    -1  
$EndComp
Text GLabel 11700 8300 2    60   Output ~ 0
-CURRENT_CHANNEL_OE
Text GLabel 11700 8500 2    60   Output ~ 0
-STACK_POINTER_OE
Text GLabel 5200 4200 0    60   Input ~ 0
-SRAM_ADDRESS_OE
Text GLabel 11700 8700 2    60   Output ~ 0
-SRAM_ADDRESS_OE
NoConn ~ 11450 8900
Wire Wire Line
	11450 8700 11700 8700
Wire Wire Line
	11700 8500 11450 8500
Wire Wire Line
	11450 8300 11700 8300
Text GLabel 9550 8350 0    60   Input ~ 0
ADDRESS_BUS_SEL_1
Text GLabel 9550 8500 0    60   Input ~ 0
ADDRESS_BUS_SEL_0
Wire Wire Line
	9550 8350 9750 8350
Wire Wire Line
	9750 8500 9550 8500
$Comp
L GND #PWR?
U 1 1 57A97887
P 9600 8950
F 0 "#PWR?" H 9600 8950 30  0001 C CNN
F 1 "GND" H 9600 8880 30  0001 C CNN
F 2 "" H 9600 8950 60  0000 C CNN
F 3 "" H 9600 8950 60  0000 C CNN
	1    9600 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 8950 9600 8850
Wire Wire Line
	9600 8850 9750 8850
$EndSCHEMATC
