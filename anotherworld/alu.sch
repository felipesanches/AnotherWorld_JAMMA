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
Sheet 5 8
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
L 74LS181 U?
U 1 1 57A4B525
P 8800 10250
F 0 "U?" H 9060 11050 60  0000 C CNN
F 1 "74LS181" H 9090 9440 60  0000 C CNN
F 2 "~" H 8800 10250 60  0000 C CNN
F 3 "~" H 8800 10250 60  0000 C CNN
	1    8800 10250
	0    1    1    0   
$EndComp
$Comp
L 74LS181 U?
U 1 1 57A4B896
P 11000 10250
F 0 "U?" H 11260 11050 60  0000 C CNN
F 1 "74LS181" H 11290 9440 60  0000 C CNN
F 2 "~" H 11000 10250 60  0000 C CNN
F 3 "~" H 11000 10250 60  0000 C CNN
	1    11000 10250
	0    1    1    0   
$EndComp
$Comp
L 74LS181 U?
U 1 1 57A4B8B0
P 13200 10250
F 0 "U?" H 13460 11050 60  0000 C CNN
F 1 "74LS181" H 13490 9440 60  0000 C CNN
F 2 "~" H 13200 10250 60  0000 C CNN
F 3 "~" H 13200 10250 60  0000 C CNN
	1    13200 10250
	0    1    1    0   
$EndComp
$Comp
L 74LS181 U?
U 1 1 57A4B8B6
P 15400 10250
F 0 "U?" H 15660 11050 60  0000 C CNN
F 1 "74LS181" H 15690 9440 60  0000 C CNN
F 2 "~" H 15400 10250 60  0000 C CNN
F 3 "~" H 15400 10250 60  0000 C CNN
	1    15400 10250
	0    1    1    0   
$EndComp
Text GLabel 7100 8300 1    60   Input ~ 0
ALU_FUNCTION_3
Text GLabel 7250 8300 1    60   Input ~ 0
ALU_FUNCTION_2
Text GLabel 7400 8300 1    60   Input ~ 0
ALU_FUNCTION_1
Text GLabel 7550 8300 1    60   Input ~ 0
ALU_FUNCTION_0
Text GLabel 7600 9100 0    60   Input ~ 0
ALU_MODE
Text GLabel 7600 9250 0    60   Input ~ 0
ALU_CARRY_IN
$Comp
L 74LS245 U?
U 1 1 57A4E7D3
P 17000 12050
F 0 "U?" H 17100 12625 60  0000 L BNN
F 1 "74LS245" H 17050 11475 60  0000 L TNN
F 2 "~" H 17000 12050 60  0000 C CNN
F 3 "~" H 17000 12050 60  0000 C CNN
	1    17000 12050
	1    0    0    -1  
$EndComp
$Comp
L 74LS245 U?
U 1 1 57A4E7E0
P 17000 13550
F 0 "U?" H 17100 14125 60  0000 L BNN
F 1 "74LS245" H 17050 12975 60  0000 L TNN
F 2 "~" H 17000 13550 60  0000 C CNN
F 3 "~" H 17000 13550 60  0000 C CNN
	1    17000 13550
	1    0    0    -1  
$EndComp
Text GLabel 17950 14300 3    60   Input ~ 0
DATA_7
Text GLabel 18100 14300 3    60   Input ~ 0
DATA_6
Text GLabel 18250 14300 3    60   Input ~ 0
DATA_5
Text GLabel 18400 14300 3    60   Input ~ 0
DATA_4
Text GLabel 18550 14300 3    60   Input ~ 0
DATA_3
Text GLabel 18700 14300 3    60   Input ~ 0
DATA_2
Text GLabel 18850 14300 3    60   Input ~ 0
DATA_1
Text GLabel 19000 14300 3    60   Input ~ 0
DATA_0
NoConn ~ 12850 10950
NoConn ~ 12650 10950
NoConn ~ 12550 10950
NoConn ~ 10650 10950
NoConn ~ 10450 10950
NoConn ~ 10350 10950
NoConn ~ 8150 10950
NoConn ~ 8250 10950
NoConn ~ 8450 10950
NoConn ~ 14750 10950
NoConn ~ 14850 10950
NoConn ~ 15050 10950
NoConn ~ 15150 10950
Text GLabel 15450 12450 0    60   Input ~ 0
ALU_OUT_L
Text GLabel 15450 13950 0    60   Input ~ 0
ALU_OUT_H
$Comp
L GND #PWR?
U 1 1 57A4FF7F
P 16200 14200
F 0 "#PWR?" H 16200 14200 30  0001 C CNN
F 1 "GND" H 16200 14130 30  0001 C CNN
F 2 "" H 16200 14200 60  0000 C CNN
F 3 "" H 16200 14200 60  0000 C CNN
	1    16200 14200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57A5004B
P 16200 12700
F 0 "#PWR?" H 16200 12700 30  0001 C CNN
F 1 "GND" H 16200 12630 30  0001 C CNN
F 2 "" H 16200 12700 60  0000 C CNN
F 3 "" H 16200 12700 60  0000 C CNN
	1    16200 12700
	1    0    0    -1  
$EndComp
$Comp
L 74LS374 U?
U 1 1 57A7AC01
P 5200 5350
F 0 "U?" H 5350 5100 60  0000 C CNN
F 1 "74LS374" H 5250 4900 60  0000 C CNN
F 2 "~" H 5200 5350 60  0000 C CNN
F 3 "~" H 5200 5350 60  0000 C CNN
	1    5200 5350
	0    1    1    0   
$EndComp
$Comp
L 74LS374 U?
U 1 1 57A7B105
P 6450 5350
F 0 "U?" H 6600 5100 60  0000 C CNN
F 1 "74LS374" H 6500 4900 60  0000 C CNN
F 2 "~" H 6450 5350 60  0000 C CNN
F 3 "~" H 6450 5350 60  0000 C CNN
	1    6450 5350
	0    1    1    0   
$EndComp
$Comp
L 74LS374 U?
U 1 1 57A7B6CE
P 7850 4300
F 0 "U?" H 8000 4050 60  0000 C CNN
F 1 "74LS374" H 7900 3850 60  0000 C CNN
F 2 "~" H 7850 4300 60  0000 C CNN
F 3 "~" H 7850 4300 60  0000 C CNN
	1    7850 4300
	0    1    1    0   
$EndComp
$Comp
L 74LS374 U?
U 1 1 57A7B6E0
P 9100 4300
F 0 "U?" H 9250 4050 60  0000 C CNN
F 1 "74LS374" H 9150 3850 60  0000 C CNN
F 2 "~" H 9100 4300 60  0000 C CNN
F 3 "~" H 9100 4300 60  0000 C CNN
	1    9100 4300
	0    1    1    0   
$EndComp
Text GLabel 3900 2100 1    60   Input ~ 0
DATA_7
Text GLabel 4050 2100 1    60   Input ~ 0
DATA_6
Text GLabel 4200 2100 1    60   Input ~ 0
DATA_5
Text GLabel 4350 2100 1    60   Input ~ 0
DATA_4
Text GLabel 4500 2100 1    60   Input ~ 0
DATA_3
Text GLabel 4650 2100 1    60   Input ~ 0
DATA_2
Text GLabel 4800 2100 1    60   Input ~ 0
DATA_1
Text GLabel 4950 2100 1    60   Input ~ 0
DATA_0
Text GLabel 4800 4350 1    60   Input ~ 0
ALU_IN_AL_CLK
$Comp
L GND #PWR?
U 1 1 57A7EF78
P 4600 4500
F 0 "#PWR?" H 4600 4500 30  0001 C CNN
F 1 "GND" H 4600 4430 30  0001 C CNN
F 2 "" H 4600 4500 60  0000 C CNN
F 3 "" H 4600 4500 60  0000 C CNN
	1    4600 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57A7F0DF
P 5850 4500
F 0 "#PWR?" H 5850 4500 30  0001 C CNN
F 1 "GND" H 5850 4430 30  0001 C CNN
F 2 "" H 5850 4500 60  0000 C CNN
F 3 "" H 5850 4500 60  0000 C CNN
	1    5850 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57A7F2B0
P 7250 3450
F 0 "#PWR?" H 7250 3450 30  0001 C CNN
F 1 "GND" H 7250 3380 30  0001 C CNN
F 2 "" H 7250 3450 60  0000 C CNN
F 3 "" H 7250 3450 60  0000 C CNN
	1    7250 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57A7F2B9
P 8500 3450
F 0 "#PWR?" H 8500 3450 30  0001 C CNN
F 1 "GND" H 8500 3380 30  0001 C CNN
F 2 "" H 8500 3450 60  0000 C CNN
F 3 "" H 8500 3450 60  0000 C CNN
	1    8500 3450
	1    0    0    -1  
$EndComp
Text GLabel 6050 4350 1    60   Input ~ 0
ALU_IN_AH_CLK
Text GLabel 8700 2200 1    60   Input ~ 0
ALU_IN_BH_CLK
Text GLabel 7450 2200 1    60   Input ~ 0
ALU_IN_BL_CLK
$Comp
L CONN_20 P?
U 1 1 57A7FBBA
P 21450 3600
F 0 "P?" V 21400 3600 60  0000 C CNN
F 1 "CONN_20" V 21500 3600 60  0000 C CNN
F 2 "" H 21450 3600 60  0000 C CNN
F 3 "" H 21450 3600 60  0000 C CNN
	1    21450 3600
	1    0    0    -1  
$EndComp
Text GLabel 19950 4700 3    60   Input ~ 0
DATA_7
Text GLabel 20100 4700 3    60   Input ~ 0
DATA_6
Text GLabel 20250 4700 3    60   Input ~ 0
DATA_5
Text GLabel 20400 4700 3    60   Input ~ 0
DATA_4
Text GLabel 20550 4700 3    60   Input ~ 0
DATA_3
Text GLabel 20700 4700 3    60   Input ~ 0
DATA_2
Text GLabel 20850 4700 3    60   Input ~ 0
DATA_1
Text GLabel 21000 4700 3    60   Input ~ 0
DATA_0
Text GLabel 21000 2550 1    60   Input ~ 0
ALU_IN_BH_CLK
Text GLabel 20850 2550 1    60   Input ~ 0
ALU_IN_BL_CLK
Text GLabel 20700 2550 1    60   Input ~ 0
ALU_IN_AH_CLK
Text GLabel 20550 2550 1    60   Input ~ 0
ALU_IN_AL_CLK
Text GLabel 20400 2550 1    60   Input ~ 0
ALU_OUT_H
Text GLabel 20250 2550 1    60   Input ~ 0
ALU_OUT_L
Text GLabel 19900 2550 1    60   Input ~ 0
ALU_FUNCTION_3
Text GLabel 19750 2550 1    60   Input ~ 0
ALU_FUNCTION_2
Text GLabel 19600 2550 1    60   Input ~ 0
ALU_FUNCTION_1
Text GLabel 19450 2550 1    60   Input ~ 0
ALU_FUNCTION_0
Text GLabel 19300 2550 1    60   Input ~ 0
ALU_MODE
Text GLabel 19150 2550 1    60   Input ~ 0
ALU_CARRY_IN
Text Notes 19350 1500 0    118  ~ 0
CONTROL SIGNALS
Wire Wire Line
	12950 10950 12950 11150
Wire Wire Line
	12950 11150 14300 11150
Wire Wire Line
	14300 11150 14300 9400
Wire Wire Line
	14300 9400 14700 9400
Wire Wire Line
	14700 9400 14700 9550
Wire Wire Line
	12500 9550 12500 9400
Wire Wire Line
	12500 9400 12100 9400
Wire Wire Line
	12100 9400 12100 11150
Wire Wire Line
	12100 11150 10750 11150
Wire Wire Line
	10750 11150 10750 10950
Wire Wire Line
	10300 9550 10300 9400
Wire Wire Line
	10300 9400 9900 9400
Wire Wire Line
	9900 9400 9900 11150
Wire Wire Line
	9900 11150 8550 11150
Wire Wire Line
	8550 11150 8550 10950
Wire Wire Line
	8650 8650 8650 9550
Wire Wire Line
	7550 8650 15250 8650
Wire Wire Line
	10850 8650 10850 9550
Wire Wire Line
	10750 8600 10750 9550
Wire Wire Line
	7400 8600 15150 8600
Wire Wire Line
	8550 8600 8550 9550
Wire Wire Line
	8450 8550 8450 9550
Wire Wire Line
	7250 8550 15050 8550
Wire Wire Line
	10650 8550 10650 9550
Wire Wire Line
	10550 8500 10550 9550
Wire Wire Line
	7100 8500 14950 8500
Wire Wire Line
	8350 8500 8350 9550
Wire Wire Line
	13050 8650 13050 9550
Connection ~ 10850 8650
Wire Wire Line
	12950 8600 12950 9550
Connection ~ 10750 8600
Wire Wire Line
	12850 8550 12850 9550
Connection ~ 10650 8550
Wire Wire Line
	12750 8500 12750 9550
Connection ~ 10550 8500
Wire Wire Line
	14950 8500 14950 9550
Connection ~ 12750 8500
Wire Wire Line
	15050 8550 15050 9550
Connection ~ 12850 8550
Wire Wire Line
	15150 8600 15150 9550
Connection ~ 12950 8600
Wire Wire Line
	15250 8650 15250 9550
Connection ~ 13050 8650
Connection ~ 8350 8500
Wire Wire Line
	8200 9550 8200 9100
Wire Wire Line
	7600 9100 14800 9100
Wire Wire Line
	10400 9100 10400 9550
Wire Wire Line
	12600 9100 12600 9550
Connection ~ 10400 9100
Wire Wire Line
	14800 9100 14800 9550
Connection ~ 12600 9100
Connection ~ 8200 9100
Wire Wire Line
	8100 9250 8100 9550
Wire Wire Line
	16300 11550 9300 11550
Wire Wire Line
	9300 11550 9300 10950
Wire Wire Line
	9200 10950 9200 11650
Wire Wire Line
	9200 11650 16300 11650
Wire Wire Line
	16300 13750 15600 13750
Wire Wire Line
	15600 13750 15600 10950
Wire Wire Line
	15700 10950 15700 13650
Wire Wire Line
	15700 13650 16300 13650
Wire Wire Line
	16300 13550 15800 13550
Wire Wire Line
	15800 13550 15800 10950
Wire Wire Line
	15900 10950 15900 13450
Wire Wire Line
	15900 13450 16300 13450
Wire Wire Line
	16300 13350 13400 13350
Wire Wire Line
	13400 13350 13400 10950
Wire Wire Line
	13500 10950 13500 13250
Wire Wire Line
	13500 13250 16300 13250
Wire Wire Line
	16300 13150 13600 13150
Wire Wire Line
	13600 13150 13600 10950
Wire Wire Line
	13700 10950 13700 13050
Wire Wire Line
	13700 13050 16300 13050
Wire Wire Line
	16300 12250 11200 12250
Wire Wire Line
	11200 12250 11200 10950
Wire Wire Line
	11300 10950 11300 12150
Wire Wire Line
	11300 12150 16300 12150
Wire Wire Line
	16300 12050 11400 12050
Wire Wire Line
	11400 12050 11400 10950
Wire Wire Line
	11500 10950 11500 11950
Wire Wire Line
	11500 11950 16300 11950
Wire Wire Line
	16300 11750 9100 11750
Wire Wire Line
	9100 11750 9100 10950
Wire Wire Line
	9000 10950 9000 11850
Wire Wire Line
	9000 11850 16300 11850
Wire Wire Line
	17950 12250 17950 14300
Wire Wire Line
	19000 11550 19000 14300
Wire Wire Line
	19000 13050 17700 13050
Wire Wire Line
	18850 13150 17700 13150
Wire Wire Line
	18100 12150 18100 14300
Wire Wire Line
	18850 11650 18850 14300
Wire Wire Line
	18250 12050 18250 14300
Wire Wire Line
	18700 11750 18700 14300
Wire Wire Line
	18700 13250 17700 13250
Wire Wire Line
	18550 13350 17700 13350
Wire Wire Line
	18400 11950 18400 14300
Wire Wire Line
	18550 11850 18550 14300
Wire Wire Line
	18400 13450 17700 13450
Wire Wire Line
	18250 13550 17700 13550
Wire Wire Line
	18100 13650 17700 13650
Wire Wire Line
	17950 13750 17700 13750
Wire Wire Line
	17700 12250 17950 12250
Connection ~ 17950 13750
Wire Wire Line
	17700 12150 18100 12150
Connection ~ 18100 13650
Wire Wire Line
	17700 12050 18250 12050
Connection ~ 18250 13550
Wire Wire Line
	17700 11950 18400 11950
Connection ~ 18400 13450
Wire Wire Line
	17700 11850 18550 11850
Connection ~ 18550 13350
Wire Wire Line
	18700 11750 17700 11750
Connection ~ 18700 13250
Wire Wire Line
	17700 11650 18850 11650
Connection ~ 18850 13150
Wire Wire Line
	19000 11550 17700 11550
Connection ~ 19000 13050
Wire Wire Line
	15450 12450 16300 12450
Wire Wire Line
	15450 13950 16300 13950
Wire Wire Line
	16300 14050 16200 14050
Wire Wire Line
	16200 14050 16200 14200
Wire Wire Line
	16300 12550 16200 12550
Wire Wire Line
	16200 12550 16200 12700
Wire Wire Line
	5300 6050 5300 7150
Wire Wire Line
	5300 7150 11700 7150
Wire Wire Line
	11700 7150 11700 9550
Wire Wire Line
	11600 9550 11600 7200
Wire Wire Line
	11600 7200 5200 7200
Wire Wire Line
	5200 7200 5200 6050
Wire Wire Line
	5100 6050 5100 7250
Wire Wire Line
	5100 7250 11500 7250
Wire Wire Line
	11500 7250 11500 9550
Wire Wire Line
	11400 9550 11400 7300
Wire Wire Line
	11400 7300 5000 7300
Wire Wire Line
	5000 7300 5000 6050
Wire Wire Line
	5400 6050 5400 7050
Wire Wire Line
	5400 7050 9200 7050
Wire Wire Line
	9200 7050 9200 9550
Wire Wire Line
	9300 9550 9300 7000
Wire Wire Line
	9300 7000 5500 7000
Wire Wire Line
	5500 7000 5500 6050
Wire Wire Line
	5600 6050 5600 6950
Wire Wire Line
	5600 6950 9400 6950
Wire Wire Line
	9400 6950 9400 9550
Wire Wire Line
	9500 9550 9500 6900
Wire Wire Line
	9500 6900 5700 6900
Wire Wire Line
	5700 6900 5700 6050
Wire Wire Line
	6550 6050 6550 6650
Wire Wire Line
	6550 6650 16100 6650
Wire Wire Line
	16100 6650 16100 9550
Wire Wire Line
	16000 9550 16000 6700
Wire Wire Line
	16000 6700 6450 6700
Wire Wire Line
	6450 6700 6450 6050
Wire Wire Line
	6350 6050 6350 6750
Wire Wire Line
	6350 6750 15900 6750
Wire Wire Line
	15900 6750 15900 9550
Wire Wire Line
	15800 9550 15800 6800
Wire Wire Line
	15800 6800 6250 6800
Wire Wire Line
	6250 6800 6250 6050
Wire Wire Line
	6650 6050 6650 6550
Wire Wire Line
	6650 6550 13600 6550
Wire Wire Line
	13600 6550 13600 9550
Wire Wire Line
	13700 9550 13700 6500
Wire Wire Line
	13700 6500 6750 6500
Wire Wire Line
	6750 6500 6750 6050
Wire Wire Line
	6850 6050 6850 6450
Wire Wire Line
	6850 6450 13800 6450
Wire Wire Line
	13800 6450 13800 9550
Wire Wire Line
	13900 9550 13900 6400
Wire Wire Line
	13900 6400 6950 6400
Wire Wire Line
	6950 6400 6950 6050
Wire Wire Line
	7950 5000 7950 6100
Wire Wire Line
	7950 6100 11300 6100
Wire Wire Line
	11300 6100 11300 9550
Wire Wire Line
	11200 9550 11200 6150
Wire Wire Line
	11200 6150 7850 6150
Wire Wire Line
	7850 6150 7850 5000
Wire Wire Line
	7750 5000 7750 6200
Wire Wire Line
	7750 6200 11100 6200
Wire Wire Line
	11100 6200 11100 9550
Wire Wire Line
	11000 9550 11000 6250
Wire Wire Line
	11000 6250 7650 6250
Wire Wire Line
	7650 6250 7650 5000
Wire Wire Line
	8050 5000 8050 6000
Wire Wire Line
	8050 6000 8800 6000
Wire Wire Line
	8800 6000 8800 9550
Wire Wire Line
	8900 9550 8900 5950
Wire Wire Line
	8900 5950 8150 5950
Wire Wire Line
	8150 5950 8150 5000
Wire Wire Line
	8250 5000 8250 5900
Wire Wire Line
	8250 5900 9000 5900
Wire Wire Line
	9000 5900 9000 9550
Wire Wire Line
	9100 9550 9100 5850
Wire Wire Line
	9100 5850 8350 5850
Wire Wire Line
	8350 5850 8350 5000
Wire Wire Line
	9200 5000 9200 5600
Wire Wire Line
	9200 5600 15700 5600
Wire Wire Line
	15700 5600 15700 9550
Wire Wire Line
	15600 9550 15600 5650
Wire Wire Line
	15600 5650 9100 5650
Wire Wire Line
	9100 5650 9100 5000
Wire Wire Line
	9000 5000 9000 5700
Wire Wire Line
	9000 5700 15500 5700
Wire Wire Line
	15500 5700 15500 9550
Wire Wire Line
	15400 9550 15400 5750
Wire Wire Line
	15400 5750 8900 5750
Wire Wire Line
	8900 5750 8900 5000
Wire Wire Line
	9300 5000 9300 5500
Wire Wire Line
	9300 5500 13200 5500
Wire Wire Line
	13200 5500 13200 9550
Wire Wire Line
	13300 9550 13300 5450
Wire Wire Line
	13300 5450 9400 5450
Wire Wire Line
	9400 5450 9400 5000
Wire Wire Line
	9500 5000 9500 5400
Wire Wire Line
	9500 5400 13400 5400
Wire Wire Line
	13400 5400 13400 9550
Wire Wire Line
	13500 9550 13500 5350
Wire Wire Line
	13500 5350 9600 5350
Wire Wire Line
	9600 5350 9600 5000
Wire Wire Line
	4950 2500 4950 2100
Wire Wire Line
	4800 2600 4800 2100
Wire Wire Line
	4650 2700 4650 2100
Wire Wire Line
	4500 2800 4500 2100
Wire Wire Line
	4350 2900 4350 2100
Wire Wire Line
	4200 3000 4200 2100
Wire Wire Line
	4050 3100 4050 2100
Wire Wire Line
	3900 3200 3900 2100
Wire Wire Line
	3900 3200 8900 3200
Wire Wire Line
	8900 3200 8900 3600
Wire Wire Line
	4050 3100 9000 3100
Wire Wire Line
	9000 3100 9000 3600
Wire Wire Line
	4200 3000 9100 3000
Wire Wire Line
	9100 3000 9100 3600
Wire Wire Line
	4350 2900 9200 2900
Wire Wire Line
	9200 2900 9200 3600
Wire Wire Line
	9300 2800 9300 3600
Wire Wire Line
	4500 2800 9300 2800
Wire Wire Line
	4650 2700 9400 2700
Wire Wire Line
	9400 2700 9400 3600
Wire Wire Line
	9500 2600 9500 3600
Wire Wire Line
	4800 2600 9500 2600
Wire Wire Line
	4950 2500 9600 2500
Wire Wire Line
	9600 2500 9600 3600
Wire Wire Line
	7650 3200 7650 3600
Connection ~ 5000 3200
Wire Wire Line
	7750 3600 7750 3100
Connection ~ 5100 3100
Wire Wire Line
	7850 3000 7850 3600
Connection ~ 5200 3000
Wire Wire Line
	7950 3600 7950 2900
Connection ~ 5300 2900
Wire Wire Line
	8050 2800 8050 3600
Connection ~ 5400 2800
Wire Wire Line
	8150 3600 8150 2700
Connection ~ 5500 2700
Wire Wire Line
	8250 2600 8250 3600
Connection ~ 5600 2600
Wire Wire Line
	8350 3600 8350 2500
Connection ~ 5700 2500
Wire Wire Line
	5000 3200 5000 4650
Connection ~ 7650 3200
Wire Wire Line
	5100 4650 5100 3100
Connection ~ 7750 3100
Wire Wire Line
	5200 3000 5200 4650
Connection ~ 7850 3000
Wire Wire Line
	5300 2900 5300 4650
Connection ~ 7950 2900
Wire Wire Line
	5400 2800 5400 4650
Connection ~ 8050 2800
Wire Wire Line
	5500 4650 5500 2700
Connection ~ 8150 2700
Wire Wire Line
	5600 2600 5600 4650
Connection ~ 8250 2600
Wire Wire Line
	5700 4650 5700 2500
Connection ~ 8350 2500
Wire Wire Line
	6250 4650 6250 3200
Connection ~ 6250 3200
Wire Wire Line
	6350 3100 6350 4650
Connection ~ 6350 3100
Wire Wire Line
	6450 4650 6450 3000
Connection ~ 6450 3000
Wire Wire Line
	6550 2900 6550 4650
Connection ~ 6550 2900
Wire Wire Line
	6650 4650 6650 2800
Connection ~ 6650 2800
Wire Wire Line
	6750 2700 6750 4650
Connection ~ 6750 2700
Wire Wire Line
	6850 4650 6850 2600
Connection ~ 6850 2600
Wire Wire Line
	6950 2500 6950 4650
Connection ~ 6950 2500
Wire Wire Line
	4700 4400 4600 4400
Wire Wire Line
	4600 4400 4600 4500
Wire Wire Line
	4700 4400 4700 4650
Wire Wire Line
	5950 4400 5850 4400
Wire Wire Line
	5850 4400 5850 4500
Wire Wire Line
	5950 4400 5950 4650
Wire Wire Line
	7350 3350 7250 3350
Wire Wire Line
	7250 3350 7250 3450
Wire Wire Line
	7350 3350 7350 3600
Wire Wire Line
	8600 3350 8500 3350
Wire Wire Line
	8500 3350 8500 3450
Wire Wire Line
	8600 3350 8600 3600
Wire Wire Line
	6050 4350 6050 4650
Wire Wire Line
	4800 4650 4800 4350
Wire Wire Line
	8700 2200 8700 3600
Wire Wire Line
	7450 2200 7450 3600
Wire Wire Line
	21100 4550 21000 4550
Wire Wire Line
	21000 4550 21000 4700
Wire Wire Line
	20850 4700 20850 4450
Wire Wire Line
	20850 4450 21100 4450
Wire Wire Line
	21100 4350 20700 4350
Wire Wire Line
	20700 4350 20700 4700
Wire Wire Line
	20550 4700 20550 4250
Wire Wire Line
	20550 4250 21100 4250
Wire Wire Line
	21100 4150 20400 4150
Wire Wire Line
	20400 4150 20400 4700
Wire Wire Line
	20250 4700 20250 4050
Wire Wire Line
	20250 4050 21100 4050
Wire Wire Line
	20100 4700 20100 3950
Wire Wire Line
	20100 3950 21100 3950
Wire Wire Line
	21100 3850 19950 3850
Wire Wire Line
	19950 3850 19950 4700
Wire Wire Line
	21000 2550 21000 2650
Wire Wire Line
	21000 2650 21100 2650
Wire Wire Line
	21100 2750 20850 2750
Wire Wire Line
	20850 2750 20850 2550
Wire Wire Line
	20700 2550 20700 2850
Wire Wire Line
	20700 2850 21100 2850
Wire Wire Line
	21100 2950 20550 2950
Wire Wire Line
	20550 2950 20550 2550
Wire Wire Line
	20400 2550 20400 3050
Wire Wire Line
	20400 3050 21100 3050
Wire Wire Line
	20250 2550 20250 3150
Wire Wire Line
	20250 3150 21100 3150
Wire Wire Line
	19900 2550 19900 3250
Wire Wire Line
	19900 3250 21100 3250
Wire Wire Line
	19750 2550 19750 3350
Wire Wire Line
	19750 3350 21100 3350
Wire Wire Line
	19600 2550 19600 3450
Wire Wire Line
	19600 3450 21100 3450
Wire Wire Line
	21100 3550 19450 3550
Wire Wire Line
	19450 3550 19450 2550
Wire Wire Line
	19300 2550 19300 3650
Wire Wire Line
	19300 3650 21100 3650
Wire Wire Line
	21100 3750 19150 3750
Wire Wire Line
	19150 3750 19150 2550
Wire Notes Line
	22300 5700 18400 5700
Wire Notes Line
	18400 5700 18400 1050
Wire Notes Line
	18400 1050 22300 1050
Wire Notes Line
	22300 1050 22300 5700
Wire Wire Line
	7100 8500 7100 8300
Wire Wire Line
	7250 8300 7250 8550
Connection ~ 8450 8550
Wire Wire Line
	7400 8600 7400 8300
Connection ~ 8550 8600
Wire Wire Line
	7550 8300 7550 8650
Connection ~ 8650 8650
Wire Wire Line
	7600 9250 8100 9250
Text Notes 20100 5450 0    118  ~ 0
DATA BUS
Text Notes 4850 5250 0    60   ~ 12
ALU Input A Low\nRegister
Text Notes 6100 5250 0    60   ~ 12
ALU Input A High\nRegister
Text Notes 7500 4200 0    60   ~ 12
ALU Input B Low\nRegister
Text Notes 8750 4200 0    60   ~ 12
ALU Input B High\nRegister
Text Notes 16850 11600 0    60   ~ 12
ALU\nOutput\nLow\nLatch
Text Notes 16850 13100 0    60   ~ 12
ALU\nOutput\nHigh\nLatch
$EndSCHEMATC
