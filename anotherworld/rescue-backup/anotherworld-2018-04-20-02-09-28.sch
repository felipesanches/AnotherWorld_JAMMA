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
Sheet 1 8
Title ""
Date "17 aug 2016"
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
Text Notes 4000 4050 0    197  ~ 0
* Stack area\n* Channel Pointers\n* "VM" vars (i.e. system RAM)\n* Scratchpad area
Text Notes 3950 10450 0    197  ~ 0
* Code ROM\n* Instruction Pointer Register\n* ROM Bank Register
Text Notes 4000 13300 0    197  ~ 0
* Microcode ROMs\n* Opcode Register
Text Notes 4000 7300 0    197  ~ 0
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
