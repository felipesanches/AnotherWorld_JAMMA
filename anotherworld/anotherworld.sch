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
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title ""
Date "9 aug 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3100 2700 1450 350 
U 57A22D3F
F0 "JAMMA Connector" 50
F1 "jamma.sch" 50
$EndSheet
$Sheet
S 3100 3250 1450 350 
U 57A248D2
F0 "Master Clock" 50
F1 "master_clock.sch" 50
$EndSheet
$Sheet
S 1250 2700 1600 500 
U 57A2BA94
F0 "Static RAM" 50
F1 "sram.sch" 50
$EndSheet
$Sheet
S 1250 3450 1600 400 
U 57A4B50B
F0 "Arithmetic & Logic Unit" 50
F1 "alu.sch" 50
$EndSheet
$Sheet
S 1250 4750 1600 300 
U 57A7E619
F0 "Microcode Sequencer" 50
F1 "microcode.sch" 50
$EndSheet
$Sheet
S 1250 4100 1600 400 
U 57A82FBD
F0 "Code ROM Banks" 50
F1 "code_banks.sch" 50
$EndSheet
Text Notes 1350 2850 0    60   ~ 0
* Stack area\n* Channel Pointers\n* "VM" vars (i.e. system RAM)\n* Scratchpad area
Text Notes 1350 4250 0    60   ~ 0
* Code ROM\n* Instruction Pointer Register\n* ROM Bank Register
Text Notes 1350 4900 0    60   ~ 0
* Microcode ROMs\n* Opcode Register
Text Notes 1350 3600 0    60   ~ 0
* 16bit ALU\n* ALU Input Registers\n* ALU Output Latches
$EndSCHEMATC
