CC      = sdcc
CFLAGS  = -mz80 --code-loc 0x0080 --data-loc 0xc000 --no-std-crt0

rom     = anotherworld_videocpu.rom
romsize = 32768

objs    = anotherworld_videocpu.rel boot.rel


.PHONY: all
all: $(rom)

$(rom:.rom=.ihx): $(objs)
	$(CC) $(CFLAGS) -MMD -o $(@:.rel=.d) $<
	$(CC) $(CFLAGS) -o $@ $(objs)

boot.rel: boot.s
	sdasz80 -o boot.s

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
		$(objs:.rel=.sym) *.d *.noi

.PHONY: run
run: anotherw/anotherworld_videocpu.rom
	~/mame/another64 -rp . anotherw

debug: anotherw/anotherworld_videocpu.rom
	~/mame/another64 -rp . anotherw -debug -window

anotherw/anotherworld_videocpu.rom: $(rom)
	install -D -m644 $(rom) $@


.SUFFIXES: .rel .rom .ihx

.c.rel:
	$(CC) $(CFLAGS) -MMD -o $(@:.rel=.d) $<
	$(CC) $(CFLAGS) -c -o $@ $<

.ihx.rom:
	makebin -s $(romsize) $< $@


objdeps := $(objs:.rel=.d)
-include $(objdeps)
