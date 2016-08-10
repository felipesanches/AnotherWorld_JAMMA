# This file is a python script that specifies
# the microcode implementation for all of the CPU instructions
# and outputs a ROM image for the micro-instruction sequencer.

# SRAM
# Static RAM is used for several different purposes:
# 0: As proper system RAM (To store what used to be called "VM variables")
#    These are 256 16-bit values, so it takes 512 bytes
# 1: To store 64 16-bit pointers keeping track of the Instruction Pointer value
#    for each of the code execution channels.
#    These take 128 bytes of the SRAM chip.
# 2: To store the system stack, which is composed of 256 16-bit values
#    So, the stake takes 512 bytes.
# 3: With 2 bits for selection the SRAM address range, we have this extra slice of RAM
#    which I'm tempted to exploit as useful generic scratch-pad memory for the CPU instead 
#    of adding yet another set of TTL register IC when needed. I still have to better evaluate
#    the effectiveness of such a hacky strategy...

# SRAM address range selectors:
CHANNEL_PTRS = 0
VM_VARS = 1
STACK = 2
SCRATCHPAD = 3 # <== smells like a hack.

#CONTROL UNIT SIGNALS:
SIGNALS = \
{
  "ALU_CARRY_IN": {"bits": 1, "shift": 0},
  "ALU_MODE": {"bits": 1, "shift": 1},
  "ALU_FUNCTION_SEL": {"bits": 4, "shift": 2},
  "ALU_IN_AL_CLK": {"bits": 1, "shift": 6},
  "ALU_IN_AH_CLK": {"bits": 1, "shift": 7},
  "ALU_IN_BL_CLK": {"bits": 1, "shift": 8},
  "ALU_IN_BH_CLK": {"bits": 1, "shift": 9},
  "CODEBANK_CLK": {"bits": 1, "shift": 10},
  "IPL_CLK": {"bits": 1, "shift": 11},
  "IPH_CLK": {"bits": 1, "shift": 12},
  "OPCODE_CLK": {"bits": 1, "shift": 13},
  "~SRAM_WE": {"bits": 1, "shift": 14},
  "DATABUS_SEL": {"bits": 3, "shift": 15},
  "SRAM_RANGE_SEL": {"bits": 2, "shift": 18},
  "~CURRENT_CHANNEL_OE": {"bits": 1, "shift": 20},
  "BYTE_SELECT": {"bits": 1, "shift": 21},
  "CYCLE_COUNTER_RESET": {"bits": 1, "shift": 22},
  "CYCLE_COUNTER_INC": {"bits": 1, "shift": 23},
  "STACK_POINTER_RESET": {"bits": 1, "shift": 24},
  "STACK_POINTER_INC": {"bits": 1, "shift": 25},
  "STACK_POINTER_DEC": {"bits": 1, "shift": 26},
  "CURRENT_CHANNEL_RESET": {"bits": 1, "shift": 27},
  "CURRENT_CHANNEL_INC": {"bits": 1, "shift": 28}
}

# Databus selectors:
CODEROM = 0
SRAM = 1
IPH = 2
IPL = 3
ALU_OUT_H = 4
ALU_OUT_L = 5

#byte selector
#(for choosing the halves
# of 16-bit values):
HIGH_BYTE = 1
LOW_BYTE = 0

#ULA Modes:
ARITHMETIC = 0
LOGIC = 1

#ALU arithmetic functions:
DEC_A = 0x0
INC_A = 0xF
A_OR_B = 0xB
A_AND_B = 0xE
A_PLUS_B = 0x9
A_MINUS_B = 0x6
LOGIC_ZERO = 0xC

# helper define:
HIGH = 1
LOW = 0

FETCH_OPCODE = \
[
 [      ("SRAM_RANGE_SEL", CHANNEL_PTRS),
           ("DATABUS_SEL", SRAM),
   ("~CURRENT_CHANNEL_OE", LOW),
           ("BYTE_SELECT", HIGH_BYTE)
 ],
 [             ("IPH_CLK", HIGH),
         ("ALU_IN_AH_CLK", HIGH),
              ("ALU_MODE", ARITHMETIC),
      ("ALU_FUNCTION_SEL", INC_A),
          ("ALU_CARRY_IN", HIGH)
 ],
 [         ("BYTE_SELECT", LOW_BYTE),
               ("IPH_CLK", LOW), #restore
         ("ALU_IN_AH_CLK", LOW)  #restore
 ],
 [             ("IPL_CLK", HIGH),
         ("ALU_IN_AL_CLK", HIGH)
 ],
 [             ("IPL_CLK", LOW), #restore
         ("ALU_IN_AH_CLK", LOW), #restore
           ("DATABUS_SEL", CODEROM),
   ("~CURRENT_CHANNEL_OE", HIGH) #restore
 ],
 [          ("OPCODE_CLK", HIGH)
 ],
 [          ("OPCODE_CLK", LOW) #restore
   #TODO: store the ULA result (incremented IP value) back into SRAM
 ]
]

##################################################
# Actual instructions implementation begins here #
##################################################
OPCODE = {}

# movConst
OPCODE[0x00] = \
 FETCH_OPCODE + \
 [
  #TODO: implement-me!
 ]

# mov
OPCODE[0x01] = \
 FETCH_OPCODE + \
 [
  #TODO: implement-me!
 ]

# add
OPCODE[0x02] = \
 FETCH_OPCODE + \
 [
  #TODO: implement-me!
 ]

# addConst
OPCODE[0x03] = \
 FETCH_OPCODE + \
 [
  #TODO: implement-me!
 ]

# call
OPCODE[0x04] = \
 FETCH_OPCODE + \
 [
  #TODO: implement-me!
 ]

# ret
OPCODE[0x05] = \
 FETCH_OPCODE + \
 [
  #TODO: implement-me!
 ]

# break
OPCODE[0x06] = \
 FETCH_OPCODE + \
 [
  #TODO: implement-me!
 ]

microcode_0 = open("ucode_0.rom", "w")
microcode_1 = open("ucode_1.rom", "w")
microcode_2 = open("ucode_2.rom", "w")
microcode_3 = open("ucode_3.rom", "w")

num_inputs = 16
for addr in xrange(2**num_inputs):
  output = 0
  opcode_value = (addr >> 0) & 255
  cycle = (addr >> 8) & 255

  if opcode_value > 6:
    continue  # we havent yet specified these instructions

  if cycle < len(OPCODE[opcode_value]):
    for signal, value in OPCODE[opcode_value][cycle]:
      bits = SIGNALS[signal]["bits"]
      shift = SIGNALS[signal]["shift"]
      output &= ~(2**(bits-1) << shift)
      output |= (value << shift)

  microcode_0.seek(addr)
  microcode_0.write(chr(output & 0xFF))
  microcode_1.seek(addr)
  microcode_1.write(chr((output >> 8) & 0xFF))
  microcode_2.seek(addr)
  microcode_2.write(chr((output >> 16) & 0xFF))
  microcode_3.seek(addr)
  microcode_3.write(chr((output >> 24) & 0xFF))

microcode_0.close()
microcode_1.close()
microcode_2.close()
microcode_3.close()

