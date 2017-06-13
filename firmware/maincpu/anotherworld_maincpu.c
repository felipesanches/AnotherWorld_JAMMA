#include <stdint.h>
/***********************
 * Function prototypes *
 ***********************/
void input_updatePlayer();
void vm_init();

/************
 * VM Hacks *
 ************/
#define VM_HACK_SWITCH_FROM_INTRO_TO_LAKE
#define VM_HACK_BLITFRAMEBUFFER_VAR_F7

/**************
 * MEMORY MAP *
 **************/
#define BUTTONS                  0x8000
#define KEYBOARD                 0x8001
#define FETCH_BYTE               0x8002
#define SET_INSTRUCTION_POINTER  0x8002
#define SWITCH_LEVEL_BANK        0x8003
#define SOUND_LATCH              0x8004
#define VIDEO_LATCH              0x8005
#define MUS_MARK                 0x8006
#define SET_PALETTE              0x8007
#define VM_VARS                  0x9000

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
uint16_t PC; // Program Counter register (a.k.a. Instruction Pointer)
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
bool useVideo2; //TODO: review this! Should be set on vm_init() ?

/****************************
 * Miscelaneous Definitions *
 ****************************/
#define BIT(v, b) (v & (1 << b))
#define GAME_PART(n) (0x3E80 + n)
#define COLOR_BLACK   0xFF
#define DEFAULT_ZOOM  0x40
#define CINEMATIC     0
#define VIDEO_2       1
#define NUM_THREADS   64
#define UNUSED_PARAM  0

/* Video operation IDs: */
#define VIDEO_NOP              0
#define UPDATE_DISPLAY         1
#define READ_AND_DRAW_POLYGON  2
#define SELECT_VIDEO_PAGE      3
#define FILL_PAGE              4
#define COPY_VIDEO_PAGE        5
#define DRAW_STRING            6
#define LOAD_SCREEN            7

/* Sound operation IDs: */
#define SOUND_NOP              0
#define PLAY_SAMPLE            1
#define PLAYER_STOP            2
#define MUTE_CHANNELS          3
#define LOAD_SFX_MODULE        4
#define PLAYER_START           5
#define SET_EVENTS_DELAY       6

/********************************
 * MainCPU memory-map functions *
 ********************************/
void video_call(uint8_t video_operation_id,
                uint8_t param1,
                uint8_t param2,
                uint8_t param3,
                uint8_t param4){
    video_operation_id;
    param1;
    param2;
    param3;
    param4;
    //TODO: Implement-me!
}

void sound_call(uint8_t sound_operation_id,
                uint8_t param1,
                uint8_t param2,
                uint8_t param3,
                uint8_t param4){
    sound_operation_id;
    param1;
    param2;
    param3;
    param4;
    //TODO: Implement-me!
}

uint8_t fetch_byte(){
    PC++; // we keep track of PC increments to avoid having to
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
    *((uint8_t*) SET_INSTRUCTION_POINTER) = offset;
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
    current_level_bank = id;
    *((uint8_t*) SWITCH_LEVEL_BANK) = id;

    sound_call(PLAYER_STOP, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM);
    sound_call(MUTE_CHANNELS, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM);

    write_vm_variable(0xE4, 0x14); //why?

//    ((another_world_vm_state*) owner())->setupPart(partId);
    vm_init();
}

uint8_t read_input(){
    //TODO: Implement-me!
    return 0x00;
}

uint16_t read_keyboard(){
    // TODO: Implement-me!
    return 0x00;
}

void setDataBuffer(uint8_t buffer_id, uint16_t offset){
    buffer_id;
    offset;
    //TODO: Implement-me!
}

void log_error(char const *msg){
    msg;
    //TODO: Implement-me!
    // Maybe we could have a serial port for debugging ?
}

void sleep(uint8_t time_slices){
    time_slices;
    //TODO: Implement-me!
    //We're expected to sleep 50msecs per time_slice
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
    if (requestedNextBank != 0) {
        switch_level_bank(requestedNextBank);
        requestedNextBank = 0;
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
            video_call(UPDATE_DISPLAY, 0xFE, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM);
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

/*************
 * VM kernel *
 *************/
void vm_init(){
    stack_init();
    set_instruction_pointer(0x0000);
    switch_level_bank(0);
    init_threads();

    requestedNextBank = 0;
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
        setDataBuffer(CINEMATIC, offset);
        video_call(READ_AND_DRAW_POLYGON, COLOR_BLACK, DEFAULT_ZOOM, x, y);

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

        setDataBuffer(useVideo2 ? VIDEO_2 : CINEMATIC, offset);
        video_call(READ_AND_DRAW_POLYGON, 0xFF, zoom, x, y);
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
            stack_push(PC);
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
                current->requested_PC = PC;

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
            video_call(SELECT_VIDEO_PAGE, frameBufferId, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM);
            return;
        }
        case 0x0E: /* fillVideoPage */
        {
            uint8_t pageId = fetch_byte();
            uint8_t color = fetch_byte();
            video_call(FILL_PAGE, pageId, color, UNUSED_PARAM, UNUSED_PARAM);
            return;
        }
        case 0x0F: /* copyVideoPage */
        {
            uint8_t srcPageId = fetch_byte();
            uint8_t dstPageId = fetch_byte();
            video_call(COPY_VIDEO_PAGE, srcPageId, dstPageId, read_vm_variable(VM_VARIABLE_SCROLL_Y), UNUSED_PARAM);
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
            video_call(UPDATE_DISPLAY, pageId, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM);
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
            uint16_t x = fetch_byte();
            uint16_t y = fetch_byte();
            uint16_t color = fetch_byte();

            video_call(DRAW_STRING, stringId, x, y, color);
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
                sound_call(PLAYER_STOP, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM);
                sound_call(MUTE_CHANNELS, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM); //TODO: review this.
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
                        video_call(LOAD_SCREEN, i, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM);
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
                sound_call(LOAD_SFX_MODULE, resNum, delay, pos, UNUSED_PARAM);
                sound_call(PLAYER_START, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM, UNUSED_PARAM);
                //TODO: can't PLAYER_START be inplicitely run after LOAD_SFX_MODULE ?!
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

void main(){
  vm_init();
  while(TRUE){
    execute_instruction();
  }
}
