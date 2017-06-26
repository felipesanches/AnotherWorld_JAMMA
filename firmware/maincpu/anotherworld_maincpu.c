#include <stdint.h>
/***********************
 * Function prototypes *
 ***********************/
void input_updatePlayer();
void vm_init();
void init_threads();

/************
 * VM Hacks *
 ************/
#define VM_HACK_SWITCH_FROM_INTRO_TO_LAKE
#define VM_HACK_BLITFRAMEBUFFER_VAR_F7

/**************
 * MEMORY MAP *
 **************/
#define SET_INSTRUCTION_POINTER_LOW   0x8000
#define SET_INSTRUCTION_POINTER_HIGH  0x8001
#define FETCH_BYTE                    0x8002
#define BUTTONS                       0x8003
#define KEYBOARD_LOW                  0x8004
#define KEYBOARD_HIGH                 0x8005
#define SWITCH_LEVEL_BANK             0x8006
#define SOUND_LATCH                   0x8007
#define VIDEO_LATCH                   0x8008
#define MUS_MARK                      0x8009
#define SET_PALETTE                   0x800A
#define PARAM1                        0x800B
#define PARAM2                        0x800C
#define PARAM3                        0x800D
#define PARAM4                        0x800E
#define PARAM5                        0x800F
#define VIDEOCPU_STATUS               0x8010
#define SOUNDCPU_STATUS               0x8011
#define VM_VARS                       0x9000

/*****************
 * Thread struct *
 *****************/
typedef uint8_t bool;
#define FALSE 0
#define TRUE 1
typedef struct Thread_struct
{
    uint16_t PC;
    uint16_t requested_PC;
    bool     state;
    bool     requested_state;
} Thread;

/********************
 * Global variables *
 ********************/

/* vm-kernel globals: */
uint16_t PC;
uint16_t requestedNextBank;

/* vm-stack globals: */
uint8_t SP; // Stack Pointer register
bool stack_overflow;
uint16_t stacked_values[256];

/* vm-threads globals: */
Thread threads[64];
uint8_t current_thread;
uint16_t current_level_bank; //TODO: review this. It should be uint8_t (from 0 to 9)

/* video-related globals: */
bool useVideo2;

/****************************
 * Miscelaneous Definitions *
 ****************************/
#define BIT(v, b) (v & (1 << b))
//TODO: review this: #define GAME_PART(n) (0x3E80 + n)
#define GAME_PART(n) (n & 0x0F)
#define COLOR_BLACK   0xFF
#define DEFAULT_ZOOM  0x40
#define CINEMATIC     0x00
#define VIDEO_2       0x01
#define NUM_THREADS   64
#define UNUSED_PARAM  0
#define NO_BANK_SWITCH_REQUEST 0

/* Video operation IDs: */
#define VIDEO_NOP              0
#define UPDATE_DISPLAY         1
#define READ_AND_DRAW_POLYGON  2
#define SELECT_VIDEO_PAGE      3
#define FILL_PAGE              4
#define COPY_VIDEO_PAGE        5
#define DRAW_STRING            6
#define LOAD_SCREEN            7
#define SET_DATA_BUFFER        8

/* Sound operation IDs: */
#define SOUND_NOP              0
#define PLAY_SAMPLE            1
#define PLAYER_START           2
#define PLAYER_STOP            3
#define STOP_AND_MUTE_CHANNELS 4
#define SET_EVENTS_DELAY       5

/********************************
 * MainCPU memory-map functions *
 ********************************/
#define MESSAGE_OK_TO_RECEIVE 0x12
#define MESSAGE_RUNNING_COMMAND 0x34

void video_call(uint8_t video_operation_id,
                uint8_t param1,
                uint8_t param2,
                uint8_t param3,
                uint8_t param4,
                uint8_t param5){
    while ( *((uint8_t *) VIDEOCPU_STATUS) != MESSAGE_OK_TO_RECEIVE){
      // keep waiting
    }

    *((uint8_t *) PARAM1) = param1;
    *((uint8_t *) PARAM2) = param2;
    *((uint8_t *) PARAM3) = param3;
    *((uint8_t *) PARAM4) = param4;
    *((uint8_t *) PARAM5) = param5;
    *((uint8_t *) VIDEO_LATCH) = video_operation_id;

    while ( *((uint8_t *) VIDEOCPU_STATUS) != MESSAGE_RUNNING_COMMAND){
      // keep waiting
    }
    *((uint8_t *) VIDEO_LATCH) = VIDEO_NOP;
}

void sound_call(uint8_t sound_operation_id,
                uint8_t param1,
                uint8_t param2,
                uint8_t param3,
                uint8_t param4){
    return; //TODO: re-enable sound calls.

    while ( *((uint8_t *) SOUNDCPU_STATUS) != MESSAGE_OK_TO_RECEIVE){
      // keep waiting
    }

    *((uint8_t *) PARAM1) = param1;
    *((uint8_t *) PARAM2) = param2;
    *((uint8_t *) PARAM3) = param3;
    *((uint8_t *) PARAM4) = param4;
    *((uint8_t *) SOUND_LATCH) = sound_operation_id;

    while ( *((uint8_t *) SOUNDCPU_STATUS) != MESSAGE_RUNNING_COMMAND){
      // keep waiting
    }
    *((uint8_t *) SOUND_LATCH) = SOUND_NOP;
}

uint8_t fetch_byte(){
    PC++;
    threads[current_thread].PC++; // we keep track of PC increments to avoid having to
                   // read it from the external counter chip
    return *((uint8_t*) FETCH_BYTE);
}

uint16_t fetch_word(){
    uint16_t value;
    value = fetch_byte() << 8;
    value |= fetch_byte();
    return value;
}

void set_instruction_pointer(uint16_t offset){
    PC = offset;
    threads[current_thread].PC = offset;
    *((uint8_t*) SET_INSTRUCTION_POINTER_LOW) = (offset & 0xFF);
    *((uint8_t*) SET_INSTRUCTION_POINTER_HIGH) = (offset >> 8);
}

void set_palette(uint8_t id){
    *((uint8_t*) SET_PALETTE) = id;
}

uint16_t read_vm_variable(uint8_t i){
    uint16_t value;
    value = *((uint8_t*) (VM_VARS + 2*i)) << 8;
    value |= *((uint8_t*) (VM_VARS + 2*i + 1));
    return value;
}

void write_vm_variable(uint8_t i, uint16_t value){
    *((uint8_t*) (VM_VARS + 2*i)) = (value >> 8);
    *((uint8_t*) (VM_VARS + 2*i + 1)) = (value & 0xFF);
}

void switch_level_bank(uint8_t id){
    current_level_bank = id & 0x0F;
    *((uint8_t*) SWITCH_LEVEL_BANK) = id & 0x0F;

    //TODO: reenable this call:
    // sound_call(STOP_AND_MUTE_CHANNELS, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM);

    write_vm_variable(0xE4, 0x14); //why?

    set_instruction_pointer(0x0000);
    init_threads();

    requestedNextBank = NO_BANK_SWITCH_REQUEST;
}

uint8_t read_input(){
    return *((uint8_t *) BUTTONS);
}

uint16_t read_keyboard(){
    uint16_t value = *((uint8_t *) KEYBOARD_LOW);
    uint8_t retval = 0;
    const uint8_t* retcode = "BCDFGHJKLRTX";
    uint16_t i = 1;

    value = *((uint8_t *) KEYBOARD_LOW);
    value |= (*((uint8_t *) KEYBOARD_HIGH) << 8);

    if (value & 0x1000)
        return 8;

    while ((retval < 12)){
        if ((value & i) != 0)
            return retcode[retval];
        retval++;
        i = i << 1;
    }
    return 0;
}

void log_error(char const *msg){
    msg;
    //TODO: Implement-me!
    // Maybe we could have a serial port for debugging ?
}

void sleep(uint8_t time_slices){
    //uint16_t i;
    uint8_t j;
    //TODO: Fix the time constant based on the 16MHz XTAL oscilator.
    //We're expected to sleep 50msecs per time_slice
    for (j=0; j<time_slices; j++) {
        // how long does the following loop take?
        //for (i=0; i<0xFFFE; i++) {
            /* do nothing */
        //}
    }
}

/***************************
 * VM Stack Implementation *
 ***************************/
void stack_init(){
    SP = 0;
    stack_overflow = FALSE;
}

void stack_push(uint16_t value){
    if (SP == 0xFF){
        stack_overflow = TRUE;
    } else if (SP == 0x00 && stack_overflow){
        log_error("ERROR: stack overflow\n");
        // Reset the VM !
        vm_init();
    }
    stacked_values[SP++] = value;
}

uint16_t stack_pop(){
    if (SP == 0x00 && !stack_overflow){
        log_error("ERROR: stack underflow\n");
        // Reset the VM !
        vm_init();
    } else {
        stack_overflow = FALSE;
    }
    return stacked_values[--SP];
}

/**********************
 * Threads management *
 **********************/
#define RESET_TYPE__FREEZE_CHANNELS 0
#define RESET_TYPE__UNFREEZE_CHANNELS 1
#define RESET_TYPE__DELETE_CHANNELS 2
#define FROZEN 0
#define UNFROZEN 1
#define INACTIVE_THREAD 0xFFFF
#define DELETE_THIS_THREAD 0xFFFE
#define NO_REQUEST 0xFFFF

void init_threads(){
    uint8_t i;
    for (i=0; i<64; i++){
        Thread* t = &threads[i];
        t->requested_PC = NO_REQUEST;
        t->PC = INACTIVE_THREAD;
        t->requested_state = UNFROZEN;
        t->state = UNFROZEN;
    }
    threads[0].PC = 0x0000;
}

void checkThreadRequests(){
    uint8_t i;

    //Check if a part switch has been requested.
    if (requestedNextBank != NO_BANK_SWITCH_REQUEST) {
        switch_level_bank(requestedNextBank);
    }

    for (i=0; i<NUM_THREADS; i++){
        Thread* thread = &threads[i];
        thread->state = thread->requested_state;

        if (thread->requested_PC != NO_REQUEST){
            if (thread->requested_PC == DELETE_THIS_THREAD){
                thread->PC = INACTIVE_THREAD;
            } else {
                thread->PC = thread->requested_PC;
            }
            thread->requested_PC = NO_REQUEST;
        }
    }
}

void nextThread(){
    Thread* current;
    input_updatePlayer();
    do {
        if (current_thread++ == NUM_THREADS) {
            /* End of Frame */
            current_thread = 0;
            checkThreadRequests();
            video_call(UPDATE_DISPLAY, 0xFE,
                                       UNUSED_PARAM,
                                       UNUSED_PARAM,
                                       UNUSED_PARAM,
                                       UNUSED_PARAM);
        }
        current = &threads[current_thread];
    } while (current->state == FROZEN
             || current->PC == INACTIVE_THREAD);

    set_instruction_pointer(current->PC);
}


/****************
 * VM Variables *
 ****************/
#define VM_VARIABLE_RANDOM_SEED          0x3C
#define VM_VARIABLE_HACK_VAR_54          0x54 /* Interplay logo  TODO: verify this */
#define VM_VARIABLE_HACK_VAR_67          0x67 /* switch from intro to lake  TODO: verify this */
#define VM_VARIABLE_LAST_KEYCHAR         0xDA
#define VM_VARIABLE_HACK_VAR_DC          0xDC /* switch from intro to lake  TODO: verify this */
#define VM_VARIABLE_HERO_POS_UP_DOWN     0xE5
#define VM_VARIABLE_MUS_MARK             0xF4
#define VM_VARIABLE_HACK_VAR_F7          0xF7 /* Blitframebuffer (not needed?)  TODO: verify this */
#define VM_VARIABLE_SCROLL_Y             0xF9
#define VM_VARIABLE_HERO_ACTION          0xFA
#define VM_VARIABLE_HERO_POS_JUMP_DOWN   0xFB
#define VM_VARIABLE_HERO_POS_LEFT_RIGHT  0xFC
#define VM_VARIABLE_HERO_POS_MASK        0xFD
#define VM_VARIABLE_HERO_ACTION_POS_MASK 0xFE
#define VM_VARIABLE_PAUSE_SLICES         0xFF

/****************
 * I/O handling *
 ****************/
void input_updatePlayer() {
        int16_t lr = 0;
        int16_t ud = 0;
        uint16_t m = 0;
        uint8_t input = read_input();
        uint16_t button = 0;

        write_vm_variable(VM_VARIABLE_LAST_KEYCHAR, read_keyboard());

        if (current_level_bank != GAME_PART(0)
            && current_level_bank != GAME_PART(9)
            && BIT(input, 4)) requestedNextBank = GAME_PART(9);

        if (BIT(input, 2)) {
            lr = 1;
            m |= 1;
        }
        if (BIT(input, 3)) {
            lr = -1;
            m |= 2;
        }
        if (BIT(input, 0)) {
            ud = 1;
            m |= 4;
        }
        if (BIT(input, 1)) {
            write_vm_variable(VM_VARIABLE_HERO_POS_UP_DOWN, -1);
            ud = -1;
            m |= 8;
        } else {
            write_vm_variable(VM_VARIABLE_HERO_POS_UP_DOWN, ud);
        }

        write_vm_variable(VM_VARIABLE_HERO_POS_JUMP_DOWN, ud);
        write_vm_variable(VM_VARIABLE_HERO_POS_LEFT_RIGHT, lr);
        write_vm_variable(VM_VARIABLE_HERO_POS_MASK, m);

        if (BIT(input, 7)) {
            button = 1;
            m |= 0x80;
        }

        write_vm_variable(VM_VARIABLE_HERO_ACTION, button);
        write_vm_variable(VM_VARIABLE_HERO_ACTION_POS_MASK, m);
}

uint16_t time(uint16_t seed){
    seed;
    //TODO: implement-me!
    return 0x0003;
}

/*************
 * VM kernel *
 *************/
//#define BYPASS_PROTECTION
void vm_init(){
    stack_init();

#ifdef VM_HACK_INIT_VAR_54_WITH_81
    // Without this, the Interplay logo does not show up
    // while running the MSDOS bytecode:
    write_vm_variable(0x54, 0x0081);
#endif

#ifdef BYPASS_PROTECTION 
    //This is a hack to skip the code wheel
    write_vm_variable(VM_VARIABLE_HERO_ACTION, 0xFFFF);
    switch_level_bank(1);
#else
    switch_level_bank(0);
#endif

    write_vm_variable(VM_VARIABLE_RANDOM_SEED, time(0));
}

void execute_instruction(){
    uint8_t opcode = fetch_byte();
    Thread* current = &threads[current_thread];

    if (opcode & 0x80)
    {
        uint16_t offset = ((opcode << 8) | fetch_byte()) * 2;
        int16_t x = fetch_byte();
        int16_t y = fetch_byte();
        int16_t h = y - 199;

        useVideo2 = FALSE;
        if (h > 0) {
            y = 199;
            x += h;
        }

        // This switch the polygon database to "cinematic" and
        // probably draws a black polygon over all the screen.
        video_call(SET_DATA_BUFFER,
                   CINEMATIC,
                   offset & 0xFF,
                   offset >> 8,
                   UNUSED_PARAM,
                   UNUSED_PARAM);

        video_call(READ_AND_DRAW_POLYGON,
                   COLOR_BLACK,
                   DEFAULT_ZOOM & 0xFF,
                   DEFAULT_ZOOM >> 8,
                   x, y);
        return;
    }

    if (opcode & 0x40)
    {
        int16_t x, y;
        uint16_t zoom;
        uint16_t offset = fetch_word() * 2;
        x = fetch_byte();
        useVideo2 = FALSE;

        if (!(opcode & 0x20))
        {
            if (!(opcode & 0x10))
            {
                x = (x << 8) | fetch_byte();
            } else {
                x = read_vm_variable(x);
            }
        }
        else
        {
            if (opcode & 0x10) {
                x += 0x100;
            }
        }
        y = fetch_byte();

        if (!(opcode & 8))
        {
            if (!(opcode & 4)) {
                y = (y << 8) | fetch_byte();
            } else {
                y = read_vm_variable(y);
            }
        }

        zoom = 0x40;

        switch (opcode & 0x03){
        case 0:
            zoom = 0x40;
            break;
        case 1:
            zoom = read_vm_variable(fetch_byte());
            break;
        case 2:
            fetch_byte();
            break;
        case 3:
            useVideo2 = TRUE;
            zoom = 0x40;
        break;
        }

        video_call(SET_DATA_BUFFER,
                   (useVideo2 == TRUE) ? VIDEO_2 : CINEMATIC,
                   offset & 0xFF,
                   offset >> 8,
                   UNUSED_PARAM,
                   UNUSED_PARAM);

        video_call(READ_AND_DRAW_POLYGON,
                   COLOR_BLACK,
                   zoom & 0xFF,
                   zoom >> 8,
                   x, y);
        return;
    }

    switch (opcode){
        case 0x00: /* movConst */
        {
            uint8_t variableId = fetch_byte();
            int16_t value = fetch_word();
            write_vm_variable(variableId, value);
            return;
        }
        case 0x01: /* mov */
        {
            uint8_t dstVariableId = fetch_byte();
            uint8_t srcVariableId = fetch_byte();
            uint16_t value = read_vm_variable(srcVariableId);
            write_vm_variable(dstVariableId, value);
            return;
        }
        case 0x02: /* add */
        {
            uint8_t dstVariableId = fetch_byte();
            uint8_t srcVariableId = fetch_byte();
            uint16_t result = read_vm_variable(dstVariableId);
            result += read_vm_variable(srcVariableId);
            write_vm_variable(dstVariableId, result);
            return;
        }
        case 0x03: /* addConst */
        {
            /* TODO: Investigate this:
            if (res->currentPartId == 0x3E86 && _scriptPtr.pc == res->segBytecode + 0x6D48) {
                warning("VirtualMachine::op_addConst() hack for non-stop looping gun sound bug");
                // the script 0x27 slot 0x17 doesn't stop the gun sound from looping, I 
                // don't really know why ; for now, let's play the 'stopping sound' like 
                // the other scripts do
                //  (0x6D43) jmp(0x6CE5)
                //  (0x6D46) break
                //  (0x6D47) VAR(6) += -50
                snd_playSound(0x5B, 1, 64, 1);
            }*/
            uint8_t variableId = fetch_byte();
            int16_t value = fetch_word();
            int16_t result = read_vm_variable(variableId) + value;
            write_vm_variable(variableId, result);
            return;
        }
        case 0x04: /* CALL subroutine instruction */
        {
            uint16_t addr = fetch_word();
            stack_push(current->PC);
            set_instruction_pointer(addr);
            return;
        }
        case 0x05: /* ret: return from subroutine */
        {
            set_instruction_pointer(stack_pop());
            return;
        }
        case 0x06: /* pauseThread instruction (a.k.a. "break") */
        {
            if (current->requested_PC == NO_REQUEST)
                current->requested_PC = current->PC;

            nextThread();
            return;
        }
        case 0x07: /* jmp to address */
        {
            set_instruction_pointer(fetch_word());
            return;
        }
        case 0x08: /* setVect instruction */
        {
            uint8_t threadId = fetch_byte() & 0x3F;
            uint16_t request = fetch_word();

            threads[threadId].requested_PC = request;
            return;
        }
        case 0x09: /* DJNZ instrucion:
                      'D'ecrement variable value and 'J'ump if 'N'ot 'Z'ero  */
        {
            uint8_t var;
            uint16_t value, address;

            var = fetch_byte();
            address = fetch_word();

            value = read_vm_variable(var) - 1;
            write_vm_variable(var, value);
            if (value != 0) {
                set_instruction_pointer(address);
            }
            return;
        }
        case 0x0A: /* condJmp */
        {
            uint8_t subopcode = fetch_byte();
            uint8_t v = fetch_byte();
            int16_t b = read_vm_variable(v);
            uint8_t c = fetch_byte();
            int16_t a;
            bool expr;
            uint16_t offset;

            if (subopcode & 0x80) {
                a = read_vm_variable(c);
            } else if (subopcode & 0x40) {
                a = c << 8 | fetch_byte();
            } else {
                a = c;
            }

            // Check if the conditional value is met.
            expr = FALSE;
            switch (subopcode & 7) {
            case 0: // jz
                expr = (b == a);
                break;
            case 1: // jnz
                expr = (b != a);
                break;
            case 2: // jg
                expr = (b > a);
                break;
            case 3: // jge
                expr = (b >= a);
                break;
            case 4: // jl
                expr = (b < a);
                break;
            case 5: // jle
                expr = (b <= a);
                break;
            default:
                log_error("ERROR: conditional jump: invalid condition\n");
                break;
            }

            offset = fetch_word();
            if (expr) {
                set_instruction_pointer(offset);
            }
            return;
        }
        case 0x0B: /* setPalette */
        {
            uint16_t paletteId = fetch_word();
            set_palette((uint8_t ) (paletteId >> 8));
            return;
        }
        case 0x0C: /* resetThread */
        {
            uint8_t first = fetch_byte();
            uint8_t last = fetch_byte();
            uint8_t type = fetch_byte();
            uint8_t i;

            //Make sure last is within [0, NUM_THREADS-1]
            last = last % NUM_THREADS;

            if (last < first) {
                log_error("ERROR: resetThread with last (< first.\n");
                return;
            }

            switch(type){
                case RESET_TYPE__UNFREEZE_CHANNELS:
                    for (i=first; i<=last; i++){
                        threads[i].requested_state = FROZEN;
                    }
                    break;
                case RESET_TYPE__FREEZE_CHANNELS:
                    for (i=first; i<=last; i++){
                        threads[i].requested_state = UNFROZEN;
                    }
                    break;
                case RESET_TYPE__DELETE_CHANNELS:
                    for (i=first; i<=last; i++){
                        threads[i].requested_PC = DELETE_THIS_THREAD;
                    }
                    break;
                default:
                    log_error("ERROR: invalid resetThread operation type.\n");
            }
            return;
        }
        case 0x0D: /* selectVideoPage */
        {
            uint8_t frameBufferId = fetch_byte();
            video_call(SELECT_VIDEO_PAGE,
                       frameBufferId,
                       UNUSED_PARAM,
                       UNUSED_PARAM,
                       UNUSED_PARAM,
                       UNUSED_PARAM);
            return;
        }
        case 0x0E: /* fillVideoPage */
        {
            uint8_t pageId = fetch_byte();
            uint8_t color = fetch_byte();
            video_call(FILL_PAGE,
                       pageId,
                       color,
                       UNUSED_PARAM,
                       UNUSED_PARAM,
                       UNUSED_PARAM);
            return;
        }
        case 0x0F: /* copyVideoPage */
        {
            uint8_t srcPageId = fetch_byte();
            uint8_t dstPageId = fetch_byte();
            uint16_t vscroll = read_vm_variable(VM_VARIABLE_SCROLL_Y);
            video_call(COPY_VIDEO_PAGE,
                       srcPageId,
                       dstPageId,
                       vscroll & 0xFF,
                       vscroll >> 8,
                       UNUSED_PARAM);
            return;
        }
        case 0x10: /* blitFramebuffer */
        {
            uint8_t pageId = fetch_byte();
            //printf("blitFramebuffer(pageId:%d, PAUSE_SLICES:%d)\n", pageId, read_vm_variable(VM_VARIABLE_PAUSE_SLICES));

#ifdef VM_HACK_SWITCH_FROM_INTRO_TO_LAKE
            //Nasty hack....was this present in the original assembly  ??!!
            //This seems to be necessary for switching from the intro sequence to the lake stage
            if (current_level_bank == GAME_PART(0) && read_vm_variable(0x67) == 1)
                write_vm_variable(0xDC, 0x21);
#endif

            // The bytecode will set vmVariables[VM_VARIABLE_PAUSE_SLICES] from 1 to 5
            // The virtual machine hence indicate how long the image should be displayed.
            sleep(read_vm_variable(VM_VARIABLE_PAUSE_SLICES));

#ifdef VM_HACK_BLITFRAMEBUFFER_VAR_F7
            //Why ?
            write_vm_variable(0xF7, 0x0000);
#endif
            video_call(UPDATE_DISPLAY,
                       pageId,
                       UNUSED_PARAM,
                       UNUSED_PARAM,
                       UNUSED_PARAM,
                       UNUSED_PARAM);
            return;
        }
        case 0x11: /* killThread */
        {
            current->PC = INACTIVE_THREAD;
            nextThread();
            return;
        }
        case 0x12: /* drawString */
        {
            uint16_t stringId = fetch_word();
            uint8_t x = fetch_byte();
            uint8_t y = fetch_byte();
            uint8_t color = fetch_byte();

            video_call(DRAW_STRING,
                       stringId & 0xFF,
                       stringId >> 8,
                       x, y,
                       color);
            return;
        }
        case 0x13: /* sub */
        {
            uint8_t i = fetch_byte();
            uint8_t j = fetch_byte();
            uint16_t value = read_vm_variable(i);
            value -= read_vm_variable(j);
            write_vm_variable(i, value);
            return;
        }
        case 0x14: /* and */
        {
            uint8_t variableId = fetch_byte();
            uint16_t value = fetch_word();
            uint16_t result = read_vm_variable(variableId) & value;
            write_vm_variable(variableId, result);
            return;
        }
        case 0x15: /* or */
        {
            uint8_t variableId = fetch_byte();
            uint16_t value = fetch_word();
            uint16_t result = read_vm_variable(variableId) | value;
            write_vm_variable(variableId, result);
            return;
        }
        case 0x16: /* shl */
        {
            uint8_t variableId = fetch_byte();
            uint16_t leftShiftValue = fetch_word();
            uint16_t result = read_vm_variable(variableId) << leftShiftValue;
            write_vm_variable(variableId, result);
            return;
        }
        case 0x17: /* shr */
        {
            uint8_t variableId = fetch_byte();
            uint16_t rightShiftValue = fetch_word();
            uint16_t result = read_vm_variable(variableId) >> rightShiftValue;
            write_vm_variable(variableId, result);
            return;
        }
        case 0x18: /* play (a.k.a. "playSound") */
        {
            uint16_t resourceId = fetch_word();
            uint8_t freq = fetch_byte();
            uint8_t vol = fetch_byte();
            uint8_t channel = fetch_byte();
            sound_call(PLAY_SAMPLE, channel, resourceId, freq, vol);
            return;
        }
        case 0x19: /* load (a.k.a. "updateMemList") */
        {
            uint16_t resourceId = fetch_word();

            if (resourceId == 0) {
                sound_call(STOP_AND_MUTE_CHANNELS, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM);
                return;
            }

            #define NUM_MEM_LIST 0x91
            if (resourceId > NUM_MEM_LIST) {
                requestedNextBank = resourceId;
            } else {
                uint8_t i;
                uint8_t screen_resource_indexes[] = {0x12, 0x13, 0x43, 0x44,
                                                     0x45, 0x46, 0x47, 0x48,
                                                     0x49, 0x53, 0x90, 0x91}; //TODO: extract this into external ROM data.
                for (i = 0; i < sizeof(screen_resource_indexes); i++) {
                    if (screen_resource_indexes[i]==resourceId) {
                        video_call(LOAD_SCREEN, i,
                                   UNUSED_PARAM,
                                   UNUSED_PARAM,
                                   UNUSED_PARAM,
                                   UNUSED_PARAM);
                    }
                }
            }
            return;
        }
        case 0x1A: /* playMusic */
        {
            uint16_t resNum = fetch_word();
            uint16_t delay = fetch_word();
            uint8_t pos = fetch_byte();

            if (resNum != 0) {
                //LOAD_SFX_MODULE is implicitely run right before PLAYER_START
                sound_call(PLAYER_START, resNum, delay, pos, UNUSED_PARAM);

            } else if (delay != 0) {
                sound_call(SET_EVENTS_DELAY, delay, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM);
            } else {
                sound_call(PLAYER_STOP, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM);
            }
            return;
        }
    }
    log_error("Unimplemented opcode!\n");
}

void init_system(){
    *((uint8_t *) VIDEO_LATCH) = VIDEO_NOP;
    *((uint8_t *) SOUND_LATCH) = SOUND_NOP;
    vm_init();
}

void main_loop(){
    execute_instruction();
}
