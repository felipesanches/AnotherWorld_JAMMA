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
Sheet 6 8
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
L 6116 IC?
U 1 1 57A2BAA0
P 2800 4200
F 0 "IC?" H 2400 5000 40  0000 C CNN
F 1 "6116" H 3150 3400 40  0000 C CNN
F 2 "" H 2800 4200 60  0000 C CNN
F 3 "" H 2800 4200 60  0000 C CNN
	1    2800 4200
	0    -1   -1   0   
$EndComp
$Comp
L 6116 IC?
U 1 1 57A2BAC8
P 4500 4200
F 0 "IC?" H 4100 5000 40  0000 C CNN
F 1 "6116" H 4850 3400 40  0000 C CNN
F 2 "" H 4500 4200 60  0000 C CNN
F 3 "" H 4500 4200 60  0000 C CNN
	1    4500 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 4800 2100 5700
Wire Wire Line
	2100 5100 3800 5100
Wire Wire Line
	3800 5100 3800 4800
Wire Wire Line
	3900 4800 3900 5150
Wire Wire Line
	3900 5150 2200 5150
Wire Wire Line
	2200 5850 2200 4800
Wire Wire Line
	4000 4800 4000 5200
Wire Wire Line
	4000 5200 2300 5200
Wire Wire Line
	2300 4800 2300 6000
Wire Wire Line
	2400 4800 2400 6150
Wire Wire Line
	2400 5250 4100 5250
Wire Wire Line
	4100 5250 4100 4800
Wire Wire Line
	4200 4800 4200 5300
Wire Wire Line
	4200 5300 2500 5300
Wire Wire Line
	2500 4800 2500 6300
Wire Wire Line
	2600 4800 2600 6450
Wire Wire Line
	2600 5350 4300 5350
Wire Wire Line
	4300 5350 4300 4800
Wire Wire Line
	4400 4800 4400 5400
Wire Wire Line
	4400 5400 2700 5400
Wire Wire Line
	2700 4800 2700 6600
Wire Wire Line
	2800 4800 2800 6750
Wire Wire Line
	2800 5450 4500 5450
Wire Wire Line
	4500 5450 4500 4800
Wire Wire Line
	5000 4800 5000 5750
Wire Wire Line
	5000 4900 3300 4900
Wire Wire Line
	3300 4900 3300 4800
Wire Wire Line
	3400 4800 3400 4950
Wire Wire Line
	3400 4950 5100 4950
Wire Wire Line
	5100 4800 5100 5900
Wire Wire Line
	5200 4800 5200 6050
Wire Wire Line
	5200 5000 3500 5000
Wire Wire Line
	3500 5000 3500 4800
Text GLabel 4850 5900 0    60   Input ~ 0
-STACK_WE
Wire Wire Line
	5100 5900 4850 5900
Connection ~ 5100 4950
Text GLabel 4850 5750 0    60   Input ~ 0
-STACK_OE
Wire Wire Line
	5000 5750 4850 5750
Connection ~ 5000 4900
Text GLabel 4850 6050 0    60   Input ~ 0
-STACK_CS
Wire Wire Line
	5200 6050 4850 6050
Connection ~ 5200 5000
Text GLabel 1950 5700 0    60   Input ~ 0
+STACK_ADDR_0
Text GLabel 1950 5850 0    60   Input ~ 0
+STACK_ADDR_1
Wire Wire Line
	2100 5700 1950 5700
Connection ~ 2100 5100
Wire Wire Line
	1950 5850 2200 5850
Connection ~ 2200 5150
Text GLabel 1950 6000 0    60   Input ~ 0
+STACK_ADDR_2
Text GLabel 1950 6150 0    60   Input ~ 0
+STACK_ADDR_3
Text GLabel 1950 6300 0    60   Input ~ 0
+STACK_ADDR_4
Text GLabel 1950 6450 0    60   Input ~ 0
+STACK_ADDR_5
Text GLabel 1950 6600 0    60   Input ~ 0
+STACK_ADDR_6
Text GLabel 1950 6750 0    60   Input ~ 0
+STACK_ADDR_7
NoConn ~ 4600 4800
NoConn ~ 4700 4800
NoConn ~ 4800 4800
NoConn ~ 2900 4800
NoConn ~ 3000 4800
NoConn ~ 3100 4800
Wire Wire Line
	2300 6000 1950 6000
Connection ~ 2300 5200
Wire Wire Line
	2400 6150 1950 6150
Connection ~ 2400 5250
Wire Wire Line
	2500 6300 1950 6300
Connection ~ 2500 5300
Wire Wire Line
	2600 6450 1950 6450
Connection ~ 2600 5350
Wire Wire Line
	2700 6600 1950 6600
Connection ~ 2700 5400
Wire Wire Line
	2800 6750 1950 6750
Connection ~ 2800 5450
Text GLabel 1800 1100 0    60   3State ~ 0
+STACK_DATA_0
Text GLabel 1800 1250 0    60   3State ~ 0
+STACK_DATA_1
Text GLabel 1800 1400 0    60   3State ~ 0
+STACK_DATA_2
Text GLabel 1800 1550 0    60   3State ~ 0
+STACK_DATA_3
Text GLabel 1800 1700 0    60   3State ~ 0
+STACK_DATA_4
Text GLabel 1800 1850 0    60   3State ~ 0
+STACK_DATA_5
Text GLabel 1800 2000 0    60   3State ~ 0
+STACK_DATA_6
Text GLabel 1800 2150 0    60   3State ~ 0
+STACK_DATA_7
Text GLabel 1800 2300 0    60   3State ~ 0
+STACK_DATA_8
Text GLabel 1800 2450 0    60   3State ~ 0
+STACK_DATA_9
Text GLabel 1800 2600 0    60   3State ~ 0
+STACK_DATA_10
Text GLabel 1800 2750 0    60   3State ~ 0
+STACK_DATA_11
Text GLabel 1800 2900 0    60   3State ~ 0
+STACK_DATA_12
Text GLabel 1800 3050 0    60   3State ~ 0
+STACK_DATA_13
Text GLabel 1800 3200 0    60   3State ~ 0
+STACK_DATA_14
Text GLabel 1800 3350 0    60   3State ~ 0
+STACK_DATA_15
Wire Wire Line
	1800 3350 4500 3350
Wire Wire Line
	4500 3350 4500 3600
Wire Wire Line
	4400 3200 4400 3600
Wire Wire Line
	4400 3200 1800 3200
Wire Wire Line
	1800 3050 4300 3050
Wire Wire Line
	4300 3050 4300 3600
Wire Wire Line
	4200 2900 4200 3600
Wire Wire Line
	4200 2900 1800 2900
Wire Wire Line
	1800 2750 4100 2750
Wire Wire Line
	4100 2750 4100 3600
Wire Wire Line
	4000 3600 4000 2600
Wire Wire Line
	4000 2600 1800 2600
Wire Wire Line
	1800 2450 3900 2450
Wire Wire Line
	3900 2450 3900 3600
Wire Wire Line
	3800 3600 3800 2300
Wire Wire Line
	3800 2300 1800 2300
Wire Wire Line
	1800 2150 2800 2150
Wire Wire Line
	2800 2150 2800 3600
Wire Wire Line
	2700 3600 2700 2000
Wire Wire Line
	2700 2000 1800 2000
Wire Wire Line
	1800 1850 2600 1850
Wire Wire Line
	2600 1850 2600 3600
Wire Wire Line
	2500 3600 2500 1700
Wire Wire Line
	2500 1700 1800 1700
Wire Wire Line
	1800 1550 2400 1550
Wire Wire Line
	2400 1550 2400 3600
Wire Wire Line
	2300 3600 2300 1400
Wire Wire Line
	2300 1400 1800 1400
Wire Wire Line
	1800 1250 2200 1250
Wire Wire Line
	2200 1250 2200 3600
Wire Wire Line
	2100 3600 2100 1100
Wire Wire Line
	2100 1100 1800 1100
$EndSCHEMATC
