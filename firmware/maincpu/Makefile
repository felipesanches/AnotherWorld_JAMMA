CC      = sdcc
CFLAGS  = -mz80 --code-loc 0x0080 --data-loc 0x0000

rom     = anotherworld_maincpu.rom
romsize = 65536

objs    = anotherworld_maincpu.rel


.PHONY: all
all: $(rom)

$(rom:.rom=.ihx): $(objs)
	$(CC) $(CFLAGS) -o $@ $(objs)

.PHONY: clean
clean:
	rm -f	$(rom) \
		$(rom:.rom=.ihx) \
		$(objs) \
		$(objs:.rel=.asm) \
		$(objs:.rel=.lst) \
		$(objs:.rel=.mem) \
		$(objs:.rel=.map) \
		$(objs:.rel=.lk) \
		$(objs:.rel=.rst) \
		$(objs:.rel=.rel) \
		$(objs:.rel=.sym)

.PHONY: run
run: anotherw/anotherworld_maincpu.rom
	~/mame/another64 -rp . anotherw

anotherw/anotherworld_maincpu.rom: $(rom)
	install -D -m644 $(rom) $@


.SUFFIXES: .rel .rom .ihx

.c.rel:
	$(CC) $(CFLAGS) -MMD -o $(@:.rel=.d) $<
	$(CC) $(CFLAGS) -c -o $@ $<

.ihx.rom:
	makebin -s $(romsize) $< $@


objdeps := $(objs:.rel=.d)
-include $(objdeps)
