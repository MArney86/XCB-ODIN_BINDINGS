package xcb

import _c "core:c"

/* Opcode Macros */
KEY_PRESS :: 2
KEY_RELEASE :: 3
BUTTON_PRESS :: 4
BUTTON_RELEASE :: 5
MOTION_NOTIFY :: 6
ENTER_NOTIFY :: 7
LEAVE_NOTIFY :: 8
FOCUS_IN :: 9
FOCUS_OUT :: 10
KEYMAP_NOTIFY :: 11
EXPOSE :: 12
GRAPHICS_EXPOSURE :: 13
NO_EXPOSURE :: 14
VISIBILITY_NOTIFY :: 15
CREATE_NOTIFY :: 16
DESTROY_NOTIFY :: 17
UNMAP_NOTIFY :: 18
MAP_NOTIFY :: 19
MAP_REQUEST :: 20
REPARENT_NOTIFY :: 21
CONFIGURE_NOTIFY :: 22
CONFIGURE_REQUEST :: 23
GRAVITY_NOTIFY :: 24
RESIZE_REQUEST :: 25
CIRCULATE_NOTIFY :: 26
CIRCULATE_REQUEST :: 27
PROPERTY_NOTIFY :: 28
SELECTION_CLEAR :: 29
SELECTION_REQUEST :: 30
SELECTION_NOTIFY :: 31
COLORMAP_NOTIFY :: 32
CLIENT_MESSAGE :: 33
MAPPING_NOTIFY :: 34
GE_GENERIC :: 35
REQUEST :: 1
VALUE :: 2
WINDOW :: 3
PIXMAP :: 4
ATOM :: 5
CURSOR :: 6
FONT :: 7
MATCH :: 8
DRAWABLE :: 9
ACCESS :: 10
ALLOC :: 11
COLORMAP :: 12
G_CONTEXT :: 13
ID_CHOICE :: 14
NAME :: 15
LENGTH :: 16
IMPLEMENTATION :: 17
CREATE_WINDOW :: 1
CHANGE_WINDOW_ATTRIBUTES :: 2
GET_WINDOW_ATTRIBUTES :: 3
DESTROY_WINDOW :: 4
DESTROY_SUBWINDOWS :: 5
CHANGE_SAVE_SET :: 6
REPARENT_WINDOW :: 7
MAP_WINDOW :: 8
MAP_SUBWINDOWS :: 9
UNMAP_WINDOW :: 10
UNMAP_SUBWINDOWS :: 11
CONFIGURE_WINDOW :: 12
CIRCULATE_WINDOW :: 13
GET_GEOMETRY :: 14
QUERY_TREE :: 15
NO_OPERATION :: 127
INTERN_ATOM :: 16
GET_ATOM_NAME :: 17
CHANGE_PROPERTY :: 18
DELETE_PROPERTY :: 19
GET_PROPERTY :: 20
LIST_PROPERTIES :: 21
SET_SELECTION_OWNER :: 22
GET_SELECTION_OWNER :: 23
CONVERT_SELECTION :: 24
SEND_EVENT :: 25
GRAB_POINTER :: 26
UNGRAB_POINTER :: 27
GRAB_BUTTON :: 28
UNGRAB_BUTTON :: 29
CHANGE_ACTIVE_POINTER_GRAB :: 30
GRAB_KEYBOARD :: 31
UNGRAB_KEYBOARD :: 32
GRAB_KEY :: 33
UNGRAB_KEY :: 34
ALLOW_EVENTS :: 35
GRAB_SERVER :: 36
UNGRAB_SERVER :: 37
QUERY_POINTER :: 38
GET_MOTION_EVENTS :: 39
TRANSLATE_COORDINATES :: 40
WARP_POINTER :: 41
SET_INPUT_FOCUS :: 42
GET_INPUT_FOCUS :: 43
QUERY_KEYMAP :: 44
OPEN_FONT :: 45
CLOSE_FONT :: 46
QUERY_FONT :: 47
QUERY_TEXT_EXTENTS :: 48
LIST_FONTS :: 49
LIST_FONTS_WITH_INFO :: 50
SET_FONT_PATH :: 51
GET_FONT_PATH :: 52
CREATE_PIXMAP :: 53
FREE_PIXMAP :: 54
CREATE_GC :: 55
CHANGE_GC :: 56
COPY_GC :: 57
SET_DASHES :: 58
SET_CLIP_RECTANGLES :: 59
FREE_GC :: 60
CLEAR_AREA :: 61
COPY_AREA :: 62
COPY_PLANE :: 63
POLY_POINT :: 64
POLY_LINE :: 65
POLY_SEGMENT :: 66
POLY_RECTANGLE :: 67
POLY_ARC :: 68
FILL_POLY :: 69
POLY_FILL_RECTANGLE :: 70
POLY_FILL_ARC :: 71
PUT_IMAGE :: 72
GET_IMAGE :: 73
POLY_TEXT_8 :: 74
POLY_TEXT_16 :: 75
IMAGE_TEXT_8 :: 76
IMAGE_TEXT_16 :: 77
CREATE_COLORMAP :: 78
FREE_COLORMAP :: 79
COPY_COLORMAP_AND_FREE :: 80
INSTALL_COLORMAP :: 81
UNINSTALL_COLORMAP :: 82
LIST_INSTALLED_COLORMAPS :: 83
ALLOC_COLOR :: 84
ALLOC_NAMED_COLOR :: 85
ALLOC_COLOR_CELLS :: 86
ALLOC_COLOR_PLANES :: 87
FREE_COLORS :: 88
STORE_COLORS :: 89
STORE_NAMED_COLOR :: 90
QUERY_COLORS :: 91
LOOKUP_COLOR :: 92
CREATE_CURSOR :: 93
CREATE_GLYPH_CURSOR :: 94
FREE_CURSOR :: 95
RECOLOR_CURSOR :: 96
QUERY_BEST_SIZE :: 97
QUERY_EXTENSION :: 98
LIST_EXTENSIONS :: 99
CHANGE_KEYBOARD_MAPPING :: 100
GET_KEYBOARD_MAPPING :: 101
CHANGE_KEYBOARD_CONTROL :: 102
GET_KEYBOARD_CONTROL :: 103
BELL :: 104
CHANGE_POINTER_CONTROL :: 105
GET_POINTER_CONTROL :: 106
SET_SCREEN_SAVER :: 107
GET_SCREEN_SAVER :: 108
CHANGE_HOSTS :: 109
LIST_HOSTS :: 110
SET_ACCESS_CONTROL :: 111
SET_CLOSE_DOWN_MODE :: 112
KILL_CLIENT :: 113
ROTATE_PROPERTIES :: 114
FORCE_SCREEN_SAVER :: 115
SET_POINTER_MAPPING :: 116
GET_POINTER_MAPPING :: 117
SET_MODIFIER_MAPPING :: 118
GET_MODIFIER_MAPPING :: 119

char2b_t :: struct {
    byte1 : u8,
    byte2 : u8,
}

char2b_iterator_t :: struct {
     data : ^char2b_t,
      rem : _c.int,
    index : _c.int,
}

window_t :: u32

window_iterator_t :: struct {
     data : ^window_t,
      rem : _c.int,
    index : _c.int,
}

pixmap_t :: u32

pixmap_iterator_t :: struct {
     data : ^pixmap_t,
      rem : _c.int,
    index : _c.int,
}

cursor_t :: u32

cursor_iterator_t :: struct {
     data : ^cursor_t,
      rem : _c.int,
    index : _c.int,
}

font_t :: u32

font_iterator_t :: struct {
     data : ^font_t,
      rem : _c.int,
    index : _c.int,
}

gcontext_t :: u32

gcontext_iterator_t :: struct {
     data : ^gcontext_t,
      rem : _c.int,
    index : _c.int,
}

colormap_t :: u32

colormap_iterator_t :: struct {
     data : ^colormap_t,
      rem : _c.int,
    index : _c.int,
}

atom_t :: u32

atom_iterator_t :: struct {
     data : ^atom_t,
      rem : _c.int,
    index : _c.int,
}

drawable_t :: u32

drawable_iterator_t :: struct {
     data : ^drawable_t,
      rem : _c.int,
    index : _c.int,
}

fontable_t :: u32

fontable_iterator_t :: struct {
     data : ^fontable_t,
      rem : _c.int,
    index : _c.int,
}

bool32_t :: u32

bool32_iterator_t :: struct {
     data : ^bool32_t,
      rem : _c.int,
    index : _c.int,
}

visualid_t :: u32

visualid_iterator_t :: struct {
     data : ^visualid_t,
      rem : _c.int,
    index : _c.int,
}

timestamp_t :: u32

timestamp_iterator_t :: struct {
     data : ^timestamp_t,
      rem : _c.int,
    index : _c.int,
}

keysym_t :: u32

keysym_iterator_t :: struct {
     data : ^keysym_t,
      rem : _c.int,
    index : _c.int,
}

keycode_t :: u8

keycode_iterator_t :: struct {
     data : ^keycode_t,
      rem : _c.int,
    index : _c.int,
}

keycode32_t :: u32

keycode32_iterator_t :: struct {
     data : ^keycode32_t,
      rem : _c.int,
    index : _c.int,
}

button_t :: u8

button_iterator_t :: struct {
     data : ^button_t,
      rem : _c.int,
    index : _c.int,
}

point_t :: struct {
    x : i16,
    y : i16,
}

point_iterator_t :: struct {
     data : ^point_t,
      rem : _c.int,
    index : _c.int,
}

rectangle_t :: struct {
         x : i16,
         y : i16,
     width : u16,
    height : u16,
}

rectangle_iterator_t :: struct {
     data : ^rectangle_t,
      rem : _c.int,
    index : _c.int,
}

arc_t :: struct {
         x : i16,
         y : i16,
     width : u16,
    height : u16,
    angle1 : i16,
    angle2 : i16,
}

arc_iterator_t :: struct {
     data : ^arc_t,
      rem : _c.int,
    index : _c.int,
}

format_t :: struct {
             depth : u8,
    bits_per_pixel : u8,
      scanline_pad : u8,
              pad0 : [5]u8,
}

format_iterator_t :: struct {
     data : ^format_t,
      rem : _c.int,
    index : _c.int,
}

visual_class_t :: enum _c.int {
     VISUAL_CLASS_STATIC_GRAY,
      VISUAL_CLASS_GRAY_SCALE,
    VISUAL_CLASS_STATIC_COLOR,
    VISUAL_CLASS_PSEUDO_COLOR,
    VISUAL_CLASS_TRUE_COLOR,
    VISUAL_CLASS_DIRECT_COLOR,
}

visualtype_t :: struct {
             visual_id : visualid_t,
                _class : u8,
    bits_per_rgb_value : u8,
      colormap_entries : u16,
              red_mask : u32,
            green_mask : u32,
             blue_mask : u32,
                  pad0 : [4]u8,
}

visualtype_iterator_t :: struct {
     data : ^visualtype_t,
      rem : _c.int,
    index : _c.int,
}

depth_t :: struct {
          depth : u8,
           pad0 : u8,
    visuals_len : u16,
           pad1 : [4]u8,
}

depth_iterator_t :: struct {
     data : ^depth_t,
      rem : _c.int,
    index : _c.int,
}

event_mask_t :: enum _c.int {
    EVENT_MASK_NO_EVENT = 0,
    EVENT_MASK_KEY_PRESS = 1,
    EVENT_MASK_KEY_RELEASE = 2,
    EVENT_MASK_BUTTON_PRESS = 4,
    EVENT_MASK_BUTTON_RELEASE = 8,
    EVENT_MASK_ENTER_WINDOW = 16,
    EVENT_MASK_LEAVE_WINDOW = 32,
    EVENT_MASK_POINTER_MOTION = 64,
    EVENT_MASK_POINTER_MOTION_HINT = 128,
    EVENT_MASK_BUTTON_1_MOTION = 256,
    EVENT_MASK_BUTTON_2_MOTION = 512,
    EVENT_MASK_BUTTON_3_MOTION = 1024,
    EVENT_MASK_BUTTON_4_MOTION = 2048,
    EVENT_MASK_BUTTON_5_MOTION = 4096,
    EVENT_MASK_BUTTON_MOTION = 8192,
    EVENT_MASK_KEYMAP_STATE = 16384,
    EVENT_MASK_EXPOSURE = 32768,
    EVENT_MASK_VISIBILITY_CHANGE = 65536,
    EVENT_MASK_STRUCTURE_NOTIFY = 131072,
    EVENT_MASK_RESIZE_REDIRECT = 262144,
    EVENT_MASK_SUBSTRUCTURE_NOTIFY = 524288,
    EVENT_MASK_SUBSTRUCTURE_REDIRECT = 1048576,
    EVENT_MASK_FOCUS_CHANGE = 2097152,
    EVENT_MASK_PROPERTY_CHANGE = 4194304,
    EVENT_MASK_COLOR_MAP_CHANGE = 8388608,
    EVENT_MASK_OWNER_GRAB_BUTTON = 16777216,
}

backing_store_t :: enum _c.int {
     BACKING_STORE_NOT_USEFUL,
    BACKING_STORE_WHEN_MAPPED,
         BACKING_STORE_ALWAYS,
}

screen_t :: struct {
                     root : window_t,
         default_colormap : colormap_t,
              white_pixel : u32,
              black_pixel : u32,
      current_input_masks : u32,
          width_in_pixels : u16,
         height_in_pixels : u16,
     width_in_millimeters : u16,
    height_in_millimeters : u16,
       min_installed_maps : u16,
       max_installed_maps : u16,
              root_visual : visualid_t,
           backing_stores : u8,
              save_unders : u8,
               root_depth : u8,
       allowed_depths_len : u8,
}

screen_iterator_t :: struct {
     data : ^screen_t,
      rem : _c.int,
    index : _c.int,
}

setup_request_t :: struct {
                         byte_order : u8,
                               pad0 : u8,
             protocol_major_version : u16,
             protocol_minor_version : u16,
    authorization_protocol_name_len : u16,
    authorization_protocol_data_len : u16,
                               pad1 : [2]u8,
}

setup_request_iterator_t :: struct {
     data : ^setup_request_t,
      rem : _c.int,
    index : _c.int,
}

setup_failed_t :: struct {
                    status : u8,
                reason_len : u8,
    protocol_major_version : u16,
    protocol_minor_version : u16,
                    length : u16,
}

setup_failed_iterator_t :: struct {
     data : ^setup_failed_t,
      rem : _c.int,
    index : _c.int,
}

setup_authenticate_t :: struct {
    status : u8,
      pad0 : [5]u8,
    length : u16,
}

setup_authenticate_iterator_t :: struct {
     data : ^setup_authenticate_t,
      rem : _c.int,
    index : _c.int,
}

image_order_t :: enum _c.int {
    IMAGE_ORDER_LSB_FIRST,
    IMAGE_ORDER_MSB_FIRST,
}

setup_t :: struct {
                         status : u8,
                           pad0 : u8,
         protocol_major_version : u16,
         protocol_minor_version : u16,
                         length : u16,
                 release_number : u32,
               resource_id_base : u32,
               resource_id_mask : u32,
             motion_buffer_size : u32,
                     vendor_len : u16,
         maximum_request_length : u16,
                      roots_len : u8,
             pixmap_formats_len : u8,
               image_byte_order : u8,
        bitmap_format_bit_order : u8,
    bitmap_format_scanline_unit : u8,
     bitmap_format_scanline_pad : u8,
                    min_keycode : keycode_t,
                    max_keycode : keycode_t,
                           pad1 : [4]u8,
}

setup_iterator_t :: struct {
     data : ^setup_t,
      rem : _c.int,
    index : _c.int,
}

mod_mask_t :: enum _c.int {
      MOD_MASK_SHIFT = 1,
       MOD_MASK_LOCK = 2,
    MOD_MASK_CONTROL = 4,
          MOD_MASK_1 = 8,
          MOD_MASK_2 = 16,
          MOD_MASK_3 = 32,
          MOD_MASK_4 = 64,
          MOD_MASK_5 = 128,
        MOD_MASK_ANY = 32768,
}

key_but_mask_t :: enum _c.int {
       KEY_BUT_MASK_SHIFT = 1,
        KEY_BUT_MASK_LOCK = 2,
     KEY_BUT_MASK_CONTROL = 4,
       KEY_BUT_MASK_MOD_1 = 8,
       KEY_BUT_MASK_MOD_2 = 16,
       KEY_BUT_MASK_MOD_3 = 32,
       KEY_BUT_MASK_MOD_4 = 64,
       KEY_BUT_MASK_MOD_5 = 128,
    KEY_BUT_MASK_BUTTON_1 = 256,
    KEY_BUT_MASK_BUTTON_2 = 512,
    KEY_BUT_MASK_BUTTON_3 = 1024,
    KEY_BUT_MASK_BUTTON_4 = 2048,
    KEY_BUT_MASK_BUTTON_5 = 4096,
}

window_enum_t :: enum _c.int {
    WINDOW_NONE,
}

key_press_event_t :: struct {
  response_type : u8,
  detail : keycode_t,
  sequence : u16,
  time : timestamp_t,
  root : window_t,
  event : window_t,
  child : window_t,
  root_x : i16,
  root_y : i16,
  event_x : i16,
  event_y : i16,
  state : u16,
  same_screen : u8,
  pad0 : u8,
}

button_mask_t :: enum _c.int {
      BUTTON_MASK_1 = 256,
      BUTTON_MASK_2 = 512,
      BUTTON_MASK_3 = 1024,
      BUTTON_MASK_4 = 2048,
      BUTTON_MASK_5 = 4096,
      BUTTON_MASK_ANY = 32768,
}

button_press_event_t :: struct {
  response_type : u8,
  detail : button_t,
  sequence : u16,
  time : timestamp_t,
  root : window_t,
  event : window_t,
  child : window_t,
  root_x : i16,
  root_y : i16,
  event_x : i16,
  event_y : i16,
  state : u16,
  same_screen : u8,
  pad0 : u8,
}

motion_t :: enum _c.int {
    MOTION_NORMAL,
    MOTION_HINT,
}

motion_notify_event_t :: struct {
  response_type : u8,
  detail : u8,
  sequence : u16,
  time : timestamp_t,
  root : window_t,
  event : window_t,
  child : window_t,
  root_x : i16,
  root_y : i16,
  event_x : i16,
  event_y : i16,
  state : u16,
  same_screen : u8,
  pad0 : u8,
}

notify_detail_t :: enum _c.int {
             NOTIFY_DETAIL_ANCESTOR,
              NOTIFY_DETAIL_VIRTUAL,
             NOTIFY_DETAIL_INFERIOR,
            NOTIFY_DETAIL_NONLINEAR,
    NOTIFY_DETAIL_NONLINEAR_VIRTUAL,
              NOTIFY_DETAIL_POINTER,
         NOTIFY_DETAIL_POINTER_ROOT,
                 NOTIFY_DETAIL_NONE,
}

notify_mode_t :: enum _c.int {
           NOTIFY_MODE_NORMAL,
             NOTIFY_MODE_GRAB,
           NOTIFY_MODE_UNGRAB,
           NOTIFY_MODE_WHILE_GRABBED,
}

enter_notify_event_t :: struct {
  response_type : u8,
  detail : u8,
  sequence : u16,
  time : timestamp_t,
  root : window_t,
  event : window_t,
  child : window_t,
  root_x : i16,
  root_y : i16,
  event_x : i16,
  event_y : i16,
  state : u16,
  mode : u8,
  same_screen_focus : u8,
}

focus_in_event_t :: struct {
  response_type : u8,
  detail : u8,
  sequence : u16,
  event : window_t,
  mode : u8,
  pad0 : [3]u8,
}

focus_out_event_t :: focus_in_event_t

keymap_notify_event_t :: struct {
  response_type : u8,
  keys : [31]u8,
}

expose_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  window : window_t,
  x : u16,
  y : u16,
  width : u16,
  height : u16,
  count : u16,
  pad1 : [2]u8,
}

graphics_exposure_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  drawable : drawable_t,
  x : u16,
  y : u16,
  width : u16,
  height : u16,
  minor_opcode : u16,
  count : u16,
  major_opcode : u8,
  pad1 : [3]u8,
}

no_exposure_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  drawable : drawable_t,
  minor_opcode : u16,
  major_opcode : u8,
  pad1 : u8,
}

visibility_t :: enum _c.int {
            VISIBILITY_UNOBSCURED,
    VISIBILITY_PARTIALLY_OBSCURED,
        VISIBILITY_FULLY_OBSCURED,
}

visibility_notify_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  window : window_t,
  state : u8,
  pad1 : [3]u8,
}

create_notify_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  parent : window_t,
  window : window_t,
  x : i16,
  y : i16,
  width : u16,
  height : u16,
  border_width : u16,
  override_redirect : u8,
  pad1 : u8,
}

destroy_notify_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  event : window_t,
  window : window_t,
}

unmap_notify_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  event : window_t,
  window : window_t,
  from_configure : u8,
  pad1 : [3]u8,
}

map_notify_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  event : window_t,
  window : window_t,
  override_redirect : u8,
  pad1 : [3]u8,
}

map_request_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  parent : window_t,
  window : window_t,
}

reparent_notify_event_t :: struct {
  sequence : u16,
  event : window_t,
  window : window_t,
  parent : window_t,
  x : i16,
  y : i16,
  override_redirect : u8,
  pad1 : [3]u8,
}

configure_notify_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  event : window_t,
  window : window_t,
  above_sibling : window_t,
  x : i16,
  y : i16,
  width : u16,
  height : u16,
  border_width : u16,
  override_redirect : u8,
  pad1 : [3]u8,
}

configure_request_event_t :: struct {
  response_type : u8,
  stack_mode : u8,
  sequence : u16,
  parent : window_t,
  window : window_t,
  sibling : window_t,
  x : i16,
  y : i16,
  width : u16,
  height : u16,
  border_width : u16,
  value_mask : u16,
}

gravity_notify_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  event : window_t,
  window : window_t,
  x : i16,
  y : i16,
}

resize_request_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  window : window_t,
  width : u16,
  height : u16,
}

place_t :: enum _c.int {
       PLACE_ON_TOP,
    PLACE_ON_BOTTOM,
}

circulate_notify_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  event : window_t,
  window : window_t,
  pad1 : [4]u8,
  place : u8,
  pad2 : [3]u8,
}

xcb_circulate_request_event_t :: circulate_notify_event_t

property_t :: enum _c.int{
    PROPERTY_NEW_VALUE,
       PROPERTY_DELETE,
}

property_notify_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  window : window_t,
  atom : atom_t,
  time : timestamp_t,
  state : u8,
  pad1 : [3]u8,
}

selection_clear_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  time : timestamp_t,
  owner : window_t,
  selection : atom_t,
}

xcb_time_t :: enum _c.int {
    TIME_CURRENT_TIME,
}

atom_enum_t :: enum _c.int{
                   ATOM_NONE = 0,
                    ATOM_ANY = 0,
                ATOM_PRIMARY = 1,
              ATOM_SECONDARY = 2,
                    ATOM_ARC = 3,
                   ATOM_ATOM = 4,
                 ATOM_BITMAP = 5,
               ATOM_CARDINAL = 6,
               ATOM_COLORMAP = 7,
                 ATOM_CURSOR = 8,
            ATOM_CUT_BUFFER0 = 9,
            ATOM_CUT_BUFFER1 = 10,
            ATOM_CUT_BUFFER2 = 11,
            ATOM_CUT_BUFFER3 = 12,
            ATOM_CUT_BUFFER4 = 13,
            ATOM_CUT_BUFFER5 = 14,
            ATOM_CUT_BUFFER6 = 15,
            ATOM_CUT_BUFFER7 = 16,
               ATOM_DRAWABLE = 17,
                   ATOM_FONT = 18,
                ATOM_INTEGER = 19,
                 ATOM_PIXMAP = 20,
                  ATOM_POINT = 21,
              ATOM_RECTANGLE = 22,
       ATOM_RESOURCE_MANAGER = 23,
          ATOM_RGB_COLOR_MAP = 24,
           ATOM_RGB_BEST_MAP = 25,
           ATOM_RGB_BLUE_MAP = 26,
        ATOM_RGB_DEFAULT_MAP = 27,
           ATOM_RGB_GRAY_MAP = 28,
          ATOM_RGB_GREEN_MAP = 29,
            ATOM_RGB_RED_MAP = 30,
                 ATOM_STRING = 31,
               ATOM_VISUALID = 32,
                 ATOM_WINDOW = 33,
             ATOM_WM_COMMAND = 34,
               ATOM_WM_HINTS = 35,
      ATOM_WM_CLIENT_MACHINE = 36,
           ATOM_WM_ICON_NAME = 37,
           ATOM_WM_ICON_SIZE = 38,
                ATOM_WM_NAME = 39,
        ATOM_WM_NORMAL_HINTS = 40,
          ATOM_WM_SIZE_HINTS = 41,
          ATOM_WM_ZOOM_HINTS = 42,
              ATOM_MIN_SPACE = 43,
             ATOM_NORM_SPACE = 44,
              ATOM_MAX_SPACE = 45,
              ATOM_END_SPACE = 46,
          ATOM_SUPERSCRIPT_X = 47,
          ATOM_SUPERSCRIPT_Y = 48,
            ATOM_SUBSCRIPT_X = 49,
            ATOM_SUBSCRIPT_Y = 50,
     ATOM_UNDERLINE_POSITION = 51,
    ATOM_UNDERLINE_THICKNESS = 52,
       ATOM_STRIKEOUT_ASCENT = 53,
      ATOM_STRIKEOUT_DESCENT = 54,
           ATOM_ITALIC_ANGLE = 55,
               ATOM_X_HEIGHT = 56,
             ATOM_QUAD_WIDTH = 57,
                 ATOM_WEIGHT = 58,
             ATOM_POINT_SIZE = 59,
             ATOM_RESOLUTION = 60,
              ATOM_COPYRIGHT = 61,
                 ATOM_NOTICE = 62,
              ATOM_FONT_NAME = 63,
            ATOM_FAMILY_NAME = 64,
              ATOM_FULL_NAME = 65,
             ATOM_CAP_HEIGHT = 66,
               ATOM_WM_CLASS = 67,
       ATOM_WM_TRANSIENT_FOR = 68,
}

selection_request_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  time : timestamp_t,
  owner : window_t,
  requestor : window_t,
  selection : atom_t,
  target : atom_t,
  property : atom_t,
}

selection_notify_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  time : timestamp_t,
  requestor : window_t,
  selection : atom_t,
  target : atom_t,
  property : atom_t,
}

colormap_state_t :: enum _c.int{
    COLORMAP_STATE_UNINSTALLED,
    COLORMAP_STATE_INSTALLED,
}

colormap_enum_t :: enum _c.int{
    COLORMAP_NONE,
}

colormap_notify_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  window : window_t,
  colormap : colormap_t,
  _new : u8,
  state : u8,
  pad1 : [2]u8,
}

client_message_data_t :: struct #raw_union {
     data8 : [20]u8,
    data16 : [10]u16,
    data32 : [5]u32,
}

client_message_data_iterator_t :: struct {
     data : ^client_message_data_t,
      rem : _c.int,
    index : _c.int,
}

client_message_event_t :: struct {
  response_type : u8,
  format : u8,
  sequence : u16,
  window : window_t,
  type : atom_t,
  data : client_message_data_t,
}

mapping_t :: enum _c.int {
    MAPPING_MODIFIER,
    MAPPING_KEYBOARD,
     MAPPING_POINTER,
}

mapping_notify_event_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  request : u8,
  first_keycode : keycode_t,
  count : u8,
  pad1 : u8,
}

ge_generic_event_t :: struct {
    response_type : u8,
    extension : u8,
    sequence : u16,
    length : u32,
    event_type : u16,
    pad0 : [22]u8,
    full_sequence : u32,
}

request_error_t :: struct {
  response_type : u8,
  error_code : u8,
  sequence : u16,
  bad_value : u32,
  minor_opcode : u16,
  major_opcode : u8,
  pad0 : u8,
}

value_error_t :: struct {
  response_type : u8,
  error_code : u8,
  sequence : u16,
  bad_value : u32,
  minor_opcode : u16,
  major_opcode : u8,
  pad0 : u8,
}

window_error_t :: value_error_t

pixmap_error_t :: value_error_t

atom_error_t :: value_error_t

cursor_error_t :: value_error_t

font_error_t :: value_error_t

match_error_t :: value_error_t

drawable_error_t :: value_error_t

access_error_t :: value_error_t

alloc_error_t :: value_error_t

colormap_error_t :: value_error_t

g_context_error_t :: value_error_t

id_choice_error_t :: value_error_t

name_error_t :: value_error_t

length_error_t :: value_error_t

implementation_error_t :: value_error_t

window_class_t :: enum _c.int {
    WINDOW_CLASS_COPY_FROM_PARENT,
        WINDOW_CLASS_INPUT_OUTPUT,
          WINDOW_CLASS_INPUT_ONLY,
}

cw_t :: enum _c.int {
    CW_BACK_PIXMAP       = 1,
    /**< Overrides the default background-pixmap. The background pixmap and window must
    have the same root and same depth. Any size pixmap can be used, although some
    sizes may be faster than others.
          
    If `XCB_BACK_PIXMAP_NONE` is specified, the window has no defined background.
    The server may fill the contents with the previous screen contents or with
    contents of its own choosing.
         
    If `XCB_BACK_PIXMAP_PARENT_RELATIVE` is specified, the parent's background is
    used, but the window must have the same depth as the parent (or a Match error
    results).   The parent's background is tracked, and the current version is
    used each time the window background is required. */          
    CW_BACK_PIXEL        = 2,
    /**< Overrides `BackPixmap`. A pixmap of undefined size filled with the specified
    background pixel is used for the background. Range-checking is not performed,
    the background pixel is truncated to the appropriate number of bits. */
    CW_BORDER_PIXMAP     = 4,
    /**< Overrides the default border-pixmap. The border pixmap and window must have the
    same root and the same depth. Any size pixmap can be used, although some sizes
    may be faster than others.

    The special value `XCB_COPY_FROM_PARENT` means the parent's border pixmap is
    copied (subsequent changes to the parent's border attribute do not affect the
    child), but the window must have the same depth as the parent. */
    CW_BORDER_PIXEL      = 8,
    /**< Overrides `BorderPixmap`. A pixmap of undefined size filled with the specified
    border pixel is used for the border. Range checking is not performed on the
    border-pixel value, it is truncated to the appropriate number of bits. */
    CW_BIT_GRAVITY       = 16,
    /**< Defines which region of the window should be retained if the window is resized. */
    CW_WIN_GRAVITY       = 32,
    /**< Defines how the window should be repositioned if the parent is resized (see
    `ConfigureWindow`). */
    CW_BACKING_STORE     = 64,
    /**< A backing-store of `WhenMapped` advises the server that maintaining contents of
    obscured regions when the window is mapped would be beneficial. A backing-store
    of `Always` advises the server that maintaining contents even when the window
    is unmapped would be beneficial. In this case, the server may generate an
    exposure event when the window is created. A value of `NotUseful` advises the
    server that maintaining contents is unnecessary, although a server may still
    choose to maintain contents while the window is mapped. Note that if the server
    maintains contents, then the server should maintain complete contents not just
    the region within the parent boundaries, even if the window is larger than its
    parent. While the server maintains contents, exposure events will not normally
    be generated, but the server may stop maintaining contents at any time. */
    CW_BACKING_PLANES    = 128,
    /**< The backing-planes indicates (with bits set to 1) which bit planes of the
    window hold dynamic data that must be preserved in backing-stores and during
    save-unders. */
    CW_BACKING_PIXEL     = 256,
    /**< The backing-pixel specifies what value to use in planes not covered by
    backing-planes. The server is free to save only the specified bit planes in the
    backing-store or save-under and regenerate the remaining planes with the
    specified pixel value. Any bits beyond the specified depth of the window in
    these values are simply ignored. */
    CW_OVERRIDE_REDIRECT = 512,
    /**< The override-redirect specifies whether map and configure requests on this
    window should override a SubstructureRedirect on the parent, typically to
    inform a window manager not to tamper with the window. */
    CW_SAVE_UNDER        = 1024,
    /**< If 1, the server is advised that when this window is mapped, saving the
    contents of windows it obscures would be beneficial. */
    CW_EVENT_MASK        = 2048,
    /**< The event-mask defines which events the client is interested in for this window
    (or for some event types, inferiors of the window). */
    CW_DONT_PROPAGATE    = 4096,
    /**< The do-not-propagate-mask defines which events should not be propagated to
    ancestor windows when no client has the event type selected in this window. */
    CW_COLORMAP          = 8192,
    /**< The colormap specifies the colormap that best reflects the true colors of the window. Servers
    capable of supporting multiple hardware colormaps may use this information, and window man-
    agers may use it for InstallColormap requests. The colormap must have the same visual type
    and root as the window (or a Match error results). If CopyFromParent is specified, the parent's
    colormap is copied (subsequent changes to the parent's colormap attribute do not affect the child).
    However, the window must have the same visual type as the parent (or a Match error results),
    and the parent must not have a colormap of None (or a Match error results). For an explanation
    of None, see FreeColormap request. The colormap is copied by sharing the colormap object
    between the child and the parent, not by making a complete copy of the colormap contents. */
    CW_CURSOR            = 16384,
    /**< If a cursor is specified, it will be used whenever the pointer is in the window. If None is speci-
    fied, the parent's cursor will be used when the pointer is in the window, and any change in the
    parent's cursor will cause an immediate change in the displayed cursor. */
}

back_pixmap_t :: enum _c.int {
    BACK_PIXMAP_NONE,
    BACK_PIXMAP_PARENT_RELATIVE,
}

gravity_t :: enum _c.int {
    GRAVITY_BIT_FORGET = 0,
    GRAVITY_WIN_UNMAP  = 0,
    GRAVITY_NORTH_WEST = 1,
    GRAVITY_NORTH      = 2,
    GRAVITY_NORTH_EAST = 3,
    GRAVITY_WEST       = 4,
    GRAVITY_CENTER     = 5,
    GRAVITY_EAST       = 6,
    GRAVITY_SOUTH_WEST = 7,
    GRAVITY_SOUTH      = 8,
    GRAVITY_SOUTH_EAST = 9,
    GRAVITY_STATIC     = 10,
}

create_window_value_list_t :: struct {
        background_pixmap : pixmap_t,
         background_pixel : u32,
            border_pixmap : pixmap_t,
             border_pixel : u32,
              bit_gravity : u32,
              win_gravity : u32,
            backing_store : u32,
           backing_planes : u32,
            backing_pixel : u32,
        override_redirect : bool32_t,
               save_under : bool32_t,
               event_mask : u32,
    do_not_propogate_mask : u32,
                 colormap : colormap_t,
                   cursor : cursor_t,
}

create_window_request_t :: struct {
    major_opcode : u8,
           depth : u8,
          length : u16,
             wid : window_t,
          parent : window_t,
               x : i16,
               y : i16,
           width : u16,
          height : u16,
    border_width : u16,
          _class : u16,
          visual : visualid_t,
      value_mask : u32,
}

change_window_attributes_value_list_t :: struct {
        background_pixmap : pixmap_t,
         background_pixel : u32,
            border_pixmap : pixmap_t,
             border_pixel : u32,
              bit_gravity : u32,
              win_gravity : u32,
            backing_store : u32,
           backing_planes : u32,
            backing_pixel : u32,
        override_redirect : bool32_t,
               save_under : bool32_t,
               event_mask : u32,
    do_not_propogate_mask : u32,
                 colormap : colormap_t,
                   cursor : cursor_t,
}

change_window_attributes_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
          window : window_t,
      value_mask : u32,
}

map_state_t :: enum _c.int {
      MAP_STATE_UNMAPPED,
    MAP_STATE_UNVIEWABLE,
      MAP_STATE_VIEWABLE,
}

get_window_attributes_cookie_t :: struct {
    sequence : _c.uint,
}

get_window_attributes_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  window : window_t,
}

get_window_attributes_reply_t :: struct {
            response_type : u8,
            backing_store : u8,
                 sequence : u16,
                   length : u32,
                   visual : visualid_t,
                   _class : u16,
              bit_gravity : u8,
              win_gravity : u8,
           backing_planes : u32,
            backing_pixel : u32,
               save_under : u8,
         map_is_installed : u8,
                map_state : u8,
        override_redirect : u8,
                 colormap : colormap_t,
          all_event_masks : u32,
          your_event_mask : u32,
    do_not_propagate_mask : u16,
                     pad0 : [2]u8,
}

destroy_window_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  window : window_t,
}

destroy_subwindows_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  window : window_t,
}

set_mode_t :: enum _c.int {
    SET_MODE_INSERT,
    SET_MODE_DELETE,
}

change_save_set_request_t :: struct {
  major_opcode : u8,
  mode : u8,
  length : u16,
  window : window_t,
}

reparent_window_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  window : window_t,
  parent : window_t,
  x : i16,
  y : i16,
}

map_window_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  window : window_t,
}

map_subwindows_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  window : window_t,
}

unmap_window_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  window : window_t,
}

unmap_subwindows_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  window : window_t,
}

config_window_t :: enum _c.int {
               CONFIG_WINDOW_X = 1,
               CONFIG_WINDOW_Y = 2,
           CONFIG_WINDOW_WIDTH = 4,
          CONFIG_WINDOW_HEIGHT = 8,
    CONFIG_WINDOW_BORDER_WIDTH = 16,
         CONFIG_WINDOW_SIBLING = 32,
      CONFIG_WINDOW_STACK_MODE = 64,
}

stack_mode_t :: enum _c.int {
        STACK_MODE_ABOVE,
        STACK_MODE_BELOW,
       STACK_MODE_TOP_IF,
    STACK_MODE_BOTTOM_IF,
     STACK_MODE_OPPOSITE,
}

configure_window_value_list_t :: struct {
               x : i32,
               y : i32,
           width : u32,
          height : u32,
    border_width : u32,
         sibling : window_t,
      stack_mode : u32,
}

configure_window_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
          window : window_t,
      value_mask : u16,
            pad1 : [2]u8,
}

circulate_t :: enum _c.int {
     CIRCULATE_RAISE_LOWEST,
    CIRCULATE_LOWER_HIGHEST,
}

circulate_window_request_t :: struct {
  major_opcode : u8,
  direction : u8,
  length : u16,
  window : window_t,
}

get_geometry_cookie_t :: struct {
    sequence : _c.uint,
}

get_geometry_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  drawable : drawable_t,
}

get_geometry_reply_t :: struct {
    response_type : u8,
            depth : u8,
         sequence : u16,
           length : u32,
             root : window_t,
                x : i16,
                y : i16,
            width : u16,
           height : u16,
     border_width : u16,
             pad0 : [2]u8,
}

query_tree_cookie_t :: struct {
    sequence : _c.uint,
}

query_tree_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  window : window_t,
}

query_tree_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
             root : window_t,
           parent : window_t,
     children_len : u16,
             pad1 : [14]u8,
}

intern_atom_cookie_t :: struct {
    sequence : _c.uint,
}

intern_atom_request_t :: struct {
  major_opcode : u8,
  only_if_exists : u8,
  length : u16,
  name_len : u16,
  pad0 : [2]u8,
}

intern_atom_reply_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  length : u32,
  atom : atom_t,
}

get_atom_name_cookie_t :: struct {
   sequence : _c.uint,
}

get_atom_name_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  atom : atom_t,
}

get_atom_name_reply_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  length : u32,
  name_len : u16,
  pad1 : [22]u8,
}

prop_mode_t :: enum _c.int {
    PROP_MODE_REPLACE,
    /**< Discard the previous property value and store the new data. */
    PROP_MODE_PREPEND,
    /**< Insert the new data before the beginning of existing data. The `format` must
    match existing property value. If the property is undefined, it is treated as
    defined with the correct type and format with zero-length data. */
    PROP_MODE_APPEND,
    /**< Insert the new data after the beginning of existing data. The `format` must
    match existing property value. If the property is undefined, it is treated as
    defined with the correct type and format with zero-length data. */
}

change_property_request_t :: struct {
  major_opcode : u8,
  mode : prop_mode_t,
  length : u16,
  window : window_t,
  property : atom_t,
  type : atom_t,
  format : u8,
  pad0 : [3]u8,
  data_len : u32,
}

delete_property_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  window : window_t,
  property : atom_t,
}

get_property_type_t :: enum _c.int {
  GET_PROPERTY_TYPE_ANY,
}

/**
* @brief xcb_get_property_cookie_t
**/
get_property_cookie_t :: struct {
   sequence : _c.uint,
}
get_property_request_t :: struct {
  major_opcode : u8,
  _delete : u8,
  length : u16,
  window : window_t,
  property : atom_t,
  type : atom_t,
  long_offset : u32,
  long_length : u32,
}

get_property_reply_t :: struct {
  response_type : u8,
  format : u8,
  sequence : u16,
  length : u32,
  type : atom_t,
  bytes_after : u32,
  value_len : u32,
  pad0 : [12]u8,
}

list_properties_cookie_t :: struct {
  sequence : _c.uint,
}

list_properties_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  window : window_t,
}

list_properties_reply_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  length : u32,
  atoms_len : u16,
  pad1 : [22]u8,
}

set_selection_owner_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  owner : window_t,
  selection : atom_t,
  time : timestamp_t,
}

get_selection_owner_cookie_t :: struct {
  sequence : _c.uint,
}

get_selection_owner_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  selection : atom_t,
}

get_selection_owner_reply_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  length : u32,
  owner : window_t,
}

xcb_convert_selection_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  requestor : window_t,
  selection : atom_t,
  target : atom_t,
  property : atom_t,
  time : timestamp_t,
}

send_event_dest_t :: enum _c.int {
  SEND_EVENT_DEST_POINTER_WINDOW,
  SEND_EVENT_DEST_ITEM_FOCUS,
}

send_event_request_t :: struct {
  major_opcode : u8,
  propagate : u8,
  length : u16,
  destination : window_t,
  event_mask : u32,
  event : [32]_c.char,
}

grab_mode_t :: enum _c.int {
    GRAB_MODE_SYNC = 0,
    /**< The state of the keyboard appears to freeze: No further keyboard events are
    generated by the server until the grabbing client issues a releasing
    `AllowEvents` request or until the keyboard grab is released. */
    GRAB_MODE_ASYNC = 1,
    /**< Keyboard event processing continues normally. */
}

grab_status_t :: enum _c.int {
  GRAB_STATUS_SUCCESS = 0,
  GRAB_STATUS_ALREADY_GRABBED = 1,
  GRAB_STATUS_INVALID_TIME = 2,
  GRAB_STATUS_NOT_VIEWABLE = 3,
  GRAB_STATUS_FROZEN = 4,
}

cursor_enum_t :: enum _c.int {
  CURSOR_NONE,
}

grab_pointer_cookie_t :: struct {
  sequence : _c.uint,
}

grab_pointer_request_t :: struct {
  major_opcode : u8,
  owner_events : u8,
  length : u16,
  grab_window : window_t,
  event_mask : u16,
  pointer_mode : u8,
  keyboard_mode : u8,
  confine_to : window_t,
  cursor : cursor_t,
  time : timestamp_t,
}

grab_pointer_reply_t :: struct {
  response_type : u8,
  status : u8,
  sequence : u16,
  length : u32,
}

ungrab_pointer_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  time : timestamp_t,
}

button_index_t :: enum _c.int {
  BUTTON_INDEX_ANY,
/**< Any of the following (or none): */
  BUTTON_INDEX_1,
/**< The left mouse button. */
  BUTTON_INDEX_2,
/**< The right mouse button. */
  BUTTON_INDEX_3,
/**< The middle mouse button. */
  BUTTON_INDEX_4,
/**< Scroll wheel. TODO: direction? */
  BUTTON_INDEX_5,
/**< Scroll wheel. TODO: direction? */
}

grab_button_request_t :: struct {
  major_opcode : u8,
  owner_events : u8,
  length : u16,
  grab_window : window_t,
  event_mask : u16,
  pointer_mode : u8,
  keyboard_mode : u8,
  confine_to : window_t,
  cursor : cursor_t,
  button : u8,
  pad0 : u8,
  modifiers : u16,
}

ungrab_button_request_t :: struct {
  major_opcode : u8,
  button : u8,
  length : u16,
  grab_window : window_t,
  modifiers : u16,
  pad0 : [2]u8,
}

change_active_pointer_grab_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  cursor : cursor_t,
  time : timestamp_t,
  event_mask : u16,
  pad1 : [2]u8,
}

grab_keyboard_cookie_t :: struct {
  sequence : _c.uint,
}

grab_keyboard_request_t :: struct {
  major_opcode : u8,
  owner_events : u8,
  length : u16,
  grab_window : window_t,
  time : timestamp_t,
  pointer_mode : u8,
  keyboard_mode : u8,
  pad0 : [2]u8,
}

grab_keyboard_reply_t :: struct {
  response_type : u8,
  status : u8,
  sequence : u16,
  length : u32,
}


ungrab_keyboard_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  time : timestamp_t,
}

xcb_grab_t :: enum _c.int {
  GRAB_ANY,
}

grab_key_request_t :: struct {
  major_opcode : u8,
  owner_events : u8,
  length : u16,
  grab_window : window_t,
  modifiers : u16,
  key : keycode_t,
  pointer_mode : u8,
  keyboard_mode : u8,
  pad0 : [3]u8,
}

ungrab_key_request_t :: struct {
  major_opcode : u8,
  key : keycode_t,
  length : u16,
  grab_window : window_t,
  modifiers : u16,
  pad0 : [2]u8,
}

allow_t :: enum _c.int {
    ALLOW_ASYNC_POINTER,
    /**< For AsyncPointer, if the pointer is frozen by the client, pointer event
    processing continues normally. If the pointer is frozen twice by the client on
    behalf of two separate grabs, AsyncPointer thaws for both. AsyncPointer has no
    effect if the pointer is not frozen by the client, but the pointer need not be
    grabbed by the client.

    TODO: rewrite this in more understandable terms. */
    ALLOW_SYNC_POINTER,
    /**< For SyncPointer, if the pointer is frozen and actively grabbed by the client,
    pointer event processing continues normally until the next ButtonPress or
    ButtonRelease event is reported to the client, at which time the pointer again
    appears to freeze. However, if the reported event causes the pointer grab to be
    released, then the pointer does not freeze. SyncPointer has no effect if the
    pointer is not frozen by the client or if the pointer is not grabbed by the
    client. */
    ALLOW_REPLAY_POINTER,
    /**< For ReplayPointer, if the pointer is actively grabbed by the client and is
    frozen as the result of an event having been sent to the client (either from
    the activation of a GrabButton or from a previous AllowEvents with mode
    SyncPointer but not from a GrabPointer), then the pointer grab is released and
    that event is completely reprocessed, this time ignoring any passive grabs at
    or above (towards the root) the grab-window of the grab just released. The
    request has no effect if the pointer is not grabbed by the client or if the
    pointer is not frozen as the result of an event. */
    ALLOW_ASYNC_KEYBOARD,
    /**< For AsyncKeyboard, if the keyboard is frozen by the client, keyboard event
    processing continues normally. If the keyboard is frozen twice by the client on
    behalf of two separate grabs, AsyncKeyboard thaws for both. AsyncKeyboard has
    no effect if the keyboard is not frozen by the client, but the keyboard need
    not be grabbed by the client. */
    ALLOW_SYNC_KEYBOARD,
    /**< For SyncKeyboard, if the keyboard is frozen and actively grabbed by the client,
    keyboard event processing continues normally until the next KeyPress or
    KeyRelease event is reported to the client, at which time the keyboard again
    appears to freeze. However, if the reported event causes the keyboard grab to
    be released, then the keyboard does not freeze. SyncKeyboard has no effect if
    the keyboard is not frozen by the client or if the keyboard is not grabbed by
    the client. */
    ALLOW_REPLAY_KEYBOARD,
    /**< For ReplayKeyboard, if the keyboard is actively grabbed by the client and is
    frozen as the result of an event having been sent to the client (either from
    the activation of a GrabKey or from a previous AllowEvents with mode
    SyncKeyboard but not from a GrabKeyboard), then the keyboard grab is released
    and that event is completely reprocessed, this time ignoring any passive grabs
    at or above (towards the root) the grab-window of the grab just released. The
    request has no effect if the keyboard is not grabbed by the client or if the
    keyboard is not frozen as the result of an event. */
    ALLOW_ASYNC_BOTH,
    /**< For AsyncBoth, if the pointer and the keyboard are frozen by the client, event
    processing for both devices continues normally. If a device is frozen twice by
    the client on behalf of two separate grabs, AsyncBoth thaws for both. AsyncBoth
    has no effect unless both pointer and keyboard are frozen by the client. */
    ALLOW_SYNC_BOTH,
    /**< For SyncBoth, if both pointer and keyboard are frozen by the client, event
    processing (for both devices) continues normally until the next ButtonPress,
    ButtonRelease, KeyPress, or KeyRelease event is reported to the client for a
    grabbed device (button event for the pointer, key event for the keyboard), at
    which time the devices again appear to freeze. However, if the reported event
    causes the grab to be released, then the devices do not freeze (but if the
    other device is still grabbed, then a subsequent event for it will still cause
    both devices to freeze). SyncBoth has no effect unless both pointer and
    keyboard are frozen by the client. If the pointer or keyboard is frozen twice
    by the client on behalf of two separate grabs, SyncBoth thaws for both (but a
    subsequent freeze for SyncBoth will only freeze each device once). */
}

allow_events_request_t :: struct {
  major_opcode: u8,
  mode: u8,
  length: u16,
  time: timestamp_t,
}

grab_server_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
}

ungrab_server_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
}

query_pointer_cookie_t :: struct {
  sequence: _c.uint,
}

query_pointer_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
  window: window_t,
}

query_pointer_reply_t :: struct {
  response_type: u8,
  same_screen: u8,
  sequence: u16,
  length: u32,
  root: window_t,
  child: window_t,
  root_x: i16,
  root_y: i16,
  win_x: i16,
  win_y: i16,
  mask: u16,
  pad0:  [2]u8,
}

timecoord_t :: struct {
  time: timestamp_t,
  x: i16,
  y: i16,
}

timecoord_iterator_t :: struct {
  data: ^timecoord_t,
  rem: _c.int,
  index: _c.int,
}

get_motion_events_cookie_t :: struct {
  sequence: _c.uint,
}


get_motion_events_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
  window: window_t,
  start: timestamp_t,
  stop: timestamp_t,
}

get_motion_events_reply_t :: struct {
  response_type: u8,
  pad0: u8,
  sequence: u16,
  length: u32,
  events_len: u32,
  pad1: [20]u8,
}

translate_coordinates_cookie_t :: struct {
  sequence: _c.uint,
}

translate_coordinates_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
  src_window: window_t,
  dst_window: window_t,
  src_x: i16,
  src_y: i16,
}

translate_coordinates_reply_t :: struct {
  response_type: u8,
  same_screen: u8,
  sequence: u16,
  length: u32,
  child: window_t,
  dst_x: i16,
  dst_y: i16,
}

xcb_warp_pointer_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
  src_window: window_t,
  dst_window: window_t,
  src_x: i16,
  src_y: i16,
  src_width: u16,
  src_height: u16,
  dst_x: i16,
  dst_y: i16,
}

input_focus_t :: enum _c.int {
  INPUT_FOCUS_NONE,
/**< The focus reverts to `NONE`, so no window will have the input focus. */
  INPUT_FOCUS_POINTER_ROOT,
/**< The focus reverts to `POINTER_ROOT` respectively. When the focus reverts,
FocusIn and FocusOut events are generated, but the last-focus-change time is
not changed. */
  INPUT_FOCUS_PARENT,
/**< The focus reverts to the parent (or closest viewable ancestor) and the new
revert_to value is `INPUT_FOCUS_NONE`. */
  INPUT_FOCUS_FOLLOW_KEYBOARD,
/**< NOT YET DOCUMENTED. Only relevant for the xinput extension. */
}

set_input_focus_request_t :: struct {
  major_opcode: u8,
  revert_to: u8,
  length: u16,
  focus: window_t,
  time: timestamp_t,
}

get_input_focus_cookie_t :: struct {
  sequence: _c.uint,
}


get_input_focus_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
}

get_input_focus_reply_t :: struct {
  response_type: u8,
  revert_to: u8,
  sequence: u16,
  length: u32,
  focus: window_t,
}

query_keymap_cookie_t :: struct {
  sequence: _c.uint,
}

query_keymap_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
}

query_keymap_reply_t :: struct {
  response_type: u8,
  pad0: u8,
  sequence: u16,
  length: u32,
  keys: [32]u8,
}

open_font_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
  fid: font_t,
  name_len: u16,
  pad1: [2]u8,
}

close_font_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
  font: font_t,
}

font_draw_t :: enum _c.int {
  FONT_DRAW_LEFT_TO_RIGHT,
  FONT_DRAW_RIGHT_TO_LEFT,
}

fontprop_t :: struct {
  name: atom_t,
  value: u32,
}


fontprop_iterator_t :: struct {
     data : ^fontprop_t,
      rem : _c.int,
    index : _c.int,
}

charinfo_t :: struct {
     left_side_bearing : i16,
    right_side_bearing : i16,
       character_width : i16,
                ascent : i16,
               descent : i16,
            attributes : u16,
}

charinfo_iterator_t :: struct {
     data : ^charinfo_t,
      rem : _c.int,
    index : _c.int,
}

query_font_cookie_t :: struct {
    sequence : _c.uint,
}

xcb_query_font_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
  font: fontable_t,
}

query_font_reply_t :: struct {
        response_type : u8,
                 pad0 : u8,
             sequence : u16,
               length : u32,
           min_bounds : charinfo_t,
                 pad1 : [4]u8,
           max_bounds : charinfo_t,
                 pad2 : [4]u8,
    min_char_or_byte2 : u16,
    max_char_or_byte2 : u16,
         default_char : u16,
       properties_len : u16,
       draw_direction : u8,
            min_byte1 : u8,
            max_byte1 : u8,
      all_chars_exist : u8,
          font_ascent : i16,
         font_descent : i16,
       char_infos_len : u32,
}

query_text_extents_cookie_t :: struct {
    sequence : _c.uint,
}

query_text_extents_request_t :: struct {
  major_opcode: u8,
  odd_length: u8,
  length: u16,
  font: fontable_t,
}

query_text_extents_reply_t :: struct {
      response_type : u8,
     draw_direction : u8,
           sequence : u16,
             length : u32,
        font_ascent : i16,
       font_descent : i16,
     overall_ascent : i16,
    overall_descent : i16,
      overall_width : i32,
       overall_left : i32,
      overall_right : i32,
}

str_t :: struct {
    name_len : u8,
}

str_iterator_t :: struct {
     data : ^str_t,
      rem : _c.int,
    index : _c.int,
}

list_fonts_cookie_t :: struct {
    sequence : _c.uint,
}

list_fonts_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
  max_names: u16,
  pattern_len: u16,
}

list_fonts_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
        names_len : u16,
             pad1 : [22]u8,
}

list_fonts_with_info_cookie_t :: struct {
    sequence : _c.uint,
}

list_fonts_with_info_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
  max_names: u16,
  pattern_len: u16,
}

list_fonts_with_info_reply_t :: struct {
        response_type : u8,
             name_len : u8,
             sequence : u16,
               length : u32,
           min_bounds : charinfo_t,
                 pad0 : [4]u8,
           max_bounds : charinfo_t,
                 pad1 : [4]u8,
    min_char_or_byte2 : u16,
    max_char_or_byte2 : u16,
         default_char : u16,
       properties_len : u16,
       draw_direction : u8,
            min_byte1 : u8,
            max_byte1 : u8,
      all_chars_exist : u8,
          font_ascent : i16,
         font_descent : i16,
         replies_hint : u32,
}

set_font_path_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        font_qty : u16,
            pad1 : [2]u8,
}

get_font_path_cookie_t :: struct {
    sequence : _c.uint,
}

get_font_path_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
}

get_font_path_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
         path_len : u16,
             pad1 : [22]u8,
}

create_pixmap_request_t :: struct {
  major_opcode: u8,
  depth: u8,
  length: u16,
  pid: pixmap_t,
  drawable: drawable_t,
  width: u16,
  height: u16,
}

free_pixmap_request_t :: struct {
  major_opcode: u8,
  pad0: u8,
  length: u16,
  pixmap: pixmap_t,
}

gc_t :: enum _c.int{
                 GC_FUNCTION = 1,
/**< TODO: Refer to GX */
               GC_PLANE_MASK = 2,
/**< In graphics operations, given a source and destination pixel, the result is
computed bitwise on corresponding bits of the pixels; that is, a Boolean
operation is performed in each bit plane. The plane-mask restricts the
operation to a subset of planes, so the result is:

        ((src FUNC dst) AND plane-mask) OR (dst AND (NOT plane-mask)) */
               GC_FOREGROUND = 4,
/**< Foreground colorpixel. */
               GC_BACKGROUND = 8,
/**< Background colorpixel. */
               GC_LINE_WIDTH = 16,
/**< The line-width is measured in pixels and can be greater than or equal to one, a wide line, or the
special value zero, a thin line. */
               GC_LINE_STYLE = 32,
/**< The line-style defines which sections of a line are drawn:
Solid                The full path of the line is drawn.
DoubleDash           The full path of the line is drawn, but the even dashes are filled differently
                     than the odd dashes (see fill-style), with Butt cap-style used where even and
                     odd dashes meet.
OnOffDash            Only the even dashes are drawn, and cap-style applies to all internal ends of
                     the individual dashes (except NotLast is treated as Butt). */
                GC_CAP_STYLE = 64,
/**< The cap-style defines how the endpoints of a path are drawn:
NotLast    The result is equivalent to Butt, except that for a line-width of zero the final
           endpoint is not drawn.
Butt       The result is square at the endpoint (perpendicular to the slope of the line)
           with no projection beyond.
Round      The result is a circular arc with its diameter equal to the line-width, centered
           on the endpoint; it is equivalent to Butt for line-width zero.
Projecting The result is square at the end, but the path continues beyond the endpoint for
           a distance equal to half the line-width; it is equivalent to Butt for line-width
           zero. */
               GC_JOIN_STYLE = 128,
/**< The join-style defines how corners are drawn for wide lines:
Miter               The outer edges of the two lines extend to meet at an angle. However, if the
                    angle is less than 11 degrees, a Bevel join-style is used instead.
Round               The result is a circular arc with a diameter equal to the line-width, centered
                    on the joinpoint.
Bevel               The result is Butt endpoint styles, and then the triangular notch is filled. */
               GC_FILL_STYLE = 256,
/**< The fill-style defines the contents of the source for line, text, and fill requests. For all text and fill
requests (for example, PolyText8, PolyText16, PolyFillRectangle, FillPoly, and PolyFillArc)
as well as for line requests with line-style Solid, (for example, PolyLine, PolySegment,
PolyRectangle, PolyArc) and for the even dashes for line requests with line-style OnOffDash
or DoubleDash:
Solid                     Foreground
Tiled                     Tile
OpaqueStippled            A tile with the same width and height as stipple but with background
                          everywhere stipple has a zero and with foreground everywhere stipple
                          has a one
Stippled                  Foreground masked by stipple
For the odd dashes for line requests with line-style DoubleDash:
Solid                     Background
Tiled                     Same as for even dashes
OpaqueStippled            Same as for even dashes
Stippled                  Background masked by stipple */
                GC_FILL_RULE = 512,
/**<  */
                     GC_TILE = 1024,
/**< The tile/stipple represents an infinite two-dimensional plane with the tile/stipple replicated in all
dimensions. When that plane is superimposed on the drawable for use in a graphics operation,
the upper-left corner of some instance of the tile/stipple is at the coordinates within the drawable
specified by the tile/stipple origin. The tile/stipple and clip origins are interpreted relative to the
origin of whatever destination drawable is specified in a graphics request.
The tile pixmap must have the same root and depth as the gcontext (or a Match error results).
The stipple pixmap must have depth one and must have the same root as the gcontext (or a
Match error results). For fill-style Stippled (but not fill-style
OpaqueStippled), the stipple pattern is tiled in a single plane and acts as an
additional clip mask to be ANDed with the clip-mask.
Any size pixmap can be used for tiling or stippling, although some sizes may be faster to use than
others. */
                  GC_STIPPLE = 2048,
/**< The tile/stipple represents an infinite two-dimensional plane with the tile/stipple replicated in all
dimensions. When that plane is superimposed on the drawable for use in a graphics operation,
the upper-left corner of some instance of the tile/stipple is at the coordinates within the drawable
specified by the tile/stipple origin. The tile/stipple and clip origins are interpreted relative to the
origin of whatever destination drawable is specified in a graphics request.
The tile pixmap must have the same root and depth as the gcontext (or a Match error results).
The stipple pixmap must have depth one and must have the same root as the gcontext (or a
Match error results). For fill-style Stippled (but not fill-style
OpaqueStippled), the stipple pattern is tiled in a single plane and acts as an
additional clip mask to be ANDed with the clip-mask.
Any size pixmap can be used for tiling or stippling, although some sizes may be faster to use than
others. */
    GC_TILE_STIPPLE_ORIGIN_X = 4096,
/**< TODO */
    GC_TILE_STIPPLE_ORIGIN_Y = 8192,
/**< TODO */
                     GC_FONT = 16384,
/**< Which font to use for the `ImageText8` and `ImageText16` requests. */
           GC_SUBWINDOW_MODE = 32768,
/**< For ClipByChildren, both source and destination windows are additionally
clipped by all viewable InputOutput children. For IncludeInferiors, neither
source nor destination window is
clipped by inferiors. This will result in including subwindow contents in the source and drawing
through subwindow boundaries of the destination. The use of IncludeInferiors with a source or
destination window of one depth with mapped inferiors of differing depth is not illegal, but the
semantics is undefined by the core protocol. */
       GC_GRAPHICS_EXPOSURES = 65536,
/**< Whether ExposureEvents should be generated (1) or not (0).

The default is 1. */
            GC_CLIP_ORIGIN_X = 131072,
/**< TODO */
            GC_CLIP_ORIGIN_Y = 262144,
/**< TODO */
                GC_CLIP_MASK = 524288,
/**< The clip-mask restricts writes to the destination drawable. Only pixels where the clip-mask has
bits set to 1 are drawn. Pixels are not drawn outside the area covered by the clip-mask or where
the clip-mask has bits set to 0. The clip-mask affects all graphics requests, but it does not clip
sources. The clip-mask origin is interpreted relative to the origin of whatever destination drawable is specified in a graphics request. If a pixmap is specified as the clip-mask, it must have
depth 1 and have the same root as the gcontext (or a Match error results). If clip-mask is None,
then pixels are always drawn, regardless of the clip origin. The clip-mask can also be set with the
SetClipRectangles request. */
              GC_DASH_OFFSET = 1048576,
/**< TODO */
                GC_DASH_LIST = 2097152,
/**< TODO */
                 GC_ARC_MODE = 4194304,
/**< TODO */
}

gx_t :: enum _c.int {
            GX_CLEAR,
              GX_AND,
      GX_AND_REVERSE,
             GX_COPY,
     GX_AND_INVERTED,
             GX_NOOP,
              GX_XOR,
               GX_OR,
              GX_NOR,
            GX_EQUIV,
           GX_INVERT,
       GX_OR_REVERSE,
    GX_COPY_INVERTED,
      GX_OR_INVERTED,
             GX_NAND,
              GX_SET,
}

line_style_t :: enum _c.int {
          LINE_STYLE_SOLID,
    LINE_STYLE_ON_OFF_DASH,
    LINE_STYLE_DOUBLE_DASH,
}

cap_style_t :: enum _c.int {
      CAP_STYLE_NOT_LAST,
          CAP_STYLE_BUTT,
         CAP_STYLE_ROUND,
    CAP_STYLE_PROJECTING,
}

join_style_t :: enum _c.int {
    JOIN_STYLE_MITER,
    JOIN_STYLE_ROUND,
    JOIN_STYLE_BEVEL,
}

fill_style_t :: enum _c.int {
              FILL_STYLE_SOLID,
              FILL_STYLE_TILED,
           FILL_STYLE_STIPPLED,
    FILL_STYLE_OPAQUE_STIPPLED,
}

fill_rule_t :: enum _c.int {
    FILL_RULE_EVEN_ODD,
    FILL_RULE_WINDING,
}

subwindow_mode_t :: enum _c.int {
     SUBWINDOW_MODE_CLIP_BY_CHILDREN,
    SUBWINDOW_MODE_INCLUDE_INFERIORS,
}

arc_mode_t :: enum _c.int {
        ARC_MODE_CHORD,
    ARC_MODE_PIE_SLICE,
}

create_gc_value_list_t :: struct {
                 function : u32,
               plane_mask : u32,
               foreground : u32,
               background : u32,
               line_width : u32,
               line_style : u32,
                cap_style : u32,
               join_style : u32,
               fill_style : u32,
                fill_rule : u32,
                     tile : pixmap_t,
                  stipple : pixmap_t,
    tile_stipple_x_origin : i32,
    tile_stipple_y_origin : i32,
                     font : font_t,
           subwindow_mode : u32,
       graphics_exposures : bool32_t,
            clip_x_origin : i32,
            clip_y_origin : i32,
                clip_mask : pixmap_t,
              dash_offset : u32,
                   dashes : u32,
                 arc_mode : u32,
}

create_gc_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
             cid : gcontext_t,
        drawable : drawable_t,
      value_mask : u32,
}

change_gc_value_list_t :: struct {
                 function : u32,
               plane_mask : u32,
               foreground : u32,
               background : u32,
               line_width : u32,
               line_style : u32,
                cap_style : u32,
               join_style : u32,
               fill_style : u32,
                fill_rule : u32,
                     tile : pixmap_t,
                  stipple : pixmap_t,
    tile_stipple_x_origin : i32,
    tile_stipple_y_origin : i32,
                     font : font_t,
           subwindow_mode : u32,
       graphics_exposures : bool32_t,
            clip_x_origin : i32,
            clip_y_origin : i32,
                clip_mask : pixmap_t,
              dash_offset : u32,
                   dashes : u32,
                 arc_mode : u32,
}

change_gc_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
              gc : gcontext_t,
      value_mask : u32,
}

copy_gc_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  src_gc : gcontext_t,
  dst_gc : gcontext_t,
  value_mask : u32,
}

set_dashes_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
              gc : gcontext_t,
     dash_offset : u16,
      dashes_len : u16,
}

clip_ordering_t :: enum _c.int {
     CLIP_ORDERING_UNSORTED,
     CLIP_ORDERING_Y_SORTED,
    CLIP_ORDERING_YX_SORTED,
    CLIP_ORDERING_YX_BANDED,
}

set_clip_rectangles_request_t :: struct {
     major_opcode : u8,
         ordering : u8,
           length : u16,
               gc : gcontext_t,
    clip_x_origin : i16,
    clip_y_origin : i16,
}

free_gc_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  gc : gcontext_t,
}

clear_area_request_t :: struct {
  major_opcode : u8,
  exposures : u8,
  length : u16,
  window : window_t,
  x : i16,
  y : i16,
  width : u16,
  height : u16,
}

copy_area_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  src_drawable : drawable_t,
  dst_drawable : drawable_t,
  gc : gcontext_t,
  src_x : i16,
  src_y : i16,
  dst_x : i16,
  dst_y : i16,
  width : u16,
  height : u16,
}

copy_plane_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  src_drawable : drawable_t,
  dst_drawable : drawable_t,
  gc : gcontext_t,
  src_x : i16,
  src_y : i16,
  dst_x : i16,
  dst_y : i16,
  width : u16,
  height : u16,
  bit_plane : u32,
}

coordinate_mode_t :: enum _c.int {
      COORD_MODE_ORIGIN,
/**< Treats all coordinates as relative to the origin. */
    COORD_MODE_PREVIOUS,
/**< Treats all coordinates after the first as relative to the previous coordinate. */
}

poly_point_request_t :: struct {
  major_opcode : u8,
  coordinate_mode : u8,
  length : u16,
  drawable : drawable_t,
  gc : gcontext_t,
}

poly_line_request_t :: struct {
       major_opcode : u8,
    coordinate_mode : u8,
             length : u16,
           drawable : drawable_t,
                 gc : gcontext_t,
}

segment_t :: struct {
    x1 : i16,
    y1 : i16,
    x2 : i16,
    y2 : i16,
}

segment_iterator_t :: struct {
  data : ^segment_t,
  rem : _c.int,
  index : _c.int,
}

poly_segment_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
}

poly_rectangle_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
}

poly_arc_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
}

poly_shape_t :: enum _c.int {
      POLY_SHAPE_COMPLEX,
    POLY_SHAPE_NONCONVEX,
       POLY_SHAPE_CONVEX,
}

fill_poly_request_t :: struct {
       major_opcode : u8,
               pad0 : u8,
             length : u16,
           drawable : drawable_t,
                 gc : gcontext_t,
              shape : u8,
    coordinate_mode : u8,
               pad1 : [2]u8,
}

poly_fill_rectangle_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  drawable : drawable_t,
  gc : gcontext_t,
}

poly_fill_arc_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
}

image_format_t :: enum _c.int {
    IMAGE_FORMAT_XY_BITMAP,
    IMAGE_FORMAT_XY_PIXMAP,
     IMAGE_FORMAT_Z_PIXMAP,
}

put_image_request_t :: struct {
  major_opcode : u8,
  format : u8,
  length : u16,
  drawable : drawable_t,
  gc : gcontext_t,
  width : u16,
  height : u16,
  dst_x : i16,
  dst_y : i16,
  left_pad : u8,
  depth : u8,
  pad0 : [2]u8,
}

get_image_cookie_t :: struct {
    sequence : _c.uint,
}

get_image_reply_t :: struct {
    response_type : u8,
            depth : u8,
         sequence : u16,
           length : u32,
           visual : visualid_t,
             pad0 : [20]u8,
}

get_image_request_t :: struct {
  major_opcode : u8,
  format : u8,
  length : u16,
  drawable : drawable_t,
  x : i16,
  y : i16,
  width : u16,
  height : u16,
  plane_mask : u32,
}

poly_text_8_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
               x : i16,
               y : i16,
}

poly_text_16_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
               x : i16,
               y : i16,
}

image_text_8_request_t :: struct {
    major_opcode : u8,
      string_len : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
               x : i16,
               y : i16,
}

image_text_16_request_t :: struct {
    major_opcode : u8,
      string_len : u8,
          length : u16,
        drawable : drawable_t,
              gc : gcontext_t,
               x : i16,
               y : i16,
}

colormap_alloc_t :: enum _c.int {
      COLORMAP_ALLOC_NONE,
     COLORMAP_ALLOC_ALL,
}

create_colormap_request_t :: struct {
  major_opcode : u8,
  alloc : colormap_alloc_t,
  length : u16,
  mid : colormap_t,
  window : window_t,
  visual : visualid_t,
}

free_colormap_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  cmap : colormap_t,
}

copy_colormap_and_free_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  mid : colormap_t,
  src_cmap : colormap_t,
}

install_colormap_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  cmap : colormap_t,
}

uninstall_colormap_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  cmap : colormap_t,
}

list_installed_colormaps_cookie_t :: struct {
    sequence : _c.uint,
}

list_installed_colormaps_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  window : window_t,
}

list_installed_colormaps_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
        cmaps_len : u16,
             pad1 : [22]u8,
}

alloc_color_cookie_t :: struct {
    sequence : _c.uint,
}

alloc_color_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  cmap : colormap_t,
  red : u16,
  green : u16,
  blue : u16,
  pad1 : [2]u8,
}

alloc_color_reply_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  length : u32,
  red : u16,
  green : u16,
  blue : u16,
  pad1 : [2]u8,
  pixel : u32,
}

alloc_named_color_cookie_t :: struct {
    sequence : _c.uint,
}

alloc_named_color_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  cmap : colormap_t,
  name_len : u16,
  pad1 : [2]u8,
}

alloc_named_color_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
            pixel : u32,
        exact_red : u16,
      exact_green : u16,
       exact_blue : u16,
       visual_red : u16,
     visual_green : u16,
      visual_blue : u16,
}

alloc_color_cells_cookie_t :: struct {
    sequence : _c.uint,
}

alloc_color_cells_request_t :: struct {
  major_opcode : u8,
  contiguous : u8,
  length : u16,
  cmap : colormap_t,
  colors : u16,
  planes : u16,
}

alloc_color_cells_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
       pixels_len : u16,
        masks_len : u16,
             pad1 : [20]u8,
}

alloc_color_planes_cookie_t :: struct {
    sequence : _c.uint,
}

alloc_color_planes_request_t :: struct {
  major_opcode : u8,
  contiguous : u8,
  length : u16,
  cmap : colormap_t,
  colors : u16,
  reds : u16,
  greens : u16,
  blues : u16,
}

alloc_color_planes_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
       pixels_len : u16,
             pad1 : [2]u8,
         red_mask : u32,
       green_mask : u32,
        blue_mask : u32,
             pad2 : [8]u8,
}

free_colors_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
            cmap : colormap_t,
      plane_mask : u32,
}

color_flag_t :: enum _c.int {
      COLOR_FLAG_RED = 1,
    COLOR_FLAG_GREEN = 2,
     COLOR_FLAG_BLUE = 4,
}

coloritem_t :: struct {
    pixel : u32,
      red : u16,
    green : u16,
     blue : u16,
    flags : u8,
     pad0 : u8,
}

coloritem_iterator_t :: struct {
     data : ^coloritem_t,
      rem : _c.int,
    index : _c.int,
}

store_colors_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
            cmap : colormap_t,
}

store_named_color_request_t :: struct {
    major_opcode : u8,
           flags : u8,
          length : u16,
            cmap : colormap_t,
           pixel : u32,
        name_len : u16,
            pad0 : [2]u8,
}

rgb_t :: struct {
      red : u16,
    green : u16,
     blue : u16,
     pad0 : [2]u8,
}

rgb_iterator_t :: struct {
     data : ^rgb_t,
      rem : _c.int,
    index : _c.int,
}

query_colors_cookie_t :: struct {
    sequence : _c.uint,
}

query_colors_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  cmap : colormap_t,
}

query_colors_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
       colors_len : u16,
             pad1 : [22]u8,
}

lookup_color_cookie_t :: struct {
    sequence : _c.uint,
}

lookup_color_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  cmap : colormap_t,
  name_len : u16,
  pad1 : [2]u8,
}

lookup_color_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
        exact_red : u16,
      exact_green : u16,
       exact_blue : u16,
       visual_red : u16,
     visual_green : u16,
      visual_blue : u16,
}

pixmap_enum_t :: enum _c.int {
    PIXMAP_NONE,
}

create_cursor_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  cid : cursor_t,
  source : pixmap_t,
  mask : pixmap_t,
  fore_red : u16,
  fore_green : u16,
  fore_blue : u16,
  back_red : u16,
  back_green : u16,
  back_blue : u16,
  x : u16,
  y : u16,
}

font_enum_t :: enum _c.int {
    FONT_NONE,
}

create_glyph_cursor_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  cid : cursor_t,
  source_font : font_t,
  mask_font : font_t,
  source_char : u16,
  mask_char : u16,
  fore_red : u16,
  fore_green : u16,
  fore_blue : u16,
  back_red : u16,
  back_green : u16,
  back_blue : u16,
}

free_cursor_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  cursor : cursor_t,
}

recolor_cursor_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  cursor : cursor_t,
  fore_red : u16,
  fore_green : u16,
  fore_blue : u16,
  back_red : u16,
  back_green : u16,
  back_blue : u16,
}

query_shape_of_t :: enum _c.int {
     QUERY_SHAPE_OF_LARGEST_CURSOR,
       QUERY_SHAPE_OF_FASTEST_TILE,
    QUERY_SHAPE_OF_FASTEST_STIPPLE,
}

query_best_size_cookie_t :: struct {
    sequence : _c.uint,
}

query_best_size_request_t :: struct {
  major_opcode : u8,
  _class : u8,
  length : u16,
  drawable : drawable_t,
  width : u16,
  height : u16,
}

query_best_size_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
            width : u16,
           height : u16,
}

query_extension_cookie_t :: struct {
    sequence : _c.uint,
}

query_extension_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  name_len : u16,
  pad1 : [2]u8,
}

query_extension_reply_t :: struct {
    response_type : u8,
             pad0 : u8,
         sequence : u16,
           length : u32,
          present : u8,
     major_opcode : u8,
      first_event : u8,
      first_error : u8,
}

list_extensions_cookie_t :: struct {
    sequence : _c.uint,
}

list_extensions_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
}

list_extensions_reply_t :: struct {
    response_type : u8,
        names_len : u8,
         sequence : u16,
           length : u32,
             pad0 : [24]u8,
}

change_keyboard_mapping_request_t :: struct {
           major_opcode : u8,
          keycode_count : u8,
                 length : u16,
          first_keycode : keycode_t,
    keysyms_per_keycode : u8,
                   pad0 : [2]u8,
}

get_keyboard_mapping_cookie_t :: struct {
    sequence : _c.uint,
}

get_keyboard_mapping_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  first_keycode : keycode_t,
  count : u8,
}

get_keyboard_mapping_reply_t :: struct {
          response_type : u8,
    keysyms_per_keycode : u8,
               sequence : u16,
                 length : u32,
                   pad0 : [24]u8,
}

kb_t :: enum _c.int {
    KB_KEY_CLICK_PERCENT = 1,
         KB_BELL_PERCENT = 2,
           KB_BELL_PITCH = 4,
        KB_BELL_DURATION = 8,
                  KB_LED = 16,
             KB_LED_MODE = 32,
                  KB_KEY = 64,
     KB_AUTO_REPEAT_MODE = 128,
}

led_mode_t :: enum _c.int {
    LED_MODE_OFF,
     LED_MODE_ON,
}

auto_repeat_mode_t :: enum _c.int {
    AUTO_REPEAT_MODE_OFF,
    AUTO_REPEAT_MODE_ON,
    AUTO_REPEAT_MODE_DEFAULT,
}

change_keyboard_control_value_list_t :: struct {
    key_click_percent : i32,
         bell_percent : i32,
           bell_pitch : i32,
        bell_duration : i32,
                  led : u32,
             led_mode : u32,
                  key : keycode32_t,
     auto_repeat_mode : u32,
}

change_keyboard_control_request_t :: struct {
    major_opcode : u8,
            pad0 : u8,
          length : u16,
      value_mask : u32,
}

get_keyboard_control_cookie_t :: struct {
    sequence : _c.uint,
}

get_keyboard_control_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
}

get_keyboard_control_reply_t :: struct {
         response_type : u8,
    global_auto_repeat : u8,
              sequence : u16,
                length : u32,
              led_mask : u32,
     key_click_percent : u8,
          bell_percent : u8,
            bell_pitch : u16,
         bell_duration : u16,
                  pad0 : [2]u8,
          auto_repeats : [32]u8,
}

bell_request_t :: struct {
  major_opcode : u8,
  percent : i8,
  length : u16,
}

change_pointer_control_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  acceleration_numerator : i16,
  acceleration_denominator : i16,
  threshold : i16,
  do_acceleration : u8,
  do_threshold : u8,
}

get_pointer_control_cookie_t :: struct {
    sequence : _c.uint,
}

get_pointer_control_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
}

get_pointer_control_reply_t :: struct {
               response_type : u8,
                        pad0 : u8,
                    sequence : u16,
                      length : u32,
      acceleration_numerator : u16,
    acceleration_denominator : u16,
                   threshold : u16,
                        pad1 : [18]u8,
}

blanking_t :: enum _c.int {
    BLANKING_NOT_PREFERRED,
    BLANKING_PREFERRED,
    BLANKING_DEFAULT,
}

exposures_t :: enum _c.int {
    EXPOSURES_NOT_ALLOWED,
        EXPOSURES_ALLOWED,
        EXPOSURES_DEFAULT,
}

get_screen_saver_cookie_t :: struct {
  sequence : _c.uint,
}

get_screen_saver_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
}

get_screen_saver_reply_t :: struct {
  response_type : u8,
  pad0 : u8,
  sequence : u16,
  length : u32,
  timeout : u16,
  interval : u16,
  prefer_blanking : u8,
  allow_exposures : u8,
  pad1 : [18]u8,
}

set_screen_saver_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  timeout : i16,
  interval : i16,
  prefer_blanking : u8,
  allow_exposures : u8,
}

host_mode_t :: enum {
  HOST_MODE_INSERT,
  HOST_MODE_DELETE,
}

family_t :: enum _c.int {
  FAMILY_INTERNET = 0,
  FAMILY_DECNET = 1,
  FAMILY_CHAOS = 2,
  FAMILY_SERVER_INTERPRETED = 5,
  FAMILY_INTERNET_6 = 6,
}

change_hosts_request_t :: struct {
  major_opcode : u8,
  mode : host_mode_t,
  length : u16,
  family : family_t,
  pad0 : u8,
  address_len : u16,
}

host_t :: struct {
  family : u8,
  pad0 : u8,
  address_len : u16,
}

host_iterator_t :: struct {
  data : ^host_t,
  rem : _c.int,
  index : _c.int,
}

list_hosts_cookie_t :: struct {
    sequence : _c.uint,
}

list_hosts_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
}

list_hosts_reply_t :: struct {
    response_type : u8,
             mode : u8,
         sequence : u16,
           length : u32,
        hosts_len : u16,
             pad0 : [22]u8,
}

access_control_t :: enum _c.int {
     ACCESS_CONTROL_DISABLE,
     ACCESS_CONTROL_ENABLE,
}

set_access_control_request_t :: struct {
  major_opcode : u8,
  mode : access_control_t,
  length : u16,
}

close_down_t :: enum _c.int {
         CLOSE_DOWN_DESTROY_ALL,
    CLOSE_DOWN_RETAIN_PERMANENT,
    CLOSE_DOWN_RETAIN_TEMPORARY,
}

set_close_down_mode_request_t :: struct {
  major_opcode : u8,
  mode : close_down_t,
  length : u16,
}

kill_t :: enum _c.int {
  KILL_ALL_TEMPORARY,
}

kill_client_request_t :: struct {
    major_opcode : u8,
    pad0 : u8,
    length : u16,
    resource : u32,
}

rotate_properties_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
  window : window_t,
  atoms_len : u16,
  delta : i16,
}

screen_saver_t :: enum _c.int {
     SCREEN_SAVER_RESET,
    SCREEN_SAVER_ACTIVE,
}

force_screen_saver_request_t :: struct {
  major_opcode : u8,
  mode : screen_saver_t,
  length : u16,
}

mapping_status_t :: enum _c.int {
    MAPPING_STATUS_SUCCESS,
    MAPPING_STATUS_BUSY,
    MAPPING_STATUS_FAILURE,
}

set_pointer_mapping_cookie_t :: struct {
    sequence : _c.uint,
}

set_pointer_mapping_request_t :: struct {
  major_opcode : u8,
  map_len : u8,
  length : u16,
}

set_pointer_mapping_reply_t :: struct {
  response_type : u8,
  status : u8,
  sequence : u16,
  length : u32,
}

get_pointer_mapping_cookie_t :: struct {
    sequence : _c.uint,
}

get_pointer_mapping_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
}

get_pointer_mapping_reply_t :: struct {
  response_type : u8,
  map_len : u8,
  sequence : u16,
  length : u32,
  pad0 : [24]u8,
}

map_index_t :: enum _c.int {
      MAP_INDEX_SHIFT,
       MAP_INDEX_LOCK,
    MAP_INDEX_CONTROL,
          MAP_INDEX_1,
          MAP_INDEX_2,
          MAP_INDEX_3,
          MAP_INDEX_4,
          MAP_INDEX_5,
}

set_modifier_mapping_cookie_t :: struct {
    sequence : _c.uint,
}

set_modifier_mapping_request_t :: struct {
    major_opcode : u8,
          map_len : u8,
          length : u16,
}

set_modifier_mapping_reply_t :: struct {
  response_type : u8,
  status : u8,
  sequence : u16,
  length : u32,
}

get_modifier_mapping_cookie_t :: struct {
    sequence : _c.uint,
}

get_modifier_mapping_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
}

get_modifier_mapping_reply_t :: struct {
            response_type : u8,
    keycodes_per_modifier : u8,
                 sequence : u16,
                   length : u32,
                     pad0 : [24]u8,
}

no_operation_request_t :: struct {
  major_opcode : u8,
  pad0 : u8,
  length : u16,
}

/***** libxcb *****/
foreign import libxcb "system:libxcb.so"

/* Procedures */
@(link_prefix="xcb_")
@(default_calling_convention="c")
foreign libxcb {
  /**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_char2b_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_char2b_t)
 */
char2b_next :: proc(i : ^char2b_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_char2b_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
char2b_end :: proc(i : char2b_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_window_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(window_t)
 */
window_next :: proc(i : ^window_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_window_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
window_end :: proc(i : window_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_pixmap_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(pixmap_t)
 */
pixmap_next :: proc(i : ^pixmap_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_pixmap_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
pixmap_end :: proc(i : pixmap_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_cursor_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(cursor_t)
 */
cursor_next :: proc(i : ^cursor_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_cursor_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
cursor_end :: proc(i : cursor_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_font_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(font_t)
 */
font_next :: proc(i : ^font_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_font_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
font_end :: proc(i : font_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_gcontext_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_gcontext_t)
 */
gcontext_next :: proc(i : ^gcontext_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_gcontext_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
gcontext_end :: proc(i : gcontext_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_colormap_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(colormap_t)
 */
colormap_next :: proc(i : ^colormap_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_colormap_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
colormap_end :: proc(i : colormap_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_atom_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(atom_t)
 */
atom_next :: proc(i : ^atom_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_atom_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
atom_end :: proc(i : atom_iterator_t) -> generic_iterator_t ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_drawable_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
drawable_end :: proc(i : drawable_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_fontable_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(fontable_t)
 */
fontable_next :: proc(i : ^fontable_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_fontable_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
fontable_end :: proc(i : fontable_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_bool32_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_bool32_t)
 */
bool32_next :: proc(i : ^bool32_iterator_t) ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_drawable_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(drawable_t)
 */
drawable_next :: proc(i : ^drawable_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_bool32_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
bool32_end :: proc(i : bool32_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_rectangle_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_rectangle_t)
 */
rectangle_next :: proc(i : ^rectangle_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_visualtype_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
visualtype_end :: proc(i : visualtype_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_visualid_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(visualid_t)
 */
visualid_next :: proc(i : ^visualid_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_visualid_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
visualid_end :: proc(i : visualid_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_timestamp_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(timestamp_t)
 */
timestamp_next :: proc(i : ^timestamp_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_timestamp_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
timestamp_end :: proc(i : timestamp_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_keysym_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_keysym_t)
 */
keysym_next :: proc(i : ^keysym_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_keysym_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
keysym_end :: proc(i : keysym_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_keycode_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(keycode_t)
 */
keycode_next :: proc(i : ^keycode_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_keycode_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
keycode_end :: proc(i : keycode_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_keycode32_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_keycode32_t)
 */
keycode32_next :: proc(i : ^keycode32_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_keycode32_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
keycode32_end :: proc(i : keycode32_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_button_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(button_t)
 */
button_next :: proc(i : ^button_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_button_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
button_end :: proc(i : button_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_point_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_point_t)
 */
point_next :: proc(i : ^point_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_point_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
point_end :: proc(i : point_iterator_t) -> generic_iterator_t ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_rectangle_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
rectangle_end :: proc(i : rectangle_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_arc_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_arc_t)
 */
arc_next :: proc(i : ^arc_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_arc_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
arc_end :: proc(i : arc_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_format_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_format_t)
 */
format_next :: proc(i : ^format_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_format_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
format_end :: proc(i : format_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_visualtype_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_visualtype_t)
 */
visualtype_next :: proc(i : ^visualtype_iterator_t) ---
depth_sizeof :: proc(_buffer : rawptr) -> _c.int ---
depth_visuals_length :: proc(R : ^depth_t) -> _c.int ---
depth_visuals_iterator :: proc(R : ^depth_t) -> visualtype_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_depth_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_depth_t)
 */
depth_next :: proc(i : ^depth_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_depth_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
depth_end :: proc(i : depth_iterator_t) -> generic_iterator_t ---
screen_sizeof :: proc(_buffer : rawptr) -> _c.int ---
screen_allowed_depths_length :: proc(R : ^screen_t) -> _c.int ---
screen_allowed_depths_iterator :: proc(R : ^screen_t) -> depth_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_screen_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_screen_t)
 */
screen_next :: proc(i : ^screen_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_screen_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
screen_end :: proc(i : screen_iterator_t) -> generic_iterator_t ---
setup_request_sizeof :: proc(_buffer : rawptr) -> _c.int ---
setup_request_authorization_protocol_name_length :: proc(R : ^setup_request_t) -> _c.int ---
setup_request_authorization_protocol_name_end :: proc(R : ^setup_request_t) -> generic_iterator_t ---
setup_request_authorization_protocol_data_length :: proc(R : ^setup_request_t) -> _c.int ---
setup_request_authorization_protocol_data_end :: proc(R : ^setup_request_t) -> generic_iterator_t ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_request_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
setup_request_end :: proc(i : setup_request_iterator_t) -> generic_iterator_t ---
setup_failed_sizeof :: proc(_buffer : rawptr) -> _c.int ---
setup_failed_reason_length :: proc(R : ^setup_failed_t) -> _c.int ---
setup_failed_reason_end :: proc(R : ^setup_failed_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_failed_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_failed_t)
 */
setup_failed_next :: proc(i : ^setup_failed_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_failed_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
setup_failed_end :: proc(i : setup_failed_iterator_t) -> generic_iterator_t ---
setup_authenticate_sizeof :: proc(_buffer : rawptr) -> _c.int ---
setup_authenticate_reason_length :: proc(R : ^setup_authenticate_t) -> _c.int ---
setup_authenticate_reason_end :: proc(R : ^setup_authenticate_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_request_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_request_t)
 */
setup_request_next :: proc(i : ^setup_request_iterator_t) ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_authenticate_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_authenticate_t)
 */
setup_authenticate_next :: proc(i : ^setup_authenticate_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_authenticate_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
setup_authenticate_end :: proc(i : setup_authenticate_iterator_t) -> generic_iterator_t ---
setup_sizeof :: proc(_buffer : rawptr) -> _c.int ---
setup_vendor_length :: proc(R : ^setup_t) -> _c.int ---
setup_vendor_end :: proc(R : ^setup_t) -> generic_iterator_t ---
setup_pixmap_formats_length :: proc(R : ^setup_t) -> _c.int ---
setup_pixmap_formats_iterator :: proc(R : ^setup_t) -> format_iterator_t ---
setup_roots_length :: proc(R : ^setup_t) -> _c.int ---
setup_roots_iterator :: proc(R : ^setup_t) -> screen_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_t)
 */
setup_next :: proc(i : ^setup_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
setup_end :: proc(i : setup_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_client_message_data_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(client_message_data_t)
 */
client_message_data_next :: proc(i : ^client_message_data_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_client_message_data_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
client_message_data_end :: proc(i : client_message_data_iterator_t) -> generic_iterator_t ---
create_window_value_list_serialize :: proc(_buffer : ^rawptr, value_mask : u32, _aux : ^create_window_value_list_t) -> _c.int ---
create_window_value_list_unpack :: proc(_buffer : rawptr, value_mask : u32, _aux : ^create_window_value_list_t) -> _c.int ---
create_window_value_list_sizeof :: proc(_buffer : rawptr, value_mask : u32) -> _c.int ---
create_window_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief Creates a window
 *
 * @param c The connection
 * @param depth Specifies the new window's depth (TODO: what unit?).
 * \n
 * The special value `XCB_COPY_FROM_PARENT` means the depth is taken from the
 * \a parent window.
 * @param wid The ID with which you will refer to the new window, created by
 * `xcb_generate_id`.
 * @param parent The parent window of the new window.
 * @param x The X coordinate of the new window.
 * @param y The Y coordinate of the new window.
 * @param width The width of the new window.
 * @param height The height of the new window.
 * @param border_width TODO:
 * \n
 * Must be zero if the `class` is `InputOnly` or a `xcb_match_error_t` occurs.
 * @param _class A bitmask of #xcb_window_class_t values.
 * @param _class \n
 * @param visual Specifies the id for the new window's visual.
 * \n
 * The special value `XCB_COPY_FROM_PARENT` means the visual is taken from the
 * \a parent window.
 * @param value_mask A bitmask of #xcb_cw_t values.
 * @return A cookie
 *
 * Creates an unmapped window as child of the specified \a parent window. A
 * CreateNotify event will be generated. The new window is placed on top in the
 * stacking order with respect to siblings.
 * 
 * The coordinate system has the X axis horizontal and the Y axis vertical with
 * the origin [0, 0] at the upper-left corner. Coordinates are integral, in terms
 * of pixels, and coincide with pixel centers. Each window and pixmap has its own
 * coordinate system. For a window, the origin is inside the border at the inside,
 * upper-left corner.
 * 
 * The created window is not yet displayed (mapped), call `xcb_map_window` to
 * display it.
 * 
 * The created window will initially use the same cursor as its parent.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
create_window_checked :: proc(c : ^connection_t, depth : u8, wid : window_t, parent : window_t, x : i16, y : i16, width : u16, height : u16, border_width : u16, _class : u16, visual : visualid_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---
/**
 * @brief Creates a window
 *
 * @param c The connection
 * @param depth Specifies the new window's depth (TODO: what unit?).
 * \n
 * The special value `XCB_COPY_FROM_PARENT` means the depth is taken from the
 * \a parent window.
 * @param wid The ID with which you will refer to the new window, created by
 * `xcb_generate_id`.
 * @param parent The parent window of the new window.
 * @param x The X coordinate of the new window.
 * @param y The Y coordinate of the new window.
 * @param width The width of the new window.
 * @param height The height of the new window.
 * @param border_width TODO:
 * \n
 * Must be zero if the `class` is `InputOnly` or a `xcb_match_error_t` occurs.
 * @param _class A bitmask of #xcb_window_class_t values.
 * @param _class \n
 * @param visual Specifies the id for the new window's visual.
 * \n
 * The special value `XCB_COPY_FROM_PARENT` means the visual is taken from the
 * \a parent window.
 * @param value_mask A bitmask of #xcb_cw_t values.
 * @return A cookie
 *
 * Creates an unmapped window as child of the specified \a parent window. A
 * CreateNotify event will be generated. The new window is placed on top in the
 * stacking order with respect to siblings.
 * 
 * The coordinate system has the X axis horizontal and the Y axis vertical with
 * the origin [0, 0] at the upper-left corner. Coordinates are integral, in terms
 * of pixels, and coincide with pixel centers. Each window and pixmap has its own
 * coordinate system. For a window, the origin is inside the border at the inside,
 * upper-left corner.
 * 
 * The created window is not yet displayed (mapped), call `xcb_map_window` to
 * display it.
 * 
 * The created window will initially use the same cursor as its parent.
 *
 */
create_window :: proc(c : ^connection_t, depth : u8, wid : window_t, parent : window_t, x : i16, y : i16, width : u16, height : u16, border_width : u16, _class : u16, visual : visualid_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---
/**
 * @brief Creates a window
 *
 * @param c The connection
 * @param depth Specifies the new window's depth (TODO: what unit?).
 * \n
 * The special value `XCB_COPY_FROM_PARENT` means the depth is taken from the
 * \a parent window.
 * @param wid The ID with which you will refer to the new window, created by
 * `xcb_generate_id`.
 * @param parent The parent window of the new window.
 * @param x The X coordinate of the new window.
 * @param y The Y coordinate of the new window.
 * @param width The width of the new window.
 * @param height The height of the new window.
 * @param border_width TODO:
 * \n
 * Must be zero if the `class` is `InputOnly` or a `xcb_match_error_t` occurs.
 * @param _class A bitmask of #xcb_window_class_t values.
 * @param _class \n
 * @param visual Specifies the id for the new window's visual.
 * \n
 * The special value `XCB_COPY_FROM_PARENT` means the visual is taken from the
 * \a parent window.
 * @param value_mask A bitmask of #xcb_cw_t values.
 * @return A cookie
 *
 * Creates an unmapped window as child of the specified \a parent window. A
 * CreateNotify event will be generated. The new window is placed on top in the
 * stacking order with respect to siblings.
 * 
 * The coordinate system has the X axis horizontal and the Y axis vertical with
 * the origin [0, 0] at the upper-left corner. Coordinates are integral, in terms
 * of pixels, and coincide with pixel centers. Each window and pixmap has its own
 * coordinate system. For a window, the origin is inside the border at the inside,
 * upper-left corner.
 * 
 * The created window is not yet displayed (mapped), call `xcb_map_window` to
 * display it.
 * 
 * The created window will initially use the same cursor as its parent.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
create_window_aux_checked :: proc(c : ^connection_t, depth : u8, wid : window_t, parent : window_t, x : i16, y : i16, width : u16, height : u16, border_width : u16, _class : u16, visual : visualid_t, value_mask : u32, value_list : ^create_window_value_list_t) -> void_cookie_t ---
/**
 * @brief Creates a window
 *
 * @param c The connection
 * @param depth Specifies the new window's depth (TODO: what unit?).
 * \n
 * The special value `XCB_COPY_FROM_PARENT` means the depth is taken from the
 * \a parent window.
 * @param wid The ID with which you will refer to the new window, created by
 * `xcb_generate_id`.
 * @param parent The parent window of the new window.
 * @param x The X coordinate of the new window.
 * @param y The Y coordinate of the new window.
 * @param width The width of the new window.
 * @param height The height of the new window.
 * @param border_width TODO:
 * \n
 * Must be zero if the `class` is `InputOnly` or a `xcb_match_error_t` occurs.
 * @param _class A bitmask of #xcb_window_class_t values.
 * @param _class \n
 * @param visual Specifies the id for the new window's visual.
 * \n
 * The special value `XCB_COPY_FROM_PARENT` means the visual is taken from the
 * \a parent window.
 * @param value_mask A bitmask of #xcb_cw_t values.
 * @return A cookie
 *
 * Creates an unmapped window as child of the specified \a parent window. A
 * CreateNotify event will be generated. The new window is placed on top in the
 * stacking order with respect to siblings.
 * 
 * The coordinate system has the X axis horizontal and the Y axis vertical with
 * the origin [0, 0] at the upper-left corner. Coordinates are integral, in terms
 * of pixels, and coincide with pixel centers. Each window and pixmap has its own
 * coordinate system. For a window, the origin is inside the border at the inside,
 * upper-left corner.
 * 
 * The created window is not yet displayed (mapped), call `xcb_map_window` to
 * display it.
 * 
 * The created window will initially use the same cursor as its parent.
 *
 */
create_window_aux :: proc(c : ^connection_t, depth : u8, wid : window_t, parent : window_t, x : i16, y : i16, width : u16, height : u16, border_width : u16, _class : u16, visual : visualid_t, value_mask : u32, value_list : ^create_window_value_list_t) -> void_cookie_t ---
change_window_attributes_value_list_serialize :: proc(_buffer : ^rawptr, value_mask : u32, _aux : ^change_window_attributes_value_list_t) -> _c.int ---
change_window_attributes_value_list_unpack :: proc(_buffer : rawptr, value_mask : u32, _aux : ^change_window_attributes_value_list_t) -> _c.int ---
change_window_attributes_value_list_sizeof :: proc(_buffer : rawptr, value_mask : u32) -> _c.int ---
change_window_attributes_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief change window attributes
 *
 * @param c The connection
 * @param window The window to change.
 * @param value_mask A bitmask of #xcb_cw_t values.
 * @param value_mask \n
 * @param value_list Values for each of the attributes specified in the bitmask \a value_mask. The
 * order has to correspond to the order of possible \a value_mask bits. See the
 * example.
 * @return A cookie
 *
 * Changes the attributes specified by \a value_mask for the specified \a window.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
change_window_attributes_checked :: proc(c : ^connection_t, window : window_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---
/**
 * @brief change window attributes
 *
 * @param c The connection
 * @param window The window to change.
 * @param value_mask A bitmask of #xcb_cw_t values.
 * @param value_mask \n
 * @param value_list Values for each of the attributes specified in the bitmask \a value_mask. The
 * order has to correspond to the order of possible \a value_mask bits. See the
 * example.
 * @return A cookie
 *
 * Changes the attributes specified by \a value_mask for the specified \a window.
 *
 */
change_window_attributes :: proc(c : ^connection_t, window : window_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---
/**
 * @brief change window attributes
 *
 * @param c The connection
 * @param window The window to change.
 * @param value_mask A bitmask of #xcb_cw_t values.
 * @param value_mask \n
 * @param value_list Values for each of the attributes specified in the bitmask \a value_mask. The
 * order has to correspond to the order of possible \a value_mask bits. See the
 * example.
 * @return A cookie
 *
 * Changes the attributes specified by \a value_mask for the specified \a window.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
change_window_attributes_aux_checked :: proc(c : ^connection_t, window : window_t, value_mask : u32, value_list : ^change_window_attributes_value_list_t) -> void_cookie_t ---
/**
 * @brief change window attributes
 *
 * @param c The connection
 * @param window The window to change.
 * @param value_mask A bitmask of #xcb_cw_t values.
 * @param value_mask \n
 * @param value_list Values for each of the attributes specified in the bitmask \a value_mask. The
 * order has to correspond to the order of possible \a value_mask bits. See the
 * example.
 * @return A cookie
 *
 * Changes the attributes specified by \a value_mask for the specified \a window.
 *
 */
change_window_attributes_aux :: proc(c : ^connection_t, window : window_t, value_mask : u32, value_list : ^change_window_attributes_value_list_t) -> void_cookie_t ---
/**
 * @brief Gets window attributes
 *
 * @param c The connection
 * @param window The window to get the attributes from.
 * @return A cookie
 *
 * Gets the current attributes for the specified \a window.
 *
 */
get_window_attributes :: proc(c : ^connection_t, window : window_t) -> get_window_attributes_cookie_t ---
/**
 * @brief Gets window attributes
 *
 * @param c The connection
 * @param window The window to get the attributes from.
 * @return A cookie
 *
 * Gets the current attributes for the specified \a window.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_window_attributes_unchecked :: proc(c : ^connection_t, window : window_t) -> get_window_attributes_cookie_t ---
/**
 * @brief Destroys a window
 *
 * @param c The connection
 * @param window The window to destroy.
 * @return A cookie
 *
 * Destroys the specified window and all of its subwindows. A DestroyNotify event
 * is generated for each destroyed window (a DestroyNotify event is first generated
 * for any given window's inferiors). If the window was mapped, it will be
 * automatically unmapped before destroying.
 * 
 * Calling DestroyWindow on the root window will do nothing.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
destroy_window_checked :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---
/**
 * @brief Destroys a window
 *
 * @param c The connection
 * @param window The window to destroy.
 * @return A cookie
 *
 * Destroys the specified window and all of its subwindows. A DestroyNotify event
 * is generated for each destroyed window (a DestroyNotify event is first generated
 * for any given window's inferiors). If the window was mapped, it will be
 * automatically unmapped before destroying.
 * 
 * Calling DestroyWindow on the root window will do nothing.
 *
 */
destroy_window :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
destroy_subwindows_checked :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---
/**
 * @brief Get current window geometry
 *
 * @param c The connection
 * @param drawable The drawable (`Window` or `Pixmap`) of which the geometry will be received.
 * @return A cookie
 *
 * Gets the current geometry of the specified drawable (either `Window` or `Pixmap`).
 *
 */
get_geometry :: proc(c : ^connection_t, drawable : drawable_t) -> get_geometry_cookie_t ---
/**
 * @brief Get current window geometry
 *
 * @param c The connection
 * @param drawable The drawable (`Window` or `Pixmap`) of which the geometry will be received.
 * @return A cookie
 *
 * Gets the current geometry of the specified drawable (either `Window` or `Pixmap`).
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_geometry_unchecked :: proc(c : ^connection_t, drawable : drawable_t) -> get_geometry_cookie_t ---
intern_atom_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
destroy_subwindows :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---
/**
 * @brief Changes a client's save set
 *
 * @param c The connection
 * @param mode A bitmask of #xcb_set_mode_t values.
 * @param mode Insert to add the specified window to the save set or Delete to delete it from the save set.
 * @param window The window to add or delete to/from your save set.
 * @return A cookie
 *
 * TODO: explain what the save set is for.
 * 
 * This function either adds or removes the specified window to the client's (your
 * application's) save set.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
change_save_set_checked :: proc(c : ^connection_t, mode : u8, window : window_t) -> void_cookie_t ---
/**
 * @brief Changes a client's save set
 *
 * @param c The connection
 * @param mode A bitmask of #xcb_set_mode_t values.
 * @param mode Insert to add the specified window to the save set or Delete to delete it from the save set.
 * @param window The window to add or delete to/from your save set.
 * @return A cookie
 *
 * TODO: explain what the save set is for.
 * 
 * This function either adds or removes the specified window to the client's (your
 * application's) save set.
 *
 */
change_save_set :: proc(c : ^connection_t, mode : u8, window : window_t) -> void_cookie_t ---
/**
 * @brief Reparents a window
 *
 * @param c The connection
 * @param window The window to reparent.
 * @param parent The new parent of the window.
 * @param x The X position of the window within its new parent.
 * @param y The Y position of the window within its new parent.
 * @return A cookie
 *
 * Makes the specified window a child of the specified parent window. If the
 * window is mapped, it will automatically be unmapped before reparenting and
 * re-mapped after reparenting. The window is placed in the stacking order on top
 * with respect to sibling windows.
 * 
 * After reparenting, a ReparentNotify event is generated.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
reparent_window_checked :: proc(c : ^connection_t, window : window_t, parent : window_t, x : i16, y : i16) -> void_cookie_t ---
/**
 * @brief Reparents a window
 *
 * @param c The connection
 * @param window The window to reparent.
 * @param parent The new parent of the window.
 * @param x The X position of the window within its new parent.
 * @param y The Y position of the window within its new parent.
 * @return A cookie
 *
 * Makes the specified window a child of the specified parent window. If the
 * window is mapped, it will automatically be unmapped before reparenting and
 * re-mapped after reparenting. The window is placed in the stacking order on top
 * with respect to sibling windows.
 * 
 * After reparenting, a ReparentNotify event is generated.
 *
 */
reparent_window :: proc(c : ^connection_t, window : window_t, parent : window_t, x : i16, y : i16) -> void_cookie_t ---
/**
 * @brief Makes a window visible
 *
 * @param c The connection
 * @param window The window to make visible.
 * @return A cookie
 *
 * Maps the specified window. This means making the window visible (as long as its
 * parent is visible).
 * 
 * This MapWindow request will be translated to a MapRequest request if a window
 * manager is running. The window manager then decides to either map the window or
 * not. Set the override-redirect window attribute to true if you want to bypass
 * this mechanism.
 * 
 * If the window manager decides to map the window (or if no window manager is
 * running), a MapNotify event is generated.
 * 
 * If the window becomes viewable and no earlier contents for it are remembered,
 * the X server tiles the window with its background. If the window's background
 * is undefined, the existing screen contents are not altered, and the X server
 * generates zero or more Expose events.
 * 
 * If the window type is InputOutput, an Expose event will be generated when the
 * window becomes visible. The normal response to an Expose event should be to
 * repaint the window.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
map_window_checked :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---
/**
 * @brief Makes a window visible
 *
 * @param c The connection
 * @param window The window to make visible.
 * @return A cookie
 *
 * Maps the specified window. This means making the window visible (as long as its
 * parent is visible).
 * 
 * This MapWindow request will be translated to a MapRequest request if a window
 * manager is running. The window manager then decides to either map the window or
 * not. Set the override-redirect window attribute to true if you want to bypass
 * this mechanism.
 * 
 * If the window manager decides to map the window (or if no window manager is
 * running), a MapNotify event is generated.
 * 
 * If the window becomes viewable and no earlier contents for it are remembered,
 * the X server tiles the window with its background. If the window's background
 * is undefined, the existing screen contents are not altered, and the X server
 * generates zero or more Expose events.
 * 
 * If the window type is InputOutput, an Expose event will be generated when the
 * window becomes visible. The normal response to an Expose event should be to
 * repaint the window.
 *
 */
map_window :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
map_subwindows_checked :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
map_subwindows :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---
/**
 * @brief Makes a window invisible
 *
 * @param c The connection
 * @param window The window to make invisible.
 * @return A cookie
 *
 * Unmaps the specified window. This means making the window invisible (and all
 * its child windows).
 * 
 * Unmapping a window leads to the `UnmapNotify` event being generated. Also,
 * `Expose` events are generated for formerly obscured windows.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
unmap_window_checked :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---
/**
 * @brief Makes a window invisible
 *
 * @param c The connection
 * @param window The window to make invisible.
 * @return A cookie
 *
 * Unmaps the specified window. This means making the window invisible (and all
 * its child windows).
 * 
 * Unmapping a window leads to the `UnmapNotify` event being generated. Also,
 * `Expose` events are generated for formerly obscured windows.
 *
 */
unmap_window :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
unmap_subwindows_checked :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
unmap_subwindows :: proc(c : ^connection_t, window : window_t) -> void_cookie_t ---
configure_window_value_list_serialize :: proc(_buffer : ^rawptr, value_mask : u16, _aux : ^configure_window_value_list_t) -> _c.int ---
configure_window_value_list_unpack :: proc(_buffer : rawptr, value_mask : u16, _aux : ^configure_window_value_list_t) -> _c.int ---
configure_window_value_list_sizeof :: proc(_buffer : rawptr, value_mask : u16) -> _c.int ---
configure_window_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief Configures window attributes
 *
 * @param c The connection
 * @param window The window to configure.
 * @param value_mask Bitmask of attributes to change.
 * @param value_list New values, corresponding to the attributes in value_mask. The order has to
 * correspond to the order of possible \a value_mask bits. See the example.
 * @return A cookie
 *
 * Configures a window's size, position, border width and stacking order.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
configure_window_checked :: proc(c : ^connection_t, window : window_t, value_mask : u16, value_list : rawptr) -> void_cookie_t ---
/**
 * @brief Configures window attributes
 *
 * @param c The connection
 * @param window The window to configure.
 * @param value_mask Bitmask of attributes to change.
 * @param value_list New values, corresponding to the attributes in value_mask. The order has to
 * correspond to the order of possible \a value_mask bits. See the example.
 * @return A cookie
 *
 * Configures a window's size, position, border width and stacking order.
 *
 */
configure_window :: proc(c : ^connection_t, window : window_t, value_mask : u16, value_list : rawptr) -> void_cookie_t ---
/**
 * @brief Configures window attributes
 *
 * @param c The connection
 * @param window The window to configure.
 * @param value_mask Bitmask of attributes to change.
 * @param value_list New values, corresponding to the attributes in value_mask. The order has to
 * correspond to the order of possible \a value_mask bits. See the example.
 * @return A cookie
 *
 * Configures a window's size, position, border width and stacking order.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
configure_window_aux_checked :: proc(c : ^connection_t, window : window_t, value_mask : u16, value_list : ^configure_window_value_list_t) -> void_cookie_t ---
/**
 * @brief Configures window attributes
 *
 * @param c The connection
 * @param window The window to configure.
 * @param value_mask Bitmask of attributes to change.
 * @param value_list New values, corresponding to the attributes in value_mask. The order has to
 * correspond to the order of possible \a value_mask bits. See the example.
 * @return A cookie
 *
 * Configures a window's size, position, border width and stacking order.
 *
 */
configure_window_aux :: proc(c : ^connection_t, window : window_t, value_mask : u16, value_list : ^configure_window_value_list_t) -> void_cookie_t ---
/**
 * @brief Change window stacking order
 *
 * @param c The connection
 * @param direction A bitmask of #xcb_circulate_t values.
 * @param direction \n
 * @param window The window to raise/lower (depending on \a direction).
 * @return A cookie
 *
 * If \a direction is `XCB_CIRCULATE_RAISE_LOWEST`, the lowest mapped child (if
 * any) will be raised to the top of the stack.
 * 
 * If \a direction is `XCB_CIRCULATE_LOWER_HIGHEST`, the highest mapped child will
 * be lowered to the bottom of the stack.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
circulate_window_checked :: proc(c : ^connection_t, direction : u8, window : window_t) -> void_cookie_t ---
/**
 * @brief Change window stacking order
 *
 * @param c The connection
 * @param direction A bitmask of #xcb_circulate_t values.
 * @param direction \n
 * @param window The window to raise/lower (depending on \a direction).
 * @return A cookie
 *
 * If \a direction is `XCB_CIRCULATE_RAISE_LOWEST`, the lowest mapped child (if
 * any) will be raised to the top of the stack.
 * 
 * If \a direction is `XCB_CIRCULATE_LOWER_HIGHEST`, the highest mapped child will
 * be lowered to the bottom of the stack.
 *
 */
circulate_window :: proc(c : ^connection_t, direction : u8, window : window_t) -> void_cookie_t ---
query_tree_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief query the window tree
 *
 * @param c The connection
 * @param window The \a window to query.
 * @return A cookie
 *
 * Gets the root window ID, parent window ID and list of children windows for the
 * specified \a window. The children are listed in bottom-to-top stacking order.
 *
 */
query_tree :: proc(c : ^connection_t, window : window_t) -> query_tree_cookie_t ---
/**
 * @brief query the window tree
 *
 * @param c The connection
 * @param window The \a window to query.
 * @return A cookie
 *
 * Gets the root window ID, parent window ID and list of children windows for the
 * specified \a window. The children are listed in bottom-to-top stacking order.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
query_tree_unchecked :: proc(c : ^connection_t, window : window_t) -> query_tree_cookie_t ---
query_tree_children_length :: proc(R : ^query_tree_reply_t) -> _c.int ---
query_tree_children_end :: proc(R : ^query_tree_reply_t) -> generic_iterator_t ---
/**
 * @brief Get atom identifier by name
 *
 * @param c The connection
 * @param only_if_exists Return a valid atom id only if the atom already exists.
 * @param name_len The length of the following \a name.
 * @param name The name of the atom.
 * @return A cookie
 *
 * Retrieves the identifier (atom_t TODO) for the atom with the specified
 * name. Atoms are used in protocols like EWMH, for example to store window titles
 * (`_NET_WM_NAME` atom) as property of a window.
 * 
 * If \a only_if_exists is 0, the atom will be created if it does not already exist.
 * If \a only_if_exists is 1, `XCB_ATOM_NONE` will be returned if the atom does
 * not yet exist.
 *
 */
intern_atom :: proc(c : ^connection_t, only_if_exists : u8, name_len : u16, name : cstring) -> intern_atom_cookie_t ---
/**
 * @brief Get atom identifier by name
 *
 * @param c The connection
 * @param only_if_exists Return a valid atom id only if the atom already exists.
 * @param name_len The length of the following \a name.
 * @param name The name of the atom.
 * @return A cookie
 *
 * Retrieves the identifier (atom_t TODO) for the atom with the specified
 * name. Atoms are used in protocols like EWMH, for example to store window titles
 * (`_NET_WM_NAME` atom) as property of a window.
 * 
 * If \a only_if_exists is 0, the atom will be created if it does not already exist.
 * If \a only_if_exists is 1, `XCB_ATOM_NONE` will be returned if the atom does
 * not yet exist.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
intern_atom_unchecked :: proc(c : ^connection_t, only_if_exists : u8, name_len : u16, name : cstring) -> intern_atom_cookie_t ---
create_window_value_list :: proc(R : ^create_window_request_t) -> rawptr ---
change_window_attributes_value_list :: proc(R : ^change_window_attributes_request_t) -> rawptr ---
setup_pixmap_formats :: proc(R : ^setup_t) -> ^format_t ---
configure_window_value_list :: proc(R : ^configure_window_request_t) -> rawptr ---
get_atom_name_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
get_atom_name :: proc(c : ^connection_t, atom : atom_t) -> get_atom_name_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_atom_name_unchecked :: proc(c : ^connection_t, atom : atom_t) -> get_atom_name_cookie_t ---
get_atom_name_name_length :: proc(R : ^get_atom_name_reply_t) -> _c.int ---
setup_failed_reason :: proc(R : ^setup_failed_t) -> cstring ---
get_atom_name_name_end :: proc(R : ^get_atom_name_reply_t) -> generic_iterator_t ---
setup_vendor :: proc(R : ^setup_t) -> cstring ---
depth_visuals :: proc(R : ^depth_t) -> ^visualtype_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_geometry_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_geometry_reply :: proc(c : ^connection_t, cookie : get_geometry_cookie_t, e : ^^generic_error_t) -> ^get_geometry_reply_t ---
query_tree_children :: proc(R : ^query_tree_reply_t) -> ^window_t ---
change_property_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief Changes a window property
 *
 * @param c The connection
 * @param mode A bitmask of #prop_mode_t values.
 * @param mode \n
 * @param window The window whose property you want to change.
 * @param property The property you want to change (an atom).
 * @param type The type of the property you want to change (an atom).
 * @param format Specifies whether the data should be viewed as a list of 8-bit, 16-bit or
 * 32-bit quantities. Possible values are 8, 16 and 32. This information allows
 * the X server to correctly perform byte-swap operations as necessary.
 * @param data_len Specifies the number of elements (see \a format).
 * @param data The property data.
 * @return A cookie
 *
 * Sets or updates a property on the specified \a window. Properties are for
 * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
 * Protocols such as EWMH also use properties - for example EWMH defines the
 * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
change_property_checked :: proc(c : ^connection_t, mode : u8, window : window_t, property : atom_t, type : atom_t, format : u8, data_len : u32, data : rawptr) -> void_cookie_t ---
setup_request_authorization_protocol_data :: proc(R : ^setup_request_t) -> cstring ---
setup_request_authorization_protocol_name :: proc(R : ^setup_request_t) -> cstring ---
setup_authenticate_reason :: proc(R : ^setup_authenticate_t) -> cstring ---
get_atom_name_name :: proc(R : ^get_atom_name_reply_t) -> cstring ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_tree_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
query_tree_reply :: proc(c : ^connection_t, cookie : query_tree_cookie_t, e : ^^generic_error_t) -> ^query_tree_reply_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_window_attributes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_window_attributes_reply :: proc(c : ^connection_t, cookie : get_window_attributes_cookie_t, e : ^^generic_error_t) -> ^get_window_attributes_reply_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_intern_atom_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
intern_atom_reply :: proc(c : ^connection_t, cookie : intern_atom_cookie_t, e : ^^generic_error_t) -> ^intern_atom_reply_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_atom_name_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_atom_name_reply :: proc(c : ^connection_t, cookie : get_atom_name_cookie_t, e : ^^generic_error_t) -> ^get_atom_name_reply_t ---
/**
 * @brief Changes a window property
 *
 * @param c The connection
 * @param mode A bitmask of #prop_mode_t values.
 * @param mode \n
 * @param window The window whose property you want to change.
 * @param property The property you want to change (an atom).
 * @param type The type of the property you want to change (an atom).
 * @param format Specifies whether the data should be viewed as a list of 8-bit, 16-bit or
 * 32-bit quantities. Possible values are 8, 16 and 32. This information allows
 * the X server to correctly perform byte-swap operations as necessary.
 * @param data_len Specifies the number of elements (see \a format).
 * @param data The property data.
 * @return A cookie
 *
 * Sets or updates a property on the specified \a window. Properties are for
 * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
 * Protocols such as EWMH also use properties - for example EWMH defines the
 * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
 *
 */
change_property :: proc(c : ^connection_t, mode : u8, window : window_t, property : atom_t, type : atom_t, format : u8, data_len : u32, data : rawptr) -> void_cookie_t ---
change_property_data_length :: proc(R : ^change_property_request_t) -> _c.int ---
change_property_data :: proc(R : ^change_property_request_t) -> rawptr ---
change_property_data_end :: proc(R : ^change_property_request_t) -> generic_iterator_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
delete_property_checked :: proc(c : ^connection_t, window : window_t, property : atom_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
delete_property :: proc(c : ^connection_t, window : window_t, property : atom_t) -> void_cookie_t ---
get_property_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief Gets a window property
 *
 * @param c The connection
 * @param _delete Whether the property should actually be deleted. For deleting a property, the
 * specified \a type has to match the actual property type.
 * @param window The window whose property you want to get.
 * @param property The property you want to get (an atom).
 * @param type The type of the property you want to get (an atom).
 * @param long_offset Specifies the offset (in 32-bit multiples) in the specified property where the
 * data is to be retrieved.
 * @param long_length Specifies how many 32-bit multiples of data should be retrieved (e.g. if you
 * set \a long_length to 4, you will receive 16 bytes of data).
 * @return A cookie
 *
 * Gets the specified \a property from the specified \a window. Properties are for
 * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
 * Protocols such as EWMH also use properties - for example EWMH defines the
 * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
 * 
 * TODO: talk about \a type
 * 
 * TODO: talk about `delete`
 * 
 * TODO: talk about the offset/length thing. what's a valid use case?
 *
 */
get_property :: proc(c : ^connection_t, _delete : u8, window : window_t, property : atom_t, type : atom_t, long_offset : u32, long_length : u32) -> get_property_cookie_t ---
/**
 * @brief Gets a window property
 *
 * @param c The connection
 * @param _delete Whether the property should actually be deleted. For deleting a property, the
 * specified \a type has to match the actual property type.
 * @param window The window whose property you want to get.
 * @param property The property you want to get (an atom).
 * @param type The type of the property you want to get (an atom).
 * @param long_offset Specifies the offset (in 32-bit multiples) in the specified property where the
 * data is to be retrieved.
 * @param long_length Specifies how many 32-bit multiples of data should be retrieved (e.g. if you
 * set \a long_length to 4, you will receive 16 bytes of data).
 * @return A cookie
 *
 * Gets the specified \a property from the specified \a window. Properties are for
 * example the window title (`WM_NAME`) or its minimum size (`WM_NORMAL_HINTS`).
 * Protocols such as EWMH also use properties - for example EWMH defines the
 * window title, encoded as UTF-8 string, in the `_NET_WM_NAME` property.
 * 
 * TODO: talk about \a type
 * 
 * TODO: talk about `delete`
 * 
 * TODO: talk about the offset/length thing. what's a valid use case?
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_property_unchecked :: proc(c : ^connection_t, _delete : u8, window : window_t, property : atom_t, type : atom_t, long_offset : u32, long_length : u32) -> get_property_cookie_t ---
get_property_value :: proc(R : ^get_property_reply_t) -> rawptr ---
get_property_value_length :: proc(R : ^get_property_reply_t) -> _c.int ---
get_property_value_end :: proc(R : ^get_property_reply_t) -> generic_iterator_t ---
list_properties_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
list_properties :: proc(c : ^connection_t, window : window_t) -> list_properties_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_property_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_property_reply :: proc(c : ^connection_t, cookie : get_property_cookie_t, e : ^^generic_error_t) -> ^get_property_reply_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
list_properties_unchecked :: proc(c : ^connection_t, window : window_t) -> list_properties_cookie_t ---
list_properties_atoms_length :: proc(R : ^list_properties_reply_t) -> _c.int ---
list_properties_atoms :: proc(R : ^list_properties_reply_t) -> ^atom_t ---
list_properties_atoms_end :: proc(R : ^list_properties_reply_t) -> generic_iterator_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_properties_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
list_properties_reply :: proc(c : ^connection_t, cookie : list_properties_cookie_t, e : ^^generic_error_t) -> ^list_properties_reply_t ---
/**
 * @brief Sets the owner of a selection
 *
 * @param c The connection
 * @param owner The new owner of the selection.
 * \n
 * The special value `XCB_NONE` means that the selection will have no owner.
 * @param selection The selection.
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The selection will not be changed if \a time is earlier than the current
 * last-change time of the \a selection or is later than the current X server time.
 * Otherwise, the last-change time is set to the specified time.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Makes `window` the owner of the selection \a selection and updates the
 * last-change time of the specified selection.
 * 
 * TODO: briefly explain what a selection is.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
set_selection_owner_checked :: proc(c : ^connection_t, owner : window_t, selection : atom_t, time : timestamp_t) -> void_cookie_t ---
/**
 * @brief Sets the owner of a selection
 *
 * @param c The connection
 * @param owner The new owner of the selection.
 * \n
 * The special value `XCB_NONE` means that the selection will have no owner.
 * @param selection The selection.
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The selection will not be changed if \a time is earlier than the current
 * last-change time of the \a selection or is later than the current X server time.
 * Otherwise, the last-change time is set to the specified time.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Makes `window` the owner of the selection \a selection and updates the
 * last-change time of the specified selection.
 * 
 * TODO: briefly explain what a selection is.
 *
 */
set_selection_owner :: proc(c : ^connection_t, owner : window_t, selection : atom_t, time : timestamp_t) -> void_cookie_t ---
/**
 * @brief Gets the owner of a selection
 *
 * @param c The connection
 * @param selection The selection.
 * @return A cookie
 *
 * Gets the owner of the specified selection.
 * 
 * TODO: briefly explain what a selection is.
 *
 */
get_selection_owner :: proc(c : ^connection_t, selection : atom_t) -> get_selection_owner_cookie_t ---
/**
 * @brief Gets the owner of a selection
 *
 * @param c The connection
 * @param selection The selection.
 * @return A cookie
 *
 * Gets the owner of the specified selection.
 * 
 * TODO: briefly explain what a selection is.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_selection_owner_unchecked :: proc(c : ^connection_t, selection : atom_t) -> get_selection_owner_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_selection_owner_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_selection_owner_reply :: proc(c : ^connection_t, cookie : get_selection_owner_cookie_t, e : ^^generic_error_t) -> ^get_selection_owner_reply_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
convert_selection_checked :: proc(c : ^connection_t, requestor : window_t, selection : atom_t, target : atom_t, property : atom_t, time : timestamp_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
convert_selection :: proc(c : ^connection_t, requestor : window_t, selection : atom_t, target : atom_t, property : atom_t, time : timestamp_t) -> void_cookie_t ---
/**
 * @brief send an event
 *
 * @param c The connection
 * @param propagate If \a propagate is true and no clients have selected any event on \a destination,
 * the destination is replaced with the closest ancestor of \a destination for
 * which some client has selected a type in \a event_mask and for which no
 * intervening window has that type in its do-not-propagate-mask. If no such
 * window exists or if the window is an ancestor of the focus window and
 * `InputFocus` was originally specified as the destination, the event is not sent
 * to any clients. Otherwise, the event is reported to every client selecting on
 * the final destination any of the types specified in \a event_mask.
 * @param destination The window to send this event to. Every client which selects any event within
 * \a event_mask on \a destination will get the event.
 * \n
 * The special value `XCB_SEND_EVENT_DEST_POINTER_WINDOW` refers to the window
 * that contains the mouse pointer.
 * \n
 * The special value `XCB_SEND_EVENT_DEST_ITEM_FOCUS` refers to the window which
 * has the keyboard focus.
 * @param event_mask Event_mask for determining which clients should receive the specified event.
 * See \a destination and \a propagate.
 * @param event The event to send to the specified \a destination.
 * @return A cookie
 *
 * Identifies the \a destination window, determines which clients should receive
 * the specified event and ignores any active grabs.
 * 
 * The \a event must be one of the core events or an event defined by an extension,
 * so that the X server can correctly byte-swap the contents as necessary. The
 * contents of \a event are otherwise unaltered and unchecked except for the
 * `send_event` field which is forced to 'true'.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
send_event_checked :: proc(c : ^connection_t, propagate : u8, destination : window_t, event_mask : u32, event : cstring) -> void_cookie_t ---
/**
 * @brief send an event
 *
 * @param c The connection
 * @param propagate If \a propagate is true and no clients have selected any event on \a destination,
 * the destination is replaced with the closest ancestor of \a destination for
 * which some client has selected a type in \a event_mask and for which no
 * intervening window has that type in its do-not-propagate-mask. If no such
 * window exists or if the window is an ancestor of the focus window and
 * `InputFocus` was originally specified as the destination, the event is not sent
 * to any clients. Otherwise, the event is reported to every client selecting on
 * the final destination any of the types specified in \a event_mask.
 * @param destination The window to send this event to. Every client which selects any event within
 * \a event_mask on \a destination will get the event.
 * \n
 * The special value `XCB_SEND_EVENT_DEST_POINTER_WINDOW` refers to the window
 * that contains the mouse pointer.
 * \n
 * The special value `XCB_SEND_EVENT_DEST_ITEM_FOCUS` refers to the window which
 * has the keyboard focus.
 * @param event_mask Event_mask for determining which clients should receive the specified event.
 * See \a destination and \a propagate.
 * @param event The event to send to the specified \a destination.
 * @return A cookie
 *
 * Identifies the \a destination window, determines which clients should receive
 * the specified event and ignores any active grabs.
 * 
 * The \a event must be one of the core events or an event defined by an extension,
 * so that the X server can correctly byte-swap the contents as necessary. The
 * contents of \a event are otherwise unaltered and unchecked except for the
 * `send_event` field which is forced to 'true'.
 *
 */
send_event :: proc(c : ^connection_t, propagate : u8, destination : window_t, event_mask : u32, event : cstring) -> void_cookie_t ---
/**
 * @brief Grab the pointer
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param event_mask Specifies which pointer events are reported to the client.
 * \n
 * TODO: which values?
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
 * move the pointer out of that window).
 * \n
 * The special value `XCB_NONE` means don't confine the pointer.
 * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
 * cursor.
 * @param time The time argument allows you to avoid certain circumstances that come up if
 * applications take a long time to respond or if there are long network delays.
 * Consider a situation where you have two applications, both of which normally
 * grab the pointer when clicked on. If both applications specify the timestamp
 * from the event, the second application may wake up faster and successfully grab
 * the pointer before the first application. The first application then will get
 * an indication that the other application grabbed the pointer before its request
 * was processed.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Actively grabs control of the pointer. Further pointer events are reported only to the grabbing client. Overrides any active pointer grab by this client.
 *
 */
grab_pointer :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, event_mask : u16, pointer_mode : u8, keyboard_mode : u8, confine_to : window_t, cursor : cursor_t, time : timestamp_t) -> grab_pointer_cookie_t ---
/**
 * @brief Grab the pointer
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param event_mask Specifies which pointer events are reported to the client.
 * \n
 * TODO: which values?
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
 * move the pointer out of that window).
 * \n
 * The special value `XCB_NONE` means don't confine the pointer.
 * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
 * cursor.
 * @param time The time argument allows you to avoid certain circumstances that come up if
 * applications take a long time to respond or if there are long network delays.
 * Consider a situation where you have two applications, both of which normally
 * grab the pointer when clicked on. If both applications specify the timestamp
 * from the event, the second application may wake up faster and successfully grab
 * the pointer before the first application. The first application then will get
 * an indication that the other application grabbed the pointer before its request
 * was processed.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Actively grabs control of the pointer. Further pointer events are reported only to the grabbing client. Overrides any active pointer grab by this client.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
grab_pointer_unchecked :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, event_mask : u16, pointer_mode : u8, keyboard_mode : u8, confine_to : window_t, cursor : cursor_t, time : timestamp_t) -> grab_pointer_cookie_t ---
/**
 * @brief release the pointer
 *
 * @param c The connection
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The pointer will not be released if \a time is earlier than the
 * last-pointer-grab time or later than the current X server time.
 * @return A cookie
 *
 * Releases the pointer and any queued events if you actively grabbed the pointer
 * before using `xcb_grab_pointer`, `xcb_grab_button` or within a normal button
 * press.
 * 
 * EnterNotify and LeaveNotify events are generated.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
ungrab_pointer_checked :: proc(c : ^connection_t, time : timestamp_t) -> void_cookie_t ---
/**
 * @brief release the pointer
 *
 * @param c The connection
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The pointer will not be released if \a time is earlier than the
 * last-pointer-grab time or later than the current X server time.
 * @return A cookie
 *
 * Releases the pointer and any queued events if you actively grabbed the pointer
 * before using `xcb_grab_pointer`, `xcb_grab_button` or within a normal button
 * press.
 * 
 * EnterNotify and LeaveNotify events are generated.
 *
 */
ungrab_pointer :: proc(c : ^connection_t, time : timestamp_t) -> void_cookie_t ---
/**
 * @brief Grab pointer button(s)
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param event_mask Specifies which pointer events are reported to the client.
 * \n
 * TODO: which values?
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
 * move the pointer out of that window).
 * \n
 * The special value `XCB_NONE` means don't confine the pointer.
 * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
 * cursor.
 * @param button A bitmask of #xcb_button_index_t values.
 * @param button \n
 * @param modifiers The modifiers to grab.
 * \n
 * Using the special value `XCB_MOD_MASK_ANY` means grab the pointer with all
 * possible modifier combinations.
 * @return A cookie
 *
 * This request establishes a passive grab. The pointer is actively grabbed as
 * described in GrabPointer, the last-pointer-grab time is set to the time at
 * which the button was pressed (as transmitted in the ButtonPress event), and the
 * ButtonPress event is reported if all of the following conditions are true:
 * 
 * The pointer is not grabbed and the specified button is logically pressed when
 * the specified modifier keys are logically down, and no other buttons or
 * modifier keys are logically down.
 * 
 * The grab-window contains the pointer.
 * 
 * The confine-to window (if any) is viewable.
 * 
 * A passive grab on the same button/key combination does not exist on any
 * ancestor of grab-window.
 * 
 * The interpretation of the remaining arguments is the same as for GrabPointer.
 * The active grab is terminated automatically when the logical state of the
 * pointer has all buttons released, independent of the logical state of modifier
 * keys. Note that the logical state of a device (as seen by means of the
 * protocol) may lag the physical state if device event processing is frozen. This
 * request overrides all previous passive grabs by the same client on the same
 * button/key combinations on the same window. A modifier of AnyModifier is
 * equivalent to issuing the request for all possible modifier combinations
 * (including the combination of no modifiers). It is not required that all
 * specified modifiers have currently assigned keycodes. A button of AnyButton is
 * equivalent to issuing the request for all possible buttons. Otherwise, it is
 * not required that the button specified currently be assigned to a physical
 * button.
 * 
 * An Access error is generated if some other client has already issued a
 * GrabButton request with the same button/key combination on the same window.
 * When using AnyModifier or AnyButton, the request fails completely (no grabs are
 * established), and an Access error is generated if there is a conflicting grab
 * for any combination. The request has no effect on an active grab.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
grab_button_checked :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, event_mask : u16, pointer_mode : u8, keyboard_mode : u8, confine_to : window_t, cursor : cursor_t, button : u8, modifiers : u16) -> void_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_grab_pointer_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
grab_pointer_reply :: proc(c : ^connection_t, cookie : grab_pointer_cookie_t, e : ^^generic_error_t) -> ^grab_pointer_reply_t ---
/**
 * @brief Grab pointer button(s)
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param event_mask Specifies which pointer events are reported to the client.
 * \n
 * TODO: which values?
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @param confine_to Specifies the window to confine the pointer in (the user will not be able to
 * move the pointer out of that window).
 * \n
 * The special value `XCB_NONE` means don't confine the pointer.
 * @param cursor Specifies the cursor that should be displayed or `XCB_NONE` to not change the
 * cursor.
 * @param button A bitmask of #xcb_button_index_t values.
 * @param button \n
 * @param modifiers The modifiers to grab.
 * \n
 * Using the special value `XCB_MOD_MASK_ANY` means grab the pointer with all
 * possible modifier combinations.
 * @return A cookie
 *
 * This request establishes a passive grab. The pointer is actively grabbed as
 * described in GrabPointer, the last-pointer-grab time is set to the time at
 * which the button was pressed (as transmitted in the ButtonPress event), and the
 * ButtonPress event is reported if all of the following conditions are true:
 * 
 * The pointer is not grabbed and the specified button is logically pressed when
 * the specified modifier keys are logically down, and no other buttons or
 * modifier keys are logically down.
 * 
 * The grab-window contains the pointer.
 * 
 * The confine-to window (if any) is viewable.
 * 
 * A passive grab on the same button/key combination does not exist on any
 * ancestor of grab-window.
 * 
 * The interpretation of the remaining arguments is the same as for GrabPointer.
 * The active grab is terminated automatically when the logical state of the
 * pointer has all buttons released, independent of the logical state of modifier
 * keys. Note that the logical state of a device (as seen by means of the
 * protocol) may lag the physical state if device event processing is frozen. This
 * request overrides all previous passive grabs by the same client on the same
 * button/key combinations on the same window. A modifier of AnyModifier is
 * equivalent to issuing the request for all possible modifier combinations
 * (including the combination of no modifiers). It is not required that all
 * specified modifiers have currently assigned keycodes. A button of AnyButton is
 * equivalent to issuing the request for all possible buttons. Otherwise, it is
 * not required that the button specified currently be assigned to a physical
 * button.
 * 
 * An Access error is generated if some other client has already issued a
 * GrabButton request with the same button/key combination on the same window.
 * When using AnyModifier or AnyButton, the request fails completely (no grabs are
 * established), and an Access error is generated if there is a conflicting grab
 * for any combination. The request has no effect on an active grab.
 *
 */
grab_button :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, event_mask : u16, pointer_mode : u8, keyboard_mode : u8, confine_to : window_t, cursor : cursor_t, button : u8, modifiers : u16) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
ungrab_button_checked :: proc(c : ^connection_t, button : u8, grab_window : window_t, modifiers : u16) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
ungrab_button :: proc(c : ^connection_t, button : u8, grab_window : window_t, modifiers : u16) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
change_active_pointer_grab_checked :: proc(c : ^connection_t, cursor : cursor_t, time : timestamp_t, event_mask : u16) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
change_active_pointer_grab :: proc(c : ^connection_t, cursor : cursor_t, time : timestamp_t, event_mask : u16) -> void_cookie_t ---
/**
 * @brief Grab the keyboard
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @return A cookie
 *
 * Actively grabs control of the keyboard and generates FocusIn and FocusOut
 * events. Further key events are reported only to the grabbing client.
 * 
 * Any active keyboard grab by this client is overridden. If the keyboard is
 * actively grabbed by some other client, `AlreadyGrabbed` is returned. If
 * \a grab_window is not viewable, `GrabNotViewable` is returned. If the keyboard
 * is frozen by an active grab of another client, `GrabFrozen` is returned. If the
 * specified \a time is earlier than the last-keyboard-grab time or later than the
 * current X server time, `GrabInvalidTime` is returned. Otherwise, the
 * last-keyboard-grab time is set to the specified time.
 *
 */
grab_keyboard :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, time : timestamp_t, pointer_mode : u8, keyboard_mode : u8) -> grab_keyboard_cookie_t ---
/**
 * @brief Grab the keyboard
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the pointer events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the pointer should be grabbed.
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @return A cookie
 *
 * Actively grabs control of the keyboard and generates FocusIn and FocusOut
 * events. Further key events are reported only to the grabbing client.
 * 
 * Any active keyboard grab by this client is overridden. If the keyboard is
 * actively grabbed by some other client, `AlreadyGrabbed` is returned. If
 * \a grab_window is not viewable, `GrabNotViewable` is returned. If the keyboard
 * is frozen by an active grab of another client, `GrabFrozen` is returned. If the
 * specified \a time is earlier than the last-keyboard-grab time or later than the
 * current X server time, `GrabInvalidTime` is returned. Otherwise, the
 * last-keyboard-grab time is set to the specified time.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
grab_keyboard_unchecked :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, time : timestamp_t, pointer_mode : u8, keyboard_mode : u8) -> grab_keyboard_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
ungrab_keyboard_checked :: proc(c : ^connection_t, time : timestamp_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
ungrab_keyboard :: proc(c : ^connection_t, time : timestamp_t) -> void_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_grab_keyboard_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
grab_keyboard_reply :: proc(c : ^connection_t, cookie : grab_keyboard_cookie_t, e : ^^generic_error_t) -> ^grab_keyboard_reply_t ---
/**
 * @brief Grab keyboard key(s)
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the key events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the key should be grabbed.
 * @param modifiers The modifiers to grab.
 * \n
 * Using the special value `XCB_MOD_MASK_ANY` means grab the key with all
 * possible modifier combinations.
 * @param key The keycode of the key to grab.
 * \n
 * The special value `XCB_GRAB_ANY` means grab any key.
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @return A cookie
 *
 * Establishes a passive grab on the keyboard. In the future, the keyboard is
 * actively grabbed (as for `GrabKeyboard`), the last-keyboard-grab time is set to
 * the time at which the key was pressed (as transmitted in the KeyPress event),
 * and the KeyPress event is reported if all of the following conditions are true:
 * 
 * The keyboard is not grabbed and the specified key (which can itself be a
 * modifier key) is logically pressed when the specified modifier keys are
 * logically down, and no other modifier keys are logically down.
 * 
 * Either the grab_window is an ancestor of (or is) the focus window, or the
 * grab_window is a descendant of the focus window and contains the pointer.
 * 
 * A passive grab on the same key combination does not exist on any ancestor of
 * grab_window.
 * 
 * The interpretation of the remaining arguments is as for XGrabKeyboard.  The active grab is terminated
 * automatically when the logical state of the keyboard has the specified key released (independent of the
 * logical state of the modifier keys), at which point a KeyRelease event is reported to the grabbing window.
 * 
 * Note that the logical state of a device (as seen by client applications) may lag the physical state if
 * device event processing is frozen.
 * 
 * A modifiers argument of AnyModifier is equivalent to issuing the request for all possible modifier combinations (including the combination of no modifiers).  It is not required that all modifiers specified
 * have currently assigned KeyCodes.  A keycode argument of AnyKey is equivalent to issuing the request for
 * all possible KeyCodes.  Otherwise, the specified keycode must be in the range specified by min_keycode
 * and max_keycode in the connection setup, or a BadValue error results.
 * 
 * If some other client has issued a XGrabKey with the same key combination on the same window, a BadAccess
 * error results.  When using AnyModifier or AnyKey, the request fails completely, and a BadAccess error
 * results (no grabs are established) if there is a conflicting grab for any combination.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
grab_key_checked :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, modifiers : u16, key : keycode_t, pointer_mode : u8, keyboard_mode : u8) -> void_cookie_t ---
/**
 * @brief Grab keyboard key(s)
 *
 * @param c The connection
 * @param owner_events If 1, the \a grab_window will still get the key events. If 0, events are not
 * reported to the \a grab_window.
 * @param grab_window Specifies the window on which the key should be grabbed.
 * @param modifiers The modifiers to grab.
 * \n
 * Using the special value `XCB_MOD_MASK_ANY` means grab the key with all
 * possible modifier combinations.
 * @param key The keycode of the key to grab.
 * \n
 * The special value `XCB_GRAB_ANY` means grab any key.
 * @param pointer_mode A bitmask of #xcb_grab_mode_t values.
 * @param pointer_mode \n
 * @param keyboard_mode A bitmask of #xcb_grab_mode_t values.
 * @param keyboard_mode \n
 * @return A cookie
 *
 * Establishes a passive grab on the keyboard. In the future, the keyboard is
 * actively grabbed (as for `GrabKeyboard`), the last-keyboard-grab time is set to
 * the time at which the key was pressed (as transmitted in the KeyPress event),
 * and the KeyPress event is reported if all of the following conditions are true:
 * 
 * The keyboard is not grabbed and the specified key (which can itself be a
 * modifier key) is logically pressed when the specified modifier keys are
 * logically down, and no other modifier keys are logically down.
 * 
 * Either the grab_window is an ancestor of (or is) the focus window, or the
 * grab_window is a descendant of the focus window and contains the pointer.
 * 
 * A passive grab on the same key combination does not exist on any ancestor of
 * grab_window.
 * 
 * The interpretation of the remaining arguments is as for XGrabKeyboard.  The active grab is terminated
 * automatically when the logical state of the keyboard has the specified key released (independent of the
 * logical state of the modifier keys), at which point a KeyRelease event is reported to the grabbing window.
 * 
 * Note that the logical state of a device (as seen by client applications) may lag the physical state if
 * device event processing is frozen.
 * 
 * A modifiers argument of AnyModifier is equivalent to issuing the request for all possible modifier combinations (including the combination of no modifiers).  It is not required that all modifiers specified
 * have currently assigned KeyCodes.  A keycode argument of AnyKey is equivalent to issuing the request for
 * all possible KeyCodes.  Otherwise, the specified keycode must be in the range specified by min_keycode
 * and max_keycode in the connection setup, or a BadValue error results.
 * 
 * If some other client has issued a XGrabKey with the same key combination on the same window, a BadAccess
 * error results.  When using AnyModifier or AnyKey, the request fails completely, and a BadAccess error
 * results (no grabs are established) if there is a conflicting grab for any combination.
 *
 */
grab_key :: proc(c : ^connection_t, owner_events : u8, grab_window : window_t, modifiers : u16, key : keycode_t, pointer_mode : u8, keyboard_mode : u8) -> void_cookie_t ---
/**
 * @brief release a key combination
 *
 * @param c The connection
 * @param key The keycode of the specified key combination.
 * \n
 * Using the special value `XCB_GRAB_ANY` means releasing all possible key codes.
 * @param grab_window The window on which the grabbed key combination will be released.
 * @param modifiers The modifiers of the specified key combination.
 * \n
 * Using the special value `XCB_MOD_MASK_ANY` means releasing the key combination
 * with every possible modifier combination.
 * @return A cookie
 *
 * Releases the key combination on \a grab_window if you grabbed it using
 * `xcb_grab_key` before.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
ungrab_key_checked :: proc(c : ^connection_t, key : keycode_t, grab_window : window_t, modifiers : u16) -> void_cookie_t ---
/**
 * @brief release a key combination
 *
 * @param c The connection
 * @param key The keycode of the specified key combination.
 * \n
 * Using the special value `XCB_GRAB_ANY` means releasing all possible key codes.
 * @param grab_window The window on which the grabbed key combination will be released.
 * @param modifiers The modifiers of the specified key combination.
 * \n
 * Using the special value `XCB_MOD_MASK_ANY` means releasing the key combination
 * with every possible modifier combination.
 * @return A cookie
 *
 * Releases the key combination on \a grab_window if you grabbed it using
 * `xcb_grab_key` before.
 *
 */
ungrab_key :: proc(c : ^connection_t, key : keycode_t, grab_window : window_t, modifiers : u16) -> void_cookie_t ---
/**
 * @brief release queued events
 *
 * @param c The connection
 * @param mode A bitmask of #xcb_allow_t values.
 * @param mode \n
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Releases queued events if the client has caused a device (pointer/keyboard) to
 * freeze due to grabbing it actively. This request has no effect if \a time is
 * earlier than the last-grab time of the most recent active grab for this client
 * or if \a time is later than the current X server time.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
allow_events_checked :: proc(c : ^connection_t, mode : u8, time : timestamp_t) -> void_cookie_t ---
/**
 * @brief release queued events
 *
 * @param c The connection
 * @param mode A bitmask of #xcb_allow_t values.
 * @param mode \n
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Releases queued events if the client has caused a device (pointer/keyboard) to
 * freeze due to grabbing it actively. This request has no effect if \a time is
 * earlier than the last-grab time of the most recent active grab for this client
 * or if \a time is later than the current X server time.
 *
 */
allow_events :: proc(c : ^connection_t, mode : u8, time : timestamp_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
grab_server_checked :: proc(c : ^connection_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
grab_server :: proc(c : ^connection_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
ungrab_server_checked :: proc(c : ^connection_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
ungrab_server :: proc(c : ^connection_t) -> void_cookie_t ---
/**
 * @brief get pointer coordinates
 *
 * @param c The connection
 * @param window A window to check if the pointer is on the same screen as \a window (see the
 * `same_screen` field in the reply).
 * @return A cookie
 *
 * Gets the root window the pointer is logically on and the pointer coordinates
 * relative to the root window's origin.
 *
 */
query_pointer :: proc(c : ^connection_t, window : window_t) -> query_pointer_cookie_t ---
/**
 * @brief get pointer coordinates
 *
 * @param c The connection
 * @param window A window to check if the pointer is on the same screen as \a window (see the
 * `same_screen` field in the reply).
 * @return A cookie
 *
 * Gets the root window the pointer is logically on and the pointer coordinates
 * relative to the root window's origin.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
query_pointer_unchecked :: proc(c : ^connection_t, window : window_t) -> query_pointer_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_pointer_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
query_pointer_reply :: proc(c : ^connection_t, cookie : query_pointer_cookie_t, e : ^^generic_error_t) -> ^query_pointer_reply_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_timecoord_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_timecoord_t)
 */
timecoord_next :: proc(i : ^timecoord_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_timecoord_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
timecoord_end :: proc(i : timecoord_iterator_t) -> generic_iterator_t ---
get_motion_events_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
get_motion_events :: proc(c : ^connection_t, window : window_t, start : timestamp_t, stop : timestamp_t) -> get_motion_events_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_motion_events_unchecked :: proc(c : ^connection_t, window : window_t, start : timestamp_t, stop : timestamp_t) -> get_motion_events_cookie_t ---
get_motion_events_events_length :: proc(R : ^get_motion_events_reply_t) -> _c.int ---
get_motion_events_events_iterator :: proc(R : ^get_motion_events_reply_t) -> timecoord_iterator_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
translate_coordinates :: proc(c : ^connection_t, src_window : window_t, dst_window : window_t, src_x : i16, src_y : i16) -> translate_coordinates_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
translate_coordinates_unchecked :: proc(c : ^connection_t, src_window : window_t, dst_window : window_t, src_x : i16, src_y : i16) -> translate_coordinates_cookie_t ---
/**
 * @brief move mouse pointer
 *
 * @param c The connection
 * @param src_window If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
 * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
 * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
 * \a src_window.
 * @param dst_window If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
 * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
 * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
 * relative to the current position of the pointer.
 * @return A cookie
 *
 * Moves the mouse pointer to the specified position.
 * 
 * If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
 * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
 * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
 * \a src_window.
 * 
 * If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
 * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
 * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
 * relative to the current position of the pointer.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
warp_pointer_checked :: proc(c : ^connection_t, src_window : window_t, dst_window : window_t, src_x : i16, src_y : i16, src_width : u16, src_height : u16, dst_x : i16, dst_y : i16) -> void_cookie_t ---
/**
 * @brief move mouse pointer
 *
 * @param c The connection
 * @param src_window If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
 * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
 * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
 * \a src_window.
 * @param dst_window If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
 * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
 * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
 * relative to the current position of the pointer.
 * @return A cookie
 *
 * Moves the mouse pointer to the specified position.
 * 
 * If \a src_window is not `XCB_NONE` (TODO), the move will only take place if the
 * pointer is inside \a src_window and within the rectangle specified by (\a src_x,
 * \a src_y, \a src_width, \a src_height). The rectangle coordinates are relative to
 * \a src_window.
 * 
 * If \a dst_window is not `XCB_NONE` (TODO), the pointer will be moved to the
 * offsets (\a dst_x, \a dst_y) relative to \a dst_window. If \a dst_window is
 * `XCB_NONE` (TODO), the pointer will be moved by the offsets (\a dst_x, \a dst_y)
 * relative to the current position of the pointer.
 *
 */
warp_pointer :: proc(c : ^connection_t, src_window : window_t, dst_window : window_t, src_x : i16, src_y : i16, src_width : u16, src_height : u16, dst_x : i16, dst_y : i16) -> void_cookie_t ---
/**
 * @brief Sets input focus
 *
 * @param c The connection
 * @param revert_to A bitmask of #xcb_input_focus_t values.
 * @param revert_to Specifies what happens when the \a focus window becomes unviewable (if \a focus
 * is neither `XCB_NONE` nor `XCB_POINTER_ROOT`).
 * @param focus The window to focus. All keyboard events will be reported to this window. The
 * window must be viewable (TODO), or a `xcb_match_error_t` occurs (TODO).
 * \n
 * If \a focus is `XCB_NONE` (TODO), all keyboard events are
 * discarded until a new focus window is set.
 * \n
 * If \a focus is `XCB_POINTER_ROOT` (TODO), focus is on the root window of the
 * screen on which the pointer is on currently.
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Changes the input focus and the last-focus-change time. If the specified \a time
 * is earlier than the current last-focus-change time, the request is ignored (to
 * avoid race conditions when running X over the network).
 * 
 * A FocusIn and FocusOut event is generated when focus is changed.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
set_input_focus_checked :: proc(c : ^connection_t, revert_to : u8, focus : window_t, time : timestamp_t) -> void_cookie_t ---
get_motion_events_events :: proc(R : ^get_motion_events_reply_t) -> ^timecoord_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_motion_events_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_motion_events_reply :: proc(c : ^connection_t, cookie : get_motion_events_cookie_t, e : ^^generic_error_t) -> ^get_motion_events_reply_t ---
/**
 * @brief Sets input focus
 *
 * @param c The connection
 * @param revert_to A bitmask of #xcb_input_focus_t values.
 * @param revert_to Specifies what happens when the \a focus window becomes unviewable (if \a focus
 * is neither `XCB_NONE` nor `XCB_POINTER_ROOT`).
 * @param focus The window to focus. All keyboard events will be reported to this window. The
 * window must be viewable (TODO), or a `xcb_match_error_t` occurs (TODO).
 * \n
 * If \a focus is `XCB_NONE` (TODO), all keyboard events are
 * discarded until a new focus window is set.
 * \n
 * If \a focus is `XCB_POINTER_ROOT` (TODO), focus is on the root window of the
 * screen on which the pointer is on currently.
 * @param time Timestamp to avoid race conditions when running X over the network.
 * \n
 * The special value `XCB_CURRENT_TIME` will be replaced with the current server
 * time.
 * @return A cookie
 *
 * Changes the input focus and the last-focus-change time. If the specified \a time
 * is earlier than the current last-focus-change time, the request is ignored (to
 * avoid race conditions when running X over the network).
 * 
 * A FocusIn and FocusOut event is generated when focus is changed.
 *
 */
set_input_focus :: proc(c : ^connection_t, revert_to : u8, focus : window_t, time : timestamp_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
get_input_focus :: proc(c : ^connection_t) -> get_input_focus_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_input_focus_unchecked :: proc(c : ^connection_t) -> get_input_focus_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
query_keymap :: proc(c : ^connection_t) -> query_keymap_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
query_keymap_unchecked :: proc(c : ^connection_t) -> query_keymap_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_translate_coordinates_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
translate_coordinates_reply :: proc(c : ^connection_t, cookie : translate_coordinates_cookie_t, e : ^^generic_error_t) -> ^translate_coordinates_reply_t ---
open_font_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief opens a font
 *
 * @param c The connection
 * @param fid The ID with which you will refer to the font, created by `xcb_generate_id`.
 * @param name_len Length (in bytes) of \a name.
 * @param name A pattern describing an X core font.
 * @return A cookie
 *
 * Opens any X core font matching the given \a name (for example "-misc-fixed-*").
 * 
 * Note that X core fonts are deprecated (but still supported) in favor of
 * client-side rendering using Xft.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
open_font_checked :: proc(c : ^connection_t, fid : font_t, name_len : u16, name : cstring) -> void_cookie_t ---
/**
 * @brief opens a font
 *
 * @param c The connection
 * @param fid The ID with which you will refer to the font, created by `xcb_generate_id`.
 * @param name_len Length (in bytes) of \a name.
 * @param name A pattern describing an X core font.
 * @return A cookie
 *
 * Opens any X core font matching the given \a name (for example "-misc-fixed-*").
 * 
 * Note that X core fonts are deprecated (but still supported) in favor of
 * client-side rendering using Xft.
 *
 */
open_font :: proc(c : ^connection_t, fid : font_t, name_len : u16, name : cstring) -> void_cookie_t ---
open_font_name_length :: proc(R : ^open_font_request_t) -> _c.int ---
open_font_name_end :: proc(R : ^open_font_request_t) -> generic_iterator_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
close_font_checked :: proc(c : ^connection_t, font : font_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
close_font :: proc(c : ^connection_t, font : font_t) -> void_cookie_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_fontprop_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_fontprop_t)
 */
fontprop_next :: proc(i : ^fontprop_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_fontprop_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
fontprop_end :: proc(i : fontprop_iterator_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_charinfo_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_charinfo_t)
 */
charinfo_next :: proc(i : ^charinfo_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_charinfo_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
charinfo_end :: proc(i : charinfo_iterator_t) -> generic_iterator_t ---
query_font_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief query font metrics
 *
 * @param c The connection
 * @param font The fontable (Font or Graphics Context) to query.
 * @return A cookie
 *
 * Queries information associated with the font.
 *
 */
query_font :: proc(c : ^connection_t, font : fontable_t) -> query_font_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_input_focus_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_input_focus_reply :: proc(c : ^connection_t, cookie : get_input_focus_cookie_t, e : ^^generic_error_t) -> ^get_input_focus_reply_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_keymap_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
query_keymap_reply :: proc(c : ^connection_t, cookie : query_keymap_cookie_t, e : ^^generic_error_t) -> ^query_keymap_reply_t ---
/**
 * @brief query font metrics
 *
 * @param c The connection
 * @param font The fontable (Font or Graphics Context) to query.
 * @return A cookie
 *
 * Queries information associated with the font.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
query_font_unchecked :: proc(c : ^connection_t, font : fontable_t) -> query_font_cookie_t ---
open_font_name :: proc(R : ^open_font_request_t) -> cstring ---
query_font_properties_length :: proc(R : ^query_font_reply_t) -> _c.int ---
query_font_properties_iterator :: proc(R : ^query_font_reply_t) -> fontprop_iterator_t ---
query_font_char_infos_length :: proc(R : ^query_font_reply_t) -> _c.int ---
query_font_char_infos_iterator :: proc(R : ^query_font_reply_t) -> charinfo_iterator_t ---
query_text_extents_sizeof :: proc(_buffer : rawptr, string_len : u32) -> _c.int ---
/**
 * @brief get text extents
 *
 * @param c The connection
 * @param font The \a font to calculate text extents in. You can also pass a graphics context.
 * @param string_len The number of characters in \a string.
 * @param string The text to get text extents for.
 * @return A cookie
 *
 * Query text extents from the X11 server. This request returns the bounding box
 * of the specified 16-bit character string in the specified \a font or the font
 * contained in the specified graphics context.
 * 
 * `font_ascent` is set to the maximum of the ascent metrics of all characters in
 * the string. `font_descent` is set to the maximum of the descent metrics.
 * `overall_width` is set to the sum of the character-width metrics of all
 * characters in the string. For each character in the string, let W be the sum of
 * the character-width metrics of all characters preceding it in the string. Let L
 * be the left-side-bearing metric of the character plus W. Let R be the
 * right-side-bearing metric of the character plus W. The lbearing member is set
 * to the minimum L of all characters in the string. The rbearing member is set to
 * the maximum R.
 * 
 * For fonts defined with linear indexing rather than 2-byte matrix indexing, each
 * `xcb_char2b_t` structure is interpreted as a 16-bit number with byte1 as the
 * most significant byte. If the font has no defined default character, undefined
 * characters in the string are taken to have all zero metrics.
 * 
 * Characters with all zero metrics are ignored. If the font has no defined
 * default_char, the undefined characters in the string are also ignored.
 *
 */
query_text_extents :: proc(c : ^connection_t, font : fontable_t, string_len : u32, string : ^char2b_t) -> query_text_extents_cookie_t ---
/**
 * @brief get text extents
 *
 * @param c The connection
 * @param font The \a font to calculate text extents in. You can also pass a graphics context.
 * @param string_len The number of characters in \a string.
 * @param string The text to get text extents for.
 * @return A cookie
 *
 * Query text extents from the X11 server. This request returns the bounding box
 * of the specified 16-bit character string in the specified \a font or the font
 * contained in the specified graphics context.
 * 
 * `font_ascent` is set to the maximum of the ascent metrics of all characters in
 * the string. `font_descent` is set to the maximum of the descent metrics.
 * `overall_width` is set to the sum of the character-width metrics of all
 * characters in the string. For each character in the string, let W be the sum of
 * the character-width metrics of all characters preceding it in the string. Let L
 * be the left-side-bearing metric of the character plus W. Let R be the
 * right-side-bearing metric of the character plus W. The lbearing member is set
 * to the minimum L of all characters in the string. The rbearing member is set to
 * the maximum R.
 * 
 * For fonts defined with linear indexing rather than 2-byte matrix indexing, each
 * `xcb_char2b_t` structure is interpreted as a 16-bit number with byte1 as the
 * most significant byte. If the font has no defined default character, undefined
 * characters in the string are taken to have all zero metrics.
 * 
 * Characters with all zero metrics are ignored. If the font has no defined
 * default_char, the undefined characters in the string are also ignored.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
query_text_extents_unchecked :: proc(c : ^connection_t, font : fontable_t, string_len : u32, string : ^char2b_t) -> query_text_extents_cookie_t ---
str_sizeof :: proc(_buffer : rawptr) -> _c.int ---
str_name_length :: proc(R : ^str_t) -> _c.int ---
str_name_end :: proc(R : ^str_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_str_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_str_t)
 */
str_next :: proc(i : ^str_iterator_t) ---
query_font_properties :: proc(R : ^query_font_reply_t) -> ^fontprop_t ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_str_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
str_end :: proc(i : str_iterator_t) -> generic_iterator_t ---
list_fonts_sizeof :: proc(_buffer : rawptr) -> _c.int ---
query_font_char_infos :: proc(R : ^query_font_reply_t) -> ^charinfo_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_font_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
query_font_reply :: proc(c : ^connection_t, cookie : query_font_cookie_t, e : ^^generic_error_t) -> ^query_font_reply_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_text_extents_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
query_text_extents_reply :: proc(c : ^connection_t, cookie : query_text_extents_cookie_t, e : ^^generic_error_t) -> ^query_text_extents_reply_t ---
/**
 * @brief get matching font names
 *
 * @param c The connection
 * @param max_names The maximum number of fonts to be returned.
 * @param pattern_len The length (in bytes) of \a pattern.
 * @param pattern A font pattern, for example "-misc-fixed-*".
 * \n
 * The asterisk (*) is a wildcard for any number of characters. The question mark
 * (?) is a wildcard for a single character. Use of uppercase or lowercase does
 * not matter.
 * @return A cookie
 *
 * Gets a list of available font names which match the given \a pattern.
 *
 */
list_fonts :: proc(c : ^connection_t, max_names : u16, pattern_len : u16, pattern : cstring) -> list_fonts_cookie_t ---
/**
 * @brief get matching font names
 *
 * @param c The connection
 * @param max_names The maximum number of fonts to be returned.
 * @param pattern_len The length (in bytes) of \a pattern.
 * @param pattern A font pattern, for example "-misc-fixed-*".
 * \n
 * The asterisk (*) is a wildcard for any number of characters. The question mark
 * (?) is a wildcard for a single character. Use of uppercase or lowercase does
 * not matter.
 * @return A cookie
 *
 * Gets a list of available font names which match the given \a pattern.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
list_fonts_unchecked :: proc(c : ^connection_t, max_names : u16, pattern_len : u16, pattern : cstring) -> list_fonts_cookie_t ---
list_fonts_names_length :: proc(R : ^list_fonts_reply_t) -> _c.int ---
list_fonts_names_iterator :: proc(R : ^list_fonts_reply_t) -> str_iterator_t ---
list_fonts_with_info_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief get matching font names and information
 *
 * @param c The connection
 * @param max_names The maximum number of fonts to be returned.
 * @param pattern_len The length (in bytes) of \a pattern.
 * @param pattern A font pattern, for example "-misc-fixed-*".
 * \n
 * The asterisk (*) is a wildcard for any number of characters. The question mark
 * (?) is a wildcard for a single character. Use of uppercase or lowercase does
 * not matter.
 * @return A cookie
 *
 * Gets a list of available font names which match the given \a pattern.
 *
 */
list_fonts_with_info :: proc(c : ^connection_t, max_names : u16, pattern_len : u16, pattern : cstring) -> list_fonts_with_info_cookie_t ---
/**
 * @brief get matching font names and information
 *
 * @param c The connection
 * @param max_names The maximum number of fonts to be returned.
 * @param pattern_len The length (in bytes) of \a pattern.
 * @param pattern A font pattern, for example "-misc-fixed-*".
 * \n
 * The asterisk (*) is a wildcard for any number of characters. The question mark
 * (?) is a wildcard for a single character. Use of uppercase or lowercase does
 * not matter.
 * @return A cookie
 *
 * Gets a list of available font names which match the given \a pattern.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
list_fonts_with_info_unchecked :: proc(c : ^connection_t, max_names : u16, pattern_len : u16, pattern : cstring) -> list_fonts_with_info_cookie_t ---
list_fonts_with_info_properties_length :: proc(R : ^list_fonts_with_info_reply_t) -> _c.int ---
list_fonts_with_info_properties_iterator :: proc(R : ^list_fonts_with_info_reply_t) -> fontprop_iterator_t ---
list_fonts_with_info_name_length :: proc(R : ^list_fonts_with_info_reply_t) -> _c.int ---
list_fonts_with_info_name_end :: proc(R : ^list_fonts_with_info_reply_t) -> generic_iterator_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_fonts_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
list_fonts_reply :: proc(c : ^connection_t, cookie : list_fonts_cookie_t, e : ^^generic_error_t) -> ^list_fonts_reply_t ---
set_font_path_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
set_font_path_checked :: proc(c : ^connection_t, font_qty : u16, font : ^str_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
set_font_path :: proc(c : ^connection_t, font_qty : u16, font : ^str_t) -> void_cookie_t ---
set_font_path_font_length :: proc(R : ^set_font_path_request_t) -> _c.int ---
set_font_path_font_iterator :: proc(R : ^set_font_path_request_t) -> str_iterator_t ---
get_font_path_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
get_font_path :: proc(c : ^connection_t) -> get_font_path_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_font_path_unchecked :: proc(c : ^connection_t) -> get_font_path_cookie_t ---
get_font_path_path_length :: proc(R : ^get_font_path_reply_t) -> _c.int ---
get_font_path_path_iterator :: proc(R : ^get_font_path_reply_t) -> str_iterator_t ---
/**
 * @brief Creates a pixmap
 *
 * @param c The connection
 * @param depth TODO
 * @param pid The ID with which you will refer to the new pixmap, created by
 * `xcb_generate_id`.
 * @param drawable Drawable to get the screen from.
 * @param width The width of the new pixmap.
 * @param height The height of the new pixmap.
 * @return A cookie
 *
 * Creates a pixmap. The pixmap can only be used on the same screen as \a drawable
 * is on and only with drawables of the same \a depth.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
create_pixmap_checked :: proc(c : ^connection_t, depth : u8, pid : pixmap_t, drawable : drawable_t, width : u16, height : u16) -> void_cookie_t ---
/**
 * @brief Destroys a pixmap
 *
 * @param c The connection
 * @param pixmap The pixmap to destroy.
 * @return A cookie
 *
 * Deletes the association between the pixmap ID and the pixmap. The pixmap
 * storage will be freed when there are no more references to it.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
create_pixmap :: proc(c : ^connection_t, depth : u8, pid : pixmap_t, drawable : drawable_t, width : u16, height : u16) -> void_cookie_t ---
/**
 * @brief Destroys a pixmap
 *
 * @param c The connection
 * @param pixmap The pixmap to destroy.
 * @return A cookie
 *
 * Deletes the association between the pixmap ID and the pixmap. The pixmap
 * storage will be freed when there are no more references to it.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
free_pixmap_checked :: proc(c : ^connection_t, pixmap : pixmap_t) -> void_cookie_t ---
/**
 * @brief Destroys a pixmap
 *
 * @param c The connection
 * @param pixmap The pixmap to destroy.
 * @return A cookie
 *
 * Deletes the association between the pixmap ID and the pixmap. The pixmap
 * storage will be freed when there are no more references to it.
 *
 */
free_pixmap :: proc(c : ^connection_t, pixmap : pixmap_t) -> void_cookie_t ---
create_gc_value_list_serialize :: proc(_buffer : ^rawptr, value_mask : u32, _aux : ^create_gc_value_list_t) -> _c.int ---
create_gc_value_list_unpack :: proc(_buffer : rawptr, value_mask : u32, _aux : ^create_gc_value_list_t) -> _c.int ---
create_gc_value_list_sizeof :: proc(_buffer : rawptr, value_mask : u32) -> _c.int ---
create_gc_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief Creates a graphics context
 *
 * @param c The connection
 * @param cid The ID with which you will refer to the graphics context, created by
 * `xcb_generate_id`.
 * @param drawable Drawable to get the root/depth from.
 * @return A cookie
 *
 * Creates a graphics context. The graphics context can be used with any drawable
 * that has the same root and depth as the specified drawable.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
create_gc_checked :: proc(c : ^connection_t, cid : gcontext_t, drawable : drawable_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---
/**
 * @brief Creates a graphics context
 *
 * @param c The connection
 * @param cid The ID with which you will refer to the graphics context, created by
 * `xcb_generate_id`.
 * @param drawable Drawable to get the root/depth from.
 * @return A cookie
 *
 * Creates a graphics context. The graphics context can be used with any drawable
 * that has the same root and depth as the specified drawable.
 *
 */
create_gc :: proc(c : ^connection_t, cid : gcontext_t, drawable : drawable_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---
/**
 * @brief Creates a graphics context
 *
 * @param c The connection
 * @param cid The ID with which you will refer to the graphics context, created by
 * `xcb_generate_id`.
 * @param drawable Drawable to get the root/depth from.
 * @return A cookie
 *
 * Creates a graphics context. The graphics context can be used with any drawable
 * that has the same root and depth as the specified drawable.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
create_gc_aux_checked :: proc(c : ^connection_t, cid : gcontext_t, drawable : drawable_t, value_mask : u32, value_list : ^create_gc_value_list_t) -> void_cookie_t ---
/**
 * @brief Creates a graphics context
 *
 * @param c The connection
 * @param cid The ID with which you will refer to the graphics context, created by
 * `xcb_generate_id`.
 * @param drawable Drawable to get the root/depth from.
 * @return A cookie
 *
 * Creates a graphics context. The graphics context can be used with any drawable
 * that has the same root and depth as the specified drawable.
 *
 */
create_gc_aux :: proc(c : ^connection_t, cid : gcontext_t, drawable : drawable_t, value_mask : u32, value_list : ^create_gc_value_list_t) -> void_cookie_t ---
change_gc_value_list_serialize :: proc(_buffer : ^rawptr, value_mask : u32, _aux : ^change_gc_value_list_t) -> _c.int ---
change_gc_value_list_unpack :: proc(_buffer : rawptr, value_mask : u32, _aux : ^change_gc_value_list_t) -> _c.int ---
change_gc_value_list_sizeof :: proc(_buffer : rawptr, value_mask : u32) -> _c.int ---
change_gc_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief change graphics context components
 *
 * @param c The connection
 * @param gc The graphics context to change.
 * @param value_mask A bitmask of #xcb_gc_t values.
 * @param value_mask \n
 * @param value_list Values for each of the components specified in the bitmask \a value_mask. The
 * order has to correspond to the order of possible \a value_mask bits. See the
 * example.
 * @return A cookie
 *
 * Changes the components specified by \a value_mask for the specified graphics context.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
change_gc_checked :: proc(c : ^connection_t, gc : gcontext_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---
/**
 * @brief change graphics context components
 *
 * @param c The connection
 * @param gc The graphics context to change.
 * @param value_mask A bitmask of #xcb_gc_t values.
 * @param value_mask \n
 * @param value_list Values for each of the components specified in the bitmask \a value_mask. The
 * order has to correspond to the order of possible \a value_mask bits. See the
 * example.
 * @return A cookie
 *
 * Changes the components specified by \a value_mask for the specified graphics context.
 *
 */
change_gc :: proc(c : ^connection_t, gc : gcontext_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---
/**
 * @brief change graphics context components
 *
 * @param c The connection
 * @param gc The graphics context to change.
 * @param value_mask A bitmask of #xcb_gc_t values.
 * @param value_mask \n
 * @param value_list Values for each of the components specified in the bitmask \a value_mask. The
 * order has to correspond to the order of possible \a value_mask bits. See the
 * example.
 * @return A cookie
 *
 * Changes the components specified by \a value_mask for the specified graphics context.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
change_gc_aux_checked :: proc(c : ^connection_t, gc : gcontext_t, value_mask : u32, value_list : ^change_gc_value_list_t) -> void_cookie_t ---
/**
 * @brief change graphics context components
 *
 * @param c The connection
 * @param gc The graphics context to change.
 * @param value_mask A bitmask of #xcb_gc_t values.
 * @param value_mask \n
 * @param value_list Values for each of the components specified in the bitmask \a value_mask. The
 * order has to correspond to the order of possible \a value_mask bits. See the
 * example.
 * @return A cookie
 *
 * Changes the components specified by \a value_mask for the specified graphics context.
 *
 */
change_gc_aux :: proc(c : ^connection_t, gc : gcontext_t, value_mask : u32, value_list : ^change_gc_value_list_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
copy_gc_checked :: proc(c : ^connection_t, src_gc : gcontext_t, dst_gc : gcontext_t, value_mask : u32) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
copy_gc :: proc(c : ^connection_t, src_gc : gcontext_t, dst_gc : gcontext_t, value_mask : u32) -> void_cookie_t ---
set_dashes_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
set_dashes_checked :: proc(c : ^connection_t, gc : gcontext_t, dash_offset : u16, dashes_len : u16, dashes : ^u8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
set_dashes :: proc(c : ^connection_t, gc : gcontext_t, dash_offset : u16, dashes_len : u16, dashes : ^u8) -> void_cookie_t ---
set_dashes_dashes_length :: proc(R : ^set_dashes_request_t) -> _c.int ---
set_dashes_dashes_end :: proc(R : ^set_dashes_request_t) -> generic_iterator_t ---
set_clip_rectangles_sizeof :: proc(_buffer : rawptr, rectangles_len : u32) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
set_clip_rectangles_checked :: proc(c : ^connection_t, ordering : u8, gc : gcontext_t, clip_x_origin : i16, clip_y_origin : i16, rectangles_len : u32, rectangles : ^rectangle_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
set_clip_rectangles :: proc(c : ^connection_t, ordering : u8, gc : gcontext_t, clip_x_origin : i16, clip_y_origin : i16, rectangles_len : u32, rectangles : ^rectangle_t) -> void_cookie_t ---
set_clip_rectangles_rectangles_length :: proc(R : ^set_clip_rectangles_request_t) -> _c.int ---
set_clip_rectangles_rectangles_iterator :: proc(R : ^set_clip_rectangles_request_t) -> rectangle_iterator_t ---
/**
 * @brief Destroys a graphics context
 *
 * @param c The connection
 * @param gc The graphics context to destroy.
 * @return A cookie
 *
 * Destroys the specified \a gc and all associated storage.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
free_gc_checked :: proc(c : ^connection_t, gc : gcontext_t) -> void_cookie_t ---
/**
 * @brief Destroys a graphics context
 *
 * @param c The connection
 * @param gc The graphics context to destroy.
 * @return A cookie
 *
 * Destroys the specified \a gc and all associated storage.
 *
 */
free_gc :: proc(c : ^connection_t, gc : gcontext_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
clear_area_checked :: proc(c : ^connection_t, exposures : u8, window : window_t, x : i16, y : i16, width : u16, height : u16) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
clear_area :: proc(c : ^connection_t, exposures : u8, window : window_t, x : i16, y : i16, width : u16, height : u16) -> void_cookie_t ---
/**
 * @brief copy areas
 *
 * @param c The connection
 * @param src_drawable The source drawable (Window or Pixmap).
 * @param dst_drawable The destination drawable (Window or Pixmap).
 * @param gc The graphics context to use.
 * @param src_x The source X coordinate.
 * @param src_y The source Y coordinate.
 * @param dst_x The destination X coordinate.
 * @param dst_y The destination Y coordinate.
 * @param width The width of the area to copy (in pixels).
 * @param height The height of the area to copy (in pixels).
 * @return A cookie
 *
 * Copies the specified rectangle from \a src_drawable to \a dst_drawable.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
copy_area_checked :: proc(c : ^connection_t, src_drawable : drawable_t, dst_drawable : drawable_t, gc : gcontext_t, src_x : i16, src_y : i16, dst_x : i16, dst_y : i16, width : u16, height : u16) -> void_cookie_t ---
/**
 * @brief copy areas
 *
 * @param c The connection
 * @param src_drawable The source drawable (Window or Pixmap).
 * @param dst_drawable The destination drawable (Window or Pixmap).
 * @param gc The graphics context to use.
 * @param src_x The source X coordinate.
 * @param src_y The source Y coordinate.
 * @param dst_x The destination X coordinate.
 * @param dst_y The destination Y coordinate.
 * @param width The width of the area to copy (in pixels).
 * @param height The height of the area to copy (in pixels).
 * @return A cookie
 *
 * Copies the specified rectangle from \a src_drawable to \a dst_drawable.
 *
 */
copy_area :: proc(c : ^connection_t, src_drawable : drawable_t, dst_drawable : drawable_t, gc : gcontext_t, src_x : i16, src_y : i16, dst_x : i16, dst_y : i16, width : u16, height : u16) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
copy_plane :: proc(c : ^connection_t, src_drawable : drawable_t, dst_drawable : drawable_t, gc : gcontext_t, src_x : i16, src_y : i16, dst_x : i16, dst_y : i16, width : u16, height : u16, bit_plane : u32) -> void_cookie_t ---
create_gc_value_list :: proc(R : ^create_gc_request_t) -> rawptr ---
change_gc_value_list :: proc(R : ^change_gc_request_t) -> rawptr ---
set_dashes_dashes :: proc(R : ^set_dashes_request_t) -> ^u8 ---
poly_point_sizeof :: proc(_buffer : rawptr, points_len : u32) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
poly_point_checked :: proc(c : ^connection_t, coordinate_mode : u8, drawable : drawable_t, gc : gcontext_t, points_len : u32, points : ^point_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
poly_point :: proc(c : ^connection_t, coordinate_mode : u8, drawable : drawable_t, gc : gcontext_t, points_len : u32, points : ^point_t) -> void_cookie_t ---
poly_point_points_length :: proc(R : ^poly_point_request_t) -> _c.int ---
poly_point_points_iterator :: proc(R : ^poly_point_request_t) -> point_iterator_t ---
poly_line_sizeof :: proc(_buffer : rawptr, points_len : u32) -> _c.int ---
/**
 * @brief draw lines
 *
 * @param c The connection
 * @param coordinate_mode A bitmask of #xcb_coord_mode_t values.
 * @param coordinate_mode \n
 * @param drawable The drawable to draw the line(s) on.
 * @param gc The graphics context to use.
 * @param points_len The number of `xcb_point_t` structures in \a points.
 * @param points An array of points.
 * @return A cookie
 *
 * Draws \a points_len-1 lines between each pair of points (point[i], point[i+1])
 * in the \a points array. The lines are drawn in the order listed in the array.
 * They join correctly at all intermediate points, and if the first and last
 * points coincide, the first and last lines also join correctly. For any given
 * line, a pixel is not drawn more than once. If thin (zero line-width) lines
 * intersect, the intersecting pixels are drawn multiple times. If wide lines
 * intersect, the intersecting pixels are drawn only once, as though the entire
 * request were a single, filled shape.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
poly_line_checked :: proc(c : ^connection_t, coordinate_mode : u8, drawable : drawable_t, gc : gcontext_t, points_len : u32, points : ^point_t) -> void_cookie_t ---
/**
 * @brief draw lines
 *
 * @param c The connection
 * @param coordinate_mode A bitmask of #xcb_coord_mode_t values.
 * @param coordinate_mode \n
 * @param drawable The drawable to draw the line(s) on.
 * @param gc The graphics context to use.
 * @param points_len The number of `xcb_point_t` structures in \a points.
 * @param points An array of points.
 * @return A cookie
 *
 * Draws \a points_len-1 lines between each pair of points (point[i], point[i+1])
 * in the \a points array. The lines are drawn in the order listed in the array.
 * They join correctly at all intermediate points, and if the first and last
 * points coincide, the first and last lines also join correctly. For any given
 * line, a pixel is not drawn more than once. If thin (zero line-width) lines
 * intersect, the intersecting pixels are drawn multiple times. If wide lines
 * intersect, the intersecting pixels are drawn only once, as though the entire
 * request were a single, filled shape.
 *
 */
poly_line :: proc(c : ^connection_t, coordinate_mode : u8, drawable : drawable_t, gc : gcontext_t, points_len : u32, points : ^point_t) -> void_cookie_t ---
poly_line_points_length :: proc(R : ^poly_line_request_t) -> _c.int ---
poly_line_points_iterator :: proc(R : ^poly_line_request_t) -> point_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_segment_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_segment_t)
 */
segment_next :: proc(i : ^segment_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_segment_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
segment_end :: proc(i : segment_iterator_t) -> generic_iterator_t ---
poly_segment_sizeof :: proc(_buffer : rawptr, segments_len : u32) -> _c.int ---
/**
 * @brief draw lines
 *
 * @param c The connection
 * @param drawable A drawable (Window or Pixmap) to draw on.
 * @param gc The graphics context to use.
 * \n
 * TODO: document which attributes of a gc are used
 * @param segments_len The number of `xcb_segment_t` structures in \a segments.
 * @param segments An array of `xcb_segment_t` structures.
 * @return A cookie
 *
 * Draws multiple, unconnected lines. For each segment, a line is drawn between
 * (x1, y1) and (x2, y2). The lines are drawn in the order listed in the array of
 * `xcb_segment_t` structures and does not perform joining at coincident
 * endpoints. For any given line, a pixel is not drawn more than once. If lines
 * intersect, the intersecting pixels are drawn multiple times.
 * 
 * TODO: include the xcb_segment_t data structure
 * 
 * TODO: an example
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
poly_segment_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, segments_len : u32, segments : ^segment_t) -> void_cookie_t ---
/**
 * @brief draw lines
 *
 * @param c The connection
 * @param drawable A drawable (Window or Pixmap) to draw on.
 * @param gc The graphics context to use.
 * \n
 * TODO: document which attributes of a gc are used
 * @param segments_len The number of `xcb_segment_t` structures in \a segments.
 * @param segments An array of `xcb_segment_t` structures.
 * @return A cookie
 *
 * Draws multiple, unconnected lines. For each segment, a line is drawn between
 * (x1, y1) and (x2, y2). The lines are drawn in the order listed in the array of
 * `xcb_segment_t` structures and does not perform joining at coincident
 * endpoints. For any given line, a pixel is not drawn more than once. If lines
 * intersect, the intersecting pixels are drawn multiple times.
 * 
 * TODO: include the xcb_segment_t data structure
 * 
 * TODO: an example
 *
 */
poly_segment :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, segments_len : u32, segments : ^segment_t) -> void_cookie_t ---
poly_segment_segments_length :: proc(R : ^poly_segment_request_t) -> _c.int ---
poly_segment_segments_iterator :: proc(R : ^poly_segment_request_t) -> segment_iterator_t ---
poly_rectangle_sizeof :: proc(_buffer : rawptr, rectangles_len : u32) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
poly_rectangle_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, rectangles_len : u32, rectangles : ^rectangle_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
poly_rectangle :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, rectangles_len : u32, rectangles : ^rectangle_t) -> void_cookie_t ---
poly_rectangle_rectangles_length :: proc(R : ^poly_rectangle_request_t) -> _c.int ---
poly_rectangle_rectangles_iterator :: proc(R : ^poly_rectangle_request_t) -> rectangle_iterator_t ---
poly_arc_sizeof :: proc(_buffer : rawptr, arcs_len : u32) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
poly_arc_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, arcs_len : u32, arcs : ^arc_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
poly_arc :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, arcs_len : u32, arcs : ^arc_t) -> void_cookie_t ---
poly_arc_arcs_length :: proc(R : ^poly_arc_request_t) -> _c.int ---
str_name :: proc(R : ^str_t) -> cstring ---
list_fonts_with_info_name :: proc(R : ^list_fonts_with_info_reply_t) -> cstring ---
poly_point_points :: proc(R : ^poly_point_request_t) -> ^point_t ---
set_clip_rectangles_rectangles :: proc(R : ^set_clip_rectangles_request_t) -> ^rectangle_t ---
poly_line_points :: proc(R : ^poly_line_request_t) -> ^point_t ---
poly_rectangle_rectangles :: proc(R : ^poly_rectangle_request_t) -> ^rectangle_t ---
poly_arc_arcs_iterator :: proc(R : ^poly_arc_request_t) -> arc_iterator_t ---
fill_poly_sizeof :: proc(_buffer : rawptr, points_len : u32) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
fill_poly_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, shape : u8, coordinate_mode : u8, points_len : u32, points : ^point_t) -> void_cookie_t ---
/**
 * @brief Fills rectangles
 *
 * @param c The connection
 * @param drawable The drawable (Window or Pixmap) to draw on.
 * @param gc The graphics context to use.
 * \n
 * The following graphics context components are used: function, plane-mask,
 * fill-style, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
 * \n
 * The following graphics context mode-dependent components are used:
 * foreground, background, tile, stipple, tile-stipple-x-origin, and
 * tile-stipple-y-origin.
 * @param rectangles_len The number of `xcb_rectangle_t` structures in \a rectangles.
 * @param rectangles The rectangles to fill.
 * @return A cookie
 *
 * Fills the specified rectangle(s) in the order listed in the array. For any
 * given rectangle, each pixel is not drawn more than once. If rectangles
 * intersect, the intersecting pixels are drawn multiple times.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
fill_poly :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, shape : u8, coordinate_mode : u8, points_len : u32, points : ^point_t) -> void_cookie_t ---
fill_poly_points_length :: proc(R : ^fill_poly_request_t) -> _c.int ---
fill_poly_points_iterator :: proc(R : ^fill_poly_request_t) -> point_iterator_t ---
poly_fill_rectangle_sizeof :: proc(_buffer : rawptr, rectangles_len : u32) -> _c.int ---
list_fonts_with_info_properties :: proc(R : ^list_fonts_with_info_reply_t) -> ^fontprop_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_font_path_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_font_path_reply :: proc(c : ^connection_t, cookie : get_font_path_cookie_t, e : ^^generic_error_t) -> ^get_font_path_reply_t ---
/**
 * @brief Fills rectangles
 *
 * @param c The connection
 * @param drawable The drawable (Window or Pixmap) to draw on.
 * @param gc The graphics context to use.
 * \n
 * The following graphics context components are used: function, plane-mask,
 * fill-style, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
 * \n
 * The following graphics context mode-dependent components are used:
 * foreground, background, tile, stipple, tile-stipple-x-origin, and
 * tile-stipple-y-origin.
 * @param rectangles_len The number of `xcb_rectangle_t` structures in \a rectangles.
 * @param rectangles The rectangles to fill.
 * @return A cookie
 *
 * Fills the specified rectangle(s) in the order listed in the array. For any
 * given rectangle, each pixel is not drawn more than once. If rectangles
 * intersect, the intersecting pixels are drawn multiple times.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
poly_fill_rectangle_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, rectangles_len : u32, rectangles : ^rectangle_t) -> void_cookie_t ---
poly_arc_arcs :: proc(R : ^poly_arc_request_t) -> ^arc_t ---
/**
 * @brief Fills rectangles
 *
 * @param c The connection
 * @param drawable The drawable (Window or Pixmap) to draw on.
 * @param gc The graphics context to use.
 * \n
 * The following graphics context components are used: function, plane-mask,
 * fill-style, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
 * \n
 * The following graphics context mode-dependent components are used:
 * foreground, background, tile, stipple, tile-stipple-x-origin, and
 * tile-stipple-y-origin.
 * @param rectangles_len The number of `xcb_rectangle_t` structures in \a rectangles.
 * @param rectangles The rectangles to fill.
 * @return A cookie
 *
 * Fills the specified rectangle(s) in the order listed in the array. For any
 * given rectangle, each pixel is not drawn more than once. If rectangles
 * intersect, the intersecting pixels are drawn multiple times.
 *
 */
poly_fill_rectangle :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, rectangles_len : u32, rectangles : ^rectangle_t) -> void_cookie_t ---
poly_fill_rectangle_rectangles_length :: proc(R : ^poly_fill_rectangle_request_t) -> _c.int ---
poly_fill_rectangle_rectangles_iterator :: proc(R : ^poly_fill_rectangle_request_t) -> rectangle_iterator_t ---
poly_fill_rectangle_rectangles :: proc(R : ^poly_fill_rectangle_request_t) -> ^rectangle_t ---
poly_fill_arc_sizeof :: proc(_buffer : rawptr, arcs_len : u32) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
poly_fill_arc_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, arcs_len : u32, arcs : ^arc_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
poly_fill_arc :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, arcs_len : u32, arcs : ^arc_t) -> void_cookie_t ---
poly_fill_arc_arcs_length :: proc(R : ^poly_fill_arc_request_t) -> _c.int ---
poly_fill_arc_arcs_iterator :: proc(R : ^poly_fill_arc_request_t) -> arc_iterator_t ---
put_image_sizeof :: proc(_buffer : rawptr, data_len : u32) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
put_image_checked :: proc(c : ^connection_t, format : u8, drawable : drawable_t, gc : gcontext_t, width : u16, height : u16, dst_x : i16, dst_y : i16, left_pad : u8, depth : u8, data_len : u32, data : ^u8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
put_image :: proc(c : ^connection_t, format : u8, drawable : drawable_t, gc : gcontext_t, width : u16, height : u16, dst_x : i16, dst_y : i16, left_pad : u8, depth : u8, data_len : u32, data : ^u8) -> void_cookie_t ---
put_image_data_length :: proc(R : ^put_image_request_t) -> _c.int ---
put_image_data_end :: proc(R : ^put_image_request_t) -> generic_iterator_t ---
get_image_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
get_image :: proc(c : ^connection_t, format : u8, drawable : drawable_t, x : i16, y : i16, width : u16, height : u16, plane_mask : u32) -> get_image_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_image_unchecked :: proc(c : ^connection_t, format : u8, drawable : drawable_t, x : i16, y : i16, width : u16, height : u16, plane_mask : u32) -> get_image_cookie_t ---
poly_segment_segments :: proc(R : ^poly_segment_request_t) -> ^segment_t ---
poly_fill_arc_arcs :: proc(R : ^poly_fill_arc_request_t) -> ^arc_t ---
put_image_data :: proc(R : ^put_image_request_t) -> ^u8 ---
get_image_data :: proc(R : ^get_image_reply_t) -> ^u8 ---
get_image_data_length :: proc(R : ^get_image_reply_t) -> _c.int ---
get_image_data_end :: proc(R : ^get_image_reply_t) -> generic_iterator_t ---
poly_text_8_items_length :: proc(R : ^poly_text_8_request_t) -> _c.int ---
fill_poly_points :: proc(R : ^fill_poly_request_t) -> ^point_t ---
poly_text_8_sizeof :: proc(_buffer : rawptr, items_len : u32) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
poly_text_8_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, items_len : u32, items : ^u8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
poly_text_8 :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, items_len : u32, items : ^u8) -> void_cookie_t ---
poly_text_8_items_end :: proc(R : ^poly_text_8_request_t) -> generic_iterator_t ---
poly_text_8_items :: proc(R : ^poly_text_8_request_t) -> ^u8 ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_image_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_image_reply :: proc(c : ^connection_t, cookie : get_image_cookie_t, e : ^^generic_error_t) -> ^get_image_reply_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_fonts_with_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
list_fonts_with_info_reply :: proc(c : ^connection_t, cookie : list_fonts_with_info_cookie_t, e : ^^generic_error_t) -> ^list_fonts_with_info_reply_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
copy_plane_checked :: proc(c : ^connection_t, src_drawable : drawable_t, dst_drawable : drawable_t, gc : gcontext_t, src_x : i16, src_y : i16, dst_x : i16, dst_y : i16, width : u16, height : u16, bit_plane : u32) -> void_cookie_t ---
poly_text_16_sizeof :: proc(_buffer : rawptr, items_len : u32) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
poly_text_16_checked :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, items_len : u32, items : ^u8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
poly_text_16 :: proc(c : ^connection_t, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, items_len : u32, items : ^u8) -> void_cookie_t ---
poly_text_16_items :: proc(R : ^poly_text_16_request_t) -> ^u8 ---
poly_text_16_items_length :: proc(R : ^poly_text_16_request_t) -> _c.int ---
poly_text_16_items_end :: proc(R : ^poly_text_16_request_t) -> generic_iterator_t ---
image_text_8_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief Draws text
 *
 * @param c The connection
 * @param string_len The length of the \a string. Note that this parameter limited by 255 due to
 * using 8 bits!
 * @param drawable The drawable (Window or Pixmap) to draw text on.
 * @param gc The graphics context to use.
 * \n
 * The following graphics context components are used: plane-mask, foreground,
 * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
 * @param x The x coordinate of the first character, relative to the origin of \a drawable.
 * @param y The y coordinate of the first character, relative to the origin of \a drawable.
 * @param string The string to draw. Only the first 255 characters are relevant due to the data
 * type of \a string_len.
 * @return A cookie
 *
 * Fills the destination rectangle with the background pixel from \a gc, then
 * paints the text with the foreground pixel from \a gc. The upper-left corner of
 * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
 * the height is font-ascent + font-descent. The overall-width, font-ascent and
 * font-descent are as returned by `xcb_query_text_extents` (TODO).
 * 
 * Note that using X core fonts is deprecated (but still supported) in favor of
 * client-side rendering using Xft.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
image_text_8_checked :: proc(c : ^connection_t, string_len : u8, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, string : cstring) -> void_cookie_t ---
/**
 * @brief Draws text
 *
 * @param c The connection
 * @param string_len The length of the \a string. Note that this parameter limited by 255 due to
 * using 8 bits!
 * @param drawable The drawable (Window or Pixmap) to draw text on.
 * @param gc The graphics context to use.
 * \n
 * The following graphics context components are used: plane-mask, foreground,
 * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
 * @param x The x coordinate of the first character, relative to the origin of \a drawable.
 * @param y The y coordinate of the first character, relative to the origin of \a drawable.
 * @param string The string to draw. Only the first 255 characters are relevant due to the data
 * type of \a string_len.
 * @return A cookie
 *
 * Fills the destination rectangle with the background pixel from \a gc, then
 * paints the text with the foreground pixel from \a gc. The upper-left corner of
 * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
 * the height is font-ascent + font-descent. The overall-width, font-ascent and
 * font-descent are as returned by `xcb_query_text_extents` (TODO).
 * 
 * Note that using X core fonts is deprecated (but still supported) in favor of
 * client-side rendering using Xft.
 *
 */
image_text_8 :: proc(c : ^connection_t, string_len : u8, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, string : cstring) -> void_cookie_t ---
image_text_8_string_length :: proc(R : ^image_text_8_request_t) -> _c.int ---
image_text_8_string_end :: proc(R : ^image_text_8_request_t) -> generic_iterator_t ---
image_text_16_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief Draws text
 *
 * @param c The connection
 * @param string_len The length of the \a string in characters. Note that this parameter limited by
 * 255 due to using 8 bits!
 * @param drawable The drawable (Window or Pixmap) to draw text on.
 * @param gc The graphics context to use.
 * \n
 * The following graphics context components are used: plane-mask, foreground,
 * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
 * @param x The x coordinate of the first character, relative to the origin of \a drawable.
 * @param y The y coordinate of the first character, relative to the origin of \a drawable.
 * @param string The string to draw. Only the first 255 characters are relevant due to the data
 * type of \a string_len. Every character uses 2 bytes (hence the 16 in this
 * request's name).
 * @return A cookie
 *
 * Fills the destination rectangle with the background pixel from \a gc, then
 * paints the text with the foreground pixel from \a gc. The upper-left corner of
 * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
 * the height is font-ascent + font-descent. The overall-width, font-ascent and
 * font-descent are as returned by `xcb_query_text_extents` (TODO).
 * 
 * Note that using X core fonts is deprecated (but still supported) in favor of
 * client-side rendering using Xft.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
image_text_16_checked :: proc(c : ^connection_t, string_len : u8, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, string : ^char2b_t) -> void_cookie_t ---
image_text_8_string :: proc(R : ^image_text_8_request_t) -> cstring ---
/**
 * @brief Draws text
 *
 * @param c The connection
 * @param string_len The length of the \a string in characters. Note that this parameter limited by
 * 255 due to using 8 bits!
 * @param drawable The drawable (Window or Pixmap) to draw text on.
 * @param gc The graphics context to use.
 * \n
 * The following graphics context components are used: plane-mask, foreground,
 * background, font, subwindow-mode, clip-x-origin, clip-y-origin, and clip-mask.
 * @param x The x coordinate of the first character, relative to the origin of \a drawable.
 * @param y The y coordinate of the first character, relative to the origin of \a drawable.
 * @param string The string to draw. Only the first 255 characters are relevant due to the data
 * type of \a string_len. Every character uses 2 bytes (hence the 16 in this
 * request's name).
 * @return A cookie
 *
 * Fills the destination rectangle with the background pixel from \a gc, then
 * paints the text with the foreground pixel from \a gc. The upper-left corner of
 * the filled rectangle is at [x, y - font-ascent]. The width is overall-width,
 * the height is font-ascent + font-descent. The overall-width, font-ascent and
 * font-descent are as returned by `xcb_query_text_extents` (TODO).
 * 
 * Note that using X core fonts is deprecated (but still supported) in favor of
 * client-side rendering using Xft.
 *
 */
image_text_16 :: proc(c : ^connection_t, string_len : u8, drawable : drawable_t, gc : gcontext_t, x : i16, y : i16, string : ^char2b_t) -> void_cookie_t ---
image_text_16_string_length :: proc(R : ^image_text_16_request_t) -> _c.int ---
image_text_16_string_iterator :: proc(R : ^image_text_16_request_t) -> char2b_iterator_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
create_colormap_checked :: proc(c : ^connection_t, alloc : u8, mid : colormap_t, window : window_t, visual : visualid_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
create_colormap :: proc(c : ^connection_t, alloc : u8, mid : colormap_t, window : window_t, visual : visualid_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
free_colormap_checked :: proc(c : ^connection_t, cmap : colormap_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
free_colormap :: proc(c : ^connection_t, cmap : colormap_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
copy_colormap_and_free_checked :: proc(c : ^connection_t, mid : colormap_t, src_cmap : colormap_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
copy_colormap_and_free :: proc(c : ^connection_t, mid : colormap_t, src_cmap : colormap_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
install_colormap_checked :: proc(c : ^connection_t, cmap : colormap_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
install_colormap :: proc(c : ^connection_t, cmap : colormap_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
uninstall_colormap_checked :: proc(c : ^connection_t, cmap : colormap_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
uninstall_colormap :: proc(c : ^connection_t, cmap : colormap_t) -> void_cookie_t ---
list_installed_colormaps_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
list_installed_colormaps :: proc(c : ^connection_t, window : window_t) -> list_installed_colormaps_cookie_t ---
image_text_16_string :: proc(R : ^image_text_16_request_t) -> ^char2b_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
list_installed_colormaps_unchecked :: proc(c : ^connection_t, window : window_t) -> list_installed_colormaps_cookie_t ---
list_installed_colormaps_cmaps :: proc(R : ^list_installed_colormaps_reply_t) -> ^colormap_t ---
list_installed_colormaps_cmaps_length :: proc(R : ^list_installed_colormaps_reply_t) -> _c.int ---
list_installed_colormaps_cmaps_end :: proc(R : ^list_installed_colormaps_reply_t) -> generic_iterator_t ---
/**
 * @brief Allocate a color
 *
 * @param c The connection
 * @param cmap TODO
 * @param red The red value of your color.
 * @param green The green value of your color.
 * @param blue The blue value of your color.
 * @return A cookie
 *
 * Allocates a read-only colormap entry corresponding to the closest RGB value
 * supported by the hardware. If you are using TrueColor, you can take a shortcut
 * and directly calculate the color pixel value to avoid the round trip. But, for
 * example, on 16-bit color setups (VNC), you can easily get the closest supported
 * RGB value to the RGB value you are specifying.
 *
 */
alloc_color :: proc(c : ^connection_t, cmap : colormap_t, red : u16, green : u16, blue : u16) -> alloc_color_cookie_t ---
/**
 * @brief Allocate a color
 *
 * @param c The connection
 * @param cmap TODO
 * @param red The red value of your color.
 * @param green The green value of your color.
 * @param blue The blue value of your color.
 * @return A cookie
 *
 * Allocates a read-only colormap entry corresponding to the closest RGB value
 * supported by the hardware. If you are using TrueColor, you can take a shortcut
 * and directly calculate the color pixel value to avoid the round trip. But, for
 * example, on 16-bit color setups (VNC), you can easily get the closest supported
 * RGB value to the RGB value you are specifying.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
alloc_color_unchecked :: proc(c : ^connection_t, cmap : colormap_t, red : u16, green : u16, blue : u16) -> alloc_color_cookie_t ---
alloc_named_color_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
alloc_named_color :: proc(c : ^connection_t, cmap : colormap_t, name_len : u16, name : cstring) -> alloc_named_color_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
alloc_named_color_unchecked :: proc(c : ^connection_t, cmap : colormap_t, name_len : u16, name : cstring) -> alloc_named_color_cookie_t ---
alloc_color_cells_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
alloc_color_cells :: proc(c : ^connection_t, contiguous : u8, cmap : colormap_t, colors : u16, planes : u16) -> alloc_color_cells_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
alloc_color_cells_unchecked :: proc(c : ^connection_t, contiguous : u8, cmap : colormap_t, colors : u16, planes : u16) -> alloc_color_cells_cookie_t ---
alloc_color_cells_pixels_length :: proc(R : ^alloc_color_cells_reply_t) -> _c.int ---
alloc_color_cells_pixels_end :: proc(R : ^alloc_color_cells_reply_t) -> generic_iterator_t ---
alloc_color_cells_masks_length :: proc(R : ^alloc_color_cells_reply_t) -> _c.int ---
alloc_color_cells_masks_end :: proc(R : ^alloc_color_cells_reply_t) -> generic_iterator_t ---
alloc_color_planes_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
alloc_color_planes :: proc(c : ^connection_t, contiguous : u8, cmap : colormap_t, colors : u16, reds : u16, greens : u16, blues : u16) -> alloc_color_planes_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
alloc_color_planes_unchecked :: proc(c : ^connection_t, contiguous : u8, cmap : colormap_t, colors : u16, reds : u16, greens : u16, blues : u16) -> alloc_color_planes_cookie_t ---
alloc_color_planes_pixels_length :: proc(R : ^alloc_color_planes_reply_t) -> _c.int ---
alloc_color_planes_pixels_end :: proc(R : ^alloc_color_planes_reply_t) -> generic_iterator_t ---
free_colors_sizeof :: proc(_buffer : rawptr, pixels_len : u32) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
free_colors_checked :: proc(c : ^connection_t, cmap : colormap_t, plane_mask : u32, pixels_len : u32, pixels : ^u32) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
free_colors :: proc(c : ^connection_t, cmap : colormap_t, plane_mask : u32, pixels_len : u32, pixels : ^u32) -> void_cookie_t ---
free_colors_pixels_length :: proc(R : ^free_colors_request_t) -> _c.int ---
free_colors_pixels_end :: proc(R : ^free_colors_request_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_coloritem_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_coloritem_t)
 */
coloritem_next :: proc(i : ^coloritem_iterator_t) ---
alloc_color_cells_pixels :: proc(R : ^alloc_color_cells_reply_t) -> ^u32 ---
alloc_color_planes_pixels :: proc(R : ^alloc_color_planes_reply_t) -> ^u32 ---
free_colors_pixels :: proc(R : ^free_colors_request_t) -> ^u32 ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_color_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
alloc_color_reply :: proc(c : ^connection_t, cookie : alloc_color_cookie_t, e : ^^generic_error_t) -> ^alloc_color_reply_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_named_color_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
alloc_named_color_reply :: proc(c : ^connection_t, cookie : alloc_named_color_cookie_t, e : ^^generic_error_t) -> ^alloc_named_color_reply_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_color_cells_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
alloc_color_cells_reply :: proc(c : ^connection_t, cookie : alloc_color_cells_cookie_t, e : ^^generic_error_t) -> ^alloc_color_cells_reply_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_color_planes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
alloc_color_planes_reply :: proc(c : ^connection_t, cookie : alloc_color_planes_cookie_t, e : ^^generic_error_t) -> ^alloc_color_planes_reply_t ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_coloritem_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
coloritem_end :: proc(i : coloritem_iterator_t) -> generic_iterator_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_installed_colormaps_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
list_installed_colormaps_reply :: proc(c : ^connection_t, cookie : list_installed_colormaps_cookie_t, e : ^^generic_error_t) -> ^list_installed_colormaps_reply_t ---
store_colors_sizeof :: proc(_buffer : rawptr, items_len : u32) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
store_colors_checked :: proc(c : ^connection_t, cmap : colormap_t, items_len : u32, items : ^coloritem_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
store_colors :: proc(c : ^connection_t, cmap : colormap_t, items_len : u32, items : ^coloritem_t) -> void_cookie_t ---
store_colors_items_length :: proc(R : ^store_colors_request_t) -> _c.int ---
store_colors_items :: proc(R : ^store_colors_request_t) -> ^coloritem_t ---
store_colors_items_iterator :: proc(R : ^store_colors_request_t) -> coloritem_iterator_t ---
alloc_color_cells_masks :: proc(R : ^alloc_color_cells_reply_t) -> ^u32 ---
store_named_color_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
store_named_color_checked :: proc(c : ^connection_t, flags : u8, cmap : colormap_t, pixel : u32, name_len : u16, name : cstring) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
store_named_color :: proc(c : ^connection_t, flags : u8, cmap : colormap_t, pixel : u32, name_len : u16, name : cstring) -> void_cookie_t ---
store_named_color_name_length :: proc(R : ^store_named_color_request_t) -> _c.int ---
store_named_color_name_end :: proc(R : ^store_named_color_request_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_rgb_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_rgb_t)
 */
rgb_next :: proc(i : ^rgb_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_rgb_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
rgb_end :: proc(i : rgb_iterator_t) -> generic_iterator_t ---
query_colors_sizeof :: proc(_buffer : rawptr, pixels_len : u32) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
query_colors :: proc(c : ^connection_t, cmap : colormap_t, pixels_len : u32, pixels : ^u32) -> query_colors_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
query_colors_unchecked :: proc(c : ^connection_t, cmap : colormap_t, pixels_len : u32, pixels : ^u32) -> query_colors_cookie_t ---
query_colors_colors_length :: proc(R : ^query_colors_reply_t) -> _c.int ---
query_colors_colors_iterator :: proc(R : ^query_colors_reply_t) -> rgb_iterator_t ---
store_named_color_name :: proc(R : ^store_named_color_request_t) -> cstring ---
lookup_color_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
lookup_color :: proc(c : ^connection_t, cmap : colormap_t, name_len : u16, name : cstring) -> lookup_color_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
lookup_color_unchecked :: proc(c : ^connection_t, cmap : colormap_t, name_len : u16, name : cstring) -> lookup_color_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
create_cursor_checked :: proc(c : ^connection_t, cid : cursor_t, source : pixmap_t, mask : pixmap_t, fore_red : u16, fore_green : u16, fore_blue : u16, back_red : u16, back_green : u16, back_blue : u16, x : u16, y : u16) -> void_cookie_t ---
query_colors_colors :: proc(R : ^query_colors_reply_t) -> ^rgb_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_colors_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
query_colors_reply :: proc(c : ^connection_t, cookie : query_colors_cookie_t, e : ^^generic_error_t) -> ^query_colors_reply_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_lookup_color_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
lookup_color_reply :: proc(c : ^connection_t, cookie : lookup_color_cookie_t, e : ^^generic_error_t) -> ^lookup_color_reply_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
create_cursor :: proc(c : ^connection_t, cid : cursor_t, source : pixmap_t, mask : pixmap_t, fore_red : u16, fore_green : u16, fore_blue : u16, back_red : u16, back_green : u16, back_blue : u16, x : u16, y : u16) -> void_cookie_t ---
/**
 * @brief Deletes a cursor
 *
 * @param c The connection
 * @param cursor The cursor to destroy.
 * @return A cookie
 *
 * Deletes the association between the cursor resource ID and the specified
 * cursor. The cursor is freed when no other resource references it.
 *
 */
free_cursor :: proc(c : ^connection_t, cursor : cursor_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
recolor_cursor :: proc(c : ^connection_t, cursor : cursor_t, fore_red : u16, fore_green : u16, fore_blue : u16, back_red : u16, back_green : u16, back_blue : u16) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
query_best_size :: proc(c : ^connection_t, _class : u8, drawable : drawable_t, width : u16, height : u16) -> query_best_size_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
query_best_size_unchecked :: proc(c : ^connection_t, _class : u8, drawable : drawable_t, width : u16, height : u16) -> query_best_size_cookie_t ---
change_keyboard_mapping_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief create cursor
 *
 * @param c The connection
 * @param cid The ID with which you will refer to the cursor, created by `xcb_generate_id`.
 * @param source_font In which font to look for the cursor glyph.
 * @param mask_font In which font to look for the mask glyph.
 * @param source_char The glyph of \a source_font to use.
 * @param mask_char The glyph of \a mask_font to use as a mask: Pixels which are set to 1 define
 * which source pixels are displayed. All pixels which are set to 0 are not
 * displayed.
 * @param fore_red The red value of the foreground color.
 * @param fore_green The green value of the foreground color.
 * @param fore_blue The blue value of the foreground color.
 * @param back_red The red value of the background color.
 * @param back_green The green value of the background color.
 * @param back_blue The blue value of the background color.
 * @return A cookie
 *
 * Creates a cursor from a font glyph. X provides a set of standard cursor shapes
 * in a special font named cursor. Applications are encouraged to use this
 * interface for their cursors because the font can be customized for the
 * individual display type.
 * 
 * All pixels which are set to 1 in the source will use the foreground color (as
 * specified by \a fore_red, \a fore_green and \a fore_blue). All pixels set to 0
 * will use the background color (as specified by \a back_red, \a back_green and
 * \a back_blue).
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
create_glyph_cursor_checked :: proc(c : ^connection_t, cid : cursor_t, source_font : font_t, mask_font : font_t, source_char : u16, mask_char : u16, fore_red : u16, fore_green : u16, fore_blue : u16, back_red : u16, back_green : u16, back_blue : u16) -> void_cookie_t ---
/**
 * @brief create cursor
 *
 * @param c The connection
 * @param cid The ID with which you will refer to the cursor, created by `xcb_generate_id`.
 * @param source_font In which font to look for the cursor glyph.
 * @param mask_font In which font to look for the mask glyph.
 * @param source_char The glyph of \a source_font to use.
 * @param mask_char The glyph of \a mask_font to use as a mask: Pixels which are set to 1 define
 * which source pixels are displayed. All pixels which are set to 0 are not
 * displayed.
 * @param fore_red The red value of the foreground color.
 * @param fore_green The green value of the foreground color.
 * @param fore_blue The blue value of the foreground color.
 * @param back_red The red value of the background color.
 * @param back_green The green value of the background color.
 * @param back_blue The blue value of the background color.
 * @return A cookie
 *
 * Creates a cursor from a font glyph. X provides a set of standard cursor shapes
 * in a special font named cursor. Applications are encouraged to use this
 * interface for their cursors because the font can be customized for the
 * individual display type.
 * 
 * All pixels which are set to 1 in the source will use the foreground color (as
 * specified by \a fore_red, \a fore_green and \a fore_blue). All pixels set to 0
 * will use the background color (as specified by \a back_red, \a back_green and
 * \a back_blue).
 *
 */
create_glyph_cursor :: proc(c : ^connection_t, cid : cursor_t, source_font : font_t, mask_font : font_t, source_char : u16, mask_char : u16, fore_red : u16, fore_green : u16, fore_blue : u16, back_red : u16, back_green : u16, back_blue : u16) -> void_cookie_t ---
/**
 * @brief Deletes a cursor
 *
 * @param c The connection
 * @param cursor The cursor to destroy.
 * @return A cookie
 *
 * Deletes the association between the cursor resource ID and the specified
 * cursor. The cursor is freed when no other resource references it.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
free_cursor_checked :: proc(c : ^connection_t, cursor : cursor_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
recolor_cursor_checked :: proc(c : ^connection_t, cursor : cursor_t, fore_red : u16, fore_green : u16, fore_blue : u16, back_red : u16, back_green : u16, back_blue : u16) -> void_cookie_t ---
query_extension_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * @brief check if extension is present
 *
 * @param c The connection
 * @param name_len The length of \a name in bytes.
 * @param name The name of the extension to query, for example "RANDR". This is case
 * sensitive!
 * @return A cookie
 *
 * Determines if the specified extension is present on this X11 server.
 * 
 * Every extension has a unique `major_opcode` to identify requests, the minor
 * opcodes and request formats are extension-specific. If the extension provides
 * events and errors, the `first_event` and `first_error` fields in the reply are
 * set accordingly.
 * 
 * There should rarely be a need to use this request directly, XCB provides the
 * `xcb_get_extension_data` function instead.
 *
 */
query_extension :: proc(c : ^connection_t, name_len : u16, name : cstring) -> query_extension_cookie_t ---
/**
 * @brief check if extension is present
 *
 * @param c The connection
 * @param name_len The length of \a name in bytes.
 * @param name The name of the extension to query, for example "RANDR". This is case
 * sensitive!
 * @return A cookie
 *
 * Determines if the specified extension is present on this X11 server.
 * 
 * Every extension has a unique `major_opcode` to identify requests, the minor
 * opcodes and request formats are extension-specific. If the extension provides
 * events and errors, the `first_event` and `first_error` fields in the reply are
 * set accordingly.
 * 
 * There should rarely be a need to use this request directly, XCB provides the
 * `xcb_get_extension_data` function instead.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
query_extension_unchecked :: proc(c : ^connection_t, name_len : u16, name : cstring) -> query_extension_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_best_size_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
query_best_size_reply :: proc(c : ^connection_t, cookie : query_best_size_cookie_t, e : ^^generic_error_t) -> ^query_best_size_reply_t ---
list_extensions_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
list_extensions :: proc(c : ^connection_t) -> list_extensions_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
list_extensions_unchecked :: proc(c : ^connection_t) -> list_extensions_cookie_t ---
list_extensions_names_length :: proc(R : ^list_extensions_reply_t) -> _c.int ---
list_extensions_names_iterator :: proc(R : ^list_extensions_reply_t) -> str_iterator_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
change_keyboard_mapping_checked :: proc(c : ^connection_t, keycode_count : u8, first_keycode : keycode_t, keysyms_per_keycode : u8, keysyms : ^keysym_t) -> void_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_extension_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
query_extension_reply :: proc(c : ^connection_t, cookie : query_extension_cookie_t, e : ^^generic_error_t) -> ^query_extension_reply_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
change_keyboard_mapping :: proc(c : ^connection_t, keycode_count : u8, first_keycode : keycode_t, keysyms_per_keycode : u8, keysyms : ^keysym_t) -> void_cookie_t ---
change_keyboard_mapping_keysyms_length :: proc(R : ^change_keyboard_mapping_request_t) -> _c.int ---
change_keyboard_mapping_keysyms_end :: proc(R : ^change_keyboard_mapping_request_t) -> generic_iterator_t ---
get_keyboard_mapping_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_keyboard_mapping_unchecked :: proc(c : ^connection_t, first_keycode : keycode_t, count : u8) -> get_keyboard_mapping_cookie_t ---
get_keyboard_mapping_keysyms_length :: proc(R : ^get_keyboard_mapping_reply_t) -> _c.int ---
get_keyboard_mapping_keysyms_end :: proc(R : ^get_keyboard_mapping_reply_t) -> generic_iterator_t ---
change_keyboard_mapping_keysyms :: proc(R : ^change_keyboard_mapping_request_t) -> ^keysym_t ---
get_keyboard_mapping_keysyms :: proc(R : ^get_keyboard_mapping_reply_t) -> ^keysym_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_extensions_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
list_extensions_reply :: proc(c : ^connection_t, cookie : list_extensions_cookie_t, e : ^^generic_error_t) -> ^list_extensions_reply_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
get_keyboard_mapping :: proc(c : ^connection_t, first_keycode : keycode_t, count : u8) -> get_keyboard_mapping_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_keyboard_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_keyboard_mapping_reply :: proc(c : ^connection_t, cookie : get_keyboard_mapping_cookie_t, e : ^^generic_error_t) -> ^get_keyboard_mapping_reply_t ---
change_keyboard_control_value_list_serialize :: proc(_buffer : ^rawptr, value_mask : u32, _aux : ^change_keyboard_control_value_list_t) -> _c.int ---
change_keyboard_control_value_list_unpack :: proc(_buffer : rawptr, value_mask : u32, _aux : ^change_keyboard_control_value_list_t) -> _c.int ---
change_keyboard_control_value_list_sizeof :: proc(_buffer : rawptr, value_mask : u32) -> _c.int ---
change_keyboard_control_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
change_keyboard_control_checked :: proc(c : ^connection_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
change_keyboard_control :: proc(c : ^connection_t, value_mask : u32, value_list : rawptr) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
change_keyboard_control_aux_checked :: proc(c : ^connection_t, value_mask : u32, value_list : ^change_keyboard_control_value_list_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
change_keyboard_control_aux :: proc(c : ^connection_t, value_mask : u32, value_list : ^change_keyboard_control_value_list_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
get_keyboard_control :: proc(c : ^connection_t) -> get_keyboard_control_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_keyboard_control_unchecked :: proc(c : ^connection_t) -> get_keyboard_control_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
bell_checked :: proc(c : ^connection_t, percent : i8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
bell :: proc(c : ^connection_t, percent : i8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
change_pointer_control_checked :: proc(c : ^connection_t, acceleration_numerator : i16, acceleration_denominator : i16, threshold : i16, do_acceleration : u8, do_threshold : u8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
change_pointer_control :: proc(c : ^connection_t, acceleration_numerator : i16, acceleration_denominator : i16, threshold : i16, do_acceleration : u8, do_threshold : u8) -> void_cookie_t ---
change_keyboard_control_value_list :: proc(R : ^change_keyboard_control_request_t) -> rawptr ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_keyboard_control_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_keyboard_control_reply :: proc(c : ^connection_t, cookie : get_keyboard_control_cookie_t, e : ^^generic_error_t) -> ^get_keyboard_control_reply_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
get_pointer_control :: proc(c : ^connection_t) -> get_pointer_control_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_pointer_control_unchecked :: proc(c : ^connection_t) -> get_pointer_control_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_pointer_control_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_pointer_control_reply :: proc(c : ^connection_t, cookie : get_pointer_control_cookie_t, e : ^^generic_error_t) -> ^get_pointer_control_reply_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
set_screen_saver_checked :: proc(c : ^connection_t, timeout : i16, interval : i16, prefer_blanking : u8, allow_exposures : u8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
set_screen_saver :: proc(c : ^connection_t, timeout : i16, interval : i16, prefer_blanking : u8, allow_exposures : u8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
get_screen_saver :: proc(c : ^connection_t) -> get_screen_saver_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_screen_saver_unchecked :: proc(c : ^connection_t) -> get_screen_saver_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_screen_saver_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_screen_saver_reply :: proc(c : ^connection_t, cookie : get_screen_saver_cookie_t, e : ^^generic_error_t) -> ^get_screen_saver_reply_t ---
change_hosts_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
change_hosts_checked :: proc(c : ^connection_t, mode : u8, family : u8, address_len : u16, address : ^u8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
change_hosts :: proc(c : ^connection_t, mode : u8, family : u8, address_len : u16, address : ^u8) -> void_cookie_t ---
change_hosts_address_length :: proc(R : ^change_hosts_request_t) -> _c.int ---
change_hosts_address_end :: proc(R : ^change_hosts_request_t) -> generic_iterator_t ---
host_sizeof :: proc(_buffer : rawptr) -> _c.int ---
change_hosts_address :: proc(R : ^change_hosts_request_t) -> ^u8 ---
host_address :: proc(R : ^host_t) -> ^u8 ---
host_address_length :: proc(R : ^host_t) -> _c.int ---
host_address_end :: proc(R : ^host_t) -> generic_iterator_t ---
/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_host_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(host_t)
 */
host_next :: proc(i : ^host_iterator_t) ---
list_hosts_hosts_iterator :: proc(R : ^list_hosts_reply_t) -> host_iterator_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
no_operation_checked :: proc(c : ^connection_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
no_operation :: proc(c : ^connection_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
list_hosts :: proc(c : ^connection_t) -> list_hosts_cookie_t ---
get_modifier_mapping_keycodes_end :: proc(R : ^get_modifier_mapping_reply_t) -> generic_iterator_t ---
get_pointer_mapping_map_end :: proc(R : ^get_pointer_mapping_reply_t) -> generic_iterator_t ---
list_hosts_hosts_length :: proc(R : ^list_hosts_reply_t) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
set_access_control_checked :: proc(c : ^connection_t, mode : u8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
set_access_control :: proc(c : ^connection_t, mode : u8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
set_close_down_mode_checked :: proc(c : ^connection_t, mode : u8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
set_close_down_mode :: proc(c : ^connection_t, mode : u8) -> void_cookie_t ---
/**
 * @brief kills a client
 *
 * @param c The connection
 * @param resource Any resource belonging to the client (for example a Window), used to identify
 * the client connection.
 * \n
 * The special value of `XCB_KILL_ALL_TEMPORARY`, the resources of all clients
 * that have terminated in `RetainTemporary` (TODO) are destroyed.
 * @return A cookie
 *
 * Forces a close down of the client that created the specified \a resource.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
kill_client_checked :: proc(c : ^connection_t, resource : u32) -> void_cookie_t ---
/**
 * @brief kills a client
 *
 * @param c The connection
 * @param resource Any resource belonging to the client (for example a Window), used to identify
 * the client connection.
 * \n
 * The special value of `XCB_KILL_ALL_TEMPORARY`, the resources of all clients
 * that have terminated in `RetainTemporary` (TODO) are destroyed.
 * @return A cookie
 *
 * Forces a close down of the client that created the specified \a resource.
 *
 */
kill_client :: proc(c : ^connection_t, resource : u32) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
rotate_properties_checked :: proc(c : ^connection_t, window : window_t, atoms_len : u16, delta : i16, atoms : ^atom_t) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
rotate_properties :: proc(c : ^connection_t, window : window_t, atoms_len : u16, delta : i16, atoms : ^atom_t) -> void_cookie_t ---
rotate_properties_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_host_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
host_end :: proc(i : host_iterator_t) -> generic_iterator_t ---
list_hosts_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
list_hosts_unchecked :: proc(c : ^connection_t) -> list_hosts_cookie_t ---
rotate_properties_atoms_length :: proc(R : ^rotate_properties_request_t) -> _c.int ---
rotate_properties_atoms_end :: proc(R : ^rotate_properties_request_t) -> generic_iterator_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
force_screen_saver_checked :: proc(c : ^connection_t, mode : u8) -> void_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
force_screen_saver :: proc(c : ^connection_t, mode : u8) -> void_cookie_t ---
set_pointer_mapping_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
set_pointer_mapping :: proc(c : ^connection_t, map_len : u8, map_ : ^u8) -> set_pointer_mapping_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
set_pointer_mapping_unchecked :: proc(c : ^connection_t, map_len : u8, map_ : ^u8) -> set_pointer_mapping_cookie_t ---
get_pointer_mapping_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
get_pointer_mapping :: proc(c : ^connection_t) -> get_pointer_mapping_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_pointer_mapping_unchecked :: proc(c : ^connection_t) -> get_pointer_mapping_cookie_t ---
get_pointer_mapping_map_length :: proc(R : ^get_pointer_mapping_reply_t) -> _c.int ---
set_modifier_mapping_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
set_modifier_mapping :: proc(c : ^connection_t, keycodes_per_modifier : u8, keycodes : ^keycode_t) -> set_modifier_mapping_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
set_modifier_mapping_unchecked :: proc(c : ^connection_t, keycodes_per_modifier : u8, keycodes : ^keycode_t) -> set_modifier_mapping_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_set_modifier_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
set_modifier_mapping_reply :: proc(c : ^connection_t, cookie : set_modifier_mapping_cookie_t, e : ^^generic_error_t) -> ^set_modifier_mapping_reply_t ---
get_modifier_mapping_sizeof :: proc(_buffer : rawptr) -> _c.int ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 */
get_modifier_mapping :: proc(c : ^connection_t) -> get_modifier_mapping_cookie_t ---
/**
 *
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
get_modifier_mapping_unchecked :: proc(c : ^connection_t) -> get_modifier_mapping_cookie_t ---
get_modifier_mapping_keycodes_length :: proc(R : ^get_modifier_mapping_reply_t) -> _c.int ---
get_pointer_mapping_map :: proc(R : ^get_pointer_mapping_reply_t) -> ^u8 ---
get_modifier_mapping_keycodes :: proc(R : ^get_modifier_mapping_reply_t) -> ^keycode_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_hosts_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
list_hosts_reply :: proc(c : ^connection_t, cookie : list_hosts_cookie_t, e : ^^generic_error_t) -> ^list_hosts_reply_t ---
rotate_properties_atoms :: proc(R : ^rotate_properties_request_t) -> ^atom_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_set_pointer_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
set_pointer_mapping_reply :: proc(c : ^connection_t, cookie : set_pointer_mapping_cookie_t, e : ^^generic_error_t) -> ^set_pointer_mapping_reply_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_pointer_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_pointer_mapping_reply :: proc(c : ^connection_t, cookie : get_pointer_mapping_cookie_t, e : ^^generic_error_t) -> ^get_pointer_mapping_reply_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_modifier_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
get_modifier_mapping_reply :: proc(c : ^connection_t, cookie : get_modifier_mapping_cookie_t, e : ^^generic_error_t) -> ^get_modifier_mapping_reply_t ---
}