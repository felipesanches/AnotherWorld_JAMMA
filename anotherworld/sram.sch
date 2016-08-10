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
Sheet 4 7
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
P 5850 4350
F 0 "U?" H 5950 4050 60  0000 C CNN
F 1 "74LS374" H 5900 3900 60  0000 C CNN
F 2 "~" H 5850 4350 60  0000 C CNN
F 3 "~" H 5850 4350 60  0000 C CNN
	1    5850 4350
	0    1    1    0   
$EndComp
Text GLabel 4550 6000 0    60   Input ~ 0
SRAM_SEL_1
Text GLabel 4550 5850 0    60   Input ~ 0
SRAM_SEL_0
Text GLabel 4700 3150 0    60   Input ~ 0
DATA_0
Text GLabel 4700 3000 0    60   Input ~ 0
DATA_1
Text GLabel 4700 2850 0    60   Input ~ 0
DATA_2
Text GLabel 4700 2700 0    60   Input ~ 0
DATA_3
Text GLabel 4700 2550 0    60   Input ~ 0
DATA_4
Text GLabel 4700 2400 0    60   Input ~ 0
DATA_5
Text GLabel 4700 2250 0    60   Input ~ 0
DATA_6
Text GLabel 4700 2100 0    60   Input ~ 0
DATA_7
Text Notes 5650 4300 0    59   ~ 12
SRAM Address\nRegister
Text Notes 5400 7500 0    59   ~ 12
Static RAM\n4x 512bytes
Text Notes 2650 7050 0    59   ~ 0
Memory Ranges:\n\n0 - Channel Pointers\n     64 x 16-bit instruction pointer values\n\n1 - "VM" variables (a.k.a. proper system RAM)\n     256 x 16-bit values\n\n2 - Stack\n     256 x 16-bit values\n\n3 - "scratch pad" memory area\n     General purpose (512 bytes)
Text GLabel 4700 3350 0    60   Input ~ 0
SRAM_ADDR_CLK
$Comp
L 74469 U?
U 1 1 57A96493
P 8850 4300
F 0 "U?" H 8850 3900 70  0000 C CNN
F 1 "74469" H 8950 3750 70  0000 C CNN
F 2 "~" H 8850 4300 60  0000 C CNN
F 3 "~" H 8850 4300 60  0000 C CNN
	1    8850 4300
	0    1    1    0   
$EndComp
Text Notes 8650 4300 0    59   ~ 12
Stack Pointer\nUp/Down Counter
Text GLabel 8300 5350 0    60   Input ~ 0
-STACK_POINTER_OE
Text GLabel 8000 3250 0    60   Input ~ 0
STACK_CLK
NoConn ~ 8250 3650
Text GLabel 9700 5150 2    60   Output ~ 0
STACK_OVERFLOW
Text GLabel 8000 3400 0    60   Input ~ 0
STACK_COUNTER_FUNCTION_0
Text GLabel 8000 3550 0    60   Input ~ 0
STACK_COUNTER_FUNCTION_1
$Comp
L 74469 U?
U 1 1 57A9717D
P 12150 4300
F 0 "U?" H 12150 3900 70  0000 C CNN
F 1 "74469" H 12250 3750 70  0000 C CNN
F 2 "~" H 12150 4300 60  0000 C CNN
F 3 "~" H 12150 4300 60  0000 C CNN
	1    12150 4300
	0    1    1    0   
$EndComp
Text Notes 11950 4300 0    59   ~ 12
Current Channel\nPointer (Counter)
Text GLabel 11600 5350 0    60   Input ~ 0
-CURRENT_CHANNEL_OE
Text GLabel 11300 3250 0    60   Input ~ 0
CURRENT_CHANNEL_CLK
NoConn ~ 11550 3650
Text GLabel 13000 5150 2    60   Output ~ 0
NEXT_FRAME
Text GLabel 11300 3400 0    60   Input ~ 0
CHANNEL_COUNTER_FUNCTION_0
Text GLabel 11300 3550 0    60   Input ~ 0
CHANNEL_COUNTER_FUNCTION_1
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
Text GLabel 5200 3550 0    60   Input ~ 0
-SRAM_ADDRESS_OE
Text GLabel 11700 8700 2    60   Output ~ 0
-SRAM_ADDRESS_OE
NoConn ~ 11450 8900
Text GLabel 9550 8350 0    60   Input ~ 0
ADDRESS_BUS_SEL_1
Text GLabel 9550 8500 0    60   Input ~ 0
ADDRESS_BUS_SEL_0
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
$Comp
L GND #PWR?
U 1 1 57A9F070
P 9600 3650
F 0 "#PWR?" H 9600 3650 30  0001 C CNN
F 1 "GND" H 9600 3580 30  0001 C CNN
F 2 "" H 9600 3650 60  0000 C CNN
F 3 "" H 9600 3650 60  0000 C CNN
	1    9600 3650
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57A9FBDE
P 12900 3650
F 0 "#PWR?" H 12900 3650 30  0001 C CNN
F 1 "GND" H 12900 3580 30  0001 C CNN
F 2 "" H 12900 3650 60  0000 C CNN
F 3 "" H 12900 3650 60  0000 C CNN
	1    12900 3650
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 57A9FBF7
P 12100 6000
F 0 "R?" V 12180 6000 40  0000 C CNN
F 1 "R" V 12107 6001 40  0000 C CNN
F 2 "~" V 12030 6000 30  0000 C CNN
F 3 "~" H 12100 6000 30  0000 C CNN
	1    12100 6000
	1    0    0    1   
$EndComp
$Comp
L R R?
U 1 1 57A9FC04
P 11900 6000
F 0 "R?" V 11980 6000 40  0000 C CNN
F 1 "R" V 11907 6001 40  0000 C CNN
F 2 "~" V 11830 6000 30  0000 C CNN
F 3 "~" H 11900 6000 30  0000 C CNN
	1    11900 6000
	1    0    0    1   
$EndComp
Wire Wire Line
	6450 6250 6450 6950
Wire Wire Line
	6350 5050 6350 6950
Wire Wire Line
	6250 5050 6250 6950
Wire Wire Line
	6150 5050 6150 6950
Wire Wire Line
	6050 5050 6050 6950
Wire Wire Line
	5950 5050 5950 6950
Wire Wire Line
	5850 5050 5850 6950
Wire Wire Line
	5750 5050 5750 6950
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
	5650 5050 5650 6950
Wire Wire Line
	4550 6000 5450 6000
Wire Wire Line
	5450 6000 5450 6950
Wire Wire Line
	5550 6950 5550 5850
Wire Wire Line
	5550 5850 4550 5850
Wire Wire Line
	6350 3150 6350 3650
Wire Wire Line
	6250 3000 6250 3650
Wire Wire Line
	6150 2850 6150 3650
Wire Wire Line
	6050 2700 6050 3650
Wire Wire Line
	5950 2550 5950 3650
Wire Wire Line
	5850 2400 5850 3650
Wire Wire Line
	5750 2250 5750 3650
Wire Wire Line
	5650 2100 5650 3650
Wire Wire Line
	5200 3550 5350 3550
Wire Wire Line
	5350 3550 5350 3650
Wire Wire Line
	4700 3350 5450 3350
Wire Wire Line
	5450 3350 5450 3650
Wire Wire Line
	8750 4950 8750 6800
Wire Wire Line
	5650 6800 11900 6800
Connection ~ 5650 6800
Wire Wire Line
	8850 4950 8850 6750
Wire Wire Line
	5750 6750 12100 6750
Connection ~ 5750 6750
Wire Wire Line
	5850 6700 12250 6700
Wire Wire Line
	8950 6700 8950 4950
Connection ~ 5850 6700
Wire Wire Line
	9050 4950 9050 6650
Wire Wire Line
	5950 6650 12350 6650
Connection ~ 5950 6650
Wire Wire Line
	6050 6600 12450 6600
Wire Wire Line
	9150 6600 9150 4950
Connection ~ 6050 6600
Wire Wire Line
	9250 4950 9250 6550
Wire Wire Line
	6150 6550 12550 6550
Connection ~ 6150 6550
Wire Wire Line
	6250 6500 12650 6500
Wire Wire Line
	9350 6500 9350 4950
Connection ~ 6250 6500
Wire Wire Line
	9450 4950 9450 6450
Wire Wire Line
	6350 6450 12750 6450
Connection ~ 6350 6450
Wire Wire Line
	8300 5350 8550 5350
Wire Wire Line
	8550 5350 8550 4950
Wire Wire Line
	8000 3250 8550 3250
Wire Wire Line
	8550 3250 8550 3650
Wire Wire Line
	9700 5150 8450 5150
Wire Wire Line
	8450 5150 8450 4950
Wire Wire Line
	8000 3550 8350 3550
Wire Wire Line
	8350 3550 8350 3650
Wire Wire Line
	8000 3400 8450 3400
Wire Wire Line
	8450 3400 8450 3650
Wire Wire Line
	12250 6700 12250 4950
Wire Wire Line
	12350 6650 12350 4950
Wire Wire Line
	12450 6600 12450 4950
Wire Wire Line
	12550 6550 12550 4950
Wire Wire Line
	12650 6500 12650 4950
Wire Wire Line
	12750 6450 12750 4950
Wire Wire Line
	11600 5350 11850 5350
Wire Wire Line
	11850 5350 11850 4950
Wire Wire Line
	11300 3250 11850 3250
Wire Wire Line
	11850 3250 11850 3650
Wire Wire Line
	13000 5150 11750 5150
Wire Wire Line
	11750 5150 11750 4950
Wire Wire Line
	11300 3550 11650 3550
Wire Wire Line
	11650 3550 11650 3650
Wire Wire Line
	11300 3400 11750 3400
Wire Wire Line
	11750 3400 11750 3650
Connection ~ 8750 6800
Connection ~ 8850 6750
Connection ~ 8950 6700
Connection ~ 9050 6650
Connection ~ 9150 6600
Connection ~ 9250 6550
Connection ~ 9350 6500
Connection ~ 9450 6450
Wire Wire Line
	11450 8700 11700 8700
Wire Wire Line
	11700 8500 11450 8500
Wire Wire Line
	11450 8300 11700 8300
Wire Wire Line
	9550 8350 9750 8350
Wire Wire Line
	9750 8500 9550 8500
Wire Wire Line
	9600 8950 9600 8850
Wire Wire Line
	9600 8850 9750 8850
Wire Wire Line
	9600 3550 9600 3650
Wire Wire Line
	8750 3550 9600 3550
Wire Wire Line
	9450 3550 9450 3650
Wire Wire Line
	8750 3550 8750 3650
Connection ~ 9450 3550
Wire Wire Line
	8850 3650 8850 3550
Connection ~ 8850 3550
Wire Wire Line
	8950 3550 8950 3650
Connection ~ 8950 3550
Wire Wire Line
	9050 3650 9050 3550
Connection ~ 9050 3550
Wire Wire Line
	9150 3550 9150 3650
Connection ~ 9150 3550
Wire Wire Line
	9250 3650 9250 3550
Connection ~ 9250 3550
Wire Wire Line
	9350 3550 9350 3650
Connection ~ 9350 3550
Wire Wire Line
	4700 2100 5650 2100
Wire Wire Line
	5750 2250 4700 2250
Wire Wire Line
	4700 2400 5850 2400
Wire Wire Line
	5950 2550 4700 2550
Wire Wire Line
	4700 2700 6050 2700
Wire Wire Line
	6150 2850 4700 2850
Wire Wire Line
	4700 3000 6250 3000
Wire Wire Line
	6350 3150 4700 3150
Wire Wire Line
	12900 3550 12900 3650
Wire Wire Line
	12250 3550 12900 3550
Wire Wire Line
	12750 3550 12750 3650
Connection ~ 12750 3550
Wire Wire Line
	12250 3550 12250 3650
Wire Wire Line
	12350 3650 12350 3550
Connection ~ 12350 3550
Wire Wire Line
	12450 3550 12450 3650
Connection ~ 12450 3550
Wire Wire Line
	12550 3650 12550 3550
Connection ~ 12550 3550
Wire Wire Line
	12650 3550 12650 3650
Connection ~ 12650 3550
Wire Wire Line
	11900 6800 11900 6250
Wire Wire Line
	12100 6750 12100 6250
NoConn ~ 12050 4950
NoConn ~ 12150 4950
$Comp
L +5V #PWR?
U 1 1 57A9FEEB
P 12100 5600
F 0 "#PWR?" H 12100 5690 20  0001 C CNN
F 1 "+5V" H 12100 5690 30  0000 C CNN
F 2 "" H 12100 5600 60  0000 C CNN
F 3 "" H 12100 5600 60  0000 C CNN
	1    12100 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 5600 12100 5750
Wire Wire Line
	12100 5650 11900 5650
Wire Wire Line
	11900 5650 11900 5750
Connection ~ 12100 5650
$Comp
L +5V #PWR?
U 1 1 57AA021B
P 12050 3500
F 0 "#PWR?" H 12050 3590 20  0001 C CNN
F 1 "+5V" H 12050 3590 30  0000 C CNN
F 2 "" H 12050 3500 60  0000 C CNN
F 3 "" H 12050 3500 60  0000 C CNN
	1    12050 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12050 3500 12050 3650
Wire Wire Line
	12050 3550 12150 3550
Wire Wire Line
	12150 3550 12150 3650
Connection ~ 12050 3550
Text Notes 12950 4200 0    60   ~ 12
This is a 6-bit counter\nthat cycles through\ncode execution\nchannels 0 to 63
$EndSCHEMATC
