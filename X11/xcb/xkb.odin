package xcb

import "core:time"
import "core:mem/virtual"
import "base:sanitizer"
import _c "core:c"

XCB_XKB_MAJOR_VERSION :: 1
XCB_XKB_MINOR_VERSION :: 0

@(link_name="xcb_xkb_id")
xkb_id: extension_t

XCB_XKB_KEYBOARD :: 0
XCB_XKB_USE_EXTENSION :: 0
XCB_XKB_SELECT_EVENTS :: 1
XCB_XKB_BELL :: 3
XCB_XKB_GET_STATE :: 4
XCB_XKB_LATCH_LOCK_STATE :: 5
XCB_XKB_GET_CONTROLS :: 6
XCB_XKB_SET_CONTROLS :: 7
XCB_XKB_GET_MAP :: 8
XCB_XKB_SET_MAP :: 9
XCB_XKB_GET_COMPAT_MAP :: 10
XCB_XKB_SET_COMPAT_MAP :: 11
XCB_XKB_GET_INDICATOR_STATE :: 12
XCB_XKB_GET_INDICATOR_MAP :: 13
XCB_XKB_SET_INDICATOR_MAP :: 14
XCB_XKB_GET_NAMED_INDICATOR :: 15
XCB_XKB_SET_NAMED_INDICATOR :: 16
XCB_XKB_GET_NAMES :: 17
XCB_XKB_SET_NAMES :: 18
XCB_XKB_PER_CLIENT_FLAGS :: 21
XCB_XKB_LIST_COMPONENTS :: 22
XCB_XKB_GET_KBD_BY_NAME :: 23
XCB_XKB_GET_DEVICE_INFO :: 24
XCB_XKB_SET_DEVICE_INFO :: 25
XCB_XKB_SET_DEBUGGING_FLAGS :: 101
XCB_XKB_NEW_KEYBOARD_NOTIFY :: 0
XCB_XKB_MAP_NOTIFY :: 1
XCB_XKB_STATE_NOTIFY :: 2
XCB_XKB_CONTROLS_NOTIFY :: 3
XCB_XKB_INDICATOR_STATE_NOTIFY :: 4
XCB_XKB_INDICATOR_MAP_NOTIFY :: 5
XCB_XKB_NAMES_NOTIFY :: 6
XCB_XKB_COMPAT_MAP_NOTIFY :: 7
XCB_XKB_BELL_NOTIFY :: 8
XCB_XKB_ACTION_MESSAGE :: 9
XCB_XKB_ACCESS_X_NOTIFY :: 10
XCB_XKB_EXTENSION_DEVICE_NOTIFY :: 11

xkb_device_spec_t :: u16
xkb_led_class_spec_t :: u16
xkb_bell_class_spec_t :: u16
xkb_id_spec_t :: u16
xkb_string8_t :: _c.char

xkb_const_t :: enum _c.int {
    XCB_XKB_CONST_MAX_LEGAL_KEY_CODE = 255,
    XCB_XKB_PER_KEY_BIT_ARRAY_SIZE = 32,
    XCB_XKB_KEY_NAME_LENGTH = 4,
}

xkb_event_type_t :: enum _c.int {
    XCB_XKB_EVENT_TYPE_NEW_KEYBOARD_NOTIFY = 1,
    XCB_XKB_EVENT_TYPE_MAP_NOTIFY = 2,
    XCB_XKB_EVENT_TYPE_STATE_NOTIFY = 4,
    XCB_XKB_EVENT_TYPE_CONTROLS_NOTIFY = 8,
    XCB_XKB_EVENT_TYPE_INDICATOR_STATE_NOTIFY = 16,
    XCB_XKB_EVENT_TYPE_INDICATOR_MAP_NOTIFY = 32,
    XCB_XKB_EVENT_TYPE_NAMES_NOTIFY = 64,
    XCB_XKB_EVENT_TYPE_COMPAT_MAP_NOTIFY = 128,
    XCB_XKB_EVENT_TYPE_BELL_NOTIFY = 256,
    XCB_XKB_EVENT_TYPE_ACTION_MESSAGE = 512,
    XCB_XKB_EVENT_TYPE_ACCESS_X_NOTIFY = 1024,
    XCB_XKB_EVENT_TYPE_EXTENSION_DEVICE_NOTIFY = 2048,
}

xkb_nkn_detail_t :: enum _c.int {
    XCB_XKB_NKN_DETAIL_KEYCODE = 1,
    XCB_XKB_NKN_DETAIL_GEOMETRY = 2,
    XCB_XKB_NKN_DETAIL_DEVICE_ID = 4,
}

xkb_axn_detail_t :: enum _c.int {
    XCB_XKB_AXN_DETAIL_SK_PRESS = 1,
    XCB_XKB_AXN_DETAIL_SK_ACCEPT = 2,
    XCB_XKB_AXN_DETAIL_SK_REJECT = 4,
    XCB_XKB_AXN_DETAIL_SK_RELEASE = 8,
    XCB_XKB_AXN_DETAIL_BK_ACCEPT = 16,
    XCB_XKB_AXN_DETAIL_BK_REJECT = 32,
    XCB_XKB_AXN_DETAIL_AXN_WARNING = 64,
}

xkb_map_part_t :: enum _c.int {
    XCB_XKB_MAP_PART_KEY_TYPES = 1,
    XCB_XKB_MAP_PART_KEY_SYMS = 2,
    XCB_XKB_MAP_PART_MODIFIER_MAP = 4,
    XCB_XKB_MAP_PART_EXPLICIT_COMPONENTS = 8,
    XCB_XKB_MAP_PART_KEY_ACTIONS = 16,
    XCB_XKB_MAP_PART_KEY_BEHAVIORS = 32,
    XCB_XKB_MAP_PART_VIRTUAL_MODS = 64,
    XCB_XKB_MAP_PART_VIRTUAL_MOD_MAP = 128,
}

xkb_set_map_flags_t :: enum _c.int {
    XCB_XKB_SET_MAP_FLAGS_RESIZE_TYPES = 1,
    XCB_XKB_SET_MAP_FLAGS_RECOMPUTE_ACTIONS = 2,
}

xkb_state_part_t :: enum _c.int {
    XCB_XKB_STATE_PART_MODIFIER_STATE = 1,
    XCB_XKB_STATE_PART_MODIFIER_BASE = 2,
    XCB_XKB_STATE_PART_MODIFIER_LATCH = 4,
    XCB_XKB_STATE_PART_MODIFIER_LOCK = 8,
    XCB_XKB_STATE_PART_GROUP_STATE = 16,
    XCB_XKB_STATE_PART_GROUP_BASE = 32,
    XCB_XKB_STATE_PART_GROUP_LATCH = 64,
    XCB_XKB_STATE_PART_GROUP_LOCK = 128,
    XCB_XKB_STATE_PART_COMPAT_STATE = 256,
    XCB_XKB_STATE_PART_GRAB_MODS = 512,
    XCB_XKB_STATE_PART_COMPAT_GRAB_MODS = 1024,
    XCB_XKB_STATE_PART_LOOKUP_MODS = 2048,
    XCB_XKB_STATE_PART_COMPAT_LOOKUP_MODS = 4096,
    XCB_XKB_STATE_PART_POINTER_BUTTONS = 8192,
}

xkb_bool_ctrl_t :: enum _c.int {
    XCB_XKB_BOOL_CTRL_REPEAT_KEYS = 1,
    XCB_XKB_BOOL_CTRL_SLOW_KEYS = 2,
    XCB_XKB_BOOL_CTRL_BOUNCE_KEYS = 4,
    XCB_XKB_BOOL_CTRL_STICKY_KEYS = 8,
    XCB_XKB_BOOL_CTRL_MOUSE_KEYS = 16,
    XCB_XKB_BOOL_CTRL_MOUSE_KEYS_ACCEL = 32,
    XCB_XKB_BOOL_CTRL_ACCESS_X_KEYS = 64,
    XCB_XKB_BOOL_CTRL_ACCESS_X_TIMEOUT_MASK = 128,
    XCB_XKB_BOOL_CTRL_ACCESS_X_FEEDBACK_MASK = 256,
    XCB_XKB_BOOL_CTRL_AUDIBLE_BELL_MASK = 512,
    XCB_XKB_BOOL_CTRL_OVERLAY_1_MASK = 1024,
    XCB_XKB_BOOL_CTRL_OVERLAY_2_MASK = 2048,
    XCB_XKB_BOOL_CTRL_IGNORE_GROUP_LOCK_MASK = 4096,
}

xkb_control_t :: enum _c.uint {
    XCB_XKB_CONTROL_GROUP_WRAP = 134217728,
    XCB_XKB_CONTROL_INTERNAL_MODS = 268435456,
    XCB_XKB_CONTROL_IGNORE_LOCK_MODS = 536870912,
    XCB_XKB_CONTROL_PER_KEY_REPEAT = 1073741824,
    XCB_XKB_CONTROL_CONTROLS_ENABLED = 2147483648,
}

xkb_ax_option_t :: enum _c.int {
    XCB_XKB_AX_OPTION_SK_PRESS_FB = 1,
    XCB_XKB_AX_OPTION_SK_ACCEPT_FB = 2,
    XCB_XKB_AX_OPTION_FEATURE_FB = 4,
    XCB_XKB_AX_OPTION_SLOW_WARN_FB = 8,
    XCB_XKB_AX_OPTION_INDICATOR_FB = 16,
    XCB_XKB_AX_OPTION_STICKY_KEYS_FB = 32,
    XCB_XKB_AX_OPTION_TWO_KEYS = 64,
    XCB_XKB_AX_LATCH_TO_LOCK = 128,
    XCB_XKB_AX_OPTION_SK_RELEASE_FB = 256,
    XCB_XKB_AX_OPTION_SK_REJECT_FB = 512,
    XCB_XKB_AX_OPTION_BK_REJECT_FB = 1024,
    XCB_XKB_AX_OPTION_DUMB_BELL = 2048,
}

xkb_device_spec_iterator_t :: struct {
    data: ^xkb_device_spec_t,
    rem: _c.int,
    index: _c.int,
}

xkb_led_class_result_t :: enum _c.int {
    XCB_XKB_LED_CLASS_RESULT_KBD_FEEDBACK_CLASS = 0,
    XCB_XKB_LED_CLASS_RESULT_LED_FEEDBACK_CLASS = 4,
}

xkb_led_class_t :: enum _c.int {
    XCB_XKB_LED_CLASS_KBD_FEEDBACK_CLASS = 0,
    XCB_XKB_LED_CLASS_LED_FEEDBACK_CLASS = 4,
    XCB_XKB_LED_CLASS_DFLT_XI_CLASS = 768,
    XCB_XKB_LED_CLASS_ALL_XI_CLASSES = 1280,
}

xkb_led_class_spec_iterator_t :: struct {
    data: ^xkb_led_class_spec_t,
    rem: _c.int,
    index: _c.int,
}

xkb_bell_class_result_t :: enum _c.int {
    XCB_XKB_BELL_CLASS_RESULT_KBC_FEEDBACK_CLASS = 0,
    XCB_XKB_BELL_CLASS_RESULT_BELL_FEEDBACK_CLASS = 5,
}

xkb_bell_class_t :: enum _c.int {
    XCB_XKB_BELL_CLASS_KBD_FEEDBACK_CLASS = 0,
    XCB_XKB_BELL_CLASS_BELL_FEEDBACK_CLASS = 5,
    XCB_XKB_BELL_CLASS_DFLT_XI_CLASS = 768,
}

xkb_bell_class_spec_iterator_t :: struct {
    data: ^xkb_bell_class_spec_t,
    rem: _c.int,
    index: _c.int,
}

xcb_xkb_id_t :: enum _c.int {
    XCB_XKB_ID_USE_CORE_KBD = 256,
    XCB_XKB_ID_USE_CORE_PTR = 512,
    XCB_XKB_ID_DFLT_XI_CLASS = 768,
    XCB_XKB_ID_DFLT_XI_ID = 1024,
    XCB_XKB_ID_ALL_XI_CLASS = 1280,
    XCB_XKB_ID_ALL_XI_ID = 1536,
    XCB_XKB_ID_XI_NONE = 65280,
}

xkb_id_spec_iterator_t :: struct {
    data: ^xkb_id_spec_t,
    rem: _c.int,
    index: _c.int,
}

xkb_group_t :: enum _c.int {
    XCB_XKB_GROUP_1,
    XCB_XKB_GROUP_2,
    XCB_XKB_GROUP_3,
    XCB_XKB_GROUP_4,
}

xkb_groups_t :: enum _c.int {
    XCB_XKB_GROUPS_ANY = 254,
    XCB_XKB_GROUPS_ALL = 255,
}

xkb_set_of_group_t :: enum _c.int {
    XCB_XKB_SET_OF_GROUP_GROUP_1 = 1,
    XCB_XKB_SET_OF_GROUP_GROUP_2 = 2,
    XCB_XKB_SET_OF_GROUP_GROUP_3 = 4,
    XCB_XKB_SET_OF_GROUP_GROUP_4 = 8,
}

xkb_set_of_groups_t :: enum _c.int {
    XCB_XKB_SET_OF_GROUPS_ANY = 128,
}

xkb_groups_wrap_t :: enum _c.int {
    XCB_XKB_GROUPS_WRAP_WRAP_INTO_RANGE = 0,
    XCB_XKB_GROUPS_WRAP_CLAMP_INTO_RANGE = 64,
    XCB_XKB_GROUPS_WRAP_REDIRECT_INTO_RANGE = 128,
}

xkb_v_mods_high_t :: enum _c.int {
    XCB_XKB_V_MODS_HIGH_15 = 128,
    XCB_XKB_V_MODS_HIGH_14 = 64,
    XCB_XKB_V_MODS_HIGH_13 = 32,
    XCB_XKB_V_MODS_HIGH_12 = 16,
    XCB_XKB_V_MODS_HIGH_11 = 8,
    XCB_XKB_V_MODS_HIGH_10 = 4,
    XCB_XKB_V_MODS_HIGH_9 = 2,
    XCB_XKB_V_MODS_HIGH_8 = 1,
}

xkb_v_mods_low_t :: enum _c.int {
    XCB_XKB_V_MODS_LOW_7 = 128,
    XCB_XKB_V_MODS_LOW_6 = 64,
    XCB_XKB_V_MODS_LOW_5 = 32,
    XCB_XKB_V_MODS_LOW_4 = 16,
    XCB_XKB_V_MODS_LOW_3 = 8,
    XCB_XKB_V_MODS_LOW_2 = 4,
    XCB_XKB_V_MODS_LOW_1 = 2,
    XCB_XKB_V_MODS_LOW_0 = 1,
}

xkb_v_mod_t :: enum _c.int {
    XCB_XKB_V_MOD_15 = 128,
    XCB_XKB_V_MOD_14 = 64,
    XCB_XKB_V_MOD_13 = 32,
    XCB_XKB_V_MOD_12 = 16,
    XCB_XKB_V_MOD_11 = 8,
    XCB_XKB_V_MOD_10 = 4,
    XCB_XKB_V_MOD_9 = 2,
    XCB_XKB_V_MOD_8 = 1,
    XCB_XKB_V_MOD_7 = 128,
    XCB_XKB_V_MOD_6 = 64,
    XCB_XKB_V_MOD_5 = 32,
    XCB_XKB_V_MOD_4 = 16,
    XCB_XKB_V_MOD_3 = 8,
    XCB_XKB_V_MOD_2 = 4,
    XCB_XKB_V_MOD_1 = 2,
    XCB_XKB_V_MOD_0 = 1,
}

xkb_explicit_t :: enum _c.int {
    XCB_XKB_EXPLICIT_V_MOD_MAP = 128,
    XCB_XKB_EXPLICIT_BEHAVIOR = 64,
    XCB_XKB_EXPLICIT_AUTO_REPEAT = 32,
    XCB_XKB_EXPLICIT_INTERPRET = 16,
    XCB_XKB_EXPLICIT_KEY_TYPE_4 = 8,
    XCB_XKB_EXPLICIT_KEY_TYPE_3 = 4,
    XCB_XKB_EXPLICIT_KEY_TYPE_2 = 2,
    XCB_XKB_EXPLICIT_KEY_TYPE_1 = 1,
}

xkb_sym_interpret_match_t :: enum _c.int {
    XCB_XKB_SYM_INTERPRET_MATCH_NONE_OF,
    XCB_XKB_SYM_INTERPRET_MATCH_ANY_OF_OR_NONE,
    XCB_XKB_SYM_INTERPRET_MATCH_ANY_OF,
    XCB_XKB_SYM_INTERPRET_MATCH_ALL_OF,
    XCB_XKB_SYM_INTERPRET_MATCH_EXACTLY,
}

xkb_sym_interp_match_t :: enum _c.int {
    XCB_XKB_INTERP_MATCH_LEVEL_ONE_ONLY = 128,
    XCB_XKB_INTERP_MATCH_OP_MASK = 127,
}

xkb_im_flag_t :: enum _c.int {
    XCB_XKB_IM_FLAG_NO_EXPLICIT = 128,
    XCB_XKB_IM_FLAG_NO_AUTOMATIC = 64,
    XCB_XKB_IM_FLAG_LED_DRIVES_KB = 32,
}

xkb_im_mods_which_t :: enum _c.int {
    XCB_XKB_IM_MODS_WHICH_USE_COMPAT = 16,
    XCB_XKB_IM_MODS_WHICH_USE_EFFECTIVE = 8,
    XCB_XKB_IM_MODS_WHICH_USE_LOCKED = 4,
    XCB_XKB_IM_MODS_WHICH_USE_LATCHED = 2,
    XCB_XKB_IM_MODS_WHICH_USE_BASE = 1,
}

xkb_im_groups_which_t :: enum _c.int {
    XCB_XKB_IM_GROUPS_WHICH_USE_COMPAT = 16,
    XCB_XKB_IM_GROUPS_WHICH_USE_EFFECTIVE = 8,
    XCB_XKB_IM_GROUPS_WHICH_USE_LOCKED = 4,
    XCB_XKB_IM_GROUPS_WHICH_USE_LATCHED = 2,
    XCB_XKB_IM_GROUPS_WHICH_USE_BASE = 1,
}

xkb_indicator_map_t :: struct {
    flags: u8,
    whichGroups: u8,
    groups: u8,
    whichMods: u8,
    mods: u8,
    realMods: u8,
    vmods: u16,
    ctrls: u32,
}

xkb_indicator_map_iterator_t :: struct {
    data: ^xkb_indicator_map_t,
    rem: _c.int,
    index: _c.int,
}

xkb_cm_detail_t :: enum _c.int {
    XCB_XKB_CM_DETAIL_SYM_INTERP = 1,
    XCB_XKB_CM_DETAIL_GROUP_COMPAT = 2,
}

xkb_name_detail_t :: enum _c.int {
    XCB_XKB_NAME_DETAIL_KEYCODE = 1,
    XCB_XKB_NAME_DETAIL_GEOMETRY = 2,
    XCB_XKB_NAME_DETAIL_SYMBOLS = 4,
    XCB_XKB_NAME_DETAIL_PHYS_SYMBOLS = 8,
    XCB_XKB_NAME_DETAIL_TYPES = 16,
    XCB_XKB_NAME_DETAIL_COMPAT = 32,
    XCB_XKB_NAME_DETAIL_KEY_TYPE_NAMES = 64,
    XCB_XKB_NAME_DETAIL_KT_LEVEL_NAMES = 128,
    XCB_XKB_NAME_DETAIL_INDICATOR_NAMES = 256,
    XCB_XKB_NAME_DETAIL_KEY_NAMES = 512,
    XCB_XKB_NAME_DETAIL_KEY_ALIASES = 1024,
    XCB_XKB_NAME_DETAIL_VIRTUAL_MOD_NAMES = 2048,
    XCB_XKB_NAME_DETAIL_GROUP_NAMES = 4096,
    XCB_XKB_NAME_DETAIL_RG_NAMES = 8192,
}

xkb_gbn_detail_t :: enum _c.int {
    XCB_XKB_GBN_DETAIL_TYPES = 1,
    XCB_XKB_GBN_DETAIL_COMPAT_MAP = 2,
    XCB_XKB_GBN_DETAIL_CLIENT_SYMBOLS = 4,
    XCB_XKB_GBN_DETAIL_SERVER_SYMBOLS = 8,
    XCB_XKB_GBN_DETAIL_INDICATOR_MAPS = 16,
    XCB_XKB_GBN_DETAIL_KEY_NAMES = 32,
    XCB_XKB_GBN_DETAIL_GEOMETRY = 64,
    XCB_XKB_GBN_DETAIL_OTHER_NAMES = 128,
}

xkb_xi_feature_t :: enum _c.int {
    XCB_XKB_XI_FEATURE_KEYBOARD = 1,
    XCB_XKB_XI_FEATURE_BUTTON_ACTIONS = 2,
    XCB_XKB_XI_FEATURE_INDICATOR_NAMES = 4,
    XCB_XKB_XI_FEATURE_INDICATOR_MAPS = 8,
    XCB_XKB_XI_FEATURE_INDICATOR_STATE = 16,
}

xkb_per_client_flag_t :: enum _c.int {
    XCB_XKB_PER_CLIENT_FLAG_DETECTABLE_AUTO_REPEAT = 1,
    XCB_XKB_PER_CLIENT_FLAG_GRABS_USE_XKB_STATE = 2,
    XCB_XKB_PER_CLIENT_FLAG_AUTO_RESET_CONTROLS = 4,
    XCB_XKB_PER_CLIENT_FLAG_LOOKUP_STATE_WHEN_GRABBED = 8,
    XCB_XKB_PER_CLIENT_FLAG_SEND_EVENT_USES_XKB_STATE = 16,
}

xkb_mod_def_t :: struct {
    mask: u8,
    realMods: u8,
    vmods: u16,
}

xkb_mod_def_iterator_t :: struct {
    data: xkb_mod_def_t,
    rem: _c.int,
    index: _c.int,
}

xkb_key_name_t :: struct {
    name: [4]_c.char,
}

xkb_key_name_iterator_t :: struct {
    data: ^xkb_key_name_t,
    rem: _c.int,
    index: _c.int,
}

xkb_key_alias_t :: struct {
    real: [4]_c.char,
    alias: [4]_c.char,
}

xkb_key_alias_iterator_t :: struct {
    data: ^xkb_key_alias_t,
    rem: _c.int,
    index: _c.int,
}

xkb_counted_string_16_t :: struct {
    length: u16,
}

xkb_counted_string_16_iterator_t :: struct {
    data: ^xkb_counted_string_16_t,
    rem: _c.int,
    index: _c.int,
}

xkb_kt_map_entry_t :: struct {
    active: u8,
    mods_mask: u8,
    level: u8,
    mods_mods: u8,
    mods_vmods: u16,
    pad0: [2]u8,
}

xkb_kt_map_entry_iterator_t :: struct {
    data: ^xkb_kt_map_entry_t,
    rem: _c.int,
    index: _c.int,
}

xkb_key_type_t :: struct {
    mods_mask: u8,
    mods_mods: u8,
    mods_vmods: u16,
    numlevels : u8,
    nMapEntries: u8,
    hasPreserve: u8,
    pad0: u8,
}

xkb_key_type_iterator_t :: struct {
    data: ^xkb_key_type_t,
    rem: _c.int,
    index: _c.int,
}

xkb_key_sym_map_t :: struct {
    kt_index: [4]u8,
    groupInfo: u8,
    width: u8,
    nSyms: u16,
}

xkb_key_sym_map_iterator_t :: struct {
    data: ^xkb_key_sym_map_t,
    rem: _c.int,
    index: _c.int,
}

xkb_common_behavior_t :: struct {
    type: u8,
    data: u8,
}

xkb_common_behavior_iterator_t :: struct {
    data: ^xkb_common_behavior_t,
    rem: _c.int,
    index: _c.int,
}

xkb_default_behavior_t :: struct {
    type: u8,
    pad0: u8,
}

xkb_default_behavior_iterator_t :: struct {
    data: ^xkb_default_behavior_t,
    rem: _c.int,
    index: _c.int,
}

xkb_lock_behavior_t :: struct {
    type: u8,
    pad0: u8,
}

xkb_lock_behavior_iterator_t :: struct {
    data: ^xkb_lock_behavior_t,
    rem: _c.int,
    index: _c.int,
}

xkb_radio_group_behavior_t :: struct {
    type: u8,
    group: u8,
}

xkb_radio_group_behavior_iterator_t :: struct {
    data: ^xkb_radio_group_behavior_t,
    rem: _c.int,
    index: _c.int,
}

xkb_overlay_behavior_t :: struct {
    type: u8,
    key: keycode_t,
}

xkb_overlay_behavior_iterator_t :: struct {
    data: ^xkb_overlay_behavior_t,
    rem: _c.int,
    index: _c.int,
}

xkb_permanent_lock_behavior_t :: struct {
    type: u8,
    pad0: u8,
}

xkb_permanent_lock_behavior_iterator_t :: struct {
    data: ^xkb_permanent_lock_behavior_t,
    rem: _c.int,
    index: _c.int,
}

xkb_permanent_radio_group_behavior_t :: struct {
    type: u8,
    group: u8,
}

xkb_permanent_radio_group_behavior_iterator_t :: struct {
    data: ^xkb_permanent_radio_group_behavior_t,
    rem: _c.int,
    index: _c.int,
}

xkb_permanent_overlay_behavior_t :: struct {
    type: u8,
    key: keycode_t,
}

xkb_permanent_overlay_behavior_iterator_t :: struct {
    data: ^xkb_permanent_overlay_behavior_t,
    rem: _c.int,
    index: _c.int,
}

xkb_behavior_t :: struct #raw_union {
    common: xkb_common_behavior_t,
    _default: xkb_default_behavior_t,
    lock: xkb_lock_behavior_t,
    radioGroup: xkb_radio_group_behavior_t,
    overlay1: xkb_overlay_behavior_t,
    overlay2: xkb_overlay_behavior_t,
    permanentLock: xkb_permanent_lock_behavior_t,
    permanentRadioGroup: xkb_permanent_radio_group_behavior_t,
    permanentOverlay1: xkb_permanent_overlay_behavior_t,
    permanentOverlay2: xkb_permanent_overlay_behavior_t,
    type: u8,
}

xkb_behavior_iterator_t :: struct {
    data: ^xkb_behavior_t,
    rem: _c.int,
    index: _c.int,
}

xkb_behavior_type_t :: enum _c.int {
    XCB_XKB_BEHAVIOR_TYPE_DEFAULT = 0,
    XCB_XKB_BEHAVIOR_TYPE_LOCK = 1,
    XCB_XKB_BEHAVIOR_TYPE_RADIO_GROUP = 2,
    XCB_XKB_BEHAVIOR_TYPE_OVERLAY_1 = 3,
    XCB_XKB_BEHAVIOR_TYPE_OVERLAY_2 = 4,
    XCB_XKB_BEHAVIOR_TYPE_PERMANENT_LOCK = 129,
    XCB_XKB_BEHAVIOR_TYPE_PERMANENT_RADIO_GROUP = 130,
    XCB_XKB_BEHAVIOR_TYPE_PERMANENT_OVERLAY_1 = 131,
    XCB_XKB_BEHAVIOR_TYPE_PERMANENT_OVERLAY_2 = 132,
}

xkb_set_behavior_t :: struct {
    keycode: keycode_t,
    behavior: xkb_behavior_t,
    pad0: u8,
}

xkb_set_behavior_iterator_t :: struct {
    data: ^xkb_set_behavior_t,
    rem: _c.int,
    index: _c.int,
}

xkb_set_explicit_t :: struct {
    keycode: keycode_t,
    explicit: u8,
}

xkb_set_explicit_iterator_t :: struct {
    data: ^xkb_set_explicit_t,
    rem: _c.int,
    index: _c.int,
}

xkb_key_mod_map_t :: struct {
    keycode: keycode_t,
    mods: u8,
}

xkb_key_mod_map_iterator_t :: struct {
    data: ^xkb_key_mod_map_t,
    rem: _c.int,
    index: _c.int,
}

xkb_key_v_mod_map_t :: struct {
    keycode: keycode_t,
    pad0: u8,
    vmods: u16,
}

xkb_key_v_mod_map_iterator_t :: struct {
    data: ^xkb_key_v_mod_map_t,
    rem: _c.int,
    index: _c.int,
}

xkb_kt_set_map_entry_t :: struct {
    level: u8,
    realMods: u8,
    virtualMods: u16,
}

xkb_kt_set_map_entry_iterator_t :: struct {
    data: ^xkb_kt_set_map_entry_t,
    rem: _c.int,
    index: _c.int,
}

xkb_set_key_type_t :: struct {
    mask: u8,
    realMods: u8,
    virualMods: u16,
    numLevels: u8,
    nMapEntries: u8,
    preserve: u8,
    pad0: u8,
}

xkb_set_key_type_iterator_t :: struct {
    data: ^xkb_set_key_type_t,
    rem: _c.int,
    index: _c.int,
}

xkb_string8_iterator_t :: struct {
    data: ^xkb_string8_t,
    rem: _c.int,
    index: _c.int,
}

xkb_outline_t :: struct {
    nPoints: u8,
    cornerRadius: u8,
    pad0: [2]u8,
}

xkb_outline_iterator_t :: struct {
    data: ^xkb_outline_t,
    rem: _c.int,
    index: _c.int,
}

xkb_shape_t :: struct {
    name: atom_t,
    nOutlines: u8,
    primaryNdx: u8,
    approxNdx: u8,
    pad0: u8,
}

xkb_shape_iterator_t :: struct {
    data: ^xkb_shape_t,
    rem: _c.int,
    index: _c.int,
}

xkb_key_t :: struct {
    name: [4]xkb_string8_t,
    gap: u16,
    shapeNdx: u8,
    colorNdx: u8,
}

xkb_key_iterator_t :: struct {
    data: ^xkb_key_t,
    rem: _c.int,
    index: _c.int,
}

xkb_overlay_key_t :: struct {
    over: [4]xkb_string8_t,
    under: [4]xkb_string8_t,
}

xkb_overlay_key_iterator_t :: struct {
    data: ^xkb_overlay_key_t,
    rem: _c.int,
    index: _c.int,
}

xkb_overlay_row_t :: struct {
    rowUnder: u8,
    nKeys: u8,
    pad0: [2]u8,
}

xkb_overlay_row_iterator_t :: struct {
    data: ^xkb_overlay_row_t,
    rem: _c.int,
    index: _c.int,
}

xkb_overlay_t :: struct {
    name: atom_t,
    nRows: u8,
    pad0: [3]u8,
}

xkb_overlay_iterator_t :: struct {
    data: ^xkb_overlay_t,
    rem: _c.int,
    index: _c.int,
}

xkb_row_t :: struct {
    top: u16,
    left: u16,
    nKeys: u8,
    vertical: u8,
    pad0: [2]u8,
}

xkb_row_iterator_t :: struct {
    data: ^xkb_row_t,
    rem: _c.int,
    index: _c.int,
}

xkb_doodad_type_t :: enum _c.int {
    XCB_XKB_DOODAD_TYPE_OUTLINE = 1,
    XCB_XKB_DOODAD_TYPE_SOLID = 2,
    XCB_XKB_DOODAD_TYPE_TEXT = 3,
    XCB_XKB_DOODAD_TYPE_INDICATOR = 4,
    XCB_XKB_DOODAD_TYPE_LOGO = 5,
}

xkb_listing_t :: struct {
    flags: u16,
    length: u16,
}

xkb_listing_iterator_t :: struct {
    data: ^xkb_listing_t,
    rem: _c.int,
    index: _c.int,
}

xkb_device_led_info_t :: struct {
    ledClass: xkb_led_class_spec_t,
    ledID: xkb_id_spec_t,
    namesPresent: u32,
    mapsPresent: u32,
    physIndicators: u32,
    state: u32,
}

xkb_device_led_info_iterator_t :: struct {
    data: ^xkb_device_led_info_t,
    rem: _c.int,
    index: _c.int,
}

xkb_error_t :: enum _c.int {
    XKB_ERROR_BAD_DEVICE = 255,
    XKB_ERROR_BAD_CLASS = 254,
    XKB_ERROR_BAD_ID = 253,
}

xkb_keyboard_error_t :: struct {
    response_type: u8,
    error_code: u8,
    sequence: u16,
    value: u32,
    minorOpcode: u8,
    majorOpcode: u8,
}

xkb_sa_t :: enum _c.int {
    XCB_XKB_SA_CLEAR_LOCKS = 1,
    XCB_XKB_SA_LATCH_TO_LOCK = 2,
    XCB_XKB_SA_USE_MOD_MAP_MODS = 4,
    XCB_XKB_SA_GROUP_ABSOLUTE = 4,
}

xkb_sa_type_t :: enum _c.int {
    XCB_XKB_SA_TYPE_NO_ACTION,
    XCB_XKB_SA_TYPE_SET_MODS,
    XCB_XKB_SA_TYPE_LATCH_MODS,
    XCB_XKB_SA_TYPE_LOCK_MODS,
    XCB_XKB_SA_TYPE_SET_GROUP,
    XCB_XKB_SA_TYPE_LATCH_GROUP,
    XCB_XKB_SA_TYPE_LOCK_GROUP,
    XCB_XKB_SA_TYPE_MOVE_PTR,
    XCB_XKB_SA_TYPE_PTR_BTN,
    XCB_XKB_SA_TYPE_LOCK_PTR_BTN,
    XCB_XKB_SA_TYPE_SET_PTR_DFLT,
    XCB_XKB_SA_TYPE_ISO_LOCK,
    XCB_XKB_SA_TYPE_TERMINATE,
    XCB_XKB_SA_TYPE_SWITCH_SCREEN,
    XCB_XKB_SA_TYPE_SET_CONTROLS,
    XCB_XKB_SA_TYPE_LOCK_CONTROLS,
    XCB_XKB_SA_TYPE_ACTION_MESSAGE,
    XCB_XKB_SA_TYPE_REDIRECT_KEY,
    XCB_XKB_SA_TYPE_DEVICE_BTN,
    XCB_XKB_SA_TYPE_LOCK_DEVICE_BTN,
    XCB_XKB_SA_TYPE_DEVICE_VALUATOR,
}

xkb_sa_no_action_t :: struct {
    type: u8,
    pad0: [7]u8,
}

xkb_sa_no_action_iterator_t :: struct {
    data: ^xkb_sa_no_action_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_set_mods_t :: struct {
    type: u8,
    flags: u8,
    mask: u8,
    realMods: u8,
    vmodsHigh: u8,
    vmodsLow: u8,
    pad0: [2]u8,
}

xkb_sa_set_mods_iterator_t :: struct {
    data: ^xkb_sa_set_mods_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_latch_mods_t :: struct {
    type: u8,
    flags: u8,
    mask: u8,
    realMods: u8,
    vmodsHigh: u8,
    vmodsLow: u8,
    pad0: [2]u8,
}

xkb_sa_latch_mods_iterator_t :: struct {
    data: ^xkb_sa_latch_mods_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_lock_mods_t :: struct {
    type: u8,
    flags: u8,
    mask: u8,
    realMods: u8,
    vmodsHigh: u8,
    vmodsLow: u8,
    pad0: [2]u8,
}

xkb_sa_lock_mods_iterator_t :: struct {
    data: ^xkb_sa_lock_mods_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_set_group_t :: struct {
    type: u8,
    flags: u8,
    group: u8,
    pad0: [5]u8,
}

xkb_sa_set_group_iterator_t :: struct {
    data: ^xkb_sa_set_group_t,
    rem: _c.int,
    index: _c.int,
}


xkb_sa_latch_group_t :: struct {
    type: u8,
    flags: u8,
    group: u8,
    pad0: [5]u8,
}

xkb_sa_latch_group_iterator_t :: struct {
    data: ^xkb_sa_latch_group_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_lock_group_t :: struct {
    type: u8,
    flags: u8,
    group: u8,
    pad0: [5]u8,
}

xkb_sa_lock_group_iterator_t :: struct {
    data: ^xkb_sa_lock_group_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_move_ptr_flag_t :: enum _c.int {
    XCB_XKB_SA_MOVE_PTR_FLAG_NO_ACCELERATION = 1,
    XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_X = 2,
    XCB_XKB_SA_MOVE_PTR_FLAG_MOVE_ABSOLUTE_Y = 4,
}

xkb_sa_move_ptr_t :: struct {
    type: u8,
    flags: u8,
    xHigh: i8,
    xLow: u8,
    yHigh: i8,
    yLow: u8,
    pad0: [2]u8,
}

xkb_sa_move_ptr_iterator_t :: struct {
    data: ^xkb_sa_move_ptr_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_ptr_btn_t :: struct {
    type: u8,
    flags: u8,
    count: u8,
    button: u8,
    pad0: [4]u8,
}

xkb_sa_ptr_btn_iterator_t :: struct {
    data: ^xkb_sa_ptr_btn_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_lock_ptr_btn_t :: struct {
    type: u8,
    flags: u8,
    pad0: u8,
    button: u8,
    pad1: [4]u8,
}

xkb_sa_lock_ptr_btn_iterator_t :: struct {
    data: ^xkb_sa_lock_ptr_btn_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_set_ptr_dflt_flag_t :: enum _c.int {
    XCB_XKB_SA_SET_PTR_DFLT_FLAG_DFLT_BTN_ABSOLUTE = 4,
    XCB_XKB_SA_SET_PTR_DFLT_FLAG_AFFECT_DFLT_BUTTON = 1,
}

xkb_sa_set_ptr_dflt_t :: struct {
    type: u8,
    flags: u8,
    affect: u8,
    value: i8,
    pad0: [4]u8,
}

xkb_sa_set_ptr_dflt_iterator_t :: struct {
    data: ^xkb_sa_set_ptr_dflt_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_iso_lock_flag_t :: enum _c.int {
    XCB_XKB_SA_ISO_LOCK_FLAG_NO_LOCK = 1,
    XCB_XKB_SA_ISO_LOCK_FLAG_NO_UNLOCK = 2,
    XCB_XKB_SA_ISO_LOCK_FLAG_USE_MOD_MAP_MODS = 4,
    XCB_XKB_SA_ISO_LOCK_FLAG_GROUP_ABSOLUTE = 4,
    XCB_XKB_SA_ISO_LOCK_FLAG_ISO_DFLT_IS_GROUP = 8,
}

xkb_sa_iso_lock_t :: struct {
    type: u8,
    flags: u8,
    mask: u8,
    realMods: u8,
    group: i8,
    affect: u8,
    vmodsHigh: u8,
    vmodsLow: u8,
}

xkb_sa_iso_lock_iterator_t :: struct {
    data: ^xkb_sa_iso_lock_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_terminate_t :: struct {
    type: u8,
    pad0: [7]u8,
}

xkb_sa_terminate_iterator_t :: struct {
    data: ^xkb_sa_terminate_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_switch_screen_flag_t :: enum _c.int {
    XCB_XKB_SA_SWITCH_SCREEN_FLAG_APPLICATION = 1,
    XCB_XKB_SA_SWITCH_SCREEN_FLAG_ABSOLUTE = 4,
}

xkb_sa_switch_screen_t :: struct {
    type: u8,
    flags: u8,
    newScreen: i8,
    pad0: [5]u8,
}

xkb_sa_switch_screen_iterator_t :: struct {
    data: ^xkb_sa_switch_screen_t,
    rem: _c.int,
    index: _c.int,
}

xkb_bool_ctrls_high_t :: enum _c.int {
    XCB_XKB_BOOL_CTRLS_HIGH_ACCESS_X_FEEDBACK = 1,
    XCB_XKB_BOOL_CTRLS_HIGH_AUDIBLE_BELL = 2,
    XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_1 = 4,
    XCB_XKB_BOOL_CTRLS_HIGH_OVERLAY_2 = 8,
    XCB_XKB_BOOL_CTRLS_HIGH_IGNORE_GROUP_LOCK = 16,
}

xkb_bool_ctrls_low_t :: enum _c.int {
    XCB_XKB_BOOL_CTRLS_LOW_REPEAT_KEYS = 1,
    XCB_XKB_BOOL_CTRLS_LOW_SLOW_KEYS = 2,
    XCB_XKB_BOOL_CTRLS_LOW_BOUNCE_KEYS = 4,
    XCB_XKB_BOOL_CTRLS_LOW_STICKY_KEYS = 8,
    XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS = 16,
    XCB_XKB_BOOL_CTRLS_LOW_MOUSE_KEYS_ACCEL = 32,
    XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_KEYS = 64,
    XCB_XKB_BOOL_CTRLS_LOW_ACCESS_X_TIMEOUT = 128,
}

xkb_sa_set_controls_t :: struct {
    type: u8,
    pad0: [3]u8,
    boolCtrlsHigh: u8,
    boolCtrlsLow: u8,
    pad1: [2]u8,
}

xkb_sa_set_controls_iterator_t :: struct {
    data: ^xkb_sa_set_controls_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_lock_controls_t :: struct {
    type: u8,
    pad0: [3]u8,
    boolCtrlsHigh: u8,
    boolCtrlsLow: u8,
    pad1: [2]u8,
}

xkb_sa_lock_controls_iterator_t :: struct {
    data: ^xkb_sa_lock_controls_t,
    rem: _c.int,
    index: _c.int,
}

xkb_action_message_flag_t :: enum _c.int {
    XCB_XKB_ACTION_MESSAGE_FLAG_ON_PRESS = 1,
    XCB_XKB_ACTION_MESSAGE_FLAG_ON_RELEASE = 2,
    XCB_XKB_ACTION_MESSAGE_FLAG_GEN_KEY_EVENT = 4,
}

xkb_sa_action_message_t :: struct {
    type: u8,
    flags: u8,
    message: [6]u8,
}

xkb_sa_action_message_iterator_t :: struct {
    data: ^xkb_sa_action_message_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_redirect_key_t :: struct {
    type: u8,
    newkey: keycode_t,
    mask: u8,
    realModifiers: u8,
    vmodsMaskHigh: u8,
    vmodsMaskLow: u8,
    vmodsHigh: u8,
    vmodsLow: u8,
}

xkb_sa_redirect_key_iterator_t :: struct {
    data: ^xkb_sa_redirect_key_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_device_btn_t :: struct {
    type: u8,
    flags: u8,
    count: u8,
    button: u8,
    device: u8,
    pad0: [3]u8,
}

xkb_sa_device_btn_iterator_t :: struct {
    data: ^xkb_sa_device_btn_t,
    rem: _c.int,
    index: _c.int,
}

xkb_lock_device_flags_t :: enum _c.int {
    XCB_XKB_LOCK_DEVICE_FLAG_NO_LOCK = 1,
    XCB_XKB_LOCK_DEVICE_FLAG_NO_UNLOCK = 2,
}

xkb_sa_lock_device_btn_t :: struct {
    type: u8,
    flags: u8,
    pad0: u8,
    button: u8,
    device: u8,
    pad1: [3]u8,
}

xkb_sa_lock_device_btn_iterator_t :: struct {
    data: ^xkb_sa_lock_device_btn_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sa_val_what_t :: enum _c.int {
    XCB_XKB_SA_VAL_WHAT_IGNORE_VAL,
    XCB_XKB_SA_VAL_WHAT_SET_VAL_MIN,
    XCB_XKB_SA_VAL_WHAT_SET_VAL_CENTER,
    XCB_XKB_SA_VAL_WHAT_SET_VAL_MAX,
    XCB_XKB_SA_VAL_WHAT_SET_VAL_RELATIVE,
    XCB_XKB_SA_VAL_WHAT_SET_VAL_ABSOLUTE,
}

xkb_sa_device_valuator_t :: struct {
    type: u8,
    device: u8,
    val1what: u8,
    val1index: u8,
    val1value: u8,
    val2what: u8,
    val2index: u8,
    val2value: u8,
}

xkb_sa_device_valuator_iterator_t :: struct {
    data: ^xkb_sa_device_valuator_t,
    rem: _c.int,
    index: _c.int,
}

xkb_si_action_t :: struct {
    type: u8,
    data: [7]u8,
}

xkb_si_action_iterator_t :: struct {
    data: ^xkb_si_action_t,
    rem: _c.int,
    index: _c.int,
}

xkb_sym_interpret_t :: struct {
    sym: keysym_t,
    mods: u8,
    match: u8,
    virtualMod: u8,
    flags: u8,
    action: xkb_si_action_t,
}

xkb_sym_interpret_iterator_t :: struct {
    data: ^xkb_sym_interpret_t,
    rem: _c.int,
    index: _c.int,
}

xkb_action_t :: struct #raw_union {
    noaction: xkb_sa_no_action_t,
    setmods: xkb_sa_set_mods_t,
    latchmods: xkb_sa_latch_mods_t,
    lockmods: xkb_sa_lock_mods_t,
    setgroup: xkb_sa_set_group_t,
    latchgroup: xkb_sa_latch_group_t,
    lockgroup: xkb_sa_lock_group_t,
    moveptr: xkb_sa_move_ptr_t,
    prtrbtn: xkb_sa_ptr_btn_t,
    lockptrbtn: xkb_sa_lock_ptr_btn_t,
    setptrdflt: xkb_sa_set_ptr_dflt_t,
    isolock: xkb_sa_iso_lock_t,
    terminate: xkb_sa_terminate_t,
    switchscreen: xkb_sa_switch_screen_t,
    setcontrols: xkb_sa_set_controls_t,
    lockcontrols: xkb_sa_lock_controls_t,
    message: xkb_sa_action_message_t,
    redirect: xkb_sa_redirect_key_t,
    devbtn: xkb_sa_device_btn_t,
    lockdevbtn: xkb_sa_lock_device_btn_t,
    devval: xkb_sa_device_valuator_t,
    type: u8,
}

xkb_action_iterator_t :: struct {
    data: ^xkb_action_t,
    rem: _c.int,
    index: _c.int,
}

xkb_use_extension_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_use_extension_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    wantedMajor: u16,
    wantedMinor: u16,
}

xkb_use_extension_reply_t :: struct {
    response_type: u8,
    supported: u8,
    sequence: u16,
    length: u32,
    serverMajor: u16,
    serverMinor: u16,
    pad0: [20]u8,
}

xkb_select_events_details_t :: struct {
    affectNewKeyboard: u16,
    newKeyboardDetails: u16,
    affectState: u16,
    stateDetails: u16,
    affectCtrls: u32,
    ctrlDetails: u32,
    affectIndicatorState: u32,
    indicatorStateDetails: u32,
    affectIndicatorMap: u32,
    affectNames: u16,
    namesDetails: u16,
    affectCompat: u8,
    compatDetails: u8,
    affectBell: u8,
    bellDetails: u8,
    affectMsgDetails: u8,
    msgDetails: u8,
    affectAccessX: u16,
    accessXDetails: u16,
    affectExtDev: u16,
    extDevDetails: u16,
}

xkb_select_events_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    detailSpec: xkb_device_spec_t,
    affectWhich: u16,
    clear: u16,
    selectAll: u16,
    affectMap: u16,
    eventsMap: u16,
}

xkb_bell_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    bellClass: xkb_bell_class_spec_t,
    bellID: xkb_id_spec_t,
    percent: i8,
    forceSound: u8,
    eventOnly: u8,
    pad0: u8,
    pitch: u16,
    duration: u16,
    pad1: [2]u8,
    name: atom_t,
    window: window_t,
}

xkb_get_state_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_get_state_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    pad0: [2]u8,
}

xkb_get_state_reply_t :: struct {
    response_type: u8,
    deviceID: u8,
    sequence: u16,
    length: u32,
    mods: u8,
    baseMods: u8,
    latchedMods: u8,
    group: u8,
    lockedGroup: u8,
    baseGroup: u8,
    latchedGroup: u8,
    compatState: u8,
    grabMods: u8,
    compatGrabMods: u8,
    lookupMods: u8,
    compatLookupMods: u8,
    pad0: u8,
    ptrBtnState: u16,
    pad1: [6]u8,
}

xkb_latch_lock_state_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    affectModLocks: u8,
    modLocks: u8,
    lockGroup: u8,
    groupLock: u8,
    affectModLatches: u8,
    pad0: u8,
    pad1: u8,
    latchGroup: u8,
    groupLatch: u16,
}

xkb_get_controls_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_get_controls_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    pad0: [2]u8,
}

xkb_get_controls_reply_t :: struct {
    response_type: u8,
    deviceID: u8,
    sequence: u16,
    length: u32,
    mouseKeysDfltBtn: u8,
    numGroups: u8,
    groupsWrap: u8,
    internalModsMask: u8,
    ignoreLockModsMask: u8,
    internalModsRealMods: u8,
    ignoreLockModsRealMods: u8,
    pad0: u8,
    internalModsVMods: u16,
    ignoreLockModsVMods: u16,
    repeatDelay: u16,
    repeatInterval: u16,
    slowKeysDelay: u16,
    debounceDelay: u16,
    mouseKeysDelay: u16,
    mouseKeysInterval: u16,
    mouseKeysTimeToMax: u16,
    mouseKeysMaxSpeed: u16,
    mouseKeysCurve: i16,
    accessXOption: u16,
    accessXTimeout: u16,
    accessXTimeoutOptionsMask: u16,
    accessXTimeoutOptionsValues: u16,
    pad1: [2]u8,
    accessXTimeoutMask: u32,
    accessXTimeoutValues: u32,
    enableControls: u32,
    perKeyRepeat: [32]u8,
}

xkb_set_controls_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    affectInternalRealMods: u8,
    internalRealMods: u8,
    affectIgnoreLockRealMods: u8,
    ignoreLockRealMods: u8,
    affectInternalVirtualMods: u16,
    internalVirtualMods: u16,
    affectIgnoreLockVirtualMods: u16,
    ignoreLockVirtualMods: u16,
    mouseKeysDfltBtn: u8,
    groupsWrap: u8,
    accessXOptions: u16,
    pad0: [2]u8,
    affectEnabledControls: u32,
    enabledControls: u32,
    changeControls: u32,
    repeatDelay: u16,
    repeatInterval: u16,
    slowKeysDelay: u16,
    debounceDelay: u16,
    mouseKeysDelay: u16,
    mouseKeysInterval: u16,
    mouseKeysTimeToMax: u16,
    mouseKeysMaxSpeed: u16,
    mouseKeysCurve: i16,
    accessXTimeout: u16,
    accessXTimeoutMask: u32,
    accessXTimeoutValues: u32,
    accessXTimeoutOptionsMask: u16,
    accessXTimeoutOptionsValues: u16,
    perKeyRepeat: [32]u8,
}

xkb_get_map_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_get_map_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    full: u16,
    partial: u16,
    firstType: u8,
    nTypes: u8,
    firstKeySym: keycode_t,
    nKeySyms: u8,
    firstKeyAction: keycode_t,
    nKeyActions: u8,
    firstKeyBehavior: keycode_t,
    nKeyBehaviors: u8,
    virtualMods: u16,
    firstKeyExplicit: keycode_t,
    nKeyExplicit: u8,
    firstModMapKey: keycode_t,
    nModMapKeys: u8,
    firstVModMapKey: keycode_t,
    nVModMapKeys: u8,
    pad0: [2]u8,
}

xkb_get_map_map_t :: struct {
    types_rtrn: ^xkb_key_type_t,
    syms_rtrn: ^xkb_key_sym_map_t,
    acts_rtrn_count: ^u8,
    pad2: ^u8,
    acts_rtrn_acts: ^xkb_action_t,
    behaviors_rtrn: ^xkb_set_behavior_t,
    vmods_rtrn: ^u8,
    pad3: ^u8,
    explicit_rtrn: ^xkb_set_explicit_t,
    pad4: ^u8,
    modmap_rtrn: ^xkb_key_mod_map_t,
    pad5: ^u8,
    vmodmap_rtrn: ^xkb_key_v_mod_map_t,
}

xkb_get_map_reply_t :: struct {
    response_type: u8,
    deviceID: u8,
    sequence: u16,
    length: u32,
    pad0: [2]u8,
    minKeyCode: keycode_t,
    maxKeyCode: keycode_t,
    present: u16,
    firstType: u8,
    nTypes: u8,
    totalTypes: u8,
    firstKeySym: keycode_t,
    totalSyms:u16,
    nKeySyms: u8,
    firstKeyAction: keycode_t,
    nKeyBehaviors: u8,
    totalKeyBehaviors: u8,
    firstKeyExplicit: keycode_t,
    nKeyExplicit: u8,
    totalKeyExplicit: u8,
    firstModMapKey: keycode_t,
    nModMapKeys: u8,
    totalModMapKeys: u8,
    firstVModMapKey: keycode_t,
    nVModMapKeys: u8,
    totalVModMapKeys: u8,
    pad1: u8,
    virtualMods: u16,
}

xkb_set_map_values_t :: struct{
    types: ^xkb_set_key_type_t,
    syms: ^xkb_key_sym_map_t,
    actionsCount: ^u8,
    actions: ^xkb_action_t,
    behaviors: ^xkb_set_behavior_t,
    vmods: ^u8,
    explicit: ^xkb_set_explicit_t,
    modmap: ^xkb_key_mod_map_t,
    vmodmap: ^xkb_key_v_mod_map_t,
}

xkb_set_map_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    present: u16,
    flags: u16,
    minKeyCode: keycode_t,
    maxKeyCode: keycode_t,
    firstType: u8,
    nTypes: u8,
    firstKeySym: keycode_t,
    nKeySyms: u8,
    totalSyms: u8,
    firstKeyAction: keycode_t,
    nKeyActions: u8,
    totalActions: u16,
    firstKeyBehavior: keycode_t,
    nKeyBehaviors: u8,
    totalKeyBehaviors: u8,
    firstKeyExplicit: keycode_t,
    nKeyExplicit: u8,
    totalKeyExplicit: u8,
    firstModMapKey: keycode_t,
    nModMapKeys: u8,
    totalModMapKeys: u8,
    firstVModMapKey: keycode_t,
    nVModMapKeys: u8,
    totalVModMapKeys: u8,
    virtualMods: u16,
}

xkb_get_compat_map_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_get_compat_map_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    groups: u8,
    getAllSI: u8,
    firstSI: u16,
    nSI: u16,
}

xkb_get_compat_map_reply_t :: struct {
    response_type: u8,
    deviceID: u8,
    sequence: u16,
    length: u32,
    pad0: u8,
    firstSIRtrn: u16,
    nSIRtrn: u16,
    nTotalSI: u16,
    pad1: [16]u8,
}

xkb_set_compat_map_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    pad0: u8,
    recomputeActions: u8,
    truncateActions: u8,
    groups: u8,
    firstSI: u16,
    nSI: u16,
    pad1: [2]u8,
}

xkb_get_indicator_state_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_get_indicator_state_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    pad0: [2]u8,
}

xkb_get_indicator_state_reply_t :: struct {
    response_type: u8,
    deviceID: u8,
    sequence: u16,
    length: u32,
    state: u32,
    pad0: [20]u8,
}

xkb_get_indicator_map_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_get_indicator_map_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    pad0: [2]u8,
    which: u32,
}

xkb_get_indicator_map_reply_t :: struct {
    response_type: u8,
    deviceID: u8,
    sequence: u16,
    length: u32,
    which: u32,
    realIndicators: u32,
    nIndicators: u8,
    pad0: [15]u8,
}

xkb_set_indicator_map_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    pad0: [2]u8,
    which: u32,
}

xkb_get_named_indicator_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_get_named_indicator_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    ledClass: xkb_led_class_spec_t,
    ledID: xkb_id_spec_t,
    pad0: [2]u8,
    indicator: atom_t,
}

xkb_get_named_indicator_reply_t :: struct {
    response_type: u8,
    deviceID: u8,
    sequence: u16,
    length: u32,
    indicator: atom_t,
    found: u8,
    on: u8,
    realIndicator: u8,
    ndx: u8,
    map_flags: u8,
    map_whichGroups: u8,
    map_groups: u8,
    map_whichMods: u8,
    map_mods: u8,
    map_realMods: u8,
    map_vmod: u16,
    map_ctrls: u32,
    supported: u8,
    pad0: [3]u8,
}

xkb_set_named_indicator_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    ledClass: xkb_led_class_spec_t,
    ledID: xkb_id_spec_t,
    pad0: [2]u8,
    indicator: atom_t,
    setState: u8,
    on: u8,
    setMap: u8,
    createMap: u8,
    pad1: u8,
    map_flags: u8,
    map_whichGroups: u8,
    map_groups: u8,
    map_whichMods: u8,
    map_realMods: u8,
    map_vmods: u16,
    map_ctrls: u32,
}

xkb_get_names_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_get_names_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    pad0: [2]u8,
    which: u32,
}

xkb_get_names_value_list_t :: struct {
    keycodesName: atom_t,
    geometryName: atom_t,
    symbolsName: atom_t,
    physSymbolsName: atom_t,
    typesName: atom_t,
    compatName: atom_t,
    typeNames: ^atom_t,
    nLevelsPerType: ^u8,
    pad1: ^u8,
    ktLevelNames: ^atom_t,
    indicatorNames: ^atom_t,
    virtualModNames: ^atom_t,
    groups: ^atom_t,
    keyNames: xkb_key_name_t,
    keyAliases: ^xkb_key_alias_t,
    radioGroupNames: ^atom_t,
}

xkb_get_names_reply_t :: struct {
    response_type: u8,
    deviceID: u8,
    sequence: u16,
    length: u32,
    which: u32,
    minKeyCode: keycode_t,
    maxKeyCode: keycode_t,
    nTypes: u8,
    groupNames: u8,
    virtualMods: u16,
    firstKey: keycode_t,
    nKeys: u8,
    indicators: u32, 
    nRadioGroups: u8,
    nKeyAliases: u8,
    nKTLevels: u16,
    pad0: [4]u8,
}

xkb_set_names_values_t :: struct {
    keycodesName: atom_t,
    geometryName: atom_t,
    symbolsName: atom_t,
    physSymbolsName: atom_t,
    typesName: atom_t,
    compatName: atom_t,
    typeNames: ^atom_t,
    nLevelsPerType: ^u8,
    ktLevelNames: ^atom_t,
    indicatorNames: ^atom_t,
    virtualModNames: ^atom_t,
    groups: ^atom_t,
    keyNames: xkb_key_name_t,
    keyAliases: ^xkb_key_alias_t,
    radioGroupNames: ^atom_t,
}

xkb_set_names_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    virtualMods: u16,
    which: u32,
    firstType: u8,
    nTypes: u8,
    firstKTLevelt: u8,
    nKTLevels: u8,
    indicators: u32,
    groupNames: u8,
    nRadioGroups: u8,
    firstKey: keycode_t,
    nKeys: u8,
    nKeyAliases: u8,
    pad0: u8,
    totalKTLevelNames: u16,
}

xkb_per_client_flags_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_per_client_flags_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    pad0: [2]u8,
    change: u32,
    value: u32,
    ctrlsToChange: u32,
    autoCtrls: u32,
    autoCtrlsValues: u32,
}

xkb_per_client_flags_reply_t :: struct {
    response_type: u8,
    deviceID: u8,
    sequence: u16,
    length: u32,
    supported: u32,
    value: u32,
    autoCtrls: u32,
    autoCtrlsValues: u32,
    pad0: [8]u8,
}

xkb_list_components_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_list_components_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    maxNames: u16,
}

xkb_list_components_reply_t :: struct {
    response_type: u8,
    deviceID: u8,
    sequence: u16,
    length: u32,
    nKeymaps: u16,
    nKeyCodes: u16,
    nTypes: u16,
    nCompatMaps: u16,
    nSymbols: u16,
    nGeometries: u16,
    extra: u16,
    pad0: [10]u8,
}

xkb_get_kbd_by_name_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_get_kbd_by_name_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    deviceSpec: xkb_device_spec_t,
    need: u16,
    want: u16,
    load: u16,
    pad0: u8,
}

xkb_get_kbd_by_name_replies_types_map_t :: struct {
    types_rtrn: ^xkb_key_type_t,
    syms_rtrn: ^xkb_key_sym_map_t,
    acts_rtrn_count: ^u8,
    acts_rtrn_acts: ^xkb_action_t,
    behaviors_rtrn: ^xkb_set_behavior_t,
    vmods_rtrn: ^u8,
    explicit_rtrn: ^xkb_set_explicit_t,
    modmap_rtrn: ^xkb_key_mod_map_t,
    vmodmap_rtrn: ^xkb_key_v_mod_map_t,
}

xkb_get_kbd_by_name_replies_key_names_value_list_t :: struct {
    keycodesName: atom_t,
    geometryName: atom_t,
    symbolsName: atom_t,
    physSymbolsName: atom_t,
    typesName: atom_t,
    compatNames: atom_t,
    typeNames: ^atom_t,
    nLevelsPerType: ^u8,
    ktLevelNames: ^atom_t,
    indicatorNames: ^atom_t,
    virtualModNames: ^atom_t,
    groups: ^atom_t,
    keyNames: xkb_key_name_t,
    keyAliases: ^xkb_key_alias_t,
    radioGroupNames: ^atom_t,
}

xkb_get_kbd_by_name_replies_t :: struct {
    types: struct {
        getmap_type: u8,
        typeDeviceID: u8,
        getmap_sequence: u16,
        getmap_length: u32,
        pad1: [2]u8,
        typeMinKeyCode: keycode_t,
        typeMaxKeyCode: keycode_t,
        present: u16,
        firstType: u8,
        nTypes: u8,
        totalTypes: u8,
        firstKeySym: keycode_t,
        totalSyms: u16,
        nKeySyms: u8,
        firstKeyAction: keycode_t,
        totalActions: u16,
        nKeyActions: u8,
        firstKeyBehavior: keycode_t,
        nKeyBehaviors: u8,
        totalKeyBehaviors: u8,
        firstKeyExplicit: keycode_t,
        nKeyExplicit: u8,
        totalKeyExplicit: u8,
        firstModMapKey: keycode_t,
        nModMapKeys: u8,
        totalModMapKeys: u8,
        firstVModMapKey: keycode_t,
        nVModMapKeys: u8,
        totalVModMapKeys: u8,
        pad2: u8,
        virtualMods: u16,
        map_data: xkb_get_kbd_by_name_replies_types_map_t,
    },
    compat_map: struct {
        compatmap_type: u8,
        compatDeviceID: u8,
        compatmap_sequence: u16,
        compatmap_length: u32,
        groupsRtrn: u8,
        pad7: u8,
        firstSIRtrn: u16,
        nSIRtrn: u16,
        nTotalSI: u16,
        pad8: [16]u8,
        si_rtrn: ^xkb_sym_interpret_t,
        group_rtrn: ^xkb_mod_def_t,
    },
    indicator_maps: struct {
        indicatormap_type: u8,
        indicatorDeviceID: u8,
        indicatormap_sequence: u16,
        indicatormap_length: u32,
        which: u32,
        realIndicators: u32,
        nIndicators: u8,
        pad9: [15]u8,
        maps: ^xkb_indicator_map_t,
    },
    key_names: struct {
        keyname_type: u8,
        keyDeviceID: u8,
        keyname_sequence: u16,
        keyname_length: u32,
        which: u32,
        keyMinKeyCode: keycode_t,
        keyMaxKeyCode: keycode_t,
        nTypes: u8,
        groupNames: u8,
        virtualMods: u16,
        firstKey: keycode_t,
        nKeys: u8,
        indicators: u32,
        nRadioGroups: u8,
        nKeyAliases: u8,
        nKTLevels: u16,
        pad10: [4]u8,
        valueList: xkb_get_kbd_by_name_replies_key_names_value_list_t,
    },
    geometry: struct {
        geometry_type: u8,
        geometryDeviceID: u8,
        geometry_sequence: u16,
        geometry_length: u32,
        name: atom_t,
        geometryFound: u8,
        pad12: u8,
        widthMM: u16,
        heightMM: u16,
        nProperties: u16,
        nColors: u16,
        nShapes: u16,
        nSections: u16,
        nDoodads: u16,
        nKeyAliases: u16,
        baseColorNdx: u8,
        labelColorNdx: u8,
        labelFont: ^xkb_counted_string_16_t,
    },
}

xkb_get_kbd_by_name_reply_t :: struct {
    response_type: u8,
    deviceID: u8,
    sequence: u16,
    length: u32,
    minKeyCode: keycode_t,
    maxKeyCode: keycode_t,
    loaded: u8,
    newKeyboard: u8,
    found: u8,
    reported: u16,
    pad0: [16]u8,
}

xkb_get_device_info_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_get_device_info_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    device_id: u8,
    wanted: u16,
    allButtons: u8,
    firstButton: u8,
    nButtons: u8,
    pad0: u8,
    ledClass: xkb_led_class_spec_t,
    ledID: xkb_id_spec_t,
}

xkb_get_device_info_reply_t :: struct {
    response_type: u8,
    deviceID: u8,
    sequence: u16,
    length: u32,
    present: u16,
    supported: u16,
    unsupported: u16,
    nDeviceLedFBs: u16,
    firstBtnWanted: u8,
    nBtnsWanted: u8,
    firstBtnRtrn: u8,
    nBtnsRtrn: u8,
    totalBtns: u8,
    hasOwnState: u8,
    dfltKbdFB: u16,
    dfltLedFB: u16,
    pad0: [2]u8,
    devType: atom_t,
    nameLen: u16,
}

xkb_set_device_info_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    device_spec: xkb_device_spec_t,
    firstBtn: u8,
    nBtns: u8,
    change: u16,
    nDeviceLedFBs: u16,
}

xkb_set_debugging_flags_cookie_t :: struct {
    sequence: _c.uint,
}

xkb_set_debugging_flags_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    msgLength: u16,
    pad0: [2]u8,
    affectFlags: u32,
    flags: u32,
    affectCtrls: u32,
    ctrls: u32,
}

xkb_set_debugging_flags_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    currentFlags: u32,
    currentCtrls: u32,
    supportedFlags: u32,
    supportedCtrls: u32,
    pad1: [8]u8,
}

xkb_new_keyboard_notify_event_t :: struct {
    response_type: u8,
    xkbType: u8,
    sequence: u16,
    time: timestamp_t,
    deviceID: u8,
    oldDeviceID: u8,
    minKeyCode: keycode_t,
    maxKeyCode: keycode_t,
    oldMinKeyCode: keycode_t,
    oldMaxKeyCode: keycode_t,
    requestMajor: u8,
    requestMinor: u8,
    changed: u16,
    pad0: [14]u8,
}

xkb_map_notify_event_t :: struct {
    response_type: u8,
    xkbType: u8,
    sequence: u16,
    time: timestamp_t,
    deviceID: u8,
    prtBtnActions: u8,
    changed: u16,
    minKeyCode: keycode_t,
    maxKeyCode: keycode_t,
    firstType: u8,
    nTypes: u8,
    firstKeySym: keycode_t,
    nKeySyms: u8,
    firstKeyAct: keycode_t,
    nKeyActs: u8,
    firstKeyBehavior: keycode_t,
    nKeyBehavior: u8,
    firstKeyExplicit: keycode_t,
    nKeyExplicit: u8,
    firstModMapKey: keycode_t,
    nModMapKeys: u8,
    firstVModMapKey: keycode_t,
    nVModMapKeys: u8,
    virtualMods: u16,
    pad0: [2]u8,
}

xkb_state_notify_event_t :: struct {
    response_type: u8,
    xkbType: u8,
    sequence: u16,
    time: timestamp_t,
    deviceID: u8,
    mods: u8,
    baseMods: u8,
    latchedMods: u8,
    lockedMods: u8,
    group: u8,
    baseGroup: u16,
    latchedGroup: u16,
    lockedGroup: u8,
    compatState: u8,
    grabMods: u8,
    compatGrabMods: u8,
    lookupMods: u8,
    compatLoockupMods: u8,
    ptrBtnState: u16,
    changed: u16,
    keycode: keycode_t,
    eventType: u8,
    requestMajor: u8,
    requestMinor: u8,
}

xkb_controls_notify_event_t :: struct {
    response_type: u8,
    xkbType: u8,
    sequence: u16,
    time: timestamp_t,
    deviceID: u8,
    numGroups: u8,
    pad0: [2]u8,
    changedControls: u32,
    enabledControls: u32,
    enabledControlChanges: u32,
    keycode: keycode_t,
    eventType: u8,
    requestMajor: u8,
    requestMinor: u8,
}

xkb_indicator_state_notify_event_t :: struct {
    response_type: u8,
    xkbType: u8,
    sequence: u16,
    time: timestamp_t,
    deviceID: u8,
    pad0: [3]u8,
    state: u32,
    stateChanged: u32,
    pad1: [12]u8,
}

xkb_indicator_map_notify_event_t :: struct {
    response_type: u8,
    xkbType: u8,
    sequence: u16,
    time: timestamp_t,
    deviceID: u8,
    pad0: [3]u8,
    state: u32,
    mapChanged: u32,
    pad1: [12]u8,
}

xkb_names_notify_event_t :: struct {
    response_type: u8,
    xkbType: u8,
    sequence: u16,
    time: timestamp_t,
    deviceID: u8,
    pad0: u8,
    changed: u16,
    firstType: u8,
    nTypes: u8,
    firstLevelName: u8,
    nLevelNames: u8,
    pad1: u8,
    nRadioGroups: u8,
    nKeyAliases: u8,
    changedGroupNames: u8,
    changedVirtualMods: u16,
    firstKey: keycode_t,
    nKeys: u8,
    changedIndicators: u32,
    pad2: [4]u8,
}

xkb_compat_map_notify_event_t :: struct {
    response_type: u8,
    xkbType: u8,
    sequence: u16,
    time: timestamp_t,
    deviceID: u8,
    changedGroups: u8,
    firstSI: u16,
    nSI: u16,
    nTotalSI: u16,
    pad0: [16]u8,
}

xkb_bell_notify_event_t :: struct {
    response_type: u8,
    xkbType: u8,
    sequence: u16,
    time: timestamp_t,
    deviceID: u8,
    bellClass: u8,
    bellID: u8,
    percent: u8,
    pitch: u16,
    duration: u16,
    name: atom_t,
    window: window_t,
    eventOnly: u8,
    pad0: [7]u8,
}

xkb_action_message_event_t :: struct {
    response_type: u8,
    xkbType: u8,
    sequence: u16,
    time: timestamp_t,
    deviceID: u8,
    keycode: keycode_t,
    press: u8,
    keyEventFollows: u8,
    mods: u8,
    group: u8,
    message: [8]xkb_string8_t,
    pad0: [10]u8,
}

xkb_access_x_notify_event_t :: struct {
    response_type: u8,
    xkbType: u8,
    sequence: u16,
    time: timestamp_t,
    deviceID: u8,
    keycode: keycode_t,
    detailt: u16,
    slowKeysDelay: u16,
    debounceDelay: u16,
    pad0: [16]u8,
}

xkb_extension_device_notify_event_t :: struct {
    response_type: u8,
    xkbType: u8,
    sequence: u16,
    time: timestamp_t,
    deviceID: u8,
    pad0: u8,
    reason: u16,
    ledClass: u16,
    ledID: u16,
    ledsDefined: u32,
    ledState: u32,
    firstButton: u8,
    nButtons: u8,
    supported: u16,
    unsupported: u16,
    pad1: [2]u8,
}

when ODIN_OS == .Linux {
    foreign import libxcb_xkb "system:libxcb-xkb.so"
} else when ODIN_OS == .FreeBSD || ODIN_OS == .OpenBSD || ODIN_OS == .NetBSD {
    foreign import libxcb_xkb "system:libxcb-xkb.so"
} else when ODIN_OS == .Darwin {
    foreign import libxcb_xkb "system:libxcb-xkb"
} else {
    foreign import libxcb_xkb "system:libxcb-xkb.lib"
}

@(link_prefix="xcb_")
@(default_calling_convention="c")
foreign libxcb_xkb {
    xkb_get_kbd_by_name_replies_types_map :: proc(R: ^xkb_get_kbd_by_name_replies_t) -> ^xkb_get_kbd_by_name_replies_types_map_t ---
    xkb_device_spec_next :: proc(i: ^xkb_device_spec_iterator_t) ---
    xkb_device_spec_end :: proc(i: xkb_device_spec_iterator_t) -> generic_iterator_t ---
    xkb_led_class_spec_next :: proc(i: ^xkb_led_class_spec_iterator_t) ---
    xkb_led_class_spec_end :: proc(i: xkb_led_class_spec_iterator_t) -> generic_iterator_t ---
    xkb_bell_class_spec_next :: proc(i: ^xkb_bell_class_spec_iterator_t) ---
    xkb_bell_class_spec_end :: proc(i: xkb_bell_class_spec_iterator_t) -> generic_iterator_t ---
    xkb_id_spec_next :: proc(i: ^xkb_id_spec_iterator_t) ---
    xkb_id_spec_end :: proc(i: xkb_id_spec_iterator_t) -> generic_iterator_t ---
    xkb_indicator_map_next :: proc(i: ^xkb_indicator_map_iterator_t) ---
    xkb_indicator_map_end :: proc(i: xkb_indicator_map_iterator_t) -> generic_iterator_t ---
    xkb_mod_def_next :: proc(i: ^xkb_mod_def_iterator_t) ---
    xkb_mod_def_end :: proc(i: xkb_mod_def_iterator_t) -> generic_iterator_t ---
    xkb_key_name_next :: proc(i: ^xkb_key_name_iterator_t) ---
    xkb_key_name_end :: proc(i: xkb_key_name_iterator_t) -> generic_iterator_t ---
    xkb_key_alias_next :: proc(i: ^xkb_key_alias_iterator_t) ---
    xkb_key_alias_end :: proc(i: xkb_key_alias_iterator_t) -> generic_iterator_t ---
    xkb_counted_string_16_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_counted_string_16_string :: proc(R: ^xkb_counted_string_16_t) -> cstring ---
    xkb_counted_string_16_string_length :: proc(R: ^xkb_counted_string_16_t) -> _c.int ---
    xkb_counted_string_16_string_end :: proc(R: ^xkb_counted_string_16_t) -> generic_iterator_t ---
    xkb_counted_string_16_alignment_pad :: proc(R: ^xkb_counted_string_16_t) -> rawptr ---
    xkb_counted_string_16_alignment_pad_length :: proc(R: ^xkb_counted_string_16_t) -> _c.int ---
    xkb_counted_string_16_alignment_pad_end :: proc(R: ^xkb_counted_string_16_t) -> generic_iterator_t ---
    xkb_counted_string_16_next :: proc(i: ^xkb_counted_string_16_iterator_t) ---
    xkb_counted_string_16_end :: proc(i: xkb_counted_string_16_iterator_t) -> generic_iterator_t ---
    xkb_kt_map_entry_next :: proc(i: ^xkb_kt_map_entry_iterator_t) ---
    xkb_kt_map_entry_end :: proc(i: xkb_kt_map_entry_iterator_t) -> generic_iterator_t ---
    xkb_key_type_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_key_type_map :: proc(R: ^xkb_key_type_t) -> ^xkb_kt_map_entry_t ---
    xkb_key_type_map_length :: proc(R: ^xkb_key_type_t) -> _c.int ---
    xkb_key_type_map_iterator :: proc(R: ^xkb_key_type_t) -> xkb_kt_map_entry_iterator_t ---
    xkb_key_type_preserve :: proc(R: ^xkb_key_type_t) -> ^xkb_mod_def_t ---
    xkb_key_type_preserve_length :: proc(R: ^xkb_key_type_t) -> _c.int ---
    xkb_key_type_preserve_iterator :: proc(R: ^xkb_key_type_t) -> xkb_mod_def_iterator_t ---
    xkb_key_type_next :: proc(i: ^xkb_key_type_iterator_t) ---
    xkb_key_type_end :: proc(i: xkb_key_type_iterator_t) -> generic_iterator_t ---
    xkb_key_sym_map_syms :: proc(R: ^xkb_key_sym_map_t) -> ^keysym_t ---
    xkb_key_sym_map_syms_length :: proc(R: ^xkb_key_sym_map_t) -> _c.int ---
    xkb_key_sym_map_syms_end :: proc(R: ^xkb_key_sym_map_t) -> generic_iterator_t ---
    xkb_key_sym_map_next :: proc(i: ^xkb_key_sym_map_iterator_t) ---
    xkb_key_sym_map_end :: proc(i: xkb_key_sym_map_iterator_t) -> generic_iterator_t ---
    xkb_common_behavior_next :: proc(i: ^xkb_common_behavior_iterator_t) ---
    xkb_common_behavior_end :: proc(i: xkb_common_behavior_iterator_t) -> generic_iterator_t ---
    xkb_default_behavior_next :: proc(i: ^xkb_default_behavior_iterator_t) ---
    xkb_default_behavior_end :: proc(i: xkb_default_behavior_iterator_t) -> generic_iterator_t ---
    xkb_lock_behavior_next :: proc(i: ^xkb_lock_behavior_iterator_t) ---
    xkb_lock_behavior_end :: proc(i: xkb_lock_behavior_iterator_t) -> generic_iterator_t ---
    xkb_radio_group_behavior_next :: proc(i: ^xkb_radio_group_behavior_iterator_t) ---
    xkb_radio_group_behavior_end :: proc(i: xkb_radio_group_behavior_iterator_t) -> generic_iterator_t ---
    xkb_overlay_behavior_next :: proc(i: ^xkb_overlay_behavior_iterator_t) ---
    xkb_overlay_behavior_end :: proc(i: xkb_overlay_behavior_iterator_t) -> generic_iterator_t ---
    xkb_permanent_lock_behavior_next :: proc(i: ^xkb_permanent_lock_behavior_iterator_t) ---
    xkb_permanent_lock_behavior_end :: proc(i: xkb_permanent_lock_behavior_iterator_t) -> generic_iterator_t ---
    xkb_permanent_radio_group_behavior_next :: proc(i: ^xkb_permanent_radio_group_behavior_iterator_t) ---
    xkb_permanent_radio_group_behavior_end :: proc(i: xkb_permanent_radio_group_behavior_iterator_t) -> generic_iterator_t ---
    xkb_permanent_overlay_behavior_next :: proc(i: ^xkb_permanent_overlay_behavior_iterator_t) ---
    xkb_permanent_overlay_behavior_end :: proc(i: xkb_permanent_overlay_behavior_iterator_t) -> generic_iterator_t ---
    xkb_behavior_next :: proc(i: ^xkb_behavior_iterator_t) ---
    xkb_behavior_end :: proc(i: xkb_behavior_iterator_t) -> generic_iterator_t ---
    xkb_set_behavior_next :: proc(i: ^xkb_set_behavior_iterator_t) ---
    xkb_set_behavior_end :: proc(i: xkb_set_behavior_iterator_t) -> generic_iterator_t ---
    xkb_set_explicit_next :: proc(i: ^xkb_set_explicit_iterator_t) ---
    xkb_set_explicit_end :: proc(i: xkb_set_explicit_iterator_t) -> generic_iterator_t ---
    xkb_key_mod_map_next :: proc(i: ^xkb_key_mod_map_iterator_t) ---
    xkb_key_mod_map_end :: proc(i: xkb_key_mod_map_iterator_t) -> generic_iterator_t ---
    xkb_key_v_mod_map_next :: proc(i: ^xkb_key_v_mod_map_iterator_t) ---
    xkb_key_v_mod_map_end :: proc(i: xkb_key_v_mod_map_iterator_t) -> generic_iterator_t ---
    xkb_kt_set_map_entry_next :: proc(i: ^xkb_kt_set_map_entry_iterator_t) ---
    xkb_kt_set_map_entry_end :: proc(i: xkb_kt_set_map_entry_iterator_t) -> generic_iterator_t ---
    xkb_set_key_type_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_set_key_type_entries :: proc(R: ^xkb_set_key_type_t) -> ^xkb_kt_set_map_entry_t ---
    xkb_set_key_type_entries_length :: proc(R: ^xkb_set_key_type_t) -> _c.int ---
    xkb_set_key_type_entries_iterator :: proc(R: ^xkb_set_key_type_t) -> xkb_kt_set_map_entry_iterator_t ---
    xkb_set_key_type_next :: proc(i: ^xkb_set_key_type_iterator_t) ---
    xkb_set_key_type_end :: proc(i: xkb_set_key_type_iterator_t) -> generic_iterator_t ---
    xkb_string8_next :: proc(i: ^xkb_string8_iterator_t) ---
    xkb_string8_end :: proc(i: xkb_string8_iterator_t) -> generic_iterator_t ---
    xkb_outline_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_outline_points :: proc(R: ^xkb_outline_t) -> ^point_t ---
    xkb_outline_points_length :: proc(R: ^xkb_outline_t) -> _c.int ---
    xkb_outline_points_iterator :: proc(R: ^xkb_outline_t) -> point_iterator_t ---
    xkb_outline_next :: proc(i: ^xkb_outline_iterator_t) ---
    xkb_outline_end :: proc(i: xkb_outline_iterator_t) -> generic_iterator_t ---
    xkb_shape_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_shape_outlines_length :: proc(R: ^xkb_shape_t) -> _c.int ---
    xkb_shape_outlines_iterator :: proc(R: ^xkb_shape_t) -> xkb_outline_iterator_t ---
    xkb_shape_next :: proc(i: ^xkb_shape_iterator_t) ---
    xkb_shape_end :: proc(i: xkb_shape_iterator_t) -> generic_iterator_t ---
    xkb_key_next :: proc(i: ^xkb_key_iterator_t) ---
    xkb_key_end :: proc(i: xkb_key_iterator_t) -> generic_iterator_t ---
    xkb_overlay_key_next :: proc(i: ^xkb_overlay_key_iterator_t) ---
    xkb_overlay_key_end :: proc(i: xkb_overlay_key_iterator_t) -> generic_iterator_t ---
    xkb_overlay_row_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_overlay_row_keys :: proc(R: ^xkb_overlay_row_t) -> ^xkb_overlay_key_t ---
    xkb_overlay_row_keys_length :: proc(R: ^xkb_overlay_row_t) -> _c.int ---
    xkb_overlay_row_keys_iterator :: proc(R: ^xkb_overlay_row_t) -> xkb_overlay_key_iterator_t ---
    xkb_overlay_row_next :: proc(i: ^xkb_overlay_row_iterator_t) ---
    xkb_overlay_row_end :: proc(i: xkb_overlay_row_iterator_t) -> generic_iterator_t ---
    xkb_overlay_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_overlay_rows_length :: proc(R: ^xkb_overlay_t) -> _c.int ---
    xkb_overlay_rows_iterator :: proc(R: ^xkb_overlay_t) -> xkb_overlay_row_iterator_t ---
    xkb_overlay_next :: proc(i: ^xkb_overlay_iterator_t) ---
    xkb_overlay_end :: proc(i: xkb_overlay_iterator_t) -> generic_iterator_t ---
    xkb_row_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_row_keys :: proc(R: ^xkb_row_t) -> ^xkb_key_t ---
    xkb_row_keys_length :: proc(R: ^xkb_row_t) -> _c.int ---
    xkb_row_keys_iterator :: proc(R: ^xkb_row_t) -> xkb_key_iterator_t ---
    xkb_row_next :: proc(i: ^xkb_row_iterator_t) ---
    xkb_row_end :: proc(i: xkb_row_iterator_t) -> generic_iterator_t ---
    xkb_listing_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_listing_string :: proc(R: ^xkb_listing_t) -> ^xkb_string8_t ---
    xkb_listing_string_length :: proc(R: ^xkb_listing_t) -> _c.int ---
    xkb_listing_string_end :: proc(R: ^xkb_listing_t) -> generic_iterator_t ---
    xkb_listing_next :: proc(i: ^xkb_listing_iterator_t) ---
    xkb_listing_end :: proc(i: xkb_listing_iterator_t) -> generic_iterator_t ---
    xkb_device_led_info_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_device_led_info_names :: proc(R: ^xkb_device_led_info_t) -> ^atom_t ---
    xkb_device_led_info_names_length :: proc(R: ^xkb_device_led_info_t) -> _c.int ---
    xkb_device_led_info_names_end :: proc(R: ^xkb_device_led_info_t) -> generic_iterator_t ---
    xkb_device_led_info_maps :: proc(R: ^xkb_device_led_info_t) -> ^xkb_indicator_map_t ---
    xkb_device_led_info_maps_length :: proc(R: ^xkb_device_led_info_t) -> _c.int ---
    xkb_device_led_info_maps_iterator :: proc(R: ^xkb_device_led_info_t) -> xkb_indicator_map_iterator_t ---
    xkb_device_led_info_next :: proc(i: ^xkb_device_led_info_iterator_t) ---
    xkb_device_led_info_end :: proc(i: xkb_device_led_info_iterator_t) -> generic_iterator_t ---
    xkb_sa_no_action_next :: proc(i: ^xkb_sa_no_action_iterator_t) ---
    xkb_sa_no_action_end :: proc(i: xkb_sa_no_action_iterator_t) -> generic_iterator_t ---
    xkb_sa_set_mods_next :: proc(i: ^xkb_sa_set_mods_iterator_t) ---
    xkb_sa_set_mods_end :: proc(i: xkb_sa_set_mods_iterator_t) -> generic_iterator_t ---
    xkb_sa_latch_mods_next :: proc(i: ^xkb_sa_latch_mods_iterator_t) ---
    xkb_sa_latch_mods_end :: proc(i: xkb_sa_latch_mods_iterator_t) -> generic_iterator_t ---
    xkb_sa_lock_mods_next :: proc(i: ^xkb_sa_lock_mods_iterator_t) ---
    xkb_sa_lock_mods_end :: proc(i: xkb_sa_lock_mods_iterator_t) -> generic_iterator_t ---
    xkb_sa_set_group_next :: proc(i: ^xkb_sa_set_group_iterator_t) ---
    xkb_sa_set_group_end :: proc(i: xkb_sa_set_group_iterator_t) -> generic_iterator_t ---
    xkb_sa_latch_group_next :: proc(i: ^xkb_sa_latch_group_iterator_t) ---
    xkb_sa_latch_group_end :: proc(i: xkb_sa_latch_group_iterator_t) -> generic_iterator_t ---
    xkb_sa_lock_group_next :: proc(i: ^xkb_sa_lock_group_iterator_t) ---
    xkb_sa_lock_group_end :: proc(i: xkb_sa_lock_group_iterator_t) -> generic_iterator_t ---
    xkb_sa_move_ptr_next :: proc(i: ^xkb_sa_move_ptr_iterator_t) ---
    xkb_sa_move_ptr_end :: proc(i: xkb_sa_move_ptr_iterator_t) -> generic_iterator_t ---
    xkb_sa_ptr_btn_next :: proc(i: ^xkb_sa_ptr_btn_iterator_t) ---
    xkb_sa_ptr_btn_end :: proc(i: xkb_sa_ptr_btn_iterator_t) -> generic_iterator_t ---
    xkb_sa_lock_ptr_btn_next :: proc(i: ^xkb_sa_lock_ptr_btn_iterator_t) ---
    xkb_sa_lock_ptr_btn_end :: proc(i: xkb_sa_lock_ptr_btn_iterator_t) -> generic_iterator_t ---
    xkb_sa_set_ptr_dflt_next :: proc(i: ^xkb_sa_set_ptr_dflt_iterator_t) ---
    xkb_sa_set_ptr_dflt_end :: proc(i: xkb_sa_set_ptr_dflt_iterator_t) -> generic_iterator_t ---
    xkb_sa_iso_lock_next :: proc(i: ^xkb_sa_iso_lock_iterator_t) ---
    xkb_sa_iso_lock_end :: proc(i: xkb_sa_iso_lock_iterator_t) -> generic_iterator_t ---
    xkb_sa_terminate_next :: proc(i: ^xkb_sa_terminate_iterator_t) ---
    xkb_sa_terminate_end :: proc(i: xkb_sa_terminate_iterator_t) -> generic_iterator_t ---
    xkb_sa_switch_screen_next :: proc(i: ^xkb_sa_switch_screen_iterator_t) ---
    xkb_sa_switch_screen_end :: proc(i: xkb_sa_switch_screen_iterator_t) -> generic_iterator_t ---
    xkb_sa_set_controls_next :: proc(i: ^xkb_sa_set_controls_iterator_t) ---
    xkb_sa_set_controls_end :: proc(i: xkb_sa_set_controls_iterator_t) -> generic_iterator_t ---
    xkb_sa_lock_controls_next :: proc(i: ^xkb_sa_lock_controls_iterator_t) ---
    xkb_sa_lock_controls_end :: proc(i: xkb_sa_lock_controls_iterator_t) -> generic_iterator_t ---
    xkb_sa_action_message_next :: proc(i: ^xkb_sa_action_message_iterator_t) ---
    xkb_sa_action_message_end :: proc(i: xkb_sa_action_message_iterator_t) -> generic_iterator_t ---
    xkb_sa_redirect_key_next :: proc(i: ^xkb_sa_redirect_key_iterator_t) ---
    xkb_sa_redirect_key_end :: proc(i: xkb_sa_redirect_key_iterator_t) -> generic_iterator_t ---
    xkb_sa_device_btn_next :: proc(i: ^xkb_sa_device_btn_iterator_t) ---
    xkb_sa_device_btn_end :: proc(i: xkb_sa_device_btn_iterator_t) -> generic_iterator_t ---
    xkb_sa_lock_device_btn_next :: proc(i: ^xkb_sa_lock_device_btn_iterator_t) ---
    xkb_sa_lock_device_btn_end :: proc(i: xkb_sa_lock_device_btn_iterator_t) -> generic_iterator_t ---
    xkb_sa_device_valuator_next :: proc(i: ^xkb_sa_device_valuator_iterator_t) ---
    xkb_sa_device_valuator_end ::proc(i: xkb_sa_device_valuator_iterator_t) -> generic_iterator_t ---
    xkb_si_action_next :: proc(i: ^xkb_si_action_iterator_t) ---
    xkb_si_action_end :: proc(i: xkb_si_action_iterator_t) -> generic_iterator_t ---
    xkb_sym_interpret_next :: proc(i: ^xkb_sym_interpret_iterator_t) ---
    xkb_sym_interpret_end :: proc(i: xkb_sym_interpret_iterator_t) -> generic_iterator_t ---
    xkb_action_next :: proc(i: ^xkb_action_iterator_t) ---
    xkb_action_end :: proc(i: xkb_action_iterator_t) -> generic_iterator_t ---
    xkb_use_extension :: proc(c: ^connection_t, wantedMajor: u16, wantedMinor: u16) -> xkb_use_extension_cookie_t ---
    xkb_use_extension_unchecked :: proc(c: ^connection_t, wantedMajor: u16, wantedMinor: u16) -> xkb_use_extension_cookie_t ---
    xkb_use_extension_reply :: proc(c: ^connection_t, cookie: xkb_use_extension_cookie_t, e: ^^generic_error_t) -> ^xkb_use_extension_reply_t ---
    xkb_select_events_details_serialize :: proc(_buffer: ^rawptr, affectWhich: u16, clear: u16, selectAll: u16, _aux: ^xkb_select_events_details_t) -> _c.int ---
    xkb_select_events_details_unpack :: proc(_buffer: rawptr, affectWhich: u16, clear: u16, selectAll: u16, _aux: ^xkb_select_events_details_t) -> _c.int ---
    xkb_select_events_details_sizeof :: proc(_buffer: rawptr, affectWhich: u16, clear: u16, selectAll: u16) -> _c.int ---
    xkb_select_events_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_select_events_checked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, affectWhich: u16, clear: u16, selectAll: u16, affectMap: u16, map_data: u16, details: rawptr) -> void_cookie_t ---
    xkb_select_events :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, affectWhich: u16, clear: u16, selectAll: u16, affectMap: u16, map_data: u16, details: rawptr) -> void_cookie_t ---
    xkb_select_events_aux_checked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, affectWhich: u16, clear: u16, selectAll: u16, affectMap: u16, map_data: u16, details: ^xkb_select_events_details_t) -> void_cookie_t ---
    xkb_select_events_aux :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, affectWhich: u16, clear: u16, selectAll: u16, affectMap: u16, map_data: u16, details: ^xkb_select_events_details_t) -> void_cookie_t ---
    xkb_select_events_details :: proc(R: ^xkb_select_events_request_t) -> rawptr ---
    xkb_bell_checked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, bellClass: xkb_bell_class_spec_t, bellID: xkb_id_spec_t, percent: i8, forceSound: u8, eventOnly: u8, pitch: u16, duration: u16, name: atom_t, window: window_t) -> void_cookie_t ---
    xkb_bell :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, bellClass: xkb_bell_class_spec_t, bellID: xkb_id_spec_t, percent: i8, forceSound: u8, eventOnly: u8, pitch: u16, duration: u16, name: atom_t, window: window_t) -> void_cookie_t ---
    xkb_get_state :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t) -> xkb_get_state_cookie_t ---
    xkb_get_state_unchecked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t) -> xkb_get_state_cookie_t ---
    xkb_get_state_reply :: proc(c: ^connection_t, cookie: xkb_get_state_cookie_t, e: ^^generic_error_t) -> ^xkb_get_state_reply_t ---
    xkb_latch_lock_state_checked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, modLocks: u8, lockGroup: u8, groupLock: u8, affectModLatches: u8, latchGroup: u8, groupLatch: u16) -> void_cookie_t ---
    xkb_latch_lock_state :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, modLocks: u8, lockGroup: u8, groupLock: u8, affectModLatches: u8, latchGroup: u8, groupLatch: u16) -> void_cookie_t ---
    xkb_get_controls :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t) -> xkb_get_controls_cookie_t ---
    xkb_get_controls_unchecked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t) -> xkb_get_controls_cookie_t ---
    xkb_get_controls_reply :: proc(c: ^connection_t, cookie: xkb_get_controls_cookie_t, e: ^^generic_error_t) -> ^xkb_get_controls_reply_t ---
    xkb_get_controls_checked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, affectInternalRealMods: u8, internalRealMods: u8, affectIgnoreLockRealMods: u8, ignoreLockRealMods: u8, affectInternalVirtualMods: u16, internalVirtualMods: u16, affectIgnoreLockVirtualMods: u16, ignoreLockVirtualMods: u16, mouseKeysDfltBtn: u8, groupsWrap: u8, accessXOptions: u16, affectEnabledControls: u32, enabledControls: u32, changeControls: u32, repeatDelay: u16, repeatInterval: u16, slowKeysDelay: u16, debounceDelay: u16, mouseKeysDelay: u16, mouseKeysInterval: u16, mouseKeysTimeToMax: u16, mouseKeysMaxSpeed: u16, mouseKeysCurve: i16, accessXTimeout: u16, accessXTimeoutMask: u32, accessXTimeoutValues: u32, accessXTimeoutOptionsMask: u16, accessXTimeoutOptionsValues: u16, perKeyRepeat: ^u8) -> void_cookie_t ---
    xkb_set_controls :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, affectInternalRealMods: u8, internalRealMods: u8, affectIgnoreLockRealMods: u8, ignoreLockRealMods: u8, affectInternalVirtualMods: u16, internalVirtualMods: u16, affectIgnoreLockVirtualMods: u16, ignoreLockVirtualMods: u16, mouseKeysDfltBtn: u8, groupsWrap: u8, accessXOptions: u16, affectEnabledControls: u32, enabledControls: u32, changeControls: u32, repeatDelay: u16, repeatInterval: u16, slowKeysDelay: u16, debounceDelay: u16, mouseKeysDelay: u16, mouseKeysInterval: u16, mouseKeysTimeToMax: u16, mouseKeysMaxSpeed: u16, mouseKeysCurve: i16, accessXTimeout: u16, accessXTimeoutMask: u32, accessXTimeoutValues: u32, accessXTimeoutOptionsMask: u16, accessXTimeoutOptionsValues: u16, perKeyRepeat: ^u8) -> void_cookie_t ---
    xkb_get_map_map_types_rtrn_length :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> _c.int ---
    xkb_get_map_map_types_rtrn_iterator :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> xkb_key_type_iterator_t ---
    xkb_get_map_map_syms_rtrn_length :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> _c.int ---
    xkb_get_map_map_syms_rtrn_iterator :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> xkb_key_sym_map_iterator_t ---
    xkb_get_map_map_acts_rtrn_count :: proc(S: ^xkb_get_map_map_t) -> ^u8 ---
    xkb_get_map_map_acts_rtrn_count_length :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> _c.int ---
    xkb_get_map_map_acts_rtrn_count_end :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> generic_iterator_t ---
    xkb_get_map_map_acts_rtrn_acts :: proc(S: ^xkb_get_map_map_t) -> ^xkb_action_t ---
    xkb_get_map_map_acts_rtrn_acts_length :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> _c.int ---
    xkb_get_map_map_acts_rtrn_acts_iterator :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> xkb_action_iterator_t ---
    xkb_get_map_map_behaviors_rtrn :: proc(S: ^xkb_get_map_map_t) -> ^xkb_set_behavior_t ---
    xkb_get_map_map_behaviors_rtrn_length :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> _c.int ---
    xkb_get_map_map_behaviors_rtrn_iterator :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> xkb_set_behavior_iterator_t ---
    xkb_get_map_map_vmods_rtrn :: proc(S: ^xkb_get_map_map_t) -> ^u8 ---
    xkb_get_map_map_vmods_rtrn_length :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> _c.int ---
    xkb_get_map_map_vmods_rtrn_end :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> generic_iterator_t ---
    xkb_get_map_map_explicit_rtrn :: proc(S: ^xkb_get_map_map_t) -> ^xkb_set_explicit_t ---
    xkb_get_map_map_explicit_rtrn_length :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> _c.int ---
    xkb_get_map_map_explicit_rtrn_iterator :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> xkb_set_explicit_iterator_t ---
    xkb_get_map_map_modmap_rtrn :: proc(S: ^xkb_get_map_map_t) -> ^xkb_key_mod_map_t ---
    xkb_get_map_map_modmap_rtrn_length :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> _c.int ---
    xkb_get_map_map_modmap_rtrn_iterator :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> xkb_key_mod_map_iterator_t ---
    xkb_get_map_map_vmodmap_rtrn :: proc(S: ^xkb_get_map_map_t) -> ^xkb_key_v_mod_map_t ---
    xkb_get_map_map_vmodmap_rtrn_length :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> _c.int ---
    xkb_get_map_map_vmodmap_rtrn_iterator :: proc(R: ^xkb_get_map_reply_t, S: ^xkb_get_map_map_t) -> xkb_key_v_mod_map_iterator_t ---
    xkb_get_map_map_serialize :: proc(_buffer: ^rawptr, nTypes: u8, nKeySyms: u8, nKeyActions: u8, totalActions: u16, totalKeyBehaviors: u8, virtualMods: u16, totalKeyExplicit: u8, totalModMapKeys: u8, totalVModMapKeys: u8, present: u16, _aux: ^xkb_get_map_map_t) -> _c.int ---
    xkb_get_map_map_unpack :: proc(_buffer: rawptr, nTypes: u8, nKeySyms: u8, nKeyActions: u8, totalActions: u16, totalKeyBehaviors: u8, virtualMods: u16, totalKeyExplicit: u8, totalModMapKeys: u8, totalVModMapKeys: u8, present: u16, _aux: ^xkb_get_map_map_t) -> _c.int ---
    xkb_get_map_map_sizeof :: proc(_buffer: rawptr, nTypes: u8, nKeySyms: u8, nKeyActions: u8, totalActions: u16, totalKeyBehaviors: u8, virtualMods: u16, totalKeyExplicit: u8, totalModMapKeys: u8, totalVModMapKeys: u8, present: u16) -> _c.int ---
    xkb_get_map_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_get_map :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, full: u16, partial: u16, firstType: u8, nTypes: u8, firstKeySym: keycode_t, nKeySyms: u8, firstKeyAction: keycode_t, nKeyActions: u8, firstKeyBehavior: keycode_t, nKeyBehaviors: u8, virtualMods: u16, firstKeyExplicit: keycode_t, nKeyExplicit: u8, firstModMapKey: keycode_t, nModMapKeys: u8, firstVModMapKey: keycode_t, nVModMapKeys: u8) -> xkb_get_map_cookie_t ---
    xkb_get_map_unchecked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, full: u16, partial: u16, firstType: u8, nTypes: u8, firstKeySym: keycode_t, nKeySyms: u8, firstKeyAction: keycode_t, nKeyActions: u8, firstKeyBehavior: keycode_t, nKeyBehaviors: u8, virtualMods: u16, firstKeyExplicit: keycode_t, nKeyExplicit: u8, firstModMapKey: keycode_t, nModMapKeys: u8, firstVModMapKey: keycode_t, nVModMapKeys: u8) -> xkb_get_map_cookie_t ---
    xkb_get_map_map :: proc(R: ^xkb_get_map_reply_t) -> rawptr ---
    xkb_get_map_reply :: proc(c: ^connection_t, cookie: xkb_get_map_cookie_t, e: ^^generic_error_t) -> ^xkb_get_map_reply_t ---
    xkb_set_map_values_types_length :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> _c.int ---
    xkb_set_map_values_types_iterator :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> xkb_set_key_type_iterator_t ---
    xkb_set_map_values_syms_length :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> _c.int ---
    xkb_set_map_values_syms_iterator :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> xkb_key_sym_map_iterator_t ---
    xkb_set_map_values_actions_count :: proc(S: ^xkb_set_map_values_t) -> ^u8 ---
    xkb_set_map_values_actions_count_length :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> _c.int ---
    xkb_set_map_values_actions_count_end :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> generic_iterator_t ---
    xkb_set_map_values_actions :: proc(S: ^xkb_set_map_values_t) -> ^xkb_action_t ---
    xkb_set_map_values_actions_length :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> _c.int ---
    xkb_set_map_values_actions_iterator :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> xkb_action_iterator_t ---
    xkb_set_map_values_behaviors :: proc(S: ^xkb_set_map_values_t) -> ^xkb_set_behavior_t ---
    xkb_set_map_values_behaviors_length :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> _c.int ---
    xkb_set_map_values_behaviors_iterator :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> xkb_set_behavior_iterator_t ---
    xkb_set_map_values_vmods :: proc(S: ^xkb_set_map_values_t) -> ^u8 ---
    xkb_set_map_values_vmods_length :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> _c.int ---
    xkb_set_map_values_vmods_end :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> generic_iterator_t ---
    xkb_set_map_values_explicit :: proc(S: ^xkb_set_map_values_t) -> ^xkb_set_explicit_t ---
    xkb_set_map_values_explicit_length :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> _c.int ---
    xkb_set_map_values_explicit_iterator :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> xkb_set_explicit_iterator_t ---
    xkb_set_map_values_modmap :: proc(S: ^xkb_set_map_values_t) -> ^xkb_key_mod_map_t ---
    xkb_set_map_values_modmap_length :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> _c.int ---
    xkb_set_map_values_modmap_iterator :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> xkb_key_mod_map_iterator_t ---
    xkb_set_map_values_vmodmap :: proc(S: ^xkb_set_map_values_t) -> ^xkb_key_v_mod_map_t ---
    xkb_set_map_values_vmodmap_length :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> _c.int ---
    xkb_set_map_values_vmodmap_iterator :: proc(R: ^xkb_set_map_request_t, S: ^xkb_set_map_values_t) -> xkb_key_v_mod_map_iterator_t ---
    xkb_set_map_values_serialize :: proc(_buffer: ^rawptr, nTypes: u8, nKeySyms: u8, nKeyActions: u8, totalActions: u16, totalKeyBehaviors: u8, virtualMods: u16, totalKeyExplicit: u8, totalModMapKeys: u8, totalVModMapKeys: u8, present: u16, _aux: ^xkb_set_map_values_t) -> _c.int ---
    xkb_set_map_values_unpack :: proc(_buffer: rawptr, nTypes: u8, nKeySyms: u8, nKeyActions: u8, totalActions: u16, totalKeyBehaviors: u8, virtualMods: u16, totalKeyExplicit: u8, totalModMapKeys: u8, totalVModMapKeys: u8, present: u16, _aux: ^xkb_set_map_values_t) -> _c.int ---
    xkb_set_map_values_sizeof :: proc(_buffer: rawptr, nTypes: u8, nKeySyms: u8, nKeyActions: u8, totalActions: u16, totalKeyBehaviors: u8, virtualMods: u16, totalKeyExplicit: u8, totalModMapKeys: u8, totalVModMapKeys: u8, present: u16) -> _c.int ---
    xkb_set_map_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_set_map_checked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, present: u16, flags: u16, minKeyCode: keycode_t, maxKeyCode: keycode_t, firstType: u8, nTypes: u8, firstKeySym: keycode_t, nKeySyms: u8, totalSyms: u16, firstKeyAction: keycode_t, nKeyActions: u8, totalActions: u16, firstKeyBehavior: keycode_t, nKeyBehaviors: u8, totalKeyBehaviors: u8, firstKeyExplicit: keycode_t, nKeyExplicit: u8, totalKeyExplicit: u8, firstModMapKey: keycode_t, nModMapKeys: u8, totalModMapKeys: u8, firstVModMapKey: keycode_t, nVModMapKeys: u8, totalVModMapKeys: u8, virtualMods: u16, values: rawptr) -> void_cookie_t ---
    xkb_set_map :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, present: u16, flags: u16, minKeyCode: keycode_t, maxKeyCode: keycode_t, firstType: u8, nTypes: u8, firstKeySym: keycode_t, nKeySyms: u8, totalSyms: u16, firstKeyAction: keycode_t, nKeyActions: u8, totalActions: u16, firstKeyBehavior: keycode_t, nKeyBehaviors: u8, totalKeyBehaviors: u8, firstKeyExplicit: keycode_t, nKeyExplicit: u8, totalKeyExplicit: u8, firstModMapKey: keycode_t, nModMapKeys: u8, totalModMapKeys: u8, firstVModMapKey: keycode_t, nVModMapKeys: u8, totalVModMapKeys: u8, virtualMods: u16, values: rawptr) -> void_cookie_t ---
    xkb_set_map_aux_checked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, present: u16, flags: u16, minKeyCode: keycode_t, maxKeyCode: keycode_t, firstType: u8, nTypes: u8, firstKeySym: keycode_t, nKeySyms: u8, totalSyms: u16, firstKeyAction: keycode_t, nKeyActions: u8, totalActions: u16, firstKeyBehavior: keycode_t, nKeyBehaviors: u8, totalKeyBehaviors: u8, firstKeyExplicit: keycode_t, nKeyExplicit: u8, totalKeyExplicit: u8, firstModMapKey: keycode_t, nModMapKeys: u8, totalModMapKeys: u8, firstVModMapKey: keycode_t, nVModMapKeys: u8, totalVModMapKeys: u8, virtualMods: u16, values: ^xkb_set_map_values_t) -> void_cookie_t ---
    xkb_set_map_aux :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, present: u16, flags: u16, minKeyCode: keycode_t, maxKeyCode: keycode_t, firstType: u8, nTypes: u8, firstKeySym: keycode_t, nKeySyms: u8, totalSyms: u16, firstKeyAction: keycode_t, nKeyActions: u8, totalActions: u16, firstKeyBehavior: keycode_t, nKeyBehaviors: u8, totalKeyBehaviors: u8, firstKeyExplicit: keycode_t, nKeyExplicit: u8, totalKeyExplicit: u8, firstModMapKey: keycode_t, nModMapKeys: u8, totalModMapKeys: u8, firstVModMapKey: keycode_t, nVModMapKeys: u8, totalVModMapKeys: u8, virtualMods: u16, values: ^xkb_set_map_values_t) -> void_cookie_t ---
    xkb_set_map_values :: proc(R: ^xkb_set_map_request_t) -> rawptr ---
    xkb_get_compat_map_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_get_compat_map :: proc(c: connection_t, deviceSpec: xkb_device_spec_t, groups: u8, getAllSI: u8, firstSI: u16, nSI: u16) -> xkb_get_compat_map_cookie_t ---
    xkb_get_compat_map_unchecked :: proc(c: connection_t, deviceSpec: xkb_device_spec_t, groups: u8, getAllSI: u8, firstSI: u16, nSI: u16) -> xkb_get_compat_map_cookie_t ---
    xkb_get_compat_map_si_rtrn :: proc(R: ^xkb_get_compat_map_reply_t) -> ^xkb_sym_interpret_t ---
    xkb_get_compat_map_si_rtrn_length :: proc(R: ^xkb_get_compat_map_reply_t) -> _c.int ---
    xkb_get_compat_map_si_rtrn_iterator :: proc(R: ^xkb_get_compat_map_reply_t) -> xkb_sym_interpret_iterator_t ---
    xkb_get_compat_map_group_rtrn :: proc(R: ^xkb_get_compat_map_reply_t) -> ^xkb_mod_def_t ---
    xkb_get_compat_map_group_rtrn_length :: proc(R: ^xkb_get_compat_map_reply_t) -> _c.int ---
    xkb_get_compat_map_group_rtrn_iterator :: proc(R: ^xkb_get_compat_map_reply_t) -> xkb_mod_def_iterator_t ---
    xkb_get_compat_map_reply :: proc(c: connection_t, cookie: xkb_get_compat_map_cookie_t, e: ^^generic_error_t) -> ^xkb_get_compat_map_reply_t ---
    xkb_set_compat_map_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_set_compat_map_checked :: proc(c: connection_t, deviceSpec: xkb_device_spec_t, recomputeActions: u8, truncateSI: u8, groups: u8, firstSI: u16, nSI: u16, si: ^xkb_sym_interpret_t, groupMaps: ^xkb_mod_def_t) -> void_cookie_t ---
    xkb_set_compat_map :: proc(c: connection_t, deviceSpec: xkb_device_spec_t, recomputeActions: u8, truncateSI: u8, groups: u8, firstSI: u16, nSI: u16, si: ^xkb_sym_interpret_t, groupMaps: ^xkb_mod_def_t) -> void_cookie_t ---
    xkb_set_compat_map_si :: proc(R: ^xkb_set_compat_map_request_t) -> ^xkb_sym_interpret_t ---
    xkb_set_compat_map_si_length :: proc(R: ^xkb_set_compat_map_request_t) -> _c.int ---
    xkb_set_compat_map_si_iterator :: proc(R: ^xkb_set_compat_map_request_t) -> xkb_sym_interpret_iterator_t ---
    xkb_set_compat_map_group_maps :: proc(R: ^xkb_set_compat_map_request_t) -> ^xkb_mod_def_t ---
    xkb_set_compat_map_group_maps_length :: proc(R: ^xkb_set_compat_map_request_t) -> _c.int ---
    xkb_set_compat_map_group_maps_iterator :: proc(R: ^xkb_set_compat_map_request_t) -> xkb_mod_def_iterator_t ---
    xkb_get_indicator_state :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t) -> xkb_get_indicator_state_cookie_t ---
    xkb_get_indicator_state_unchecked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t) -> xkb_get_indicator_state_cookie_t ---
    xkb_get_indicator_state_reply :: proc(c: ^connection_t, cookie: xkb_get_indicator_state_cookie_t, e: ^^generic_error_t) -> ^xkb_get_indicator_state_reply_t ---
    xkb_get_indicator_map_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_get_indicator_map :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, which: u32) -> xkb_get_indicator_map_cookie_t ---
    xkb_get_indicator_map_unchecked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, which: u32) -> xkb_get_indicator_map_cookie_t ---
    xkb_get_indicator_map_maps :: proc(R: ^xkb_get_indicator_map_reply_t) -> ^xkb_indicator_map_t ---
    xkb_get_indicator_map_maps_length :: proc(R: ^xkb_get_indicator_map_reply_t) -> _c.int ---
    xkb_get_indicator_map_maps_iterator :: proc(R: ^xkb_get_indicator_map_reply_t) -> xkb_indicator_map_iterator_t ---
    xkb_get_indicator_map_reply :: proc(c: ^connection_t, cookie: xkb_get_indicator_map_cookie_t, e: ^^generic_error_t) -> ^xkb_get_indicator_map_reply_t ---
    xkb_set_indicator_map_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_set_indicator_map_checked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, which: u32, maps: ^xkb_indicator_map_t) -> void_cookie_t ---
    xkb_set_indicator_map :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, which: u32, maps: ^xkb_indicator_map_t) -> void_cookie_t ---
    xkb_set_indicator_map_maps :: proc(R: ^xkb_set_indicator_map_request_t) -> ^xkb_indicator_map_t ---
    xkb_set_indicator_map_maps_length :: proc(R: ^xkb_set_indicator_map_request_t) -> _c.int ---
    xkb_set_indicator_map_maps_iterator :: proc(R: ^xkb_set_indicator_map_request_t) -> xkb_indicator_map_iterator_t ---
    xkb_get_named_indicator :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, ledClass: xkb_led_class_spec_t, ledID: xkb_id_spec_t, indicator: atom_t) -> xkb_get_named_indicator_cookie_t ---
    xkb_get_named_indicator_unchecked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, ledClass: xkb_led_class_spec_t, ledID: xkb_id_spec_t, indicator: atom_t) -> xkb_get_named_indicator_cookie_t ---
    xkb_get_named_indicator_reply :: proc(c: ^connection_t, cookie: xkb_get_named_indicator_cookie_t, e: ^^generic_error_t) -> ^xkb_get_named_indicator_reply_t ---
    xkb_set_named_indicator_checked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, ledClass: xkb_led_class_spec_t, ledID: xkb_id_spec_t, indicator: atom_t, setState: u8, on: u8, setMap: u8, create_map: u8, map_flags: u8, map_whichGroups: u8, map_groups: u8, map_whichMods: u8, map_realMods: u8, map_vmods: u16, map_ctrls: u32) -> void_cookie_t ---
    xkb_set_named_indicator :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, ledClass: xkb_led_class_spec_t, ledID: xkb_id_spec_t, indicator: atom_t, setState: u8, on: u8, setMap: u8, create_map: u8, map_flags: u8, map_whichGroups: u8, map_groups: u8, map_whichMods: u8, map_realMods: u8, map_vmods: u16, map_ctrls: u32) -> void_cookie_t ---
    xkb_get_names_value_list_type_names :: proc(S: ^xkb_get_names_value_list_t) -> ^atom_t ---
    xkb_get_names_value_list_type_names_length :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> _c.int ---
    xkb_get_names_value_list_type_names_end :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> generic_iterator_t ---
    xkb_get_names_value_list_n_levels_per_type :: proc(S: ^xkb_get_names_value_list_t) -> ^u8 ---
    xkb_get_names_value_list_n_levels_per_type_length :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> _c.int ---
    xkb_get_names_value_list_n_levels_per_type_end :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> generic_iterator_t ---
    xkb_get_names_value_list_kt_level_names :: proc(S: ^xkb_get_names_value_list_t) -> ^atom_t ---
    xkb_get_names_value_list_kt_level_names_length :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> _c.int ---
    xkb_get_names_value_list_kt_level_names_end :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> generic_iterator_t ---
    xkb_get_names_value_list_virtual_mod_names :: proc(S: ^xkb_get_names_value_list_t) -> ^atom_t ---
    xkb_get_names_value_list_virtual_mod_names_length :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> _c.int ---
    xkb_get_names_value_list_virtual_mod_names_end :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> generic_iterator_t ---
    xkb_get_names_value_list_groups :: proc(S: ^xkb_get_names_value_list_t) -> ^atom_t ---
    xkb_get_names_value_list_groups_length :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> _c.int ---
    xkb_get_names_value_list_groups_end :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> generic_iterator_t ---
    xkb_get_names_value_list_key_names :: proc(S: ^xkb_get_names_value_list_t) -> ^xkb_key_name_t ---
    xkb_get_names_value_list_key_names_length :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> _c.int ---
    xkb_get_names_value_list_key_names_iterator :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> xkb_key_name_iterator_t ---
    xkb_get_names_value_list_key_aliases ::proc(S: ^xkb_get_names_value_list_t) -> ^xkb_key_alias_t ---
    xkb_get_names_value_list_key_aliases_length :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> _c.int ---
    xkb_get_names_value_list_key_aliases_iterator :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> xkb_key_alias_iterator_t ---
    xkb_get_names_value_list_radio_group_names :: proc(S: ^xkb_get_names_value_list_t) -> ^atom_t ---
    xkb_get_names_value_list_radio_group_names_length :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> _c.int ---
    xkb_get_names_value_list_radio_group_names_end :: proc(R: ^xkb_get_names_reply_t, S: ^xkb_get_names_value_list_t) -> generic_iterator_t ---
    xkb_get_names_value_list_serialize :: proc(_buffer: ^rawptr, nTypes: u8, indicator: u32, virtualMods: u16, groupNames: u8, nKeys: u8, nkeyAliases: u8, nRadioGroups: u8, which: u32, _aux: ^xkb_get_names_value_list_t) -> _c.int ---
    xkb_get_names_value_list_unpack :: proc(_buffer: rawptr, nTypes: u8, indicator: u32, virtualMods: u16, groupNames: u8, nKeys: u8, nkeyAliases: u8, nRadioGroups: u8, which: u32, _aux: ^xkb_get_names_value_list_t) -> _c.int ---
    xkb_get_names_value_list_sizeof :: proc(_buffer: rawptr, nTypes: u8, indicator: u32, virtualMods: u16, groupNames: u8, nKeys: u8, nkeyAliases: u8, nRadioGroups: u8, which: u32) -> _c.int ---
    xkb_get_names_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_get_names :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, which: u32) -> xkb_get_names_cookie_t ---
    xkb_get_names_unchecked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, which: u32) -> xkb_get_names_cookie_t ---
    xkb_get_names_value_list :: proc(R: ^xkb_get_names_reply_t) -> rawptr ---
    xkb_get_names_reply :: proc(c: ^connection_t, cookie: xkb_get_names_cookie_t, e: ^^generic_error_t) -> ^xkb_get_names_reply_t ---
    xkb_set_names_values_type_names :: proc(S: ^xkb_set_names_values_t) -> ^atom_t ---
    xkb_set_names_values_type_names_length :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> _c.int ---
    xkb_set_names_values_type_names_end :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> generic_iterator_t ---
    xkb_set_names_values_n_levels_per_type :: proc(S: ^xkb_set_names_values_t) -> ^u8 ---
    xkb_set_names_values_n_levels_per_type_length :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> _c.int ---
    xkb_set_names_values_n_levels_per_type_end :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> generic_iterator_t ---
    xkb_set_names_values_kt_level_names :: proc(S: ^xkb_set_names_values_t) -> ^atom_t ---
    xkb_set_names_values_kt_level_names_length :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> _c.int ---
    xkb_set_names_values_kt_level_names_end :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> generic_iterator_t ---
    xkb_set_names_values_indicator_names :: proc(S: ^xkb_set_names_values_t) -> ^atom_t ---
    xkb_set_names_values_indicator_names_length :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> _c.int ---
    xkb_set_names_values_indicator_names_end :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> generic_iterator_t ---
    xkb_set_names_values_virtual_mod_names :: proc(S: ^xkb_set_names_values_t) -> ^atom_t ---
    xkb_set_names_values_virtual_mod_names_length :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> _c.int ---
    xkb_set_names_values_virtual_mod_names_end :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> generic_iterator_t ---
    xkb_set_names_values_groups :: proc(S: ^xkb_set_names_values_t) -> ^atom_t ---
    xkb_set_names_values_groups_length :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> _c.int ---
    xkb_set_names_values_groups_end :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> generic_iterator_t ---
    xkb_set_names_values_key_names :: proc(S: ^xkb_set_names_values_t) -> ^xkb_key_name_t ---
    xkb_set_names_values_key_names_length :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> _c.int ---
    xkb_set_names_values_key_names_iterator :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> xkb_key_name_iterator_t ---
    xkb_set_names_values_key_aliases :: proc(S: ^xkb_set_names_values_t) -> ^xkb_key_alias_t ---
    xkb_set_names_values_key_aliases_length :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> _c.int ---
    xkb_set_names_values_key_aliases_iterator :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> xkb_key_alias_iterator_t ---
    xkb_set_names_values_radio_group_names :: proc(S: ^xkb_set_names_values_t) -> ^atom_t ---
    xkb_set_names_values_radio_group_names_length :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> _c.int ---
    xkb_set_names_values_radio_group_names_end :: proc(R: ^xkb_set_names_request_t, S: ^xkb_set_names_values_t) -> generic_iterator_t ---
    xkb_set_names_values_serialize :: proc(_buffer: ^rawptr, nTypes: u8, indicator: u32, virtualMods: u16, groupNames: u8, nKeys: u8, nkeyAliases: u8, nRadioGroups: u8, which: u32, _aux: ^xkb_set_names_values_t) -> _c.int ---
    xkb_set_names_values_unpack :: proc(_buffer: rawptr, nTypes: u8, indicator: u32, virtualMods: u16, groupNames: u8, nKeys: u8, nkeyAliases: u8, nRadioGroups: u8, which: u32, _aux: ^xkb_set_names_values_t) -> _c.int ---
    xkb_set_names_values_sizeof :: proc(_buffer: rawptr, nTypes: u8, indicator: u32, virtualMods: u16, groupNames: u8, nKeys: u8, nkeyAliases: u8, nRadioGroups: u8, which: u32) -> _c.int ---
    xkb_set_names_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_set_names_checked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, virtualMods: u16, which: u32, firstType: u8, nTypes: u8, firstKTLevelt: u8, nKTLevels: u8, indicators: u32, groupNames: u8, nRadioGroups: u8, firstKey: keycode_t, nKeys: u8, nkeyAliases: u8, totalKTLevelNames: u16, values: rawptr) -> void_cookie_t ---
    xkb_set_names :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, virtualMods: u16, which: u32, firstType: u8, nTypes: u8, firstKTLevelt: u8, nKTLevels: u8, indicators: u32, groupNames: u8, nRadioGroups: u8, firstKey: keycode_t, nKeys: u8, nkeyAliases: u8, totalKTLevelNames: u16, values: rawptr) -> void_cookie_t ---
    xkb_set_names_aux_checked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, virtualMods: u16, which: u32, firstType: u8, nTypes: u8, firstKTLevelt: u8, nKTLevels: u8, indicators: u32, groupNames: u8, nRadioGroups: u8, firstKey: keycode_t, nKeys: u8, nkeyAliases: u8, totalKTLevelNames: u16, values: rawptr) -> void_cookie_t ---
    xkb_set_names_aux :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, virtualMods: u16, which: u32, firstType: u8, nTypes: u8, firstKTLevelt: u8, nKTLevels: u8, indicators: u32, groupNames: u8, nRadioGroups: u8, firstKey: keycode_t, nKeys: u8, nkeyAliases: u8, totalKTLevelNames: u16, values: rawptr) -> void_cookie_t ---
    xkb_set_names_values :: proc(R: ^xkb_set_names_request_t) -> rawptr ---
    xkb_per_client_flags :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, change: u32, value: u32, ctrlsToChange: u32, autoCtrls: u32, autoCtrlsValues: u32) -> xkb_per_client_flags_cookie_t ---
    xkb_per_client_flags_unchecked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, change: u32, value: u32, ctrlsToChange: u32, autoCtrls: u32, autoCtrlsValues: u32) -> xkb_per_client_flags_cookie_t ---
    xkb_per_client_flags_reply :: proc(c: ^connection_t, cookie: xkb_per_client_flags_cookie_t, e: ^^generic_error_t) -> ^xkb_per_client_flags_reply_t ---
    xkb_list_components_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_list_components :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, maxNames: u16) -> xkb_list_components_cookie_t ---
    xkb_list_components_unchecked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, maxNames: u16) -> xkb_list_components_cookie_t ---
    xkb_list_components_keymaps_length :: proc(R: ^xkb_list_components_reply_t) -> _c.int ---
    xkb_list_components_keymaps_iterator :: proc(R: ^xkb_list_components_reply_t) -> xkb_listing_iterator_t ---
    xkb_list_components_keycodes_length :: proc(R: ^xkb_list_components_reply_t) -> _c.int ---
    xkb_list_components_keycodes_iterator :: proc(R: ^xkb_list_components_reply_t) -> xkb_listing_iterator_t ---
    xkb_list_components_types_length :: proc(R: ^xkb_list_components_reply_t) -> _c.int ---
    xkb_list_components_types_iterator :: proc(R: ^xkb_list_components_reply_t) -> xkb_listing_iterator_t ---
    xkb_list_components_compat_maps_length :: proc(R: ^xkb_list_components_reply_t) -> _c.int ---
    xkb_list_components_compat_maps_iterator :: proc(R: ^xkb_list_components_reply_t) -> xkb_listing_iterator_t ---
    xkb_list_components_symbols_length :: proc(R: ^xkb_list_components_reply_t) -> _c.int ---
    xkb_list_components_symbols_iterator :: proc(R: ^xkb_list_components_reply_t) -> xkb_listing_iterator_t ---
    xkb_list_components_geometries_length :: proc(R: ^xkb_list_components_reply_t) -> _c.int ---
    xkb_list_components_geometries_iterator :: proc(R: ^xkb_list_components_reply_t, e: ^^generic_error_t) -> xkb_listing_iterator_t ---
    xkb_list_components_reply :: proc(c: ^connection_t, cookie: xkb_list_components_cookie_t, e: ^^generic_error_t) -> ^xkb_list_components_reply_t ---
    xkb_get_kbd_by_name_replies_types_map_types_rtrn_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_types_map_types_rtrn_iterator :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> xkb_key_type_iterator_t ---
    xkb_get_kbd_by_name_replies_types_map_syms_rtrn_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_types_map_syms_rtrn_iterator :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> xkb_key_sym_map_iterator_t ---
    xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^u8 ---
    xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_types_map_acts_rtrn_end :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> generic_iterator_t ---
    xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^xkb_action_t ---
    xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_iterator :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> xkb_action_iterator_t ---
    xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^xkb_set_behavior_t ---
    xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_iterator :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> xkb_set_behavior_iterator_t ---
    xkb_get_kbd_by_name_replies_types_map_vmods_rtrn :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^u8 ---
    xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_end :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> generic_iterator_t ---
    xkb_get_kbd_by_name_replies_types_map_explicit_rtrn :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^xkb_set_explicit_t ---
    xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_iterator :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> xkb_set_explicit_iterator_t ---
    xkb_get_kbd_by_name_replies_types_map_modmap_rtrn :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^xkb_key_mod_map_t ---
    xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_iterator :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> xkb_key_mod_map_iterator_t ---
    xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^xkb_key_v_mod_map_t ---
    xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_iterator :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> xkb_key_v_mod_map_iterator_t ---
    xkb_get_kbd_by_name_replies_types_map_serialize :: proc(_buffer: ^rawptr, nTypes: u8, nKeySyms: u8, nKeyActions: u8, totalActions: u16, totalKeyBehaviors: u8, virtualMods: u16, totalKeyExplicit: u8, totalModMapKeys: u8, totalVModMapKeys: u8, present: u16, _aux: ^xkb_get_kbd_by_name_replies_types_map_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_types_map_unpack :: proc(_buffer: rawptr, nTypes: u8, nKeySyms: u8, nKeyActions: u8, totalActions: u16, totalKeyBehaviors: u8, virtualMods: u16, totalKeyExplicit: u8, totalModMapKeys: u8, totalVModMapKeys: u8, present: u16, _aux: ^xkb_get_kbd_by_name_replies_types_map_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_types_map_sizeof :: proc(_buffer: rawptr, nTypes: u8, nKeySyms: u8, nKeyActions: u8, totalActions: u16, totalKeyBehaviors: u8, virtualMods: u16, totalKeyExplicit: u8, totalModMapKeys: u8, totalVModMapKeys: u8, present: u16) -> _c.int ---
    xkb_get_kbd_by_name_replies_key_names_value_list_type_names :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^atom_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_type_names_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_key_names_value_list_type_names_end :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> generic_iterator_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^u8 ---
    xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_end :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> generic_iterator_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^atom_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_end :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> generic_iterator_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^atom_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_end :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> generic_iterator_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^atom_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_end :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> generic_iterator_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_groups :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^atom_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_groups_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_key_names_value_list_groups_end :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> generic_iterator_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_key_names :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^xkb_key_name_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_key_names_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_key_names_value_list_key_names_iterator :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> xkb_key_name_iterator_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^xkb_key_alias_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_iterator :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> xkb_key_alias_iterator_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^atom_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_end :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> generic_iterator_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list_serialize :: proc(_buffer: ^rawptr, nTypes: u8, indicator: u32, virtualMods: u16, groupNames: u8, nKeys: u8, nkeyAliases: u8, nRadioGroups: u8, which: u32, _aux: ^xkb_get_kbd_by_name_replies_key_names_value_list_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_key_names_value_list_unpack :: proc(_buffer: rawptr, nTypes: u8, indicator: u32, virtualMods: u16, groupNames: u8, nKeys: u8, nkeyAliases: u8, nRadioGroups: u8, which: u32, _aux: ^xkb_get_kbd_by_name_replies_key_names_value_list_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_key_names_value_list_sizeof :: proc(_buffer: rawptr, nTypes: u8, indicator: u32, virtualMods: u16, groupNames: u8, nKeys: u8, nkeyAliases: u8, nRadioGroups: u8, which: u32) -> _c.int ---
    xkb_get_kbd_by_name_replies_compat_map_si_rtrn :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^xkb_sym_interpret_t ---
    xkb_get_kbd_by_name_replies_compat_map_si_rtrn_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_compat_map_si_rtrn_iterator :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> xkb_sym_interpret_iterator_t ---
    xkb_get_kbd_by_name_replies_compat_map_group_rtrn :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^xkb_mod_def_t ---
    xkb_get_kbd_by_name_replies_compat_map_group_rtrn_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_compat_map_group_rtrn_iterator :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> xkb_mod_def_iterator_t ---
    xkb_get_kbd_by_name_replies_indicator_maps_maps :: proc(S: ^xkb_get_kbd_by_name_replies_t) -> ^xkb_indicator_map_t ---
    xkb_get_kbd_by_name_replies_indicator_maps_maps_length :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_indicator_maps_maps_iterator :: proc(R: ^xkb_get_kbd_by_name_reply_t, S: ^xkb_get_kbd_by_name_replies_t) -> xkb_indicator_map_iterator_t ---
    xkb_get_kbd_by_name_replies_key_names_value_list :: proc(R: ^xkb_get_kbd_by_name_reply_t) -> ^xkb_get_kbd_by_name_replies_key_names_value_list_t ---
    xkb_get_kbd_by_name_replies_geometry_label_font :: proc(R: ^xkb_get_kbd_by_name_replies_t) -> ^xkb_counted_string_16_t ---
    xkb_get_kbd_by_name_replies_serialize :: proc(_buffer: ^rawptr, reported: u16, _aux: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_unpack :: proc(_buffer: rawptr, reported: u16, _aux: ^xkb_get_kbd_by_name_replies_t) -> _c.int ---
    xkb_get_kbd_by_name_replies_sizeof :: proc(_buffer: rawptr, reported: u16) -> _c.int ---
    xkb_get_kbd_by_name_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_get_kbd_by_name :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, need: u16, want: u16, load: u8) -> ^xkb_get_kbd_by_name_cookie_t ---
    xkb_get_kbd_by_name_unchecked :: proc(c: ^connection_t, deviceSpec: ^xkb_device_spec_t, need: u16, want: u16, load: u8) -> ^xkb_get_kbd_by_name_cookie_t ---
    xkb_get_kbd_by_name_replies :: proc(c: ^connection_t, cookie: ^xkb_get_kbd_by_name_cookie_t) -> rawptr ---
    xkb_get_kbd_by_name_reply :: proc(c: ^connection_t, cookie: ^xkb_get_kbd_by_name_cookie_t, e: ^^generic_error_t) -> ^xkb_get_kbd_by_name_reply_t ---
    xkb_get_device_info_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_get_device_info :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, wanted: u16, allButtons: u8, firstButton: u8, nButtons: u8, ledClass: xkb_led_class_spec_t, ledID: xkb_id_spec_t) -> xkb_get_device_info_cookie_t ---
    xkb_get_device_info_unchecked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, wanted: u16, allButtons: u8, firstButton: u8, nButtons: u8, ledClass: xkb_led_class_spec_t, ledID: xkb_id_spec_t) -> xkb_get_device_info_cookie_t ---
    xkb_get_device_info_name :: proc(R: ^xkb_get_device_info_reply_t) -> ^xkb_string8_t ---
    xkb_get_device_info_name_length :: proc(R: ^xkb_get_device_info_reply_t) -> _c.int ---
    xkb_get_device_info_name_end :: proc(R: ^xkb_get_device_info_reply_t) -> generic_iterator_t ---
    xkb_get_device_info_btn_actions :: proc(R: ^xkb_get_device_info_reply_t) -> ^xkb_action_t ---
    xkb_get_device_info_btn_actions_length :: proc(R: ^xkb_get_device_info_reply_t) -> _c.int ---
    xkb_get_device_info_btn_actions_iterator :: proc(R: ^xkb_get_device_info_reply_t) -> xkb_action_iterator_t ---
    xkb_get_device_info_leds_length :: proc(R: ^xkb_get_device_info_reply_t) -> _c.int ---
    xkb_get_device_info_leds_iterator :: proc(R: ^xkb_get_device_info_reply_t) -> xkb_device_led_info_iterator_t ---
    xkb_get_device_info_reply :: proc(c: ^connection_t, cookie: xkb_get_device_info_cookie_t, e: ^^generic_error_t) -> ^xkb_get_device_info_reply_t ---
    xkb_set_device_info_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_set_device_info_checked :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, firstBtn: u8, nBtns: u8, change: u16, nDeviceLedFBs: u16, btnActions: ^xkb_action_t, leds: ^xkb_device_led_info_t) -> void_cookie_t ---
    xkb_set_device_info :: proc(c: ^connection_t, deviceSpec: xkb_device_spec_t, firstBtn: u8, nBtns: u8, change: u16, nDeviceLedFBs: u16, btnActions: ^xkb_action_t, leds: ^xkb_device_led_info_t) -> void_cookie_t ---
    xkb_set_device_info_btn_actions :: proc(R: ^xkb_set_device_info_request_t) -> ^xkb_action_t ---
    xkb_set_device_info_btn_actions_length :: proc(R: ^xkb_set_device_info_request_t) -> _c.int ---
    xkb_set_device_info_btn_actions_iterator :: proc(R: ^xkb_set_device_info_request_t) -> xkb_action_iterator_t ---
    xkb_set_device_info_leds_length :: proc(R: ^xkb_set_device_info_request_t) -> _c.int ---
    xkb_set_device_info_leds_iterator :: proc(R: ^xkb_set_device_info_request_t) -> xkb_device_led_info_iterator_t ---
    xkb_set_debugging_flags_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    xkb_set_debugging_flags :: proc(c: ^connection_t, msgLength: u16, affectFlags: u32, flags: u32, affectCtrls: u32, ctrls: u32, message: ^xkb_string8_t) -> xkb_set_debugging_flags_cookie_t ---
    xkb_set_debugging_flags_unchecked :: proc(c: ^connection_t, msgLength: u16, affectFlags: u32, flags: u32, affectCtrls: u32, ctrls: u32, message: ^xkb_string8_t) -> xkb_set_debugging_flags_cookie_t ---
    xkb_set_debugging_flags_reply :: proc(c: ^connection_t, cookie: xkb_set_debugging_flags_cookie_t, e: ^^generic_error_t) -> ^xkb_set_debugging_flags_reply_t ---
}