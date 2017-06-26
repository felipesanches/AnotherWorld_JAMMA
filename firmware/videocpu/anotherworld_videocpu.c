#include <stdint.h>

/**************
 * Prototypes *
 **************/
uint8_t get_page_index(uint8_t pageId);
void read_and_draw_polygon_hierarchy(uint16_t zoom, int16_t pgc_x, int16_t pgx_y);
void drawPoint(uint8_t color, uint16_t x, uint8_t y);

/**************
 * MEMORY MAP *
 **************/
#define VIDEO_REQUEST                 0x8000
#define PARAM1                        0x8001
#define PARAM2                        0x8002
#define PARAM3                        0x8003
#define PARAM4                        0x8004
#define PARAM5                        0x8005
#define WORK_PAGE_SELECTOR            0x8006
#define SCREEN_SELECTOR               0x8007
#define ACTIVE_PAGE_Y                 0x8008
#define WORK_PAGE_Y                   0x8009
#define SCREENS_Y                     0x800a
#define STATUS_REPORT_TO_MAINCPU      0x800b
#define SET_POLYGON_DATA_OFFSET_LOW   0x800c
#define SET_POLYGON_DATA_OFFSET_HIGH  0x800d
#define FETCH_POLYGON_DATA            0x800e
#define SELECT_POLYGON_DATA_SOURCE    0x800f
#define ACTIVE_PAGE_BASE_ADDRESS      0x9000
#define WORK_PAGE_BASE_ADDRESS        0x9200
#define SCREENS_BASE_ADDRESS          0x9400
#define CHARGEN                       0xA000
#define STRINGS                       0xA800

/****************************
 * Miscelaneous Definitions *
 ****************************/
#define BIT(v, b) (v & (1 << b))
#define GAME_PART(n) (0x3E80 + n)
#define COLOR_BLACK   0xFF
#define DEFAULT_ZOOM  0x40
#define CINEMATIC     0
#define VIDEO_2       1
typedef uint8_t bool;
#define FALSE 0
#define TRUE 1
#define VM_VARIABLE_SCROLL_Y 0xF9

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

/********************
 * Global variables *
 ********************/
bool waiting_request;
uint8_t params[5];
uint8_t page_indexes[3];
uint16_t polygon_data_offset;
uint16_t bbox_w, bbox_h;
uint8_t num_points;
int16_t points_x[50];
int16_t points_y[50];
int16_t hliney;

/********************************
 * VideoCPU memory-map functions *
 ********************************/

void log_error(uint8_t * msg){
    msg;
    //TODO: implement-me!
}

void update_display(){
    uint8_t pageId = params[0];
    uint16_t x;
    uint8_t tmp, y;

    if (pageId != 0xFE) {
        if (pageId == 0xFF) {
            tmp = page_indexes[1];
            page_indexes[1] = page_indexes[2];
            page_indexes[2] = tmp;
        } else {
            page_indexes[1] = get_page_index(pageId);
        }
    }

    *((uint8_t *) WORK_PAGE_SELECTOR) = page_indexes[1];
    for (y=0; y < 200; y++){
        *((uint8_t *) WORK_PAGE_Y) = y;
        *((uint8_t *) ACTIVE_PAGE_Y) = y;
        for (x=0; x < 320; x++){
            *((uint8_t *) (ACTIVE_PAGE_BASE_ADDRESS + x)) = \
              *((uint8_t *) (WORK_PAGE_BASE_ADDRESS + x));
        }
    }
}

void set_polygon_data_offset(uint16_t offset){
    polygon_data_offset = offset;
    *((uint8_t *) SET_POLYGON_DATA_OFFSET_LOW) = offset & 0xFF;
    *((uint8_t *) SET_POLYGON_DATA_OFFSET_HIGH) = (offset >> 8);
}

void set_data_buffer(){
    uint8_t buffer_id = params[0];
    uint16_t offset = params[1];
    offset |= params[2] << 8;

    *((uint8_t *) SELECT_POLYGON_DATA_SOURCE) = buffer_id;
    set_polygon_data_offset(offset);
}

uint8_t fetch_polygon_data(){
    polygon_data_offset++;
    return *((uint8_t *) FETCH_POLYGON_DATA);
}


#define MIN(a, b) (a < b ? a : b)
#define MAX(a, b) (a > b ? a : b)

/* Blend a line in the current framebuffer
*/
void drawLineBlend(int16_t x1, int16_t x2, uint8_t color) {
    int16_t xmax = MAX(x1, x2);
    int16_t xmin = MIN(x1, x2);
    int16_t x;

    *((uint8_t *) WORK_PAGE_SELECTOR) = page_indexes[0];
    *((uint8_t *) WORK_PAGE_Y) = hliney;

    for (x=xmin; x<=xmax; x++){
        color = *((uint8_t *) (WORK_PAGE_BASE_ADDRESS + x));
        *((uint8_t *) (WORK_PAGE_BASE_ADDRESS + x)) = (color & 0x7) | 0x8;
    }
}

void drawLineN(int16_t x1, int16_t x2, uint8_t color) {
    int16_t xmax = MAX(x1, x2);
    int16_t xmin = MIN(x1, x2);
    int16_t x;

    *((uint8_t *) WORK_PAGE_SELECTOR) = page_indexes[0];
    *((uint8_t *) WORK_PAGE_Y) = hliney;

    for (x=xmin; x<=xmax; x++){
        *((uint8_t *) (WORK_PAGE_BASE_ADDRESS + x)) = color;
    }
}

void drawLineP(int16_t x1, int16_t x2, uint8_t color) {
    int16_t xmax = MAX(x1, x2);
    int16_t xmin = MIN(x1, x2);
    int16_t x;
    uint8_t linebuf[320];
    color; //unused param

    *((uint8_t *) WORK_PAGE_Y) = hliney;

    *((uint8_t *) WORK_PAGE_SELECTOR) = 0;
    for (x=xmin; x<=xmax; x++){
        linebuf[x] = *((uint8_t *) (WORK_PAGE_BASE_ADDRESS + x));
    }

    *((uint8_t *) WORK_PAGE_SELECTOR) = page_indexes[0];
    for (x=xmin; x<=xmax; x++){
        *((uint8_t *) (WORK_PAGE_BASE_ADDRESS + x)) = linebuf[x];
    }
}


int32_t calcStep(uint8_t a, uint8_t b, uint16_t *dy) {
    uint16_t v = 0x4000;
    int16_t dx = points_x[b] - points_x[a];
    *dy = points_y[b] - points_y[a];
    if (*dy > 0)
        v = 0x4000 / *dy;
    return dx * v * 4;
}

void fill_polygon(uint8_t color, int16_t pt_x, int16_t pt_y){
    int16_t xmin, xmax, ymin, ymax;
    uint16_t i, j;
    uint16_t x1, x2;
    uint32_t cpt1, cpt2;
    uint16_t h;
    int32_t step1, step2;

    if (bbox_w == 0 && bbox_h == 1 && num_points == 4) {
        drawPoint(color, pt_x, pt_y);
        return;
    }

    xmin = pt_x - bbox_w / 2;
    xmax = pt_x + bbox_w / 2;
    ymin = pt_y - bbox_h / 2;
    ymax = pt_y + bbox_h / 2;

    if (xmin >= 320 || xmax < 0 || ymin >= 200 || ymax < 0)
        return;

    hliney = ymin;
    i = 0;
    j = num_points - 1;
    x2 = points_x[i] + xmin;
    x1 = points_x[j] + xmin;

    i++;
    j--;

    cpt1 = ((uint32_t) x1) << 16;
    cpt2 = ((uint32_t) x2) << 16;

    while (1) {
        num_points -= 2;
        if (num_points == 0) break;
        step1 = calcStep(j + 1, j, &h);
        step2 = calcStep(i - 1, i, &h);

        i++;
        j--;

        cpt1 = (cpt1 & 0xFFFF0000) | 0x7FFF;
        cpt2 = (cpt2 & 0xFFFF0000) | 0x8000;

        if (h == 0) {
            cpt1 += step1;
            cpt2 += step2;
        } else {
            for (; h != 0; --h) {
                if (hliney >= 0) {
                    x1 = cpt1 >> 16;
                    x2 = cpt2 >> 16;
                    if (x1 <= 319/* && x2 >= 0*/) {
                        //if (x1 < 0) x1 = 0;
                        if (x2 > 319) x2 = 319;
                        if (color < 0x10) {
                           drawLineN(x1, x2, color);
                        } else if (color > 0x10) {
                           drawLineP(x1, x2, color);
                        } else {
                           drawLineBlend(x1, x2, color);
                        }
                    }
                }
                cpt1 += step1;
                cpt2 += step2;
                hliney++;
                if (hliney > 199) return;
            }
        }
    }
}

void read_polygon_vertices(uint16_t zoom) {
    uint8_t i;
    bbox_w = fetch_polygon_data() * zoom / DEFAULT_ZOOM;
    bbox_h = fetch_polygon_data() * zoom / DEFAULT_ZOOM;

    num_points = fetch_polygon_data();

    //Read all points, directly from bytecode segment
    for (i = 0; i < num_points; ++i) {
        points_x[i] = fetch_polygon_data() * zoom / DEFAULT_ZOOM;
        points_y[i] = fetch_polygon_data() * zoom / DEFAULT_ZOOM;
    }
}

void _read_and_draw_polygon(uint8_t color, uint16_t zoom, int16_t pt_x, int16_t pt_y) {
    uint8_t value;
    uint16_t backup;

    value = fetch_polygon_data();

    if (value >= 0xC0) {
        if (color & 0x80) {
            color = value & 0x3F;
        }

        backup = polygon_data_offset; //NO NEED ?

        read_polygon_vertices(zoom);
        fill_polygon(color, pt_x, pt_y);

        set_polygon_data_offset(backup); //NO NEED ?
    } else {
        value &= 0x3F;
        switch (value){
            case 2:
                read_and_draw_polygon_hierarchy(zoom, pt_x, pt_y);
                break;
            default:
                log_error("ERROR: readAndDrawPolygon() (value != 2)\n");
        }
    }
}

void read_and_draw_polygon_hierarchy(uint16_t zoom, int16_t pgc_x, int16_t pgc_y) {
    int16_t pt_x, pt_y, po_x, po_y;
    int16_t children;
    uint16_t backup;
    uint16_t offset;
    uint16_t color;

    pt_x = pgc_x - fetch_polygon_data() * zoom / DEFAULT_ZOOM;
    pt_y = pgc_y - fetch_polygon_data() * zoom / DEFAULT_ZOOM;

    children = fetch_polygon_data();
    for ( ; children >= 0; --children) {
        offset = fetch_polygon_data() << 8;
        offset |= fetch_polygon_data();

        po_x = pt_x + fetch_polygon_data() * zoom / DEFAULT_ZOOM;
        po_y = pt_y + fetch_polygon_data() * zoom / DEFAULT_ZOOM;

        color = 0xFF;
        if (offset & 0x8000) {
            color = fetch_polygon_data() & 0x7F;
            fetch_polygon_data(); //and waste a byte...
        }

        backup = polygon_data_offset;

        polygon_data_offset = (offset & 0x7FFF) * 2;
        _read_and_draw_polygon(color, zoom, po_x, po_y);

        set_polygon_data_offset(backup);
    }
}

void read_and_draw_polygon(){
    uint16_t zoom;
    int16_t pgc_x, pgc_y;
    uint8_t color;

    color = params[0];
    zoom = params[1];
    zoom |= (params[2] << 8);
    pgc_x = params[3];
    pgc_y = params[4];

    _read_and_draw_polygon(color, zoom, pgc_x, pgc_y);
}

uint8_t get_page_index(uint8_t pageId){
    switch(pageId){
        case 0:
        case 1:
        case 2:
        case 3:
            return pageId;
            break;
        case 0xFF:
            return page_indexes[2];
            break;
        case 0xFE:
            return page_indexes[1];
            break;
        default:
            return 0;
    }
}

void fill_page(){
    uint8_t pageId = params[0];
    uint8_t color = params[1];
    uint16_t x;
    uint8_t y;

    *((uint8_t *) WORK_PAGE_SELECTOR) = get_page_index(pageId);
    for (y=0; y < 200; y++){
        *((uint8_t *) WORK_PAGE_Y) = y;
        for (x=0; x < 320; x++){
            *((uint8_t *) (WORK_PAGE_BASE_ADDRESS + x)) = color;
        }
    }
}

void copy_video_page(){
    uint8_t srcPageId = params[0];
    uint8_t destPageId = params[1];
    int16_t vscroll = params[2];
    uint8_t srcIndex, destIndex;
    uint8_t line_buffer[320];
    uint16_t x;
    uint8_t y;
    uint8_t h;
    uint8_t src_y0;
    uint8_t dest_y0;
    vscroll |= (params[3] << 8);

    /* The actual meaning of this conditional needs to be clarified: */
    if (srcPageId >= 0xFE || !((srcPageId &= 0xBF) & 0x80)) {
        srcIndex = get_page_index(srcPageId);
        destIndex = get_page_index(destPageId);

        for (y=0; y < 200; y++){
            *((uint8_t *) WORK_PAGE_Y) = y;
            *((uint8_t *) WORK_PAGE_SELECTOR) = srcIndex;
            for (x=0; x < 320; x++){
                line_buffer[x] = *((uint8_t *) (WORK_PAGE_BASE_ADDRESS + x));
            }

            *((uint8_t *) WORK_PAGE_SELECTOR) = destIndex;
            for (x=0; x < 320; x++){
                *((uint8_t *) (WORK_PAGE_BASE_ADDRESS + x)) = line_buffer[x];
            }
        }
    } else {
        h = 200;
        src_y0 = 0;
        dest_y0 = 0;
        srcIndex = get_page_index(srcPageId & 3);
        destIndex = get_page_index(destPageId);
        if (vscroll >= -199 && vscroll <= 199) {
            if (vscroll < 0) {
                h += vscroll;
                src_y0 = -vscroll;
            } else {
                h -= vscroll;
                dest_y0 = vscroll;
            }
            for (y=0; y < 200; y++){
                *((uint8_t *) WORK_PAGE_Y) = (src_y0 + y);
                *((uint8_t *) WORK_PAGE_SELECTOR) = srcIndex;
                for (x=0; x < 320; x++){
                    line_buffer[x] = *((uint8_t *) (WORK_PAGE_BASE_ADDRESS + x));
                }

                *((uint8_t *) WORK_PAGE_Y) = (dest_y0 + y);
                *((uint8_t *) WORK_PAGE_SELECTOR) = destIndex;
                for (x=0; x < 320; x++){
                    *((uint8_t *) (WORK_PAGE_BASE_ADDRESS + x)) = line_buffer[x];
                }
            }
        }
    }
}

void drawPoint(uint8_t color, uint16_t x, uint8_t y){
    //if ((x >= 0) && (x <= 319) && (y >= 0) && (y <= 199)) {
        *((uint8_t *) WORK_PAGE_SELECTOR) = 0;
        *((uint8_t *) WORK_PAGE_Y) = y;
        *((uint8_t *) (WORK_PAGE_BASE_ADDRESS + (x % 512))) = color;
    //}
}

void draw_character(uint8_t character, uint16_t x, uint16_t y, uint8_t color){
    uint8_t row, i, j;

    for (j = 0; j < 8; j++) {
        row = *((uint8_t *) (CHARGEN + (character - ' ') * 8 + j));
        for (i = 0; i < 8; i++) {
            if (row & 0x80) {
                drawPoint(color, x+i, y+j);
            }
            row <<= 1;
        }
    }
}

void draw_string(){
    uint16_t stringId, x, x0;
    uint8_t y, color;
    uint8_t* index_ptr;
    uint8_t* c;
    uint16_t str_index;

    stringId = params[0];
    stringId |= (params[1] << 8);
    x = params[2];
    y = params[3];
    color = params[4];

    x = 8 * (x-1);
    x0 = x;

    index_ptr = (uint8_t *) (STRINGS + 0x1000 + 2*stringId);
    str_index = index_ptr[1] << 8 | index_ptr[0];
    c = (uint8_t *) (STRINGS + str_index);

    for (; *c != '\0'; c++){
        if (*c == '\n'){
            y+=8;
            x=x0;
        } else {
            draw_character(*c, x+=8, y, color);
        }
    }
}

void load_screen(){
    uint8_t screenId = params[0];
    uint16_t x;
    uint8_t y;

    *((uint8_t *) WORK_PAGE_SELECTOR) = 0;
    *((uint8_t *) SCREEN_SELECTOR) = screenId;
    for (y=0; y < 200; y++){
        *((uint8_t *) WORK_PAGE_Y) = y;
        *((uint8_t *) SCREENS_Y) = y;
        for (x=0; x < 320; x++){
            *((uint8_t *) (WORK_PAGE_BASE_ADDRESS + x)) = \
              *((uint8_t *) (SCREENS_BASE_ADDRESS + x));
        }
    }
}

void select_video_page(){
    uint8_t pageId = params[0];

    page_indexes[0] = get_page_index(pageId);
}

//------------------------------
#define MESSAGE_OK_TO_RECEIVE 0x12
#define MESSAGE_RUNNING_COMMAND 0x34

void init_system(){
    *((uint8_t *) STATUS_REPORT_TO_MAINCPU) = MESSAGE_OK_TO_RECEIVE;
//    uint8_t c;

    page_indexes[0] = 2;
    page_indexes[1] = 2;
    page_indexes[2] = 1;
    set_polygon_data_offset(0);
}

void main_loop(){
    uint8_t request;

    *((uint8_t *) STATUS_REPORT_TO_MAINCPU) = MESSAGE_OK_TO_RECEIVE;
    do {
        // keep waiting for commands from maincpu...
        request = *((uint8_t *) VIDEO_REQUEST);
    } while ( request == VIDEO_NOP );

    params[0] = *((uint8_t *) PARAM1);
    params[1] = *((uint8_t *) PARAM2);
    params[2] = *((uint8_t *) PARAM3);
    params[3] = *((uint8_t *) PARAM4);
    params[4] = *((uint8_t *) PARAM5);

    *((uint8_t *) STATUS_REPORT_TO_MAINCPU) = MESSAGE_RUNNING_COMMAND;

    switch (request){
        case UPDATE_DISPLAY: update_display(); break;
        case READ_AND_DRAW_POLYGON: read_and_draw_polygon(); break;
        case SELECT_VIDEO_PAGE: select_video_page(); break;
        case FILL_PAGE: fill_page(); break;
        case COPY_VIDEO_PAGE: copy_video_page(); break;
        case DRAW_STRING: draw_string(); break;
        case LOAD_SCREEN: load_screen(); break;
        case SET_DATA_BUFFER: set_data_buffer(); break;
    }

    do {
        // Waiting for maincpu to restor VIDEO_NOP...
        request = *((uint8_t *) VIDEO_REQUEST);
    } while ( request != VIDEO_NOP );
}
