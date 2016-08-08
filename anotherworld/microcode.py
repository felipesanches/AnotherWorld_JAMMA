# This file is a "script" in a pseudo-language
# that I came up with meant to specify the microcode
# implementation for all of the CPU instructions

#CONTROL UNIT SIGNALS:
# ALU_CARRY_IN
# ALU_MODE
# ALU_FUNCTION (4bit)
# ALU_IN_AL_CLK
# ALU_IN_AH_CLK
# ALU_IN_BL_CLK
# ALU_IN_BH_CLK
# CODEBANK_CLK
# IPH_CLK
# IPL_CLK
# OPCODE_CLK
# /SRAM_WE
# DATABUS_SEL(3bits)
# SRAM_RANGE_SEL(2bits)


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
 [    ("CHANNEL_BYTE", LOW_BYTE),
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

  if cycle < len(OPCODE[opcode_value]):
    for signal, value in OPCODE[opcode_value][cycle]:
      output &= ~mask[signal]
      output |= (value << shift[signal])

