EESchema Schematic File Version 2
LIBS:anotherworld-rescue
LIBS:27c801
LIBS:o_ttl
LIBS:jamma_connector
LIBS:anotherworld-cache
EELAYER 26 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 6 8
Title ""
Date "17 aug 2016"
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
P 16300 8950
F 0 "U?" H 16000 10000 70  0000 C CNN
F 1 "27C512" H 16300 7900 70  0000 C CNN
F 2 "" H 16300 8950 60  0000 C CNN
F 3 "" H 16300 8950 60  0000 C CNN
	1    16300 8950
	0    1    1    0   
$EndComp
$Comp
L 27C512 U?
U 1 1 57A7E630
P 13950 8950
F 0 "U?" H 13650 10000 70  0000 C CNN
F 1 "27C512" H 13950 7900 70  0000 C CNN
F 2 "" H 13950 8950 60  0000 C CNN
F 3 "" H 13950 8950 60  0000 C CNN
	1    13950 8950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 57A7E78D
P 13050 8050
F 0 "#PWR?" H 13050 8050 30  0001 C CNN
F 1 "GND" H 13050 7980 30  0001 C CNN
F 2 "" H 13050 8050 60  0000 C CNN
F 3 "" H 13050 8050 60  0000 C CNN
	1    13050 8050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 57A7E7E0
P 15400 8050
F 0 "#PWR?" H 15400 8050 30  0001 C CNN
F 1 "GND" H 15400 7980 30  0001 C CNN
F 2 "" H 15400 8050 60  0000 C CNN
F 3 "" H 15400 8050 60  0000 C CNN
	1    15400 8050
	-1   0    0    1   
$EndComp
$Comp
L 74LS374-RESCUE-anotherworld U?
U 1 1 57A7EB1A
P 6700 6450
F 0 "U?" H 6700 6450 60  0000 C CNN
F 1 "74LS374" H 6750 6100 60  0000 C CNN
F 2 "~" H 6700 6450 60  0000 C CNN
F 3 "~" H 6700 6450 60  0000 C CNN
	1    6700 6450
	0    1    1    0   
$EndComp
Text Notes 6450 6350 0    60   ~ 0
Opcode Register
Text GLabel 5750 4300 0    60   Input ~ 0
DATA_7
Text GLabel 5750 4450 0    60   Input ~ 0
DATA_6
Text GLabel 5750 4600 0    60   Input ~ 0
DATA_5
Text GLabel 5750 4750 0    60   Input ~ 0
DATA_4
Text GLabel 5750 4900 0    60   Input ~ 0
DATA_3
Text GLabel 5750 5050 0    60   Input ~ 0
DATA_2
Text GLabel 5750 5200 0    60   Input ~ 0
DATA_1
Text GLabel 5750 5350 0    60   Input ~ 0
DATA_0
Text GLabel 5750 5550 0    60   Input ~ 0
OPCODE_CLK
$Comp
L GND #PWR?
U 1 1 57A7F0BD
P 6000 5850
F 0 "#PWR?" H 6000 5850 30  0001 C CNN
F 1 "GND" H 6000 5780 30  0001 C CNN
F 2 "" H 6000 5850 60  0000 C CNN
F 3 "" H 6000 5850 60  0000 C CNN
	1    6000 5850
	-1   0    0    -1  
$EndComp
Text GLabel 14950 10600 2    60   Output ~ 0
OPCODE_CLK
Text GLabel 17300 10950 2    60   Output ~ 0
ALU_IN_AH_CLK
Text GLabel 17300 10800 2    60   Output ~ 0
ALU_IN_AL_CLK
Text GLabel 14950 10000 2    60   Output ~ 0
ALU_IN_BH_CLK
Text GLabel 14950 9850 2    60   Output ~ 0
ALU_IN_BL_CLK
Text GLabel 14950 10150 2    60   Output ~ 0
RESOURCE_BANK_CLK
Text GLabel 14950 10300 2    60   Output ~ 0
IPL_CLK
Text GLabel 14950 10450 2    60   Output ~ 0
IPH_CLK
Text GLabel 17300 9900 2    60   Output ~ 0
ALU_CARRY_IN
$Comp
L 27C512 U?
U 1 1 57A89C68
P 11600 8950
F 0 "U?" H 11300 10000 70  0000 C CNN
F 1 "27C512" H 11600 7900 70  0000 C CNN
F 2 "" H 11600 8950 60  0000 C CNN
F 3 "" H 11600 8950 60  0000 C CNN
	1    11600 8950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 57A89C6E
P 10700 8050
F 0 "#PWR?" H 10700 8050 30  0001 C CNN
F 1 "GND" H 10700 7980 30  0001 C CNN
F 2 "" H 10700 8050 60  0000 C CNN
F 3 "" H 10700 8050 60  0000 C CNN
	1    10700 8050
	-1   0    0    1   
$EndComp
Text GLabel 17300 10050 2    60   Output ~ 0
ALU_MODE
Text GLabel 17300 10200 2    60   Output ~ 0
ALU_FUNCTION_SEL_0
Text GLabel 17300 10350 2    60   Output ~ 0
ALU_FUNCTION_SEL_1
Text GLabel 17300 10500 2    60   Output ~ 0
ALU_FUNCTION_SEL_2
Text GLabel 17300 10650 2    60   Output ~ 0
ALU_FUNCTION_SEL_3
Text GLabel 14950 10750 2    60   Output ~ 0
-SRAM_WE
Text GLabel 14950 10900 2    60   Output ~ 0
DATABUS_SEL_0
Text GLabel 12600 9850 2    60   Output ~ 0
DATABUS_SEL_1
Text GLabel 12600 10000 2    60   Output ~ 0
DATABUS_SEL_2
Text GLabel 12600 10150 2    60   Output ~ 0
SRAM_RANGE_SEL_0
Text GLabel 12600 10300 2    60   Output ~ 0
SRAM_RANGE_SEL_1
Text GLabel 12600 10450 2    60   Output ~ 0
-CURRENT_CHANNEL_OE
Text GLabel 12600 10600 2    60   Output ~ 0
BYTE_SELECT
NoConn ~ 11900 9650
NoConn ~ 11800 9650
Text GLabel 6750 10650 0    60   Input ~ 0
DATABUS_SEL_2
Text GLabel 6750 10800 0    60   Input ~ 0
DATABUS_SEL_1
Text GLabel 6750 10950 0    60   Input ~ 0
DATABUS_SEL_0
Text GLabel 9000 12850 2    60   Output ~ 0
-CODEROM_OE
Text GLabel 9000 13500 2    60   Output ~ 0
ALU_OUT_H
Text GLabel 9000 13700 2    60   Output ~ 0
ALU_OUT_L
$Comp
L 74HC04-RESCUE-anotherworld U?
U 1 1 57A8AE99
P 8350 13500
F 0 "U?" H 8500 13600 40  0000 C CNN
F 1 "74HC04" H 8550 13400 40  0000 C CNN
F 2 "~" H 8350 13500 60  0000 C CNN
F 3 "~" H 8350 13500 60  0000 C CNN
	1    8350 13500
	1    0    0    -1  
$EndComp
$Comp
L 74HC04-RESCUE-anotherworld U?
U 1 1 57A8AF2C
P 7650 13700
F 0 "U?" H 7800 13800 40  0000 C CNN
F 1 "74HC04" H 7850 13600 40  0000 C CNN
F 2 "~" H 7650 13700 60  0000 C CNN
F 3 "~" H 7650 13700 60  0000 C CNN
	1    7650 13700
	1    0    0    -1  
$EndComp
Text GLabel 9000 13000 2    60   Output ~ 0
-SRAM_OE
Text GLabel 9000 13150 2    60   Output ~ 0
-IPH_OE
Text GLabel 9000 13300 2    60   Output ~ 0
-IPL_OE
NoConn ~ 6950 12700
NoConn ~ 6850 12700
$Comp
L GND #PWR?
U 1 1 57A8BE5F
P 6700 11500
F 0 "#PWR?" H 6700 11500 30  0001 C CNN
F 1 "GND" H 6700 11430 30  0001 C CNN
F 2 "" H 6700 11500 60  0000 C CNN
F 3 "" H 6700 11500 60  0000 C CNN
	1    6700 11500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 57A8BFC6
P 7050 11350
F 0 "#PWR?" H 7050 11450 30  0001 C CNN
F 1 "VCC" H 7050 11450 30  0000 C CNN
F 2 "" H 7050 11350 60  0000 C CNN
F 3 "" H 7050 11350 60  0000 C CNN
	1    7050 11350
	1    0    0    -1  
$EndComp
Text Notes 15850 9000 0    79   ~ 16
uCode ROM #0
Text Notes 13500 9000 0    79   ~ 16
uCode ROM #1
Text Notes 11150 9000 0    79   ~ 16
uCode ROM #2
$Comp
L 27C512 U?
U 1 1 57A8C780
P 9250 8950
F 0 "U?" H 8950 10000 70  0000 C CNN
F 1 "27C512" H 9250 7900 70  0000 C CNN
F 2 "" H 9250 8950 60  0000 C CNN
F 3 "" H 9250 8950 60  0000 C CNN
	1    9250 8950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 57A8C786
P 8350 8050
F 0 "#PWR?" H 8350 8050 30  0001 C CNN
F 1 "GND" H 8350 7980 30  0001 C CNN
F 2 "" H 8350 8050 60  0000 C CNN
F 3 "" H 8350 8050 60  0000 C CNN
	1    8350 8050
	-1   0    0    1   
$EndComp
NoConn ~ 9550 9650
NoConn ~ 9450 9650
Text Notes 8800 9000 0    79   ~ 16
uCode ROM #3
NoConn ~ 10150 9650
NoConn ~ 10050 9650
NoConn ~ 9950 9650
NoConn ~ 9850 9650
NoConn ~ 9750 9650
NoConn ~ 9650 9650
$Comp
L 74LS138-RESCUE-anotherworld U?
U 1 1 57A8CB1F
P 7200 12100
F 0 "U?" H 7300 12600 60  0000 C CNN
F 1 "74LS138" H 7350 11551 60  0000 C CNN
F 2 "~" H 7200 12100 60  0000 C CNN
F 3 "~" H 7200 12100 60  0000 C CNN
	1    7200 12100
	0    1    1    0   
$EndComp
$Comp
L 74LS161-RESCUE-anotherworld U?
U 1 1 57AA2BDB
P 9450 3600
F 0 "U?" H 9700 3300 60  0000 C CNN
F 1 "74LS161" H 9550 3150 60  0000 C CNN
F 2 "~" H 9450 3600 60  0000 C CNN
F 3 "~" H 9450 3600 60  0000 C CNN
	1    9450 3600
	0    1    1    0   
$EndComp
$Comp
L 74LS161-RESCUE-anotherworld U?
U 1 1 57AA2C03
P 8050 3600
F 0 "U?" H 8300 3300 60  0000 C CNN
F 1 "74LS161" H 8150 3150 60  0000 C CNN
F 2 "~" H 8050 3600 60  0000 C CNN
F 3 "~" H 8050 3600 60  0000 C CNN
	1    8050 3600
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 57AA3BF6
P 9450 2550
F 0 "#PWR?" H 9450 2640 20  0001 C CNN
F 1 "+5V" H 9450 2640 30  0000 C CNN
F 2 "" H 9450 2550 60  0000 C CNN
F 3 "" H 9450 2550 60  0000 C CNN
	1    9450 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 7250 10150 7250
Wire Wire Line
	10150 7250 12500 7250
Wire Wire Line
	12500 7250 14850 7250
Wire Wire Line
	14850 7250 17200 7250
Wire Wire Line
	17200 7250 17200 8250
Wire Wire Line
	7100 7350 10050 7350
Wire Wire Line
	10050 7350 12400 7350
Wire Wire Line
	12400 7350 14750 7350
Wire Wire Line
	14750 7350 17100 7350
Wire Wire Line
	17100 7350 17100 8250
Wire Wire Line
	17000 7450 17000 8250
Wire Wire Line
	7000 7450 9950 7450
Wire Wire Line
	9950 7450 12300 7450
Wire Wire Line
	12300 7450 14650 7450
Wire Wire Line
	14650 7450 17000 7450
Wire Wire Line
	6900 7550 9850 7550
Wire Wire Line
	9850 7550 12200 7550
Wire Wire Line
	12200 7550 14550 7550
Wire Wire Line
	14550 7550 16900 7550
Wire Wire Line
	16900 7550 16900 8250
Wire Wire Line
	16800 7650 16800 8250
Wire Wire Line
	6800 7650 9750 7650
Wire Wire Line
	9750 7650 12100 7650
Wire Wire Line
	12100 7650 14450 7650
Wire Wire Line
	14450 7650 16800 7650
Wire Wire Line
	6700 7750 9650 7750
Wire Wire Line
	9650 7750 12000 7750
Wire Wire Line
	12000 7750 14350 7750
Wire Wire Line
	14350 7750 16700 7750
Wire Wire Line
	16700 7750 16700 8250
Wire Wire Line
	16600 7850 16600 8250
Wire Wire Line
	6600 7850 9550 7850
Wire Wire Line
	9550 7850 11900 7850
Wire Wire Line
	11900 7850 14250 7850
Wire Wire Line
	14250 7850 16600 7850
Wire Wire Line
	6500 7950 9450 7950
Wire Wire Line
	9450 7950 11800 7950
Wire Wire Line
	11800 7950 14150 7950
Wire Wire Line
	14150 7950 16500 7950
Wire Wire Line
	16500 7950 16500 8250
Wire Wire Line
	14150 7950 14150 8250
Wire Wire Line
	14250 7850 14250 8250
Wire Wire Line
	14350 7750 14350 8250
Wire Wire Line
	14450 7650 14450 8250
Wire Wire Line
	14550 7550 14550 8250
Wire Wire Line
	14650 7450 14650 8250
Wire Wire Line
	14750 7350 14750 8250
Wire Wire Line
	14850 7250 14850 8250
Wire Wire Line
	13150 8250 13150 8150
Wire Wire Line
	13150 8150 13050 8150
Wire Wire Line
	13050 8050 13050 8150
Wire Wire Line
	13050 8150 13050 8250
Connection ~ 13050 8150
Wire Wire Line
	15500 8250 15500 8150
Wire Wire Line
	15500 8150 15400 8150
Wire Wire Line
	15400 8050 15400 8150
Wire Wire Line
	15400 8150 15400 8250
Connection ~ 15400 8150
Wire Wire Line
	7200 7250 7200 7150
Wire Wire Line
	7100 7150 7100 7350
Wire Wire Line
	7000 7450 7000 7150
Wire Wire Line
	6900 7550 6900 7150
Wire Wire Line
	6800 7150 6800 7650
Wire Wire Line
	6700 7750 6700 7150
Wire Wire Line
	6600 7150 6600 7850
Wire Wire Line
	6500 7950 6500 7150
Wire Wire Line
	5750 5350 7200 5350
Wire Wire Line
	7200 5350 7200 5750
Wire Wire Line
	7100 5750 7100 5200
Wire Wire Line
	7100 5200 5750 5200
Wire Wire Line
	5750 5050 7000 5050
Wire Wire Line
	7000 5050 7000 5750
Wire Wire Line
	6900 5750 6900 4900
Wire Wire Line
	6900 4900 5750 4900
Wire Wire Line
	5750 4750 6800 4750
Wire Wire Line
	6800 4750 6800 5750
Wire Wire Line
	6700 5750 6700 4600
Wire Wire Line
	6700 4600 5750 4600
Wire Wire Line
	5750 4450 6600 4450
Wire Wire Line
	6600 4450 6600 5750
Wire Wire Line
	6500 5750 6500 4300
Wire Wire Line
	6500 4300 5750 4300
Wire Wire Line
	6000 5850 6000 5650
Wire Wire Line
	6000 5650 6200 5650
Wire Wire Line
	6200 5650 6200 5750
Wire Wire Line
	5750 5550 6300 5550
Wire Wire Line
	6300 5550 6300 5750
Wire Wire Line
	17200 9900 17200 9650
Wire Wire Line
	10800 8250 10800 8150
Wire Wire Line
	10800 8150 10700 8150
Wire Wire Line
	10700 8050 10700 8150
Wire Wire Line
	10700 8150 10700 8250
Connection ~ 10700 8150
Wire Wire Line
	11800 7950 11800 8250
Connection ~ 14150 7950
Wire Wire Line
	11900 7850 11900 8250
Connection ~ 14250 7850
Wire Wire Line
	12000 7750 12000 8250
Connection ~ 14350 7750
Wire Wire Line
	12100 7650 12100 8250
Connection ~ 14450 7650
Wire Wire Line
	12200 7550 12200 8250
Connection ~ 14550 7550
Wire Wire Line
	12300 7450 12300 8250
Connection ~ 14650 7450
Wire Wire Line
	12400 7350 12400 8250
Connection ~ 14750 7350
Wire Wire Line
	12500 7250 12500 8250
Connection ~ 14850 7250
Connection ~ 12500 7250
Connection ~ 12400 7350
Connection ~ 12300 7450
Connection ~ 12200 7550
Connection ~ 12100 7650
Connection ~ 12000 7750
Connection ~ 11900 7850
Connection ~ 11800 7950
Wire Wire Line
	17200 9900 17300 9900
Wire Wire Line
	17300 10050 17100 10050
Wire Wire Line
	17100 10050 17100 9650
Wire Wire Line
	17300 10200 17000 10200
Wire Wire Line
	17000 10200 17000 9650
Wire Wire Line
	16900 9650 16900 10350
Wire Wire Line
	16900 10350 17300 10350
Wire Wire Line
	17300 10500 16800 10500
Wire Wire Line
	16800 10500 16800 9650
Wire Wire Line
	17300 10650 16700 10650
Wire Wire Line
	16700 10650 16700 9650
Wire Wire Line
	17300 10800 16600 10800
Wire Wire Line
	16600 10800 16600 9650
Wire Wire Line
	17300 10950 16500 10950
Wire Wire Line
	16500 10950 16500 9650
Wire Wire Line
	14950 9850 14850 9850
Wire Wire Line
	14850 9850 14850 9650
Wire Wire Line
	14750 9650 14750 10000
Wire Wire Line
	14750 10000 14950 10000
Wire Wire Line
	14950 10150 14650 10150
Wire Wire Line
	14650 10150 14650 9650
Wire Wire Line
	14950 10300 14550 10300
Wire Wire Line
	14550 10300 14550 9650
Wire Wire Line
	14450 9650 14450 10450
Wire Wire Line
	14450 10450 14950 10450
Wire Wire Line
	14950 10600 14350 10600
Wire Wire Line
	14350 10600 14350 9650
Wire Wire Line
	14950 10750 14250 10750
Wire Wire Line
	14250 10750 14250 9650
Wire Wire Line
	14950 10900 14150 10900
Wire Wire Line
	14150 10900 14150 9650
Wire Wire Line
	12600 9850 12500 9850
Wire Wire Line
	12500 9850 12500 9650
Wire Wire Line
	12600 10000 12400 10000
Wire Wire Line
	12400 10000 12400 9650
Wire Wire Line
	12600 10150 12300 10150
Wire Wire Line
	12300 10150 12300 9650
Wire Wire Line
	12600 10300 12200 10300
Wire Wire Line
	12200 10300 12200 9650
Wire Wire Line
	12600 10450 12100 10450
Wire Wire Line
	12100 10450 12100 9650
Wire Wire Line
	12600 10600 12000 10600
Wire Wire Line
	12000 10600 12000 9650
Wire Wire Line
	8800 13500 9000 13500
Wire Wire Line
	9000 13700 8100 13700
Wire Wire Line
	6750 10950 7550 10950
Wire Wire Line
	6750 10800 7450 10800
Wire Wire Line
	6750 10650 7350 10650
Wire Wire Line
	7550 12700 7550 12850
Wire Wire Line
	7550 12850 9000 12850
Wire Wire Line
	9000 13000 7450 13000
Wire Wire Line
	7450 13000 7450 12700
Wire Wire Line
	9000 13150 7350 13150
Wire Wire Line
	7350 13150 7350 12700
Wire Wire Line
	7250 12700 7250 13300
Wire Wire Line
	7250 13300 9000 13300
Wire Wire Line
	7150 12700 7150 13500
Wire Wire Line
	7050 12700 7050 13700
Wire Wire Line
	7150 13500 7900 13500
Wire Wire Line
	7050 13700 7200 13700
Wire Wire Line
	6850 11500 6850 11350
Wire Wire Line
	6700 11350 6850 11350
Wire Wire Line
	6850 11350 6950 11350
Wire Wire Line
	6700 11350 6700 11500
Wire Wire Line
	6950 11350 6950 11500
Connection ~ 6850 11350
Wire Wire Line
	7050 11350 7050 11500
Wire Wire Line
	8450 8250 8450 8150
Wire Wire Line
	8450 8150 8350 8150
Wire Wire Line
	8350 8050 8350 8150
Wire Wire Line
	8350 8150 8350 8250
Connection ~ 8350 8150
Wire Wire Line
	9450 7950 9450 8250
Wire Wire Line
	9550 7850 9550 8250
Wire Wire Line
	9650 7750 9650 8250
Wire Wire Line
	9750 7650 9750 8250
Wire Wire Line
	9850 7550 9850 8250
Wire Wire Line
	9950 7450 9950 8250
Wire Wire Line
	10050 7350 10050 8250
Wire Wire Line
	10150 7250 10150 8250
Connection ~ 10150 7250
Connection ~ 10050 7350
Connection ~ 9950 7450
Connection ~ 9850 7550
Connection ~ 9750 7650
Connection ~ 9650 7750
Connection ~ 9550 7850
Connection ~ 9450 7950
Wire Wire Line
	7350 10650 7350 11500
Wire Wire Line
	7450 10800 7450 11500
Wire Wire Line
	7550 10950 7550 11500
Wire Wire Line
	8950 2550 8950 2900
Wire Wire Line
	7450 2550 7550 2550
Wire Wire Line
	7550 2550 8950 2550
Wire Wire Line
	7550 2550 7550 2900
Wire Wire Line
	9250 2650 9250 2900
Wire Wire Line
	9350 2650 9350 2900
Wire Wire Line
	9450 2650 9450 2550
Connection ~ 9350 2650
Wire Wire Line
	9350 8250 9350 6450
Wire Wire Line
	9350 6450 9950 6450
Wire Wire Line
	9950 6450 11400 6450
Wire Wire Line
	11400 6450 13750 6450
Wire Wire Line
	13750 6450 16100 6450
Wire Wire Line
	9950 6450 9950 4300
Wire Wire Line
	9850 4300 9850 6400
Wire Wire Line
	9250 6400 9850 6400
Wire Wire Line
	9850 6400 11500 6400
Wire Wire Line
	11500 6400 13850 6400
Wire Wire Line
	13850 6400 16200 6400
Wire Wire Line
	9250 6400 9250 8250
Wire Wire Line
	9150 8250 9150 6350
Wire Wire Line
	9150 6350 9750 6350
Wire Wire Line
	9750 6350 11600 6350
Wire Wire Line
	11600 6350 13950 6350
Wire Wire Line
	13950 6350 16300 6350
Wire Wire Line
	9750 6350 9750 4300
Wire Wire Line
	9650 4300 9650 6300
Wire Wire Line
	9050 6300 9650 6300
Wire Wire Line
	9650 6300 11700 6300
Wire Wire Line
	11700 6300 14050 6300
Wire Wire Line
	14050 6300 16400 6300
Wire Wire Line
	9050 6300 9050 8250
Wire Wire Line
	8950 6500 8950 8250
Wire Wire Line
	8550 6500 8950 6500
Wire Wire Line
	8950 6500 11300 6500
Wire Wire Line
	11300 6500 13650 6500
Wire Wire Line
	13650 6500 16000 6500
Wire Wire Line
	8550 6500 8550 4300
Wire Wire Line
	11300 6500 11300 8250
Connection ~ 8950 6500
Wire Wire Line
	11400 6450 11400 8250
Connection ~ 9950 6450
Wire Wire Line
	11500 6400 11500 8250
Connection ~ 9850 6400
Wire Wire Line
	11600 6350 11600 8250
Connection ~ 9750 6350
Wire Wire Line
	11700 6300 11700 8250
Connection ~ 9650 6300
Wire Wire Line
	11200 6550 11200 8250
Wire Wire Line
	8450 6550 8850 6550
Wire Wire Line
	8850 6550 11200 6550
Wire Wire Line
	11200 6550 13550 6550
Wire Wire Line
	13550 6550 15900 6550
Wire Wire Line
	8850 6550 8850 8250
Wire Wire Line
	8450 6550 8450 4300
Connection ~ 8850 6550
Wire Wire Line
	8350 4300 8350 6600
Wire Wire Line
	8350 6600 8750 6600
Wire Wire Line
	8750 6600 11100 6600
Wire Wire Line
	11100 6600 13450 6600
Wire Wire Line
	13450 6600 15800 6600
Wire Wire Line
	11100 6600 11100 8250
Wire Wire Line
	8750 6600 8750 8250
Connection ~ 8750 6600
Wire Wire Line
	8650 8250 8650 6650
Wire Wire Line
	8250 6650 8650 6650
Wire Wire Line
	8650 6650 11000 6650
Wire Wire Line
	11000 6650 13350 6650
Wire Wire Line
	13350 6650 15700 6650
Wire Wire Line
	8250 6650 8250 4300
Wire Wire Line
	11000 6650 11000 8250
Connection ~ 8650 6650
Wire Wire Line
	13350 6650 13350 8250
Connection ~ 11000 6650
Wire Wire Line
	13450 6600 13450 8250
Connection ~ 11100 6600
Wire Wire Line
	13550 6550 13550 8250
Connection ~ 11200 6550
Wire Wire Line
	13650 6500 13650 8250
Connection ~ 11300 6500
Wire Wire Line
	13750 6450 13750 8250
Connection ~ 11400 6450
Wire Wire Line
	13850 6400 13850 8250
Connection ~ 11500 6400
Wire Wire Line
	13950 6350 13950 8250
Connection ~ 11600 6350
Wire Wire Line
	14050 6300 14050 8250
Connection ~ 11700 6300
Wire Wire Line
	15700 6650 15700 8250
Connection ~ 13350 6650
Wire Wire Line
	15800 6600 15800 8250
Connection ~ 13450 6600
Wire Wire Line
	15900 6550 15900 8250
Connection ~ 13550 6550
Wire Wire Line
	16000 6500 16000 8250
Connection ~ 13650 6500
Wire Wire Line
	16100 6450 16100 8250
Connection ~ 13750 6450
Wire Wire Line
	16200 6400 16200 8250
Connection ~ 13850 6400
Wire Wire Line
	16300 6350 16300 8250
Connection ~ 13950 6350
Wire Wire Line
	16400 6300 16400 8250
Connection ~ 14050 6300
Wire Wire Line
	8050 2650 9250 2650
Wire Wire Line
	9250 2650 9350 2650
Wire Wire Line
	9350 2650 9450 2650
Wire Wire Line
	9450 2650 9450 2650
Wire Wire Line
	7850 2750 7850 2900
Wire Wire Line
	7850 2750 7950 2750
Wire Wire Line
	7950 2750 8750 2750
Wire Wire Line
	8750 2750 8750 4400
Wire Wire Line
	8750 4400 9450 4400
Wire Wire Line
	9450 4400 9450 4300
Wire Wire Line
	7750 2900 7750 2400
Wire Wire Line
	7450 2400 7750 2400
Wire Wire Line
	7750 2400 9150 2400
Wire Wire Line
	9150 2400 9150 2900
Text GLabel 7450 2400 0    60   Input ~ 0
-CYCLE_COUNTER_CLK
Connection ~ 7750 2400
NoConn ~ 8050 4300
Wire Wire Line
	7950 2750 7950 2900
Connection ~ 7950 2750
Text GLabel 7450 2550 0    60   Input ~ 0
-CYCLE_COUNTER_RESET
Connection ~ 7550 2550
Wire Wire Line
	9450 2650 9450 2900
Connection ~ 9450 2650
Wire Wire Line
	8050 2900 8050 2650
Connection ~ 9250 2650
NoConn ~ 9950 2900
NoConn ~ 9850 2900
NoConn ~ 9750 2900
NoConn ~ 9650 2900
NoConn ~ 8550 2900
NoConn ~ 8450 2900
NoConn ~ 8350 2900
NoConn ~ 8250 2900
Text Notes 7900 3600 0    60   ~ 0
Cycle Counter\nHigh
Text Notes 9300 3600 0    60   ~ 0
Cycle Counter\nLow
$EndSCHEMATC