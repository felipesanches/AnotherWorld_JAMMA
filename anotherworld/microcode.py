# This file is a python script that specifies
# the microcode implementation for all of the CPU instructions
# and outputs a ROM image for the micro-instruction sequencer.

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
  "IPH_CLK": {"bits": 1, "shift": 11},
  "IPL_CLK": {"bits": 1, "shift": 12},
  "OPCODE_CLK": {"bits": 1, "shift": 13},
  "~SRAM_WE": {"bits": 1, "shift": 14},
  "DATABUS_SEL": {"bits": 3, "shift": 15},
  "SRAM_RANGE_SEL": {"bits": 2, "shift": 18},
  "~CUR_CHAN_OE": {"bits": 1, "shift": 20},
  "SELECT_BYTE": {"bits": 1, "shift": 21}
}

# Databus selectors:
CODEROM = 0
SRAM = 1
IPH = 2
IPL = 3
ALU_OUT_H = 4
ALU_OUT_L = 5

# SRAM address range selectors:
CHANNEL_PTRS = 0
VM_VARS = 1
STACK = 2

#byte selector
#(for choosing the halves
# of 16-bit values):
HIGH_BYTE = 1
LOW_BYTE = 0

#ULA Modes:
ARITHMETIC = 0
LOGIC = 1

#ALU arithmetic functions:
INC_A = 0xF

# helper define:
HIGH = 1
LOW = 0

FETCH_OPCODE = \
[
 [  ("SRAM_RANGE_SEL", CHANNEL_PTRS),
       ("DATABUS_SEL", SRAM),
      ("~CUR_CHAN_OE", LOW),
       ("SELECT_BYTE", HIGH_BYTE)
 ],
 [         ("IPH_CLK", HIGH),
     ("ALU_IN_AH_CLK", HIGH),
          ("ALU_MODE", ARITHMETIC),
  ("ALU_FUNCTION_SEL", INC_A),
      ("ALU_CARRY_IN", HIGH)
 ],
 [     ("SELECT_BYTE", LOW_BYTE),
           ("IPH_CLK", LOW),
     ("ALU_IN_AH_CLK", LOW)
 ],
 [         ("IPL_CLK", HIGH),
     ("ALU_IN_AL_CLK", HIGH)
 ],
 [         ("IPL_CLK", LOW),
     ("ALU_IN_AH_CLK", LOW),
       ("DATABUS_SEL", CODEROM),
      ("~CUR_CHAN_OE", HIGH)
 ],
 [      ("OPCODE_CLK", HIGH)
 ],
 [      ("OPCODE_CLK", LOW) #TODO: store the ULA result (incremented IP value) back into SRAM
 ]
]

#################################################
#Actual instructions implementation begins here #
#################################################
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

microcode = open("microcode.bin", "w")
num_inputs = 20
for addr in xrange(2**num_inputs):
  output = 0
  opcode_value = (addr >> 0) & 255
  cycle = (addr >> 8) & 31

  if opcode_value > 6:
    continue  # we havent yet specified these instructions

  if cycle < len(OPCODE[opcode_value]):
    for signal, value in OPCODE[opcode_value][cycle]:
      bits = SIGNALS[signal]["bits"]
      shift = SIGNALS[signal]["shift"]
      output &= ~(2**(bits-1) << shift)
      output |= (value << shift)

  microcode.seek(addr*3)
  microcode.write(chr(output & 0xFF))
  microcode.seek(addr*3 + 1)
  microcode.write(chr((output >> 8) & 0xFF))
  microcode.seek(addr*3 + 2)
  microcode.write(chr((output >> 16) & 0xFF))
