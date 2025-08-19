package xcb

import _c "core:c"

// RandR extension version
RANDR_MAJOR_VERSION :: 1
RANDR_MINOR_VERSION :: 6

// Extension identifier (extern declaration)
@(link_name="xcb_randr_id")
randr_id: extension_t


// Opcode constants
RANDR_QUERY_VERSION :: 0
RANDR_BAD_OUTPUT :: 0
RANDR_BAD_CRTC :: 1
RANDR_BAD_MODE :: 2
RANDR_BAD_PROVIDER :: 3
RANDR_SET_SCREEN_CONFIG :: 2
RANDR_SELECT_INPUT :: 4
RANDR_GET_SCREEN_INFO :: 5
RANDR_GET_SCREEN_SIZE_RANGE :: 6
RANDR_SET_SCREEN_SIZE :: 7
RANDR_GET_SCREEN_RESOURCES :: 8
RANDR_GET_OUTPUT_INFO :: 9
RANDR_LIST_OUTPUT_PROPERTIES :: 10
RANDR_QUERY_OUTPUT_PROPERTY :: 11
RANDR_CONFIGURE_OUTPUT_PROPERTY :: 12
RANDR_CHANGE_OUTPUT_PROPERTY :: 13
RANDR_DELETE_OUTPUT_PROPERTY :: 14
RANDR_GET_OUTPUT_PROPERTY :: 15
RANDR_CREATE_MODE :: 16
RANDR_DESTROY_MODE :: 17
RANDR_ADD_OUTPUT_MODE :: 18
RANDR_DELETE_OUTPUT_MODE :: 19
RANDR_GET_CRTC_INFO :: 20
RANDR_SET_CRTC_CONFIG :: 21
RANDR_GET_CRTC_GAMMA_SIZE :: 22
RANDR_GET_CRTC_GAMMA :: 23
RANDR_SET_CRTC_GAMMA :: 24
RANDR_GET_SCREEN_RESOURCES_CURRENT :: 25
RANDR_SET_CRTC_TRANSFORM :: 26
RANDR_GET_CRTC_TRANSFORM :: 27
RANDR_GET_PANNING :: 28
RANDR_SET_PANNING :: 29
RANDR_SET_OUTPUT_PRIMARY :: 30
RANDR_GET_OUTPUT_PRIMARY :: 31
RANDR_GET_PROVIDERS :: 32
RANDR_GET_PROVIDER_INFO :: 33
RANDR_SET_PROVIDER_OFFLOAD_SINK :: 34
RANDR_SET_PROVIDER_OUTPUT_SOURCE :: 35
RANDR_LIST_PROVIDER_PROPERTIES :: 36
RANDR_QUERY_PROVIDER_PROPERTY :: 37
RANDR_CONFIGURE_PROVIDER_PROPERTY :: 38
RANDR_CHANGE_PROVIDER_PROPERTY :: 39
RANDR_DELETE_PROVIDER_PROPERTY :: 40
RANDR_GET_PROVIDER_PROPERTY :: 41
RANDR_SCREEN_CHANGE_NOTIFY :: 0
RANDR_GET_MONITORS :: 42
RANDR_SET_MONITORS :: 43
RANDR_DELETE_MONITOR :: 44
RANDR_CREATE_LEASE :: 45
RANDR_FREE_LEASE :: 46
RANDR_NOTIFY :: 1


// Type definitions
randr_mode_t :: u32
randr_crtc_t :: u32
randr_output_t :: u32
randr_provider_t :: u32
randr_lease_t :: u32

randr_mode_iterator_t :: struct {
    data: ^randr_mode_t,
    rem: _c.int,
    index: _c.int,
}

randr_crtc_iterator_t :: struct {
    data: ^randr_crtc_t,
    rem: _c.int,
    index: _c.int,
}

randr_output_iterator_t :: struct {
    data: ^randr_output_t,
    rem: _c.int,
    index: _c.int,
}

randr_provider_iterator_t :: struct {
    data: ^randr_provider_t,
    rem: _c.int,
    index: _c.int,
}

randr_lease_iterator_t :: struct {
    data: ^randr_lease_t,
    rem: _c.int,
    index: _c.int,
}

randr_bad_output_error_t :: struct {
    response_type: u8,
    error_code: u8,
    sequence: u16,
    bad_value: u32,
    minor_opcode: u16,
    major_opcode: u8,
}

randr_bad_crtc_error_t :: struct {
    response_type: u8,
    error_code: u8,
    sequence: u16,
    bad_value: u32,
    minor_opcode: u16,
    major_opcode: u8,
}

randr_bad_mode_error_t :: struct {
    response_type: u8,
    error_code: u8,
    sequence: u16,
    bad_value: u32,
    minor_opcode: u16,
    major_opcode: u8,
}

randr_bad_provider_error_t :: struct {
    response_type: u8,
    error_code: u8,
    sequence: u16,
    bad_value: u32,
    minor_opcode: u16,
    major_opcode: u8,
}

randr_rotation_t :: enum _c.int{
    RANDR_ROTATION_ROTATE_0 = 1,
    RANDR_ROTATION_ROTATE_90 = 2,
    RANDR_ROTATION_ROTATE_180 = 4,
    RANDR_ROTATION_ROTATE_270 = 8,
    RANDR_ROTATION_REFLECT_X = 16,
    RANDR_ROTATION_REFLECT_Y = 32,
}

randr_screen_size_t :: struct {
    width: u16,
    height: u16,
    mm_width: u16,
    mm_height: u16,
}

randr_screen_size_iterator_t :: struct {
    data: ^randr_screen_size_t,
    rem: _c.int,
    index: _c.int,
}

randr_refresh_rates_t :: struct {
    nRates: u16,
}

randr_refresh_rates_iterator_t :: struct {
    data: ^randr_refresh_rates_t,
    rem: _c.int,
    index: _c.int,
}

randr_query_version_cookie_t :: struct {
    sequence: _c.uint,
}

randr_query_version_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    major_version: u32,
    minor_version: u32,
}

randr_query_version_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    major_version: u32,
    minor_version: u32,
    pad1: [16]u8,
}

randr_set_config_t :: enum _c.int {
    RANDR_SET_CONFIG_SUCCESS,
    RANDR_SET_CONFIG_INVALID_CONFIG_TIME,
    RANDR_SET_CONFIG_INVALID_TIME,
    RANDR_SET_CONFIG_FAILED,
}

randr_set_screen_config_cookie_t :: struct {
    sequence: _c.uint,
}

randr_set_screen_config_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
    timestamp: timestamp_t,
    config_timestamp: timestamp_t,
    sizeID: u16,
    rotation: u16,
    rate: u16,
    pad0: [2]u8,
}

randr_set_screen_config_reply_t :: struct {
    response_type: u8,
    status: u8,
    sequence: u16,
    length: u32,
    timestamp: timestamp_t,
    config_timestamp: timestamp_t,
    root: window_t,
    subpixel_order: u16,
    pad0: [10]u8,
}

randr_notify_mask_t :: enum _c.int {
    RANDR_NOTIFY_MASK_SCREEN_CHANGE = 1,
    RANDR_NOTIFY_MASK_CRTC_CHANGE = 2,
    RANDR_NOTIFY_MASK_OUTPUT_CHANGE = 4,
    RANDR_NOTIFY_MASKD_OUTPUT_PROPERTY = 8,
    RANDR_NOTIFY_MASK_PROVIDER_CHANGE = 16,
    RANDR_NOTIFY_MASK_PROVIDER_PROPERTY = 32,
    RANDR_NOTIFY_MASK_RESOURCES_CHANGE = 64,
    RANDR_NOTIFY_MASK_LEASE = 128,
}

randr_select_input_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
    enable: u16,
    pad0: [2]u8,
}

randr_get_screen_info_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_screen_info_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
}

randr_get_screen_info_reply_t :: struct {
    response_type: u8,
    rotations: u8,
    sequence: u16,
    length: u32,
    root: window_t,
    timestamp: timestamp_t,
    config_timestamp: timestamp_t,
    nSizes: u16,
    sizeID: u16,
    rotation: u16,
    rate: u16,
    subpixel_order: u16,
    pad0: [2]u8,
}

randr_get_screen_size_range_cookie_t :: struct {
    sequence: _c.uint,
}
randr_get_screen_size_range_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
}

randr_get_screen_size_range_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    min_width: u16,
    min_height: u16,
    max_width: u16,
    max_height: u16,
    pad1: [16]u8,
}

randr_set_screen_size_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
    width: u16,
    height: u16,
    mm_width: u32,
    mm_height: u32,
}

randr_mode_flag_t :: enum _c.int {
    RANDR_MODE_FLAG_HSYNC_POSITIVE = 1,
    RANDR_MODE_FLAG_HSYNC_NEGATIVE = 2,
    RANDR_MODE_FLAG_VSYNC_POSITIVE = 4,
    RANDR_MODE_FLAG_VSYNC_NEGATIVE = 8,
    RANDR_MODE_FLAG_INTERLACE = 16,
    RANDR_MODE_FLAG_DOUBLE_SCAN = 32,
    RANDR_MODE_FLAG_CSYNC = 64,
    RANDR_MODE_FLAG_CSYNC_POSITIVE = 128,
    RANDR_MODE_FLAG_CSYNC_NEGATIVE = 256,
    RANDR_MODE_FLAG_HSKEW_PRESENT = 512,
    RANDR_MODE_FLAG_BCAST = 1024,
    RANDR_MODE_FLAG_PIXEL_MULTIPLEX = 2048,
    RANDR_MODE_FLAG_DOUBLE_CLOCK = 4096,
    RANDR_MODE_FLAG_HALVE_CLOCK = 8192,
}

randr_mode_info_t :: struct {
    id: u32,
    width: u16,
    height: u16,
    dot_clock: u32,
    hsync_start: u16,
    hsync_end: u16,
    htotal: u16,
    hskew: u16,
    vsync_start: u16,
    vsync_end: u16,
    vtotal: u16,
    name_len: u16,
    mode_flags: u32,
}

randr_mode_info_iterator_t :: struct {
    data: ^randr_mode_info_t,
    rem: _c.int,
    index: _c.int,
}

randr_get_screen_resources_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_screen_resources_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
}

randr_get_screen_resources_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    timestamp: timestamp_t,
    config_timestamp: timestamp_t,
    num_crtcs: u16,
    num_outputs: u16,
    num_modes: u16,
    names_len: u16,
    pad1: [8]u8,
}

randr_connection_t :: enum _c.int {
    RANDR_CONNECTION_CONNECTED = 0,
    RANDR_CONNECTION_DISCONNECTED = 1,
    RANDR_CONNECTION_UNKNOWN = 2,
}

randr_get_output_info_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_output_info_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    output: randr_output_t,
    config_timestamp: timestamp_t,
}

randr_get_output_info_reply_t :: struct {
    response_type: u8,
    status: u8,
    sequence: u16,
    length: u32,
    timestamp: timestamp_t,
    crtc: randr_crtc_t,
    mm_width: u32,
    mm_height: u32,
    connection: u8,
    subpixel_order: u8,
    num_crtcs: u16,
    num_modes: u16,
    num_preferred: u16,
    num_clones: u16,
    name_len: u16,
}

randr_list_output_properties_cookie_t :: struct {
    sequence: _c.uint,
}

randr_list_output_properties_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    output: randr_output_t,
}

randr_list_output_properties_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    timestamp: timestamp_t,
    num_atoms: u32,
    pad1: [22]u8,
}

randr_query_output_property_cookie_t :: struct {
    sequence: _c.uint,
}

randr_query_output_property_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    output: randr_output_t,
    property: atom_t,
}

randr_query_output_property_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    pending: u8,
    range: u8,
    immutable: u8,
    pad1: [21]u8,
}

randr_configure_output_property_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    output: randr_output_t,
    property: atom_t,
    pending: u8,
    range: u8,
    pad0: [2]u8,
}

randr_change_output_property_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    output: randr_output_t,
    property: atom_t,
    type: atom_t,
    format: u8,
    mode: u8,
    pad0: [2]u8,
    num_units: u32,
}

randr_delete_output_property_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    output: randr_output_t,
    property: atom_t,
}

randr_get_output_property_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_output_property_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    output: randr_output_t,
    property: atom_t,
    type: atom_t,
    long_offset: u32,
    long_length: u32,
    _delete: u8,
    pending: u8,
    pad0: [2]u8,
}

randr_get_output_property_reply_t :: struct {
    response_type: u8,
    format: u8,
    sequence: u16,
    length: u32,
    type: atom_t,
    bytes_after: u32,
    num_items: u32,
    pending: u8,
    pad0: [12]u8,
}

randr_create_mode_cookie_t :: struct {
    sequence: _c.uint,
}

randr_create_mode_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
    mode_info: randr_mode_info_t,
}

randr_create_mode_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    mode: randr_mode_t,
    pad1: [20]u8,
}

randr_destroy_mode_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    mode: randr_mode_t,
}

randr_add_output_mode_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    output: randr_output_t,
    mode: randr_mode_t,
}

randr_delete_output_mode_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    output: randr_output_t,
    mode: randr_mode_t,
}

randr_get_crtc_info_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_crtc_info_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    crtc: randr_crtc_t,
    config_timestamp: timestamp_t,
}

randr_get_crtc_info_reply_t :: struct {
    response_type: u8,
    status: u8,
    sequence: u16,
    length: u32,
    timestamp: timestamp_t,
    x: i16,
    y: i16,
    width: u16,
    height: u16,
    mode: randr_mode_t,
    rotation: u16,
    rotations: u16,
    num_outputs: u16,
    num_possible_outputs: u16,
}

randr_set_crtc_config_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    crtc: randr_crtc_t,
    timestamp: timestamp_t,
    config_timestamp: timestamp_t,
    x: i16,
    y: i16,
    mode: randr_mode_t,
    rotation: u16,
    outputs_len: u16,
    pad0: [2]u8,
}

randr_set_crtc_config_cookie_t :: struct {
    sequence: _c.uint,
}

randr_set_crtc_config_reply_t :: struct {
    response_type: u8,
    status: u8,
    sequence: u16,
    length: u32,
    timestamp: timestamp_t,
    pad0: [20]u8,
}

randr_get_crtc_gamma_size_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_crtc_gamma_size_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    crtc: randr_crtc_t,
}

randr_get_crtc_gamma_size_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    size: u16,
    pad1: [22]u8,
}

randr_get_crtc_gamma_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_crtc_gamma_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    crtc: randr_crtc_t,
}

randr_get_crtc_gamma_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    size: u16,
    pad1: [22]u8,
}

randr_set_crtc_gamma_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    crtc: randr_crtc_t,
    size: u16,
    pad0: [2]u8,
}

randr_get_screen_resources_current_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_screen_resources_current_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
}

randr_get_screen_resources_current_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    timestamp: timestamp_t,
    config_timestamp: timestamp_t,
    num_crtcs: u16,
    num_outputs: u16,
    num_modes: u16,
    names_len: u16,
    pad1: [8]u8,
}

randr_transform_t :: enum _c.int {
    RANDR_TRANSFORM_UNIT = 1,
    RANDR_TRANSFORM_SCALE_UP = 2,
    RANDR_TRANSFORM_SCALE_DOWN = 4,
    RANDR_TRANSFORM_PROJECTIVE = 8,
}

randr_set_crtc_transform_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    crtc: randr_crtc_t,
    transform: randr_transform_t,
    filter_len: u16,
    pad0: [2]u8,
}

randr_get_crtc_transform_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_crtc_transform_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    crtc: randr_crtc_t,
}

randr_get_crtc_transform_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    pending_transform: render_transform_t,
    has_transforms: u8,
    pad1: [3]u8,
    current_transform: render_transform_t,
    pad2: [4]u8,
    pending_len: u16,
    pending_nparams: u16,
    current_len: u16,
    current_nparams: u16,
}

randr_get_panning_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_panning_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    crtc: randr_crtc_t,
}

randr_get_panning_reply_t :: struct {
    response_type: u8,
    status: u8,
    sequence: u16,
    length: u32,
    timestamp: timestamp_t,
    left: i16,
    top: i16,
    width: u16,
    height: u16,
    track_left: i16,
    track_top: i16,
    track_width: u16,
    track_height: u16,
    border_left: i16,
    border_top: i16,
    border_right: i16,
    border_bottom: i16,
}

randr_set_panning_cookie_t :: struct {
    sequence: _c.uint,
}

randr_set_panning_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    crtc: randr_crtc_t,
    timestamp: timestamp_t,
    left: u16,
    top: u16,
    width: u16,
    height: u16,
    track_left: u16,
    track_top: u16,
    track_width: u16,
    track_height: u16,
    border_left: i16,
    border_top: i16,
    border_right: i16,
    border_bottom: i16,
}

randr_set_panning_reply_t :: struct {
    response_type: u8,
    status: u8,
    sequence: u16,
    length: u32,
    timestamp: timestamp_t,
}

randr_set_output_primary_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
    output: randr_output_t,
}

randr_get_output_primary_cookie_t :: struct {
    sequence: _c.uint,
}


randr_get_output_primary_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
}

randr_get_output_primary_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    output: randr_output_t,
    pad1: [20]u8,
}

randr_get_providers_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_providers_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
}

randr_get_providers_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    num_providers: u32,
    pad1: [20]u8,
}

ranr_provider_capability_t :: enum _c.int {
    RANDR_PROVIDER_CAPABILITY_SOURCE_OUTPUT = 1,
    RANDR_PROVIDER_CAPABILITY_SINK_OUTPUT = 2,
    RANDR_PROVIDER_CAPABILITY_SOURCE_OFFLOAD = 4,
    RANDR_PROVIDER_CAPABILITY_SINK_OFFLOAD = 8,
}

randr_get_provider_info_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_provider_info_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    provider: randr_provider_t,
    config_timestamp: timestamp_t,
}

randr_get_provider_info_reply_t :: struct {
    response_type: u8,
    status: u8,
    sequence: u16,
    length: u32,
    timestamp: timestamp_t,
    capabilities: u32,
    n_crtcs: u16,
    n_outputs: u16,
    n_modes: u16,
    name_len: u16,
    pad0: [8]u8,
}

randr_set_provider_offload_sink_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    provider: randr_provider_t,
    sink_provider: randr_provider_t,
    config_timestamp: timestamp_t,
}

randr_set_provider_output_source_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    provider: randr_provider_t,
    source_provider: randr_provider_t,
    config_timestamp: timestamp_t,
}

randr_list_provider_properties_cookie_t :: struct {
    sequence: _c.uint,
}

randr_list_provider_properties_request_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    num_atoms: u16,
    pad1: [22]u8,
}

randr_list_provider_properties_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    num_atoms: u16,
    pad1: [22]u8,
}

randr_query_provider_property_cookie_t :: struct {
    sequence: _c.uint,
}

randr_query_provider_property_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    provider: randr_provider_t,
    property: atom_t,
}

randr_query_provider_property_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    pending: u8,
    range: u8,
    immutable: u8,
    pad1: [21]u8,
}

randr_configure_provider_property_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    provider: randr_provider_t,
    property: atom_t,
    pending: u8,
    range: u8,
    pad0: [2]u8,
}

randr_change_provider_property_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    provider: randr_provider_t,
    property: atom_t,
    type: atom_t,
    format: u8,
    mode: u8,
    pad0: [2]u8,
    num_units: u32,
}

randr_delete_provider_property_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    provider: randr_provider_t,
    property: atom_t,
}

randr_get_provider_property_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_provider_property_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    provider: randr_provider_t,
    property: atom_t,
    type: atom_t,
    long_offset: u32,
    long_length: u32,
    _delete: u8,
    pending: u8,
    pad0: [2]u8,
}

randr_get_provider_property_reply_t :: struct {
    response_type: u8,
    format: u8,
    sequence: u16,
    length: u32,
    type: atom_t,
    bytes_after: u32,
    num_items: u32,
    pending: u8,
    pad0: [12]u8,
}

randr_screen_change_notify_event_t :: struct {
    response_type: u8,
    rotation: u8,
    sequence: u16,
    window: window_t,
    timestamp: timestamp_t,
    config_timestamp: timestamp_t,
    root: window_t,
    request_window: window_t,
    sizeID: u16,
    subpixel_order: u16,
    width: u16,
    height: u16,
    mwidth: u16,
    mheight: u16,
}

randr_notify_t :: enum _c.int {
    RANDR_NOTIFY_CRTC_CHANGE,
    RANDR_NOTIFY_OUTPUT_CHANGE,
    RANDR_NOTIFY_OUTPUT_PROPERTY,
    RANDR_NOTIFY_PROVIDER_CHANGE,
    RANDR_NOTIFY_PROVIDER_PROPERTY,
    RANDR_NOTIFY_RESOURCE_CHANGE,
    RANDR_NOTIFY_LEASE,
}

randr_crtc_change_t :: struct {
    timestamp: timestamp_t,
    window: window_t,
    crtc: randr_crtc_t,
    mode: randr_mode_t,
    rotation: u16,
    pad0: [2]u8,
    x: i16,
    y: i16,
    width: u16,
    height: u16,
}

randr_crtc_change_iterator_t :: struct {
    data: ^randr_crtc_change_t,
    rem: _c.int,
    index: _c.int,
}

randr_output_change_t :: struct {
    timestamp: timestamp_t,
    config_timestamp: timestamp_t,
    window: window_t,
    output: randr_output_t,
    crtc: randr_crtc_t,
    mode: randr_mode_t,
    rotation: u16,
    connection: u8,
    subpixel_order: u8,
}

randr_output_change_iterator_t :: struct {
    data: ^randr_output_change_t,
    rem: _c.int,
    index: _c.int,
}

randr_output_property_t :: struct {
    window: window_t,
    output: randr_output_t,
    atom: atom_t,
    timestamp: timestamp_t,
    status: u8,
    pad0: [11]u8,
}

randr_output_property_iterator_t :: struct {
    data: ^randr_output_property_t,
    rem: _c.int,
    index: _c.int,
}

randr_provider_change_t :: struct {
    timestamp: timestamp_t,
    window: window_t,
    provider: randr_provider_t,
    pad0: [16]u8,
}

randr_provider_change_iterator_t :: struct {
    data: ^randr_provider_change_t,
    rem: _c.int,
    index: _c.int,
}

randr_provider_property_t :: struct {
    window: window_t,
    provider: randr_provider_t,
    atom: atom_t,
    timestamp: timestamp_t,
    state: u8,
    pad0: [11]u8,
}

randr_provider_property_iterator_t :: struct {
    data: ^randr_provider_property_t,
    rem: _c.int,
    index: _c.int,
}

randr_resource_change_t :: struct {
    timestamp: timestamp_t,
    window: window_t,
    pad0: [20]u8,
}

randr_resource_change_iterator_t :: struct {
    data: ^randr_resource_change_t,
    rem: _c.int,
    index: _c.int,
}

randr_monitor_info_t :: struct {
    name: atom_t,
    primary: u8,
    automatic: u8,
    nOutput: u16,
    x: i16,
    y: i16,
    width: u16,
    height: u16,
    width_in_millimeters: u32,
    height_in_millimeters: u32,
}

randr_monitor_info_iterator_t :: struct {
    data: ^randr_monitor_info_t,
    rem: _c.int,
    index: _c.int,
}

randr_get_monitors_cookie_t :: struct {
    sequence: _c.uint,
}

randr_get_monitors_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
    get_active: u8,
}

randr_get_monitors_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    timestamp: timestamp_t,
    nMonitors: u32,
    nOutputs: u32,
    pad1: [12]u8,
}

randr_set_monitor_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
}

randr_delete_monitor_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
    name: atom_t,
}

randr_create_lease_cookie_t :: struct {
    sequence: _c.uint,
}

randr_create_lease_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
    lid: randr_lease_t,
    num_crtcs: u32,
    num_outputs: u32,
}

randr_create_lease_reply_t :: struct {
    response_type: u8,
    nfd: u8,
    sequence: u16,
    length: u32,
    pad0: [24]u8,
}

randr_free_lease_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    lid: randr_lease_t,
    terminate: u8,
}

randr_lease_notify_t :: struct {
    timestamp: timestamp_t,
    window: window_t,
    lease: randr_lease_t,
    created: u8,
    pad0: [15]u8,
}

randr_lease_notify_iterator_t :: struct {
    data: ^randr_lease_notify_t,
    rem: _c.int,
    index: _c.int,
}

randr_notify_data_t :: struct #raw_union {
    cc: randr_crtc_change_t,
    oc: randr_output_change_t,
    op: randr_output_property_t,
    pc: randr_provider_change_t,
    pp: randr_provider_property_t,
    rc: randr_resource_change_t,
    ln: randr_lease_notify_t,
}

randr_notify_data_iterator_t :: struct {
    data: ^randr_notify_data_t,
    rem: _c.int,
    index: _c.int,
}

randr_notify_event_t :: struct {
    response_type: u8,
    sub_code: u8,
    sequence: u16,
    u: randr_notify_data_t,
}

// Foreign import for RandR extension
when ODIN_OS == .Linux {
    foreign import libxcb_randr "system:libxcb-randr.so"
} else when ODIN_OS == .FreeBSD || ODIN_OS == .OpenBSD || ODIN_OS == .NetBSD {
    foreign import libxcb_randr "system:libxcb-randr.so"
} else when ODIN_OS == .Darwin {
    foreign import libxcb_randr "system:libxcb-randr.so"
} else {
    foreign import libxcb_randr "system:libxcb-randr.lib"
}

@(link_prefix="xcb_")
@(default_calling_convention="c")

foreign libxcb_randr {
    randr_mode_next :: proc(i: ^randr_mode_iterator_t) ---
    randr_mode_end :: proc(i: ^randr_mode_iterator_t) -> generic_iterator_t---
    randr_crtc_next :: proc(i: ^randr_crtc_iterator_t) ---
    randr_crtc_end :: proc(i: ^randr_crtc_iterator_t) -> generic_iterator_t---
    randr_output_next :: proc(i: ^randr_output_iterator_t) ---
    randr_output_end :: proc(i: ^randr_output_iterator_t) -> generic_iterator_t---
    randr_provider_next :: proc(i: ^randr_provider_iterator_t) ---
    randr_provider_end :: proc(i: ^randr_provider_iterator_t) -> generic_iterator_t---
    randr_lease_next :: proc(i: ^randr_lease_iterator_t) ---
    randr_lease_end :: proc(i: ^randr_lease_iterator_t) -> generic_iterator_t---
    randr_screen_size_next :: proc(i: ^randr_screen_size_iterator_t) ---
    randr_screen_size_end :: proc(i: ^randr_screen_size_iterator_t) -> generic_iterator_t ---
    randr_refresh_rates_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_refresh_rates_rates :: proc(R: ^randr_refresh_rates_t) -> ^u16 ---
    randr_refresh_rates_rates_length :: proc(R: ^randr_refresh_rates_t) -> _c.int ---
    randr_refresh_rates_rates_end :: proc(R: ^randr_refresh_rates_t) -> generic_iterator_t ---
    randr_refresh_rates_next :: proc(i: ^randr_refresh_rates_iterator_t) ---
    randr_refresh_rates_end :: proc(i: ^randr_refresh_rates_iterator_t) -> generic_iterator_t ---
    randr_query_version :: proc(c: ^connection_t, major_version: u32, minor_version: u32) -> randr_query_version_cookie_t ---
    randr_query_version_unchecked :: proc(c: ^connection_t, major_version: u32, minor_version: u32) -> randr_query_version_cookie_t ---
    randr_query_version_reply :: proc(c: ^connection_t, cookie: randr_query_version_cookie_t, e: ^^generic_error_t) -> randr_query_version_reply_t ---
    randr_set_screen_config :: proc(c: ^connection_t, window: window_t, timestamp: timestamp_t, config_timestamp: timestamp_t, sizeID: u16, rotation: u16, rate: u16) -> randr_set_screen_config_cookie_t ---
    randr_set_screen_config_unchecked :: proc(c: ^connection_t, window: window_t, timestamp: timestamp_t, config_timestamp: timestamp_t, sizeID: u16, rotation: u16, rate: u16) -> randr_set_screen_config_cookie_t ---
    randr_set_screen_config_reply :: proc(c: ^connection_t, cookie: randr_set_screen_config_cookie_t, e: ^^generic_error_t) -> randr_set_screen_config_reply_t ---
    randr_select_input :: proc(c: ^connection_t, window: window_t, enable: u16) -> void_cookie_t ---
    randr_select_input_checked :: proc(c: ^connection_t, window: window_t, enable: u16) -> void_cookie_t ---
    randr_get_screen_info_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_get_screen_info :: proc(c: ^connection_t, window: window_t) -> randr_get_screen_info_cookie_t ---
    randr_get_screen_info_unchecked :: proc(c: ^connection_t, window: window_t) -> randr_get_screen_info_cookie_t ---
    randr_get_screen_info_sizes :: proc(R: ^randr_get_screen_info_reply_t) -> ^randr_screen_size_t ---
    randr_get_screen_info_sizes_length :: proc(R: ^randr_get_screen_info_reply_t) -> _c.int ---
    randr_get_screen_info_sizes_iterator :: proc(R: ^randr_get_screen_info_reply_t) -> randr_screen_size_iterator_t ---
    randr_get_screen_info_rates_length :: proc(R: ^randr_get_screen_info_reply_t) -> _c.int ---
    randr_get_screen_info_rates_iterator :: proc(R: ^randr_get_screen_info_reply_t) -> randr_refresh_rates_iterator_t ---
    randr_get_screen_info_reply :: proc(c: ^connection_t, cookie: randr_get_screen_info_cookie_t, e: ^^generic_error_t) -> randr_get_screen_info_reply_t ---
    randr_get_screen_size_range :: proc(c: ^connection_t, window: window_t) -> randr_get_screen_size_range_cookie_t ---
    randr_get_screen_size_range_unchecked :: proc(c: ^connection_t, window: window_t) -> randr_get_screen_size_range_cookie_t ---
    randr_get_screen_size_range_reply :: proc(c: ^connection_t, cookie: randr_get_screen_size_range_cookie_t, e: ^^generic_error_t) -> ^randr_get_screen_size_range_reply_t ---
    randr_set_screen_size_checked :: proc(c: ^connection_t, window: window_t, width: u16, height: u16, mm_width: u32, mm_height: u32) -> void_cookie_t ---
    randr_set_screen_size :: proc(c: ^connection_t, window: window_t, width: u16, height: u16, mm_width: u32, mm_height: u32) -> void_cookie_t ---
    randr_mode_info_next :: proc(i: ^randr_mode_info_iterator_t) ---
    randr_mode_info_end :: proc(i: ^randr_mode_info_iterator_t) -> generic_iterator_t ---
    randr_get_screen_resources_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_get_screen_resources :: proc(c: ^connection_t, window: window_t) -> randr_get_screen_resources_cookie_t ---
    randr_get_screen_resources_unchecked :: proc(c: ^connection_t, window: window_t) -> randr_get_screen_resources_cookie_t ---
    randr_get_screen_resources_crtcs :: proc(R: ^randr_get_screen_resources_reply_t) -> ^randr_crtc_t ---
    randr_get_screen_resources_crtcs_length :: proc(R: ^randr_get_screen_resources_reply_t) -> _c.int ---
    randr_get_screen_resources_crtcs_end :: proc(R: ^randr_get_screen_resources_reply_t) -> generic_iterator_t ---
    randr_get_screen_resources_outputs :: proc(R: ^randr_get_screen_resources_reply_t) -> ^randr_output_t ---
    randr_get_screen_resources_outputs_length :: proc(R: ^randr_get_screen_resources_reply_t) -> _c.int ---
    randr_get_screen_resources_outputs_end :: proc(R: ^randr_get_screen_resources_reply_t) -> generic_iterator_t ---
    randr_get_screen_resources_modes :: proc(R: ^randr_get_screen_resources_reply_t) -> ^randr_mode_info_t ---
    randr_get_screen_resources_modes_length :: proc(R: ^randr_get_screen_resources_reply_t) -> _c.int ---
    randr_get_screen_resources_modes_iterator :: proc(R: ^randr_get_screen_resources_reply_t) -> randr_mode_info_iterator_t ---
    randr_get_screen_resources_names :: proc(R: ^randr_get_screen_resources_reply_t) -> ^u8 ---
    randr_get_screen_resources_names_length :: proc(R: ^randr_get_screen_resources_reply_t) -> _c.int ---
    randr_get_screen_resources_names_end :: proc(R: ^randr_get_screen_resources_reply_t) -> generic_iterator_t ---
    randr_get_screen_resources_reply :: proc(c: ^connection_t, cookie: randr_get_screen_resources_cookie_t, e: ^^generic_error_t) -> ^randr_get_screen_resources_reply_t ---
    randr_get_output_info_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_get_output_info :: proc(c: ^connection_t, output: randr_output_t, config_timestamp: timestamp_t) -> randr_get_output_info_cookie_t ---
    randr_get_output_info_unchecked :: proc(c: ^connection_t, output: randr_output_t, config_timestamp: timestamp_t) -> randr_get_output_info_cookie_t ---
    randr_get_output_info_crtcs :: proc(R: ^randr_get_output_info_reply_t) -> ^randr_crtc_t ---
    randr_get_output_info_crtcs_length :: proc(R: ^randr_get_output_info_reply_t) -> _c.int ---
    randr_get_output_info_crtcs_end :: proc(R: ^randr_get_output_info_reply_t) -> generic_iterator_t ---
    randr_get_output_info_modes :: proc(R: ^randr_get_output_info_reply_t) -> ^randr_mode_t ---
    randr_get_output_info_modes_length :: proc(R: ^randr_get_output_info_reply_t) -> _c.int ---
    randr_get_output_info_modes_end :: proc(R: ^randr_get_output_info_reply_t) -> generic_iterator_t ---
    randr_get_output_info_clones :: proc(R: ^randr_get_output_info_reply_t) -> ^randr_output_t ---
    randr_get_output_info_clones_length :: proc(R: ^randr_get_output_info_reply_t) -> _c.int ---
    randr_get_output_info_clones_end :: proc(R: ^randr_get_output_info_reply_t) -> generic_iterator_t ---
    randr_get_output_info_name :: proc(R: ^randr_get_output_info_reply_t) -> ^u8 ---
    randr_get_output_info_name_length :: proc(R: ^randr_get_output_info_reply_t) -> _c.int ---
    randr_get_output_info_name_end :: proc(R: ^randr_get_output_info_reply_t) -> generic_iterator_t ---
    randr_get_output_info_reply :: proc(c: ^connection_t, cookie: randr_get_output_info_cookie_t, e: ^^generic_error_t) -> ^randr_get_output_info_reply_t ---
    randr_list_output_properties_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_list_output_properties :: proc(c: ^connection_t, output: randr_output_t) -> randr_list_output_properties_cookie_t ---
    randr_list_output_properties_unchecked :: proc(c: ^connection_t, output: randr_output_t) -> randr_list_output_properties_cookie_t ---
    randr_list_output_properties_atoms :: proc(R: ^randr_list_output_properties_reply_t) -> ^atom_t ---
    randr_list_output_properties_atoms_length :: proc(R: ^randr_list_output_properties_reply_t) -> _c.int ---
    randr_list_output_properties_atoms_end :: proc(R: ^randr_list_output_properties_reply_t) -> generic_iterator_t ---
    randr_list_output_properties_reply :: proc(c: ^connection_t, cookie: randr_list_output_properties_cookie_t, e: ^^generic_error_t) -> ^randr_list_output_properties_reply_t ---
    randr_query_output_property_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_query_output_property :: proc(c: ^connection_t, output: randr_output_t, property: atom_t) -> randr_query_output_property_cookie_t ---
    randr_query_output_property_unchecked :: proc(c: ^connection_t, output: randr_output_t, property: atom_t) -> randr_query_output_property_cookie_t ---
    randr_query_output_property_valid_values :: proc(R: ^randr_query_output_property_reply_t) -> ^i32 ---
    randr_query_output_property_valid_values_length :: proc(R: ^randr_query_output_property_reply_t) -> _c.int ---
    randr_query_output_property_valid_values_end :: proc(R: ^randr_query_output_property_reply_t) -> generic_iterator_t ---
    randr_query_output_property_reply :: proc(c: ^connection_t, cookie: randr_query_output_property_cookie_t, e: generic_error_t) -> ^randr_query_output_property_reply_t ---
    randr_configure_output_property_sizeof :: proc(_buffer: rawptr, values_len: u32) -> _c.int ---
    randr_configure_output_property_checked :: proc(c: ^connection_t, output: randr_output_t, property: atom_t, pending: u8, range: u8, values_len: u32, values: ^i32) -> void_cookie_t ---
    randr_configure_output_property :: proc(c: ^connection_t, output: randr_output_t, property: atom_t, pending: u8, range: u8, values_len: u32, values: ^i32) -> void_cookie_t ---
    randr_configure_output_property_values :: proc(R: ^randr_configure_output_property_request_t) -> ^i32 ---
    randr_configure_output_property_values_length :: proc(R: ^randr_configure_output_property_request_t) -> _c.int ---
    randr_configure_output_property_values_end :: proc(R: ^randr_configure_output_property_request_t) -> generic_iterator_t ---
    randr_change_output_property_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_change_output_property_checked :: proc(c: ^connection_t, output: randr_output_t, property: atom_t, type: atom_t, format: u8, mode: u8, num_units: u32, data: rawptr) -> void_cookie_t ---
    randr_change_output_property :: proc(c: ^connection_t, output: randr_output_t, property: atom_t, type: atom_t, format: u8, mode: u8, num_units: u32, data: rawptr) -> void_cookie_t ---
    randr_change_output_property_data :: proc(R: ^randr_change_output_property_request_t) -> rawptr ---
    randr_change_output_property_data_length :: proc(R: ^randr_change_output_property_request_t) -> _c.int ---
    randr_change_output_property_data_end :: proc(R: ^randr_change_output_property_request_t) -> generic_iterator_t ---
    randr_delete_output_property_checked :: proc(c: ^connection_t, output: randr_output_t, property: atom_t) -> void_cookie_t ---
    randr_delete_output_property :: proc(c: ^connection_t, output: randr_output_t, property: atom_t) -> void_cookie_t ---
    randr_get_output_property_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_get_output_property :: proc(c: ^connection_t, output: randr_output_t, property: atom_t, type: atom_t, long_offset: u32, long_length: u32, _delete: u8, pending: u8) -> randr_get_output_property_cookie_t ---
    randr_get_output_property_unchecked :: proc(c: ^connection_t, output: randr_output_t, property: atom_t, type: atom_t, long_offset: u32, long_length: u32, _delete: u8, pending: u8) -> randr_get_output_property_cookie_t ---
    randr_get_output_property_data :: proc(R: ^randr_get_output_property_reply_t) -> ^u8 ---
    randr_get_output_property_data_length :: proc(R: ^randr_get_output_property_reply_t) -> _c.int ---
    randr_get_output_property_data_end :: proc(R: ^randr_get_output_property_reply_t) -> generic_iterator_t ---
    randr_get_output_property_reply :: proc(c: ^connection_t, cookie: randr_get_output_property_cookie_t, e: ^^generic_error_t) -> ^randr_get_output_property_reply_t ---
    randr_create_mode_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_create_mode :: proc(c: ^connection_t, window: window_t, mode_info: ^randr_mode_info_t, name_len: u32, name: cstring) -> randr_create_mode_cookie_t ---
    randr_create_mode_unchecked :: proc(c: ^connection_t, window: window_t, mode_info: randr_mode_info_t, name_len: u32, name: cstring) -> randr_create_mode_cookie_t ---
    randr_create_mode_reply :: proc(c: ^connection_t, cookie: randr_create_mode_cookie_t, e: ^^generic_error_t) -> ^randr_create_mode_reply_t ---
    randr_destroy_mode_checked :: proc(c: ^connection_t, mode: randr_mode_t) -> void_cookie_t ---
    randr_destroy_mode :: proc(c: ^connection_t, mode: randr_mode_t) -> void_cookie_t ---
    randr_add_output_mode_checked :: proc(c: ^connection_t, output: randr_output_t, mode: randr_mode_t) -> void_cookie_t ---
    randr_add_output_mode :: proc(c: ^connection_t, output: randr_output_t, mode: randr_mode_t) -> void_cookie_t ---
    randr_delete_output_mode_checked :: proc(c: ^connection_t, output: randr_output_t, mode: randr_mode_t) -> void_cookie_t ---
    randr_delete_output_mode :: proc(c: ^connection_t, output: randr_output_t, mode: randr_mode_t) -> void_cookie_t ---
    randr_get_crtc_info_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_get_crtc_info :: proc(c: ^connection_t, crtc: randr_crtc_t, config_timestamp: timestamp_t) -> randr_get_crtc_info_cookie_t ---
    randr_get_crtc_info_unchecked :: proc(c: ^connection_t, crtc: randr_crtc_t, config_timestamp: timestamp_t) -> randr_get_crtc_info_cookie_t ---
    randr_get_crtc_info_outputs :: proc(R: ^randr_get_crtc_info_reply_t) -> ^randr_output_t ---
    randr_get_crtc_info_outputs_length :: proc(R: ^randr_get_crtc_info_reply_t) -> _c.int ---
    randr_get_crtc_info_outputs_end :: proc(R: ^randr_get_crtc_info_reply_t) -> generic_iterator_t ---
    randr_get_crtc_info_possible :: proc(R: ^randr_get_crtc_info_reply_t) -> ^randr_output_t ---
    randr_get_crtc_info_possible_length :: proc(R: ^randr_get_crtc_info_reply_t) -> _c.int ---
    randr_get_crtc_info_possible_end :: proc(R: ^randr_get_crtc_info_reply_t) -> generic_iterator_t ---
    randr_get_crtc_info_reply :: proc(c: ^connection_t, cookie: randr_get_crtc_info_cookie_t, e: ^^generic_error_t) -> ^randr_get_crtc_info_reply_t ---
    randr_set_crtc_config_sizeof :: proc(_buffer: rawptr, outputs_len: u32) -> _c.int ---
    randr_set_crtc_config :: proc(c: ^connection_t, crtc: randr_crtc_t, timestamp: timestamp_t, config_timestamp: timestamp_t, x: i16, y: i16, mode: randr_mode_t, rotation: u16, outputs_len: u32, outputs: ^randr_output_t) -> randr_set_crtc_config_cookie_t ---
    randr_set_crtc_config_unchecked :: proc(c: ^connection_t, crtc: randr_crtc_t, timestamp: timestamp_t, config_timestamp: timestamp_t, x: i16, y: i16, mode: randr_mode_t, rotation: u16, output_len: u32, outputs: ^randr_output_t) -> randr_set_crtc_config_cookie_t ---
    randr_set_crtc_config_reply :: proc(c: ^connection_t, cookie: randr_set_crtc_config_cookie_t, e: ^^generic_error_t) -> ^randr_set_crtc_config_reply_t ---
    randr_get_crtc_gamma_size :: proc(c: ^connection_t, crtc: randr_crtc_t) -> randr_get_crtc_gamma_size_cookie_t ---
    randr_get_crtc_gamma_size_unchecked :: proc(c: ^connection_t, crtc: randr_crtc_t) -> randr_get_crtc_gamma_size_cookie_t ---
    randr_get_crtc_gamma_size_reply :: proc(c: ^connection_t, cookie: randr_get_crtc_gamma_size_cookie_t, e: ^^generic_error_t) -> ^randr_get_crtc_gamma_size_reply_t ---
    randr_get_crtc_gamma_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_get_crtc_gamma :: proc(c: ^connection_t, crtc: randr_crtc_t) -> randr_get_crtc_gamma_cookie_t ---
    randr_get_crtc_gamma_unchecked :: proc(c: ^connection_t, crtc: randr_crtc_t) -> randr_get_crtc_gamma_cookie_t ---
    randr_get_crtc_gamma_red :: proc(R: ^randr_get_crtc_gamma_reply_t) -> ^u16 ---
    randr_get_crtc_gamma_red_length :: proc(R: ^randr_get_crtc_gamma_reply_t) -> _c.int ---
    randr_get_crtc_gamma_red_end :: proc(R: ^randr_get_crtc_gamma_reply_t) -> generic_iterator_t ---
    randr_get_crtc_gamma_green :: proc(R: ^randr_get_crtc_gamma_reply_t) -> ^u16 ---
    randr_get_crtc_gamma_green_length :: proc(R: ^randr_get_crtc_gamma_reply_t) -> _c.int ---
    randr_get_crtc_gamma_green_end :: proc(R: ^randr_get_crtc_gamma_reply_t) -> generic_iterator_t ---
    randr_get_crtc_gamma_blue :: proc(R: ^randr_get_crtc_gamma_reply_t) -> ^u16 ---
    randr_get_crtc_gamma_blue_length :: proc(R: ^randr_get_crtc_gamma_reply_t) -> _c.int ---
    randr_get_crtc_gamma_blue_end :: proc(R: ^randr_get_crtc_gamma_reply_t) -> generic_iterator_t ---
    randr_get_crtc_gamma_reply :: proc(c: ^connection_t, cookie: randr_get_crtc_gamma_cookie_t, e: ^^generic_error_t) -> ^randr_get_crtc_gamma_reply_t ---
    randr_set_crtc_gamma_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_set_crtc_gamma_checked :: proc(c: ^connection_t, crtc: randr_crtc_t, size: u16, red: ^u16, green: ^u16, blue: ^u16) -> void_cookie_t ---
    randr_set_crtc_gamma :: proc(c: ^connection_t, crtc: randr_crtc_t, size: u16, red: ^u16, green: ^u16, blue: ^u16) -> void_cookie_t ---
    randr_set_crtc_gamma_red :: proc(R: ^randr_set_crtc_gamma_request_t) -> ^u16 ---
    randr_set_crtc_gamma_red_length :: proc(R: ^randr_set_crtc_gamma_request_t) -> _c.int ---
    randr_set_crtc_gamma_red_end :: proc(R: ^randr_set_crtc_gamma_request_t) -> generic_iterator_t ---
    randr_set_crtc_gamma_green :: proc(R: ^randr_set_crtc_gamma_request_t) -> ^u16 ---
    randr_set_crtc_gamma_green_length :: proc(R: ^randr_set_crtc_gamma_request_t) -> _c.int ---
    randr_set_crtc_gamma_green_end :: proc(R: ^randr_set_crtc_gamma_request_t) -> generic_iterator_t ---
    randr_set_crtc_gamma_blue :: proc(R: ^randr_set_crtc_gamma_request_t) -> ^u16 ---
    randr_set_crtc_gamma_blue_length :: proc(R: ^randr_set_crtc_gamma_request_t) -> _c.int ---
    randr_set_crtc_gamma_blue_end :: proc(R: ^randr_set_crtc_gamma_request_t) -> generic_iterator_t ---
    randr_get_screen_resources_current_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_get_screen_resources_current :: proc(c: ^connection_t, window: window_t) -> randr_get_screen_resources_current_cookie_t ---
    randr_get_screen_resources_current_unchecked :: proc(c: ^connection_t, window: window_t) -> randr_get_screen_resources_current_cookie_t ---
    randr_get_screen_resources_current_crtcs :: proc(R: ^randr_get_screen_resources_current_reply_t) -> ^randr_crtc_t ---
    randr_get_screen_resources_current_crtcs_length :: proc(R: ^randr_get_screen_resources_current_reply_t) -> _c.int ---
    randr_get_screen_resources_current_crtcs_end :: proc(R: ^randr_get_screen_resources_current_reply_t) -> generic_iterator_t ---
    randr_get_screen_resources_current_outputs :: proc(R: ^randr_get_screen_resources_current_reply_t) -> ^randr_output_t ---
    randr_get_screen_resources_current_outputs_length :: proc(R: ^randr_get_screen_resources_current_reply_t) -> _c.int ---
    randr_get_screen_resources_current_outputs_end :: proc(R: ^randr_get_screen_resources_current_reply_t) -> generic_iterator_t ---
    randr_get_screen_resources_current_modes :: proc(R: ^randr_get_screen_resources_current_reply_t) -> ^randr_mode_info_t ---
    randr_get_screen_resources_current_modes_length :: proc(R: ^randr_get_screen_resources_current_reply_t) -> _c.int ---
    randr_get_screen_resources_current_modes_iterator :: proc(R: ^randr_get_screen_resources_current_reply_t) -> generic_iterator_t ---
    randr_get_screen_resources_current_names :: proc(R: ^randr_get_screen_resources_current_reply_t) -> ^u8 ---
    randr_get_screen_resources_current_names_length :: proc(R: ^randr_get_screen_resources_current_reply_t) -> _c.int ---
    randr_get_screen_resources_current_names_end :: proc(R: ^randr_get_screen_resources_current_reply_t) -> generic_iterator_t ---
    randr_get_screen_resources_current_reply :: proc(c: ^connection_t, cookie: randr_get_screen_resources_cookie_t, e: ^^generic_error_t) -> ^randr_get_screen_resources_current_reply_t ---
    randr_set_crtc_transform_sizeof :: proc(_buffer: rawptr, filter_params_len: u32) -> _c.int ---
    randr_set_crtc_transform_checked :: proc(c: ^connection_t, crtc: randr_crtc_t, transform: randr_transform_t, filter_len: u16, filter_name: cstring, filter_params_len: u32, filter_params: ^render_fixed_t) -> void_cookie_t ---
    randr_set_crtc_transform :: proc(c: ^connection_t, crtc: randr_crtc_t, transform: randr_transform_t, filter_len: u16, filter_name: cstring, filter_params_len: u32, filter_params: ^render_fixed_t) -> void_cookie_t ---
    randr_set_crtc_transform_filter_name :: proc(R: ^randr_set_crtc_transform_request_t) -> cstring ---
    randr_set_crtc_transform_filter_name_length :: proc(R: ^randr_set_crtc_transform_request_t) -> _c.int ---
    randr_set_crtc_transform_filter_name_end :: proc(R: ^randr_set_crtc_transform_request_t) -> generic_iterator_t ---
    randr_set_crtc_transform_filter_params :: proc(R: ^randr_set_crtc_transform_request_t) -> ^render_fixed_t ---
    randr_set_crtc_transform_filter_params_length :: proc(R: ^randr_set_crtc_transform_request_t) -> _c.int ---
    randr_set_crtc_transform_filter_params_end :: proc(R: ^randr_set_crtc_transform_request_t) -> generic_iterator_t ---
    randr_get_crtc_transform_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_get_crtc_transform :: proc(c: ^connection_t, crtc: randr_crtc_t) -> randr_get_crtc_transform_cookie_t ---
    randr_get_crtc_transform_unchecked :: proc(c: ^connection_t, crtc: randr_crtc_t) -> randr_get_crtc_transform_cookie_t ---
    randr_get_crtc_transform_pending_filter_name :: proc(R: ^randr_get_crtc_transform_reply_t) -> cstring ---
    randr_get_crtc_transform_pending_filter_name_length :: proc(R: ^randr_get_crtc_transform_reply_t) -> _c.int ---
    randr_get_crtc_transform_pending_filter_name_end :: proc(R: ^randr_get_crtc_transform_reply_t) -> generic_iterator_t ---
    randr_get_crtc_transform_pending_filter_params :: proc(R: ^randr_get_crtc_transform_reply_t) -> ^render_fixed_t ---
    randr_get_crtc_transform_pending_filter_params_length :: proc(R: ^randr_get_crtc_transform_reply_t) -> _c.int ---
    randr_get_crtc_transform_pending_filter_params_end :: proc(R: ^randr_get_crtc_transform_reply_t) -> generic_iterator_t ---
    randr_get_crtc_transform_reply :: proc(c: ^connection_t, cookie: randr_get_crtc_transform_cookie_t, e: ^^generic_error_t) -> ^randr_get_crtc_transform_reply_t ---
    randr_get_panning :: proc(c: ^connection_t, crtc: randr_crtc_t) -> randr_get_panning_cookie_t ---
    randr_get_panning_unchecked :: proc(c: ^connection_t, crtc: randr_crtc_t) -> randr_get_panning_cookie_t ---
    randr_get_panning_reply :: proc(c: ^connection_t, cookie: randr_get_panning_cookie_t, e: ^^generic_error_t) -> ^randr_get_panning_reply_t ---
    randr_set_panning :: proc(c: ^connection_t, crtc: randr_crtc_t, timestamp: timestamp_t, left: u16, top: u16, width: u16, height: u16, track_left: u16, track_top: u16, track_width: u16, track_height: u16, border_left: i16, border_top: i16, border_right: i16, border_bottom: i16) -> randr_set_panning_cookie_t ---
    randr_set_panning_unchecked :: proc(c: ^connection_t, crtc: randr_crtc_t, timestamp: timestamp_t, left: u16, top: u16, width: u16, height: u16, track_left: u16, track_top: u16, track_width: u16, track_height: u16, border_left: i16, border_top: i16, border_right: i16, border_bottom: i16) -> randr_set_panning_cookie_t ---
    randr_set_panning_reply :: proc(c: ^connection_t, cookie: randr_set_panning_cookie_t, e: ^^generic_error_t) -> ^randr_set_panning_reply_t ---
    randr_set_output_primary_checked :: proc(c: ^connection_t, window: window_t, output: randr_output_t) -> void_cookie_t ---
    randr_set_output_primary :: proc(c: ^connection_t, window: window_t) -> void_cookie_t ---
    randr_get_output_primary :: proc(c: ^connection_t, window: window_t) -> randr_get_output_primary_cookie_t ---
    randr_get_output_primary_unchecked :: proc(c: ^connection_t, window: window_t) -> randr_get_output_primary_cookie_t ---
    randr_get_output_primary_reply :: proc(c: ^connection_t, cookie: randr_get_output_primary_cookie_t, e: ^^generic_error_t) -> ^randr_get_output_primary_reply_t ---
    randr_get_providers_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_get_providers :: proc(c: ^connection_t, window: window_t) -> randr_get_providers_cookie_t ---
    randr_get_providers_unchecked :: proc(c: ^connection_t, window: window_t) -> randr_get_providers_cookie_t ---
    randr_get_providers_providers :: proc(R: ^randr_get_providers_reply_t) -> ^randr_provider_t ---
    randr_get_providers_providers_length :: proc(R: ^randr_get_providers_reply_t) -> _c.int ---
    randr_get_providers_providers_end :: proc(R: ^randr_get_providers_reply_t) -> generic_iterator_t ---
    randr_get_providers_reply :: proc(c: ^connection_t, cookie: randr_get_providers_cookie_t, e: ^^generic_error_t) -> ^randr_get_providers_reply_t ---
    randr_get_provider_info_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_get_provider_info :: proc(c: ^connection_t, provider: randr_provider_t, config_timestamp: timestamp_t) -> randr_get_provider_info_cookie_t ---
    randr_get_provider_info_unchecked :: proc(c: ^connection_t, provider: randr_provider_t, config_timestamp: timestamp_t) -> randr_get_provider_info_cookie_t ---
    randr_get_provider_info_crtcs :: proc(R: ^randr_get_provider_info_reply_t) -> ^randr_crtc_t ---
    randr_get_provider_info_crtcs_length :: proc(R: ^randr_get_provider_info_reply_t) -> _c.int ---
    randr_get_provider_info_crtcs_end :: proc(R: ^randr_get_provider_info_reply_t) -> generic_iterator_t ---
    randr_get_provider_info_outputs :: proc(R: ^randr_get_provider_info_reply_t) -> ^randr_output_t ---
    randr_get_provider_info_outputs_length :: proc(R: ^randr_get_provider_info_reply_t) -> _c.int ---
    randr_get_provider_info_outputs_end :: proc(R: ^randr_get_provider_info_reply_t) -> generic_iterator_t ---
    randr_get_provider_info_associated_providers :: proc(R: ^randr_get_provider_info_reply_t) -> ^randr_provider_t ---
    randr_get_provider_info_associated_providers_length :: proc(R: ^randr_get_provider_info_reply_t) -> _c.int ---
    randr_get_provider_info_associated_providers_end :: proc(R: ^randr_get_provider_info_reply_t) -> generic_iterator_t ---
    randr_get_provider_info_associated_capability :: proc(R: ^randr_get_provider_info_reply_t) -> ^u32 ---
    randr_get_provider_info_associated_capability_length :: proc(R: ^randr_get_provider_info_reply_t) -> _c.int ---
    randr_get_provider_info_associated_capability_end :: proc(R: ^randr_get_provider_info_reply_t) -> generic_iterator_t ---
    randr_get_provider_info_name :: proc(R: ^randr_get_provider_info_reply_t) -> cstring ---
    randr_get_provider_info_name_length :: proc(R: ^randr_get_provider_info_reply_t) -> _c.int ---
    randr_get_provider_info_name_end :: proc(R: ^randr_get_provider_info_reply_t) -> generic_iterator_t ---
    randr_get_provider_info_reply :: proc(c: ^connection_t, cookie: randr_get_provider_info_cookie_t, e: ^^generic_error_t) -> ^randr_get_provider_info_reply_t ---
    randr_set_provider_offload_sink_checked :: proc(c: ^connection_t, provider: randr_provider_t, sink: randr_provider_t, config_timestamp: timestamp_t) -> void_cookie_t ---
    randr_set_provider_offload_sink :: proc(c: ^connection_t, provider: randr_provider_t, sink: randr_provider_t, config_timestamp: timestamp_t) -> void_cookie_t ---
    randr_set_provider_output_source_checked :: proc(c: ^connection_t, provider: randr_provider_t, source_provider: randr_provider_t, config_timestamp: timestamp_t) -> void_cookie_t ---
    randr_set_provider_output_source :: proc(c: ^connection_t, provider: randr_provider_t, source_provider: randr_provider_t, config_timestamp: timestamp_t) -> void_cookie_t ---
    randr_list_provider_properties_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_list_provider_properties :: proc(c: ^connection_t, provider: randr_provider_t) -> randr_list_provider_properties_cookie_t ---
    randr_list_provider_properties_unchecked :: proc(c: ^connection_t, provider: randr_provider_t) -> randr_list_provider_properties_cookie_t ---
    randr_list_provider_properties_atoms :: proc(R: ^randr_list_provider_properties_reply_t) -> ^atom_t ---
    randr_list_provider_properties_atoms_length :: proc(R: ^randr_list_provider_properties_reply_t) -> _c.int ---
    randr_list_provider_properties_atoms_end :: proc(R: ^randr_list_provider_properties_reply_t) -> generic_iterator_t ---
    randr_list_provider_properties_reply :: proc(c: ^connection_t, cookie: randr_list_provider_properties_cookie_t, e: ^^generic_error_t) -> ^randr_list_provider_properties_reply_t ---
    randr_query_provider_property_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_query_provider_property :: proc(c: ^connection_t, provider: randr_provider_t, property: atom_t) -> randr_query_provider_property_cookie_t ---
    randr_query_provider_property_unchecked :: proc(c: ^connection_t, provider: randr_provider_t, property: atom_t) -> randr_query_provider_property_cookie_t ---
    randr_query_provider_property_valid_values :: proc(R: ^randr_query_provider_property_reply_t) -> ^i32 ---
    randr_query_provider_property_valid_values_length :: proc(R: ^randr_query_provider_property_reply_t) -> _c.int ---
    randr_query_provider_property_valid_values_end :: proc(R: ^randr_query_provider_property_reply_t) -> generic_iterator_t ---
    randr_query_provider_property_reply :: proc(c: ^connection_t, cookie: randr_query_provider_property_cookie_t, e: ^^generic_error_t) -> ^randr_query_provider_property_reply_t ---
    randr_configure_provider_property_sizeof :: proc(_buffer: rawptr, values_len: u32) -> _c.int ---
    randr_configure_provider_property_checked :: proc(c: ^connection_t, provider: randr_provider_t, property: atom_t, pending: u8, range: u8, values_len: u32, values: ^i32) -> void_cookie_t ---
    randr_configure_provider_property :: proc(c: ^connection_t, provider: randr_provider_t, property: atom_t, pending: u8, range: u8, values_len: u32, values: ^i32) -> void_cookie_t ---
    randr_configure_provider_property_values :: proc(R: ^randr_configure_provider_property_request_t) -> ^i32 ---
    randr_configure_provider_property_values_length :: proc(R: ^randr_configure_provider_property_request_t) -> _c.int ---
    randr_configure_provider_property_values_end :: proc(R: ^randr_configure_provider_property_request_t) -> generic_iterator_t ---
    randr_change_provider_property_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_change_provider_property_checked :: proc(c: ^connection_t, provider: randr_provider_t, property: atom_t, type: atom_t, format: u8, mode: u8, num_items: u32, data: rawptr) -> void_cookie_t ---
    randr_change_provider_property :: proc(c: ^connection_t, provider: randr_provider_t, property: atom_t, type: atom_t, format: u8, mode: u8, num_items: u32, data: rawptr) -> void_cookie_t ---
    randr_change_provider_property_data :: proc(R: ^randr_change_provider_property_request_t) -> rawptr ---
    randr_change_provider_property_data_length :: proc(R: ^randr_change_provider_property_request_t) -> _c.int ---
    randr_change_provider_property_data_end :: proc(R: ^randr_change_provider_property_request_t) -> generic_iterator_t ---
    randr_delete_provider_property_checked :: proc(c: ^connection_t, provider: randr_provider_t, property: atom_t) -> void_cookie_t ---
    randr_delete_provider_property :: proc(c: ^connection_t, provider: randr_provider_t, property: atom_t) -> void_cookie_t ---
    randr_get_provider_propery_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_get_provider_property :: proc(c: ^connection_t, provider: randr_provider_t, property: atom_t, type: atom_t, long_offset: u32, long_length: u32, _delete: u8, pending: u8) -> randr_get_provider_property_cookie_t ---
    randr_get_provider_property_unchecked :: proc(c: ^connection_t, provider: randr_provider_t, property: atom_t, type: atom_t, long_offset: u32, long_length: u32, _delete: u8, pending: u8) -> randr_get_provider_property_cookie_t ---
    randr_get_provider_property_data :: proc(R: ^randr_get_provider_property_reply_t) -> rawptr ---
    randr_get_provider_property_data_length :: proc(R: ^randr_get_provider_property_reply_t) -> _c.int ---
    randr_get_provider_property_data_end :: proc(R: ^randr_get_provider_property_reply_t) -> generic_iterator_t ---
    randr_get_provider_property_reply :: proc(c: ^connection_t, cookie: randr_get_provider_property_cookie_t, e: ^^generic_error_t) -> ^randr_get_provider_property_reply_t ---
    randr_crtc_change_next :: proc(i: ^randr_crtc_change_iterator_t) ---
    randr_crtc_change_end :: proc(i: randr_crtc_change_iterator_t) -> generic_iterator_t ---
    randr_output_change_next :: proc(i: ^randr_output_change_iterator_t) ---
    randr_output_change_end :: proc(i: randr_output_change_iterator_t) -> generic_iterator_t ---
    randr_output_property_next :: proc(i: ^randr_output_property_iterator_t) ---
    randr_output_property_end :: proc(i: randr_output_property_iterator_t) -> generic_iterator_t ---
    randr_provider_change_next :: proc(i: ^randr_provider_change_iterator_t) ---
    randr_provider_change_end :: proc(i: randr_provider_change_iterator_t) -> generic_iterator_t ---
    randr_provider_property_next :: proc(i: ^randr_provider_property_iterator_t) ---
    randr_provider_property_end :: proc(i: randr_provider_property_iterator_t) -> generic_iterator_t ---
    randr_resource_change_next :: proc(i: ^randr_resource_change_iterator_t) ---
    randr_resource_change_end :: proc(i: randr_resource_change_iterator_t) -> generic_iterator_t ---
    randr_monitor_info_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_monitor_info_outputs :: proc(R: ^randr_monitor_info_t) -> ^randr_output_t ---
    randr_monitor_info_outputs_length :: proc(R: ^randr_monitor_info_t) -> _c.int ---
    randr_monitor_info_outputs_end :: proc(R: ^randr_monitor_info_t) -> generic_iterator_t ---
    randr_monitor_info_next :: proc(i: ^randr_monitor_info_iterator_t) ---
    randr_monitor_info_end :: proc(i: randr_monitor_info_iterator_t) -> generic_iterator_t ---
    randr_get_monitors_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_get_monitors :: proc(c: ^connection_t, window: window_t, get_active: u8) -> randr_get_monitors_cookie_t ---
    randr_get_monitors_unchecked :: proc(c: ^connection_t, window: window_t, get_active: u8) -> randr_get_monitors_cookie_t ---
    randr_get_monitors_length :: proc(R: ^randr_get_monitors_reply_t) -> _c.int ---
    randr_get_monitors_iterator :: proc(R: ^randr_get_monitors_reply_t) -> randr_monitor_info_iterator_t ---
    randr_get_monitors_reply :: proc(c: ^connection_t, cookie: randr_get_monitors_cookie_t, e: ^^generic_error_t) -> ^randr_get_monitors_reply_t ---
    randr_set_monitor_sizeof :: proc(_buffer: rawptr, name_len: u32) -> _c.int ---
    randr_set_monitor_checked :: proc(c: ^connection_t, window: window_t, monitor_info: ^randr_monitor_info_t) -> void_cookie_t ---
    randr_set_monitor :: proc(c: ^connection_t, window: window_t, monitor_info: randr_monitor_info_t) -> void_cookie_t ---
    randr_set_monitor_monitorinfo :: proc(R: ^randr_set_monitor_request_t) -> ^randr_monitor_info_t ---
    randr_delete_monitor :: proc(c: ^connection_t, window: window_t, name: atom_t) -> void_cookie_t ---
    randr_create_lease_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    randr_create_lease :: proc(c: ^connection_t, window: window_t, lid: ^randr_lease_t, num_crtcs: u16, num_outputs: u16, crtcs: ^randr_crtc_t, outputs: ^randr_output_t) -> randr_create_lease_cookie_t ---
    randr_create_lease_unchecked :: proc(c: ^connection_t, window: window_t, lid: randr_lease_t, num_crtcs: u16, num_outputs: u16, crtcs: ^randr_crtc_t, outputs: ^randr_output_t) -> randr_create_lease_cookie_t ---
    randr_create_lease_reply :: proc(c: ^connection_t, cookie: randr_create_lease_cookie_t, e: ^^generic_error_t) -> ^randr_create_lease_reply_t ---
    randr_create_lease_reply_fds :: proc(c: ^connection_t, reply: ^randr_create_lease_reply_t) -> ^_c.int ---
    randr_free_lease_checked :: proc(c: ^connection_t, lid: randr_lease_t, terminate: u8) -> void_cookie_t ---
    randr_free_lease :: proc(c: ^connection_t, lid: randr_lease_t, terminate: u8) -> void_cookie_t ---
    randr_free_lease_notify_next :: proc(i: ^randr_lease_notify_iterator_t) ---
    randr_free_lease_notify_end :: proc(i: randr_lease_notify_iterator_t) -> generic_iterator_t ---
    randr_notify_data_next :: proc(i: ^randr_notify_data_iterator_t) ---
    randr_notify_data_end :: proc(i: randr_notify_data_iterator_t) -> generic_iterator_t ---
}