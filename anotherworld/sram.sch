EESchema Schematic File Version 4
LIBS:anotherworld-cache
EELAYER 26 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 4 8
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
L anotherworld-rescue:6116 IC?
U 1 1 57A2BAA0
P 9150 10050
F 0 "IC?" H 8750 10850 40  0000 C CNN
F 1 "6116" H 9500 9250 40  0000 C CNN
F 2 "" H 9150 10050 60  0000 C CNN
F 3 "" H 9150 10050 60  0000 C CNN
	1    9150 10050
	0    1    1    0   
$EndComp
Text GLabel 7950 9200 0    60   Input ~ 0
-SRAM_WE
Text GLabel 7950 9050 0    60   Input ~ 0
-SRAM_OE
Text GLabel 7950 8750 0    60   Input ~ 0
BYTE_SELECT
Text GLabel 8200 11900 0    60   3State ~ 0
DATA_0
Text GLabel 8200 11750 0    60   3State ~ 0
DATA_1
Text GLabel 8200 11600 0    60   3State ~ 0
DATA_2
Text GLabel 8200 11450 0    60   3State ~ 0
DATA_3
Text GLabel 8200 11300 0    60   3State ~ 0
DATA_4
Text GLabel 8200 11150 0    60   3State ~ 0
DATA_5
Text GLabel 8200 11000 0    60   3State ~ 0
DATA_6
Text GLabel 8200 10850 0    60   3State ~ 0
DATA_7
$Comp
L anotherworld-rescue:GND #PWR?
U 1 1 57A95CE7
P 8300 9400
F 0 "#PWR?" H 8300 9400 30  0001 C CNN
F 1 "GND" H 8300 9330 30  0001 C CNN
F 2 "" H 8300 9400 60  0000 C CNN
F 3 "" H 8300 9400 60  0000 C CNN
	1    8300 9400
	1    0    0    -1  
$EndComp
$Comp
L anotherworld-rescue:74LS374-RESCUE-anotherworld U?
U 1 1 57A95F2B
P 9250 6850
F 0 "U?" H 9350 6550 60  0000 C CNN
F 1 "74LS374" H 9300 6400 60  0000 C CNN
F 2 "~" H 9250 6850 60  0000 C CNN
F 3 "~" H 9250 6850 60  0000 C CNN
	1    9250 6850
	0    1    1    0   
$EndComp
Text GLabel 7950 8500 0    60   Input ~ 0
SRAM_SEL_1
Text GLabel 7950 8350 0    60   Input ~ 0
SRAM_SEL_0
Text GLabel 8100 5650 0    60   Input ~ 0
DATA_0
Text GLabel 8100 5500 0    60   Input ~ 0
DATA_1
Text GLabel 8100 5350 0    60   Input ~ 0
DATA_2
Text GLabel 8100 5200 0    60   Input ~ 0
DATA_3
Text GLabel 8100 5050 0    60   Input ~ 0
DATA_4
Text GLabel 8100 4900 0    60   Input ~ 0
DATA_5
Text GLabel 8100 4750 0    60   Input ~ 0
DATA_6
Text GLabel 8100 4600 0    60   Input ~ 0
DATA_7
Text Notes 9050 6800 0    59   ~ 12
SRAM Address\nRegister
Text Notes 8800 10000 0    59   ~ 12
Static RAM\n4x 512bytes
Text Notes 6050 9550 0    59   ~ 0
Memory Ranges:\n\n0 - Channel Pointers\n     64 x 16-bit instruction pointer values\n\n1 - "VM" variables (a.k.a. proper system RAM)\n     256 x 16-bit values\n\n2 - Stack\n     256 x 16-bit values\n\n3 - "scratch pad" memory area\n     General purpose (512 bytes)
Text GLabel 8100 5850 0    60   Input ~ 0
SRAM_ADDR_CLK
$Comp
L anotherworld-rescue:74469 U?
U 1 1 57A96493
P 12250 6800
F 0 "U?" H 12250 6400 70  0000 C CNN
F 1 "74469" H 12350 6250 70  0000 C CNN
F 2 "~" H 12250 6800 60  0000 C CNN
F 3 "~" H 12250 6800 60  0000 C CNN
	1    12250 6800
	0    1    1    0   
$EndComp
Text Notes 12050 6800 0    59   ~ 12
Stack Pointer\nUp/Down Counter
Text GLabel 11700 7850 0    60   Input ~ 0
-STACK_POINTER_OE
Text GLabel 11400 5750 0    60   Input ~ 0
STACK_CLK
NoConn ~ 11650 6150
Text GLabel 13100 7650 2    60   Output ~ 0
STACK_OVERFLOW
Text GLabel 11400 5900 0    60   Input ~ 0
STACK_COUNTER_FUNCTION_0
Text GLabel 11400 6050 0    60   Input ~ 0
STACK_COUNTER_FUNCTION_1
$Comp
L anotherworld-rescue:74469 U?
U 1 1 57A9717D
P 15550 6800
F 0 "U?" H 15550 6400 70  0000 C CNN
F 1 "74469" H 15650 6250 70  0000 C CNN
F 2 "~" H 15550 6800 60  0000 C CNN
F 3 "~" H 15550 6800 60  0000 C CNN
	1    15550 6800
	0    1    1    0   
$EndComp
Text Notes 15350 6800 0    59   ~ 12
Current Channel\nPointer (Counter)
Text GLabel 15000 7850 0    60   Input ~ 0
-CURRENT_CHANNEL_OE
Text GLabel 14700 5750 0    60   Input ~ 0
CURRENT_CHANNEL_CLK
NoConn ~ 14950 6150
Text GLabel 16400 7650 2    60   Output ~ 0
NEXT_FRAME
Text GLabel 14700 5900 0    60   Input ~ 0
CHANNEL_COUNTER_FUNCTION_0
Text GLabel 14700 6050 0    60   Input ~ 0
CHANNEL_COUNTER_FUNCTION_1
$Comp
L anotherworld-rescue:74LS139-RESCUE-anotherworld U?
U 1 1 57A97549
P 14000 11100
AR Path="/57A97549" Ref="U?"  Part="1" 
AR Path="/57A2BA94/57A97549" Ref="U?"  Part="1" 
F 0 "U?" H 14000 11200 60  0000 C CNN
F 1 "74LS139" H 14000 11000 60  0000 C CNN
F 2 "~" H 14000 11100 60  0000 C CNN
F 3 "~" H 14000 11100 60  0000 C CNN
	1    14000 11100
	1    0    0    -1  
$EndComp
Text GLabel 15100 10800 2    60   Output ~ 0
-CURRENT_CHANNEL_OE
Text GLabel 15100 11000 2    60   Output ~ 0
-STACK_POINTER_OE
Text GLabel 8600 6050 0    60   Input ~ 0
-SRAM_ADDRESS_OE
Text GLabel 15100 11200 2    60   Output ~ 0
-SRAM_ADDRESS_OE
NoConn ~ 14850 11400
Text GLabel 12950 10850 0    60   Input ~ 0
ADDRESS_BUS_SEL_1
Text GLabel 12950 11000 0    60   Input ~ 0
ADDRESS_BUS_SEL_0
$Comp
L anotherworld-rescue:GND #PWR?
U 1 1 57A97887
P 13000 11450
F 0 "#PWR?" H 13000 11450 30  0001 C CNN
F 1 "GND" H 13000 11380 30  0001 C CNN
F 2 "" H 13000 11450 60  0000 C CNN
F 3 "" H 13000 11450 60  0000 C CNN
	1    13000 11450
	1    0    0    -1  
$EndComp
$Comp
L anotherworld-rescue:GND #PWR?
U 1 1 57A9F070
P 13000 6150
F 0 "#PWR?" H 13000 6150 30  0001 C CNN
F 1 "GND" H 13000 6080 30  0001 C CNN
F 2 "" H 13000 6150 60  0000 C CNN
F 3 "" H 13000 6150 60  0000 C CNN
	1    13000 6150
	-1   0    0    -1  
$EndComp
$Comp
L anotherworld-rescue:GND #PWR?
U 1 1 57A9FBDE
P 16300 6150
F 0 "#PWR?" H 16300 6150 30  0001 C CNN
F 1 "GND" H 16300 6080 30  0001 C CNN
F 2 "" H 16300 6150 60  0000 C CNN
F 3 "" H 16300 6150 60  0000 C CNN
	1    16300 6150
	-1   0    0    -1  
$EndComp
$Comp
L anotherworld-rescue:R R?
U 1 1 57A9FBF7
P 15500 8500
F 0 "R?" V 15580 8500 40  0000 C CNN
F 1 "R" V 15507 8501 40  0000 C CNN
F 2 "~" V 15430 8500 30  0000 C CNN
F 3 "~" H 15500 8500 30  0000 C CNN
	1    15500 8500
	1    0    0    1   
$EndComp
$Comp
L anotherworld-rescue:R R?
U 1 1 57A9FC04
P 15300 8500
F 0 "R?" V 15380 8500 40  0000 C CNN
F 1 "R" V 15307 8501 40  0000 C CNN
F 2 "~" V 15230 8500 30  0000 C CNN
F 3 "~" H 15300 8500 30  0000 C CNN
	1    15300 8500
	1    0    0    1   
$EndComp
Wire Wire Line
	9850 8750 9850 9450
Wire Wire Line
	9750 7550 9750 9450
Wire Wire Line
	9650 7550 9650 9450
Wire Wire Line
	9550 7550 9550 9450
Wire Wire Line
	9450 7550 9450 9450
Wire Wire Line
	9350 7550 9350 9450
Wire Wire Line
	9250 7550 9250 9450
Wire Wire Line
	9150 7550 9150 9450
Wire Wire Line
	8650 9450 8650 9050
Wire Wire Line
	8550 9450 8550 9200
Wire Wire Line
	9850 8750 7950 8750
Wire Wire Line
	8200 10850 9150 10850
Wire Wire Line
	9150 10850 9150 10650
Wire Wire Line
	9250 10650 9250 11000
Wire Wire Line
	9250 11000 8200 11000
Wire Wire Line
	8200 11150 9350 11150
Wire Wire Line
	9350 11150 9350 10650
Wire Wire Line
	9450 10650 9450 11300
Wire Wire Line
	9450 11300 8200 11300
Wire Wire Line
	8200 11450 9550 11450
Wire Wire Line
	9550 11450 9550 10650
Wire Wire Line
	9650 10650 9650 11600
Wire Wire Line
	9650 11600 8200 11600
Wire Wire Line
	8200 11750 9750 11750
Wire Wire Line
	9750 11750 9750 10650
Wire Wire Line
	9850 10650 9850 11900
Wire Wire Line
	9850 11900 8200 11900
Wire Wire Line
	8550 9200 7950 9200
Wire Wire Line
	8650 9050 7950 9050
Wire Wire Line
	8450 9450 8450 9300
Wire Wire Line
	8300 9400 8300 9300
Wire Wire Line
	8300 9300 8450 9300
Wire Wire Line
	9050 7550 9050 9450
Wire Wire Line
	7950 8500 8850 8500
Wire Wire Line
	8850 8500 8850 9450
Wire Wire Line
	8950 9450 8950 8350
Wire Wire Line
	8950 8350 7950 8350
Wire Wire Line
	9750 5650 9750 6150
Wire Wire Line
	9650 5500 9650 6150
Wire Wire Line
	9550 5350 9550 6150
Wire Wire Line
	9450 5200 9450 6150
Wire Wire Line
	9350 5050 9350 6150
Wire Wire Line
	9250 4900 9250 6150
Wire Wire Line
	9150 4750 9150 6150
Wire Wire Line
	9050 4600 9050 6150
Wire Wire Line
	8600 6050 8750 6050
Wire Wire Line
	8750 6050 8750 6150
Wire Wire Line
	8100 5850 8850 5850
Wire Wire Line
	8850 5850 8850 6150
Wire Wire Line
	12150 7450 12150 9300
Wire Wire Line
	9050 9300 15300 9300
Connection ~ 9050 9300
Wire Wire Line
	12250 7450 12250 9250
Wire Wire Line
	9150 9250 15500 9250
Connection ~ 9150 9250
Wire Wire Line
	9250 9200 15650 9200
Wire Wire Line
	12350 9200 12350 7450
Connection ~ 9250 9200
Wire Wire Line
	12450 7450 12450 9150
Wire Wire Line
	9350 9150 15750 9150
Connection ~ 9350 9150
Wire Wire Line
	9450 9100 15850 9100
Wire Wire Line
	12550 9100 12550 7450
Connection ~ 9450 9100
Wire Wire Line
	12650 7450 12650 9050
Wire Wire Line
	9550 9050 15950 9050
Connection ~ 9550 9050
Wire Wire Line
	9650 9000 16050 9000
Wire Wire Line
	12750 9000 12750 7450
Connection ~ 9650 9000
Wire Wire Line
	12850 7450 12850 8950
Wire Wire Line
	9750 8950 16150 8950
Connection ~ 9750 8950
Wire Wire Line
	11700 7850 11950 7850
Wire Wire Line
	11950 7850 11950 7450
Wire Wire Line
	11400 5750 11950 5750
Wire Wire Line
	11950 5750 11950 6150
Wire Wire Line
	13100 7650 11850 7650
Wire Wire Line
	11850 7650 11850 7450
Wire Wire Line
	11400 6050 11750 6050
Wire Wire Line
	11750 6050 11750 6150
Wire Wire Line
	11400 5900 11850 5900
Wire Wire Line
	11850 5900 11850 6150
Wire Wire Line
	15650 9200 15650 7450
Wire Wire Line
	15750 9150 15750 7450
Wire Wire Line
	15850 9100 15850 7450
Wire Wire Line
	15950 9050 15950 7450
Wire Wire Line
	16050 9000 16050 7450
Wire Wire Line
	16150 8950 16150 7450
Wire Wire Line
	15000 7850 15250 7850
Wire Wire Line
	15250 7850 15250 7450
Wire Wire Line
	14700 5750 15250 5750
Wire Wire Line
	15250 5750 15250 6150
Wire Wire Line
	16400 7650 15150 7650
Wire Wire Line
	15150 7650 15150 7450
Wire Wire Line
	14700 6050 15050 6050
Wire Wire Line
	15050 6050 15050 6150
Wire Wire Line
	14700 5900 15150 5900
Wire Wire Line
	15150 5900 15150 6150
Connection ~ 12150 9300
Connection ~ 12250 9250
Connection ~ 12350 9200
Connection ~ 12450 9150
Connection ~ 12550 9100
Connection ~ 12650 9050
Connection ~ 12750 9000
Connection ~ 12850 8950
Wire Wire Line
	14850 11200 15100 11200
Wire Wire Line
	15100 11000 14850 11000
Wire Wire Line
	14850 10800 15100 10800
Wire Wire Line
	12950 10850 13150 10850
Wire Wire Line
	13150 11000 12950 11000
Wire Wire Line
	13000 11450 13000 11350
Wire Wire Line
	13000 11350 13150 11350
Wire Wire Line
	13000 6050 13000 6150
Wire Wire Line
	12150 6050 13000 6050
Wire Wire Line
	12850 6050 12850 6150
Wire Wire Line
	12150 6050 12150 6150
Connection ~ 12850 6050
Wire Wire Line
	12250 6150 12250 6050
Connection ~ 12250 6050
Wire Wire Line
	12350 6050 12350 6150
Connection ~ 12350 6050
Wire Wire Line
	12450 6150 12450 6050
Connection ~ 12450 6050
Wire Wire Line
	12550 6050 12550 6150
Connection ~ 12550 6050
Wire Wire Line
	12650 6150 12650 6050
Connection ~ 12650 6050
Wire Wire Line
	12750 6050 12750 6150
Connection ~ 12750 6050
Wire Wire Line
	8100 4600 9050 4600
Wire Wire Line
	9150 4750 8100 4750
Wire Wire Line
	8100 4900 9250 4900
Wire Wire Line
	9350 5050 8100 5050
Wire Wire Line
	8100 5200 9450 5200
Wire Wire Line
	9550 5350 8100 5350
Wire Wire Line
	8100 5500 9650 5500
Wire Wire Line
	9750 5650 8100 5650
Wire Wire Line
	16300 6050 16300 6150
Wire Wire Line
	15650 6050 16300 6050
Wire Wire Line
	16150 6050 16150 6150
Connection ~ 16150 6050
Wire Wire Line
	15650 6050 15650 6150
Wire Wire Line
	15750 6150 15750 6050
Connection ~ 15750 6050
Wire Wire Line
	15850 6050 15850 6150
Connection ~ 15850 6050
Wire Wire Line
	15950 6150 15950 6050
Connection ~ 15950 6050
Wire Wire Line
	16050 6050 16050 6150
Connection ~ 16050 6050
Wire Wire Line
	15300 9300 15300 8750
Wire Wire Line
	15500 9250 15500 8750
NoConn ~ 15450 7450
NoConn ~ 15550 7450
$Comp
L power:+5V #PWR?
U 1 1 57A9FEEB
P 15500 8100
F 0 "#PWR?" H 15500 8190 20  0001 C CNN
F 1 "+5V" H 15500 8190 30  0000 C CNN
F 2 "" H 15500 8100 60  0000 C CNN
F 3 "" H 15500 8100 60  0000 C CNN
	1    15500 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	15500 8100 15500 8250
Wire Wire Line
	15500 8150 15300 8150
Wire Wire Line
	15300 8150 15300 8250
Connection ~ 15500 8150
$Comp
L power:+5V #PWR?
U 1 1 57AA021B
P 15450 6000
F 0 "#PWR?" H 15450 6090 20  0001 C CNN
F 1 "+5V" H 15450 6090 30  0000 C CNN
F 2 "" H 15450 6000 60  0000 C CNN
F 3 "" H 15450 6000 60  0000 C CNN
	1    15450 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	15450 6000 15450 6150
Wire Wire Line
	15450 6050 15550 6050
Wire Wire Line
	15550 6050 15550 6150
Connection ~ 15450 6050
Text Notes 16350 6700 0    60   ~ 12
This is a 6-bit counter\nthat cycles through\ncode execution\nchannels 0 to 63
$EndSCHEMATC
