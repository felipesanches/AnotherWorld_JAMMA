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
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date "3 aug 2016"
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
P 4300 4350
F 0 "U?" H 4300 5250 60  0000 C CNN
F 1 "74LS154" H 4250 3500 60  0000 C CNN
F 2 "~" H 4300 4350 60  0000 C CNN
F 3 "~" H 4300 4350 60  0000 C CNN
	1    4300 4350
	0    -1   -1   0   
$EndComp
$Comp
L 74LS154 U?
U 1 1 57A22DF3
P 7150 4350
F 0 "U?" H 7150 5250 60  0000 C CNN
F 1 "74LS154" H 7100 3500 60  0000 C CNN
F 2 "~" H 7150 4350 60  0000 C CNN
F 3 "~" H 7150 4350 60  0000 C CNN
	1    7150 4350
	0    -1   -1   0   
$EndComp
Text GLabel 2650 6200 0    60   Input ~ 0
IR_0
Text GLabel 2650 6350 0    60   Input ~ 0
IR_1
Text GLabel 2650 6500 0    60   Input ~ 0
IR_2
Text GLabel 2650 6650 0    60   Input ~ 0
IR_3
Text GLabel 2650 6800 0    60   Input ~ 0
IR_4
$Comp
L 74HC04 U?
U 1 1 57A22E63
P 4000 5650
F 0 "U?" H 4150 5750 40  0000 C CNN
F 1 "74HC04" H 4200 5550 40  0000 C CNN
F 2 "~" H 4000 5650 60  0000 C CNN
F 3 "~" H 4000 5650 60  0000 C CNN
	1    4000 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 5000 4000 5100
Wire Wire Line
	4000 5100 4000 5200
Connection ~ 4000 5100
Wire Wire Line
	6650 6650 6650 5000
Wire Wire Line
	6550 6500 6550 5000
Wire Wire Line
	6450 6350 6450 5000
Wire Wire Line
	6350 6200 6350 5000
Wire Wire Line
	6850 6800 6850 5100
Wire Wire Line
	6850 5100 6850 5000
Wire Wire Line
	6850 5100 6950 5100
Wire Wire Line
	2650 6200 3500 6200
Wire Wire Line
	3500 6200 6350 6200
Wire Wire Line
	3500 6200 3500 5000
Wire Wire Line
	2650 6350 3600 6350
Wire Wire Line
	3600 6350 6450 6350
Wire Wire Line
	3600 6350 3600 5000
Wire Wire Line
	3700 5000 3700 6500
Wire Wire Line
	2650 6500 3700 6500
Wire Wire Line
	3700 6500 6550 6500
Wire Wire Line
	2650 6650 3800 6650
Wire Wire Line
	3800 6650 6650 6650
Wire Wire Line
	3800 6650 3800 5000
Wire Wire Line
	2650 6800 4000 6800
Wire Wire Line
	4000 6800 6850 6800
Wire Wire Line
	4000 6800 4000 6100
Connection ~ 6850 5100
Connection ~ 4000 6800
Wire Wire Line
	4000 5100 4100 5100
Wire Wire Line
	4100 5100 4100 5000
Wire Wire Line
	6950 5100 6950 5000
Connection ~ 3500 6200
Connection ~ 3600 6350
Connection ~ 3700 6500
Connection ~ 3800 6650
Text GLabel 8050 3100 2    60   Output ~ 0
INVALID_OPCODE
Wire Wire Line
	7850 3100 7850 3550
Wire Wire Line
	7850 3550 7850 3650
Wire Wire Line
	7450 3550 7550 3550
Wire Wire Line
	7550 3550 7650 3550
Wire Wire Line
	7650 3550 7750 3550
Wire Wire Line
	7750 3550 7850 3550
Wire Wire Line
	7450 3550 7450 3650
Wire Wire Line
	7550 3650 7550 3550
Connection ~ 7550 3550
Wire Wire Line
	7650 3650 7650 3550
Connection ~ 7650 3550
Wire Wire Line
	7750 3650 7750 3550
Connection ~ 7750 3550
Connection ~ 7850 3550
Wire Wire Line
	7850 3100 8050 3100
Text GLabel 8050 2650 2    60   Output ~ 0
PLAY_MUSIC
Wire Wire Line
	8050 2650 7350 2650
Wire Wire Line
	7350 2650 7350 3650
Text GLabel 8050 2500 2    60   Output ~ 0
LOAD_RESOURCE
Text GLabel 8050 2350 2    60   Output ~ 0
PLAY_SOUND
Wire Wire Line
	8050 2500 7250 2500
Wire Wire Line
	7250 2500 7250 3650
Wire Wire Line
	8050 2350 7150 2350
Wire Wire Line
	7150 2350 7150 3650
Text GLabel 8050 2200 2    60   Output ~ 0
SHR
Text GLabel 8050 2050 2    60   Output ~ 0
SHL
Wire Wire Line
	8050 2200 7050 2200
Wire Wire Line
	7050 2200 7050 3650
Wire Wire Line
	8050 2050 6950 2050
Wire Wire Line
	6950 2050 6950 3650
Text GLabel 8050 1900 2    60   Output ~ 0
OR
Wire Wire Line
	8050 1900 6850 1900
Wire Wire Line
	6850 1900 6850 3650
Text GLabel 8050 1750 2    60   Output ~ 0
AND
Wire Wire Line
	8050 1750 6750 1750
Wire Wire Line
	6750 1750 6750 3650
Text GLabel 8050 1600 2    60   Output ~ 0
SUB
Wire Wire Line
	8050 1600 6650 1600
Wire Wire Line
	6650 1600 6650 3650
Text GLabel 8050 1450 2    60   Output ~ 0
TEXT
Wire Wire Line
	8050 1450 6550 1450
Wire Wire Line
	6550 1450 6550 3650
Text GLabel 8050 1300 2    60   Output ~ 0
KILL_CHANNEL
Wire Wire Line
	8050 1300 6450 1300
Wire Wire Line
	6450 1300 6450 3650
Text GLabel 8050 1150 2    60   Output ~ 0
BLIT_FRAMEBUFFER
Wire Wire Line
	8050 1150 6350 1150
Wire Wire Line
	6350 1150 6350 3650
Text GLabel 5200 3400 2    60   Output ~ 0
COPY_VIDEO_PAGE
Wire Wire Line
	5000 3650 5000 3400
Wire Wire Line
	5000 3400 5200 3400
Text GLabel 5200 3250 2    60   Output ~ 0
FILL_VIDEO_PAGE
Wire Wire Line
	5200 3250 4900 3250
Wire Wire Line
	4900 3250 4900 3650
Text GLabel 5200 3100 2    60   Output ~ 0
SELECT_VIDEO_PAGE
Wire Wire Line
	5200 3100 4800 3100
Wire Wire Line
	4800 3100 4800 3650
Text GLabel 5200 2950 2    60   Output ~ 0
UPDATE_CHANNEL
Wire Wire Line
	5200 2950 4700 2950
Wire Wire Line
	4700 2950 4700 3650
Text GLabel 5200 2800 2    60   Output ~ 0
SET_PALETTE
Wire Wire Line
	5200 2800 4600 2800
Text GLabel 5200 2350 2    60   Output ~ 0
SET_CHANNEL
Wire Wire Line
	5200 2350 4300 2350
Wire Wire Line
	4300 2350 4300 3650
Text GLabel 5200 2200 2    60   Output ~ 0
JMP
Wire Wire Line
	5200 2200 4200 2200
Wire Wire Line
	4200 2200 4200 3650
Text GLabel 5200 2050 2    60   Output ~ 0
BREAK
Wire Wire Line
	5200 2050 4100 2050
Wire Wire Line
	4100 2050 4100 3650
Text GLabel 5200 1900 2    60   Output ~ 0
RET
Wire Wire Line
	5200 1900 4000 1900
Wire Wire Line
	4000 1900 4000 3650
Text GLabel 5200 1750 2    60   Output ~ 0
CALL
Wire Wire Line
	5200 1750 3900 1750
Wire Wire Line
	3900 1750 3900 3650
Text GLabel 5200 2650 2    60   Output ~ 0
CONDITIONAL_JUMP
Wire Wire Line
	4600 2800 4600 3650
Wire Wire Line
	4500 3650 4500 2650
Wire Wire Line
	4500 2650 5200 2650
Text GLabel 5200 2500 2    60   Output ~ 0
DJNZ
Wire Wire Line
	5200 2500 4400 2500
Wire Wire Line
	4400 2500 4400 3650
Text GLabel 5200 1600 2    60   Output ~ 0
ADD_CONST
Text GLabel 5200 1450 2    60   Output ~ 0
ADD
Text GLabel 5200 1300 2    60   Output ~ 0
MOV
Text GLabel 5200 1150 2    60   Output ~ 0
MOV_CONST
Wire Wire Line
	5200 1600 3800 1600
Wire Wire Line
	3800 1600 3800 3650
Wire Wire Line
	3700 3650 3700 1450
Wire Wire Line
	3700 1450 5200 1450
Wire Wire Line
	5200 1300 3600 1300
Wire Wire Line
	3600 1300 3600 3650
Wire Wire Line
	3500 3650 3500 1150
Wire Wire Line
	3500 1150 5200 1150
$EndSCHEMATC
