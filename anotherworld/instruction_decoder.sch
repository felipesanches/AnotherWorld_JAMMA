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
LIBS:anotherworld-cache
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 3 8
Title ""
Date "7 aug 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74LS154 U?
U 1 1 57A22DE6
P 3300 4500
F 0 "U?" H 3300 5400 60  0000 C CNN
F 1 "74LS154" H 3250 3650 60  0000 C CNN
F 2 "~" H 3300 4500 60  0000 C CNN
F 3 "~" H 3300 4500 60  0000 C CNN
	1    3300 4500
	0    -1   -1   0   
$EndComp
$Comp
L 74LS154 U?
U 1 1 57A22DF3
P 6150 4500
F 0 "U?" H 6150 5400 60  0000 C CNN
F 1 "74LS154" H 6100 3650 60  0000 C CNN
F 2 "~" H 6150 4500 60  0000 C CNN
F 3 "~" H 6150 4500 60  0000 C CNN
	1    6150 4500
	0    -1   -1   0   
$EndComp
Text GLabel 1650 7250 0    60   Input ~ 0
IR_0
Text GLabel 1650 7400 0    60   Input ~ 0
IR_1
Text GLabel 1650 7550 0    60   Input ~ 0
IR_2
Text GLabel 1650 7700 0    60   Input ~ 0
IR_3
Text GLabel 1650 7850 0    60   Input ~ 0
IR_4
$Comp
L 74HC04 U?
U 1 1 57A22E63
P 5850 7250
F 0 "U?" H 6000 7350 40  0000 C CNN
F 1 "74HC04" H 6050 7150 40  0000 C CNN
F 2 "~" H 5850 7250 60  0000 C CNN
F 3 "~" H 5850 7250 60  0000 C CNN
	1    5850 7250
	0    -1   -1   0   
$EndComp
Text GLabel 7050 3250 2    60   Output ~ 0
-INVALID_OPCODE
Text GLabel 7050 2800 2    60   Output ~ 0
-PLAY_MUSIC
Text GLabel 7050 2650 2    60   Output ~ 0
-LOAD_RESOURCE
Text GLabel 7050 2500 2    60   Output ~ 0
-PLAY_SOUND
Text GLabel 7050 2350 2    60   Output ~ 0
-SHR
Text GLabel 7050 2200 2    60   Output ~ 0
-SHL
Text GLabel 7050 2050 2    60   Output ~ 0
-OR
Text GLabel 7050 1900 2    60   Output ~ 0
-AND
Text GLabel 7050 1750 2    60   Output ~ 0
-SUB
Text GLabel 7050 1600 2    60   Output ~ 0
-TEXT
Text GLabel 7050 1450 2    60   Output ~ 0
-KILL_CHANNEL
Text GLabel 7050 1300 2    60   Output ~ 0
-BLIT_FRAMEBUFFER
Text GLabel 4200 3550 2    60   Output ~ 0
-COPY_VIDEO_PAGE
Text GLabel 4200 3400 2    60   Output ~ 0
-FILL_VIDEO_PAGE
Text GLabel 4200 3250 2    60   Output ~ 0
-SELECT_VIDEO_PAGE
Text GLabel 4200 3100 2    60   Output ~ 0
-UPDATE_CHANNEL
Text GLabel 4200 2950 2    60   Output ~ 0
-SET_PALETTE
Text GLabel 4200 2500 2    60   Output ~ 0
-SET_CHANNEL
Text GLabel 4200 2350 2    60   Output ~ 0
-JMP
Text GLabel 4200 2200 2    60   Output ~ 0
-BREAK
Text GLabel 4200 2050 2    60   Output ~ 0
-RET
Text GLabel 4200 1900 2    60   Output ~ 0
-CALL
Text GLabel 4200 2800 2    60   Output ~ 0
-CONDITIONAL_JUMP
Text GLabel 4200 2650 2    60   Output ~ 0
-DJNZ
Text GLabel 4200 1750 2    60   Output ~ 0
-ADD_CONST
Text GLabel 4200 1600 2    60   Output ~ 0
-ADD
Text GLabel 4200 1450 2    60   Output ~ 0
-MOV
Text GLabel 4200 1300 2    60   Output ~ 0
-MOV_CONST
Text GLabel 8600 5300 0    60   Input ~ 0
PARAM1_0
Text GLabel 8600 5450 0    60   Input ~ 0
PARAM1_1
Text GLabel 8600 5600 0    60   Input ~ 0
PARAM1_2
Text GLabel 8600 6100 0    60   Input ~ 0
-CONDITIONAL_JUMP
Wire Wire Line
	3000 5150 3000 5250
Connection ~ 3100 5250
Wire Wire Line
	5650 7700 5650 5150
Wire Wire Line
	5550 7550 5550 5150
Wire Wire Line
	5450 7400 5450 5150
Wire Wire Line
	5350 7250 5350 5150
Wire Wire Line
	5850 5250 5950 5250
Wire Wire Line
	1650 7250 2500 7250
Wire Wire Line
	2500 7250 5350 7250
Wire Wire Line
	2500 7250 2500 5150
Wire Wire Line
	1650 7400 2600 7400
Wire Wire Line
	2600 7400 5450 7400
Wire Wire Line
	2600 7400 2600 5150
Wire Wire Line
	2700 5150 2700 7550
Wire Wire Line
	1650 7550 2700 7550
Wire Wire Line
	2700 7550 5550 7550
Wire Wire Line
	1650 7700 2800 7700
Wire Wire Line
	2800 7700 5650 7700
Wire Wire Line
	2800 7700 2800 5150
Wire Wire Line
	1650 7850 3000 7850
Wire Wire Line
	3000 7850 5850 7850
Connection ~ 3000 7850
Wire Wire Line
	3000 5250 3100 5250
Wire Wire Line
	3100 5150 3100 5250
Wire Wire Line
	3100 5250 3100 5400
Wire Wire Line
	5950 5150 5950 5250
Wire Wire Line
	5950 5250 5950 5400
Connection ~ 2500 7250
Connection ~ 2600 7400
Connection ~ 2700 7550
Connection ~ 2800 7700
Wire Wire Line
	6850 3250 6850 3700
Wire Wire Line
	6850 3700 6850 3800
Wire Wire Line
	6450 3700 6550 3700
Wire Wire Line
	6550 3700 6650 3700
Wire Wire Line
	6650 3700 6750 3700
Wire Wire Line
	6750 3700 6850 3700
Wire Wire Line
	6450 3700 6450 3800
Wire Wire Line
	6550 3800 6550 3700
Connection ~ 6550 3700
Wire Wire Line
	6650 3800 6650 3700
Connection ~ 6650 3700
Wire Wire Line
	6750 3800 6750 3700
Connection ~ 6750 3700
Connection ~ 6850 3700
Wire Wire Line
	6850 3250 7050 3250
Wire Wire Line
	7050 2800 6350 2800
Wire Wire Line
	6350 2800 6350 3800
Wire Wire Line
	7050 2650 6250 2650
Wire Wire Line
	6250 2650 6250 3800
Wire Wire Line
	7050 2500 6150 2500
Wire Wire Line
	6150 2500 6150 3800
Wire Wire Line
	7050 2350 6050 2350
Wire Wire Line
	6050 2350 6050 3800
Wire Wire Line
	7050 2200 5950 2200
Wire Wire Line
	5950 2200 5950 3800
Wire Wire Line
	7050 2050 5850 2050
Wire Wire Line
	5850 2050 5850 3800
Wire Wire Line
	7050 1900 5750 1900
Wire Wire Line
	5750 1900 5750 3800
Wire Wire Line
	7050 1750 5650 1750
Wire Wire Line
	5650 1750 5650 3800
Wire Wire Line
	7050 1600 5550 1600
Wire Wire Line
	5550 1600 5550 3800
Wire Wire Line
	7050 1450 5450 1450
Wire Wire Line
	5450 1450 5450 3800
Wire Wire Line
	7050 1300 5350 1300
Wire Wire Line
	5350 1300 5350 3800
Wire Wire Line
	4000 3800 4000 3550
Wire Wire Line
	4000 3550 4200 3550
Wire Wire Line
	4200 3400 3900 3400
Wire Wire Line
	3900 3400 3900 3800
Wire Wire Line
	4200 3250 3800 3250
Wire Wire Line
	3800 3250 3800 3800
Wire Wire Line
	4200 3100 3700 3100
Wire Wire Line
	3700 3100 3700 3800
Wire Wire Line
	4200 2950 3600 2950
Wire Wire Line
	4200 2500 3300 2500
Wire Wire Line
	3300 2500 3300 3800
Wire Wire Line
	4200 2350 3200 2350
Wire Wire Line
	3200 2350 3200 3800
Wire Wire Line
	4200 2200 3100 2200
Wire Wire Line
	3100 2200 3100 3800
Wire Wire Line
	4200 2050 3000 2050
Wire Wire Line
	3000 2050 3000 3800
Wire Wire Line
	4200 1900 2900 1900
Wire Wire Line
	2900 1900 2900 3800
Wire Wire Line
	3600 2950 3600 3800
Wire Wire Line
	3500 3800 3500 2800
Wire Wire Line
	3500 2800 4200 2800
Wire Wire Line
	4200 2650 3400 2650
Wire Wire Line
	3400 2650 3400 3800
Wire Wire Line
	4200 1750 2800 1750
Wire Wire Line
	2800 1750 2800 3800
Wire Wire Line
	2700 3800 2700 1600
Wire Wire Line
	2700 1600 4200 1600
Wire Wire Line
	4200 1450 2600 1450
Wire Wire Line
	2600 1450 2600 3800
Wire Wire Line
	2500 3800 2500 1300
Wire Wire Line
	2500 1300 4200 1300
$Comp
L 74LS138 U?
U 1 1 57A25CEF
P 9800 4550
F 0 "U?" H 9900 5050 60  0000 C CNN
F 1 "74LS138" H 9950 4001 60  0000 C CNN
F 2 "~" H 9800 4550 60  0000 C CNN
F 3 "~" H 9800 4550 60  0000 C CNN
	1    9800 4550
	0    -1   -1   0   
$EndComp
$Comp
L 74HC04 U?
U 1 1 57A25D10
P 9350 5900
F 0 "U?" H 9500 6000 40  0000 C CNN
F 1 "74HC04" H 9550 5800 40  0000 C CNN
F 2 "~" H 9350 5900 60  0000 C CNN
F 3 "~" H 9350 5900 60  0000 C CNN
	1    9350 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 6100 8750 6100
Wire Wire Line
	8750 6100 8600 6100
Wire Wire Line
	10050 5150 10050 5300
Wire Wire Line
	10050 5300 10050 6100
Wire Wire Line
	10050 5300 10150 5300
Wire Wire Line
	10150 5300 10150 5150
Connection ~ 10050 5300
Wire Wire Line
	9950 5150 9950 5900
Wire Wire Line
	9950 5900 9800 5900
Wire Wire Line
	8900 5900 8750 5900
Wire Wire Line
	8750 5900 8750 6100
Connection ~ 8750 6100
Wire Wire Line
	8600 5600 9650 5600
Wire Wire Line
	9650 5600 9650 5150
Wire Wire Line
	9550 5150 9550 5450
Wire Wire Line
	9550 5450 8600 5450
Wire Wire Line
	8600 5300 9450 5300
Wire Wire Line
	9450 5300 9450 5150
Text GLabel 10450 3750 2    60   Output ~ 0
-INVALID_COND_JUMP
Text GLabel 10450 3600 2    60   Output ~ 0
-JLE
Wire Wire Line
	10150 3750 10150 3850
Wire Wire Line
	10150 3850 10150 3950
Wire Wire Line
	10150 3750 10450 3750
Wire Wire Line
	10050 3950 10050 3850
Wire Wire Line
	10050 3850 10150 3850
Connection ~ 10150 3850
Wire Wire Line
	10450 3600 9950 3600
Wire Wire Line
	9950 3600 9950 3950
Text GLabel 10450 3450 2    60   Output ~ 0
-JL
Text GLabel 10450 3300 2    60   Output ~ 0
-JGE
Text GLabel 10450 3150 2    60   Output ~ 0
-JG
Text GLabel 10450 3000 2    60   Output ~ 0
-JNE
Wire Wire Line
	10450 3450 9850 3450
Wire Wire Line
	9850 3450 9850 3950
Wire Wire Line
	9750 3950 9750 3300
Wire Wire Line
	9750 3300 10450 3300
Wire Wire Line
	10450 3150 9650 3150
Wire Wire Line
	9650 3150 9650 3950
Wire Wire Line
	9550 3950 9550 3000
Wire Wire Line
	9550 3000 10450 3000
Text GLabel 10450 2850 2    60   Output ~ 0
-JE
Wire Wire Line
	10450 2850 9450 2850
Wire Wire Line
	9450 2850 9450 3950
Text GLabel 1650 8300 0    60   Input ~ 0
IR_6
Wire Wire Line
	3000 6600 3000 7850
Wire Wire Line
	3200 6600 3200 8050
Wire Wire Line
	3200 8050 3200 8400
Wire Wire Line
	5850 7850 5850 7700
Wire Wire Line
	5850 6600 5850 6800
Wire Wire Line
	6050 8050 6050 6600
Connection ~ 5950 5250
Wire Wire Line
	5850 5250 5850 5150
Text GLabel 6300 8050 2    60   Output ~ 0
-VIDEO
Text GLabel 1650 8500 0    60   Input ~ 0
IR_7
Wire Wire Line
	1650 8300 1800 8300
Wire Wire Line
	1800 8500 1650 8500
Connection ~ 3200 8050
$Comp
L 74HC02 U?
U 1 1 57A26FE6
P 3100 6000
F 0 "U?" H 3100 6050 60  0000 C CNN
F 1 "74HC02" H 3150 5950 60  0000 C CNN
F 2 "~" H 3100 6000 60  0000 C CNN
F 3 "~" H 3100 6000 60  0000 C CNN
	1    3100 6000
	0    -1   -1   0   
$EndComp
$Comp
L 74HC02 U?
U 1 1 57A26FFD
P 5950 6000
F 0 "U?" H 5950 6050 60  0000 C CNN
F 1 "74HC02" H 6000 5950 60  0000 C CNN
F 2 "~" H 5950 6000 60  0000 C CNN
F 3 "~" H 5950 6000 60  0000 C CNN
	1    5950 6000
	0    -1   -1   0   
$EndComp
$Comp
L 74HC02 U?
U 1 1 57A272E7
P 2400 8400
F 0 "U?" H 2400 8450 60  0000 C CNN
F 1 "74HC02" H 2450 8350 60  0000 C CNN
F 2 "~" H 2400 8400 60  0000 C CNN
F 3 "~" H 2400 8400 60  0000 C CNN
	1    2400 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 8400 3000 8400
Wire Wire Line
	3200 8050 6050 8050
Wire Wire Line
	6050 8050 6300 8050
Connection ~ 6050 8050
$EndSCHEMATC
