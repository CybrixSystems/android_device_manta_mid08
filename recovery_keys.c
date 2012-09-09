#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"
#include "extendedcommands.h"


int device_toggle_display(volatile char* key_pressed, int key_code) {
    return 0;
}

int device_handle_key(int key_code, int visible) {
    if (visible) {
        switch (key_code) {
	    case 25:
	    case 217:
	    case 72:
	    case 114:  
            case KEY_DOWN:
                return HIGHLIGHT_DOWN;

	    case 24:
	    case 28:
	    case 73:  
	    case 139:
	    case 115:
            case KEY_UP:
                return HIGHLIGHT_UP;

	    case 26:
            case KEY_2:
            case KEY_POWER:
                return SELECT_ITEM;
            
	    case 66:
	    case 158:
	    case 102:  
	    case KEY_1:
            case KEY_ESC:
                if (!ui_root_menu) {
                    return GO_BACK;
                }
        }
    }

    return NO_ACTION;
}

