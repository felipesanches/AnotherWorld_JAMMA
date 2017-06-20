    ;; customized crt0.s for the AnotherWorld Z80 CPUs
    .module crt0
    .globl _main_loop
    .globl _init_system

    .area _HEADER (ABS)
    ;; Reset vector
    .org 0

    ;; Stack at the top of memory.
    im 1
    ld sp,#0xF000
    jp init

    .org 0x08
    reti
    .org 0x10
    reti
    .org 0x18
    reti
    .org 0x20
    reti
    .org 0x28
    reti
    .org 0x30
    reti
    .org 0x38
    di
    call _main_loop
    ei
    reti

init:
    ;; Initialise global variables
    ;call   gsinit
	
    call _init_system

loop:
    call _main_loop
    jp loop

    ;; Ordering of segments for the linker.
    .area _HOME
    .area _CODE
    .area _GSINIT
    .area _GSFINAL

    .area _DATA
    .area _BSS
    .area _HEAP

    .area _CODE
__clock::
    ld a, #2
    rst 0x08
    ret

    .area _GSINIT
gsinit::

    .area _GSFINAL
    ;;ret
