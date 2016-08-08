# Maybe I'll work on this python script later.
# Now I'm actually focusing on the microcode.txt file
# which is where I'm sketching the microcode signaling for each CPU instruction
#CONTROL UNIT SIGNALS:

microcode = open("microcode.bin", "w")
num_inputs = 20
for addr in xrange(2**num_inputs):
  OPCODE = (addr >> 0) & 255
  cycle = (addr >> 8) & 31

  if OPCODE & 0x80:
    continue #video instruction

  if OPCODE & 0x40:
    continue #video instruction

  if OPCODE == 0x00:
    # 
    continue

ALU_CARRY_IN = 0
ALU_MODE = 0
ALU_FUNCTION_0 = 0
ALU_FUNCTION_1 = 0
ALU_FUNCTION_2 = 0
ALU_FUNCTION_3 = 0
ALU_OUT_H = 0
ALU_OUT_L = 0
ALU_IN_AL_CLK = 0
ALU_IN_AH_CLK = 0
ALU_IN_BL_CLK = 0
ALU_IN_BH_CLK = 0
CODEBANK_CLK = 0
IPH_CLK = 0
IPL_CLK = 0
OPCODE_CLK = 0
_IPH_OE = 1
_IPL_OE = 1
_CODEBANK_OE = 1
_SRAM_OE = 1
_SRAM_WE = 1




