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
LIBS:jamma_connector
LIBS:anotherworld-cache
EELAYER 27 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 8
Title ""
Date "16 aug 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 12900 2800 6750 1500
U 57A22D3F
F0 "JAMMA Connector" 236
F1 "jamma.sch" 236
$EndSheet
$Sheet
S 12900 6200 6700 1350
U 57A248D2
F0 "Master Clock" 236
F1 "master_clock.sch" 236
$EndSheet
$Sheet
S 3800 2800 7500 1500
U 57A2BA94
F0 "Static RAM" 236
F1 "sram.sch" 236
$EndSheet
$Sheet
S 3750 6200 7550 1350
U 57A4B50B
F0 "Arithmetic & Logic Unit" 236
F1 "alu.sch" 236
$EndSheet
$Sheet
S 3700 12450 7500 1400
U 57A7E619
F0 "Microcode Sequencer" 236
F1 "microcode.sch" 236
$EndSheet
Text Notes 3950 3250 0    197  ~ 0
* Stack area\n* Channel Pointers\n* "VM" vars (i.e. system RAM)\n* Scratchpad area
Text Notes 3900 9850 0    197  ~ 0
* Code ROM\n* Instruction Pointer Register\n* ROM Bank Register
Text Notes 4000 12950 0    197  ~ 0
* Microcode ROMs\n* Opcode Register
Text Notes 3900 6700 0    197  ~ 0
* 16bit ALU\n* ALU Input Registers\n* ALU Output Latches
$Sheet
S 12950 9350 6700 1350
U 57AAB07E
F0 "Video Signal Output" 236
F1 "video_output.sch" 236
$EndSheet
$Sheet
S 3750 9350 7500 1400
U 57A82FBD
F0 "Code ROM Banks" 236
F1 "code_banks.sch" 236
$EndSheet
$EndSCHEMATC
