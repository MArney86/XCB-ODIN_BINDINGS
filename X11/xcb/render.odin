package xcb

import _c "core:c"

// XCB Render constants
RENDER_MAJOR_VERSION :: 0
RENDER_MINOR_VERSION :: 11

// Render enums
render_pict_type_t :: enum _c.int {
    PICT_TYPE_INDEXED = 0,
    PICT_TYPE_DIRECT = 1,
}

render_picture_enum_t :: enum _c.int {
    PICTURE_NONE = 0,
}

render_pict_op_t :: enum _c.int {
    PICT_OP_CLEAR = 0,
    PICT_OP_SRC = 1,
    PICT_OP_DST = 2,
    PICT_OP_OVER = 3,
    PICT_OP_OVER_REVERSE = 4,
    PICT_OP_IN = 5,
    PICT_OP_IN_REVERSE = 6,
    PICT_OP_OUT = 7,
    PICT_OP_OUT_REVERSE = 8,
    PICT_OP_ATOP = 9,
    PICT_OP_ATOP_REVERSE = 10,
    PICT_OP_XOR = 11,
    PICT_OP_ADD = 12,
    PICT_OP_SATURATE = 13,
    PICT_OP_DISJOINT_CLEAR = 16,
    PICT_OP_DISJOINT_SRC = 17,
    PICT_OP_DISJOINT_DST = 18,
    PICT_OP_DISJOINT_OVER = 19,
    PICT_OP_DISJOINT_OVER_REVERSE = 20,
    PICT_OP_DISJOINT_IN = 21,
    PICT_OP_DISJOINT_IN_REVERSE = 22,
    PICT_OP_DISJOINT_OUT = 23,
    PICT_OP_DISJOINT_OUT_REVERSE = 24,
    PICT_OP_DISJOINT_ATOP = 25,
    PICT_OP_DISJOINT_ATOP_REVERSE = 26,
    PICT_OP_DISJOINT_XOR = 27,
    PICT_OP_CONJOINT_CLEAR = 32,
    PICT_OP_CONJOINT_SRC = 33,
    PICT_OP_CONJOINT_DST = 34,
    PICT_OP_CONJOINT_OVER = 35,
    PICT_OP_CONJOINT_OVER_REVERSE = 36,
    PICT_OP_CONJOINT_IN = 37,
    PICT_OP_CONJOINT_IN_REVERSE = 38,
    PICT_OP_CONJOINT_OUT = 39,
    PICT_OP_CONJOINT_OUT_REVERSE = 40,
    PICT_OP_CONJOINT_ATOP = 41,
    PICT_OP_CONJOINT_ATOP_REVERSE = 42,
    PICT_OP_CONJOINT_XOR = 43,
    PICT_OP_MULTIPLY = 48,
    PICT_OP_SCREEN = 49,
    PICT_OP_OVERLAY = 50,
    PICT_OP_DARKEN = 51,
    PICT_OP_LIGHTEN = 52,
    PICT_OP_COLOR_DODGE = 53,
    PICT_OP_COLOR_BURN = 54,
    PICT_OP_HARD_LIGHT = 55,
    PICT_OP_SOFT_LIGHT = 56,
    PICT_OP_DIFFERENCE = 57,
    PICT_OP_EXCLUSION = 58,
    PICT_OP_HSL_HUE = 59,
    PICT_OP_HSL_SATURATION = 60,
    PICT_OP_HSL_COLOR = 61,
    PICT_OP_HSL_LUMINOSITY = 62,
}

render_poly_edge_t :: enum _c.int {
    POLY_EDGE_SHARP = 0,
    POLY_EDGE_SMOOTH = 1,
}

render_poly_mode_t :: enum _c.int {
    POLY_MODE_PRECISE = 0,
    POLY_MODE_IMPRECISE = 1,
}

render_cp_t :: enum _c.int {
    CP_REPEAT = 1,
    CP_ALPHA_MAP = 2,
    CP_ALPHA_X_ORIGIN = 4,
    CP_ALPHA_Y_ORIGIN = 8,
    CP_CLIP_X_ORIGIN = 16,
    CP_CLIP_Y_ORIGIN = 32,
    CP_CLIP_MASK = 64,
    CP_GRAPHICS_EXPOSURE = 128,
    CP_SUBWINDOW_MODE = 256,
    CP_POLY_EDGE = 512,
    CP_POLY_MODE = 1024,
    CP_DITHER = 2048,
    CP_COMPONENT_ALPHA = 4096,
}

render_sub_pixel_t :: enum _c.int {
    SUB_PIXEL_UNKNOWN = 0,
    SUB_PIXEL_HORIZONTAL_RGB = 1,
    SUB_PIXEL_HORIZONTAL_BGR = 2,
    SUB_PIXEL_VERTICAL_RGB = 3,
    SUB_PIXEL_VERTICAL_BGR = 4,
    SUB_PIXEL_NONE = 5,
}

render_repeat_t :: enum _c.int {
    REPEAT_NONE = 0,
    REPEAT_NORMAL = 1,
    REPEAT_PAD = 2,
    REPEAT_REFLECT = 3,
}

// Type aliases
render_glyph_t :: u32
render_glyphset_t :: u32
render_picture_t :: u32
render_pictformat_t :: u32
render_fixed_t :: i32

// Error opcodes
RENDER_PICT_FORMAT :: 0
RENDER_PICTURE :: 1
RENDER_PICT_OP :: 2
RENDER_GLYPH_SET :: 3
RENDER_GLYPH :: 4

// Error structs
render_pict_format_error_t :: struct {
    response_type: u8,
    error_code: u8,
    sequence: u16,
    bad_value: u32,
    minor_opcode: u16,
    major_opcode: u8,
}

render_picture_error_t :: struct {
    response_type: u8,
    error_code: u8,
    sequence: u16,
    bad_value: u32,
    minor_opcode: u16,
    major_opcode: u8,
}

render_pict_op_error_t :: struct {
    response_type: u8,
    error_code: u8,
    sequence: u16,
    bad_value: u32,
    minor_opcode: u16,
    major_opcode: u8,
}

render_glyph_set_error_t :: struct {
    response_type: u8,
    error_code: u8,
    sequence: u16,
    bad_value: u32,
    minor_opcode: u16,
    major_opcode: u8,
}

render_glyph_error_t :: struct {
    response_type: u8,
    error_code: u8,
    sequence: u16,
    bad_value: u32,
    minor_opcode: u16,
    major_opcode: u8,
}

// Data structures
render_directformat_t :: struct {
    red_shift: u16,
    red_mask: u16,
    green_shift: u16,
    green_mask: u16,
    blue_shift: u16,
    blue_mask: u16,
    alpha_shift: u16,
    alpha_mask: u16,
}

render_pictforminfo_t :: struct {
    id: render_pictformat_t,
    type: u8,
    depth: u8,
    pad0: [2]u8,
    direct: render_directformat_t,
    colormap: colormap_t,
}

render_pictvisual_t :: struct {
    visual: visualid_t,
    format: render_pictformat_t,
}

render_pictdepth_t :: struct {
    depth: u8,
    pad0: u8,
    num_visuals: u16,
    pad1: [4]u8,
}

render_pictscreen_t :: struct {
    num_depths: u32,
    fallback: render_pictformat_t,
}

render_indexvalue_t :: struct {
    pixel: u32,
    red: u16,
    green: u16,
    blue: u16,
    alpha: u16,
}

render_color_t :: struct {
    red: u16,
    green: u16,
    blue: u16,
    alpha: u16,
}

render_pointfix_t :: struct {
    x: render_fixed_t,
    y: render_fixed_t,
}

render_linefix_t :: struct {
    p1: render_pointfix_t,
    p2: render_pointfix_t,
}

render_triangle_t :: struct {
    p1: render_pointfix_t,
    p2: render_pointfix_t,
    p3: render_pointfix_t,
}

render_trapezoid_t :: struct {
    top: render_fixed_t,
    bottom: render_fixed_t,
    left: render_linefix_t,
    right: render_linefix_t,
}

render_glyphinfo_t :: struct {
    width: u16,
    height: u16,
    x: i16,
    y: i16,
    x_off: i16,
    y_off: i16,
}

render_transform_t :: struct {
    matrix11: render_fixed_t,
    matrix12: render_fixed_t,
    matrix13: render_fixed_t,
    matrix21: render_fixed_t,
    matrix22: render_fixed_t,
    matrix23: render_fixed_t,
    matrix31: render_fixed_t,
    matrix32: render_fixed_t,
    matrix33: render_fixed_t,
}

render_animcursorelt_t :: struct {
    cursor: cursor_t,
    delay: u32,
}

// Cookie types
render_query_version_cookie_t :: struct {
    sequence: _c.uint,
}

render_query_pict_formats_cookie_t :: struct {
    sequence: _c.uint,
}

render_query_pict_index_values_cookie_t :: struct {
    sequence: _c.uint,
}

render_query_filters_cookie_t :: struct {
    sequence: _c.uint,
}

// Request opcodes
RENDER_QUERY_VERSION :: 0
RENDER_QUERY_PICT_FORMATS :: 1
RENDER_QUERY_PICT_INDEX_VALUES :: 2
RENDER_CREATE_PICTURE :: 4
RENDER_CHANGE_PICTURE :: 5
RENDER_SET_PICTURE_CLIP_RECTANGLES :: 6
RENDER_FREE_PICTURE :: 7
RENDER_COMPOSITE :: 8
RENDER_TRAPEZOIDS :: 10
RENDER_TRIANGLES :: 11
RENDER_TRI_STRIP :: 12
RENDER_TRI_FAN :: 13
RENDER_CREATE_GLYPH_SET :: 17
RENDER_REFERENCE_GLYPH_SET :: 18
RENDER_FREE_GLYPH_SET :: 19
RENDER_ADD_GLYPHS :: 20
RENDER_FREE_GLYPHS :: 22
RENDER_COMPOSITE_GLYPHS_8 :: 23
RENDER_COMPOSITE_GLYPHS_16 :: 24
RENDER_COMPOSITE_GLYPHS_32 :: 25
RENDER_FILL_RECTANGLES :: 26
RENDER_CREATE_CURSOR :: 27
RENDER_SET_PICTURE_TRANSFORM :: 28
RENDER_QUERY_FILTERS :: 29
RENDER_SET_PICTURE_FILTER :: 30
RENDER_CREATE_ANIM_CURSOR :: 31

// Request structures
render_query_version_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    client_major_version: u32,
    client_minor_version: u32,
}

render_query_version_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    major_version: u32,
    minor_version: u32,
    pad1: [16]u8,
}

render_query_pict_formats_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
}

render_query_pict_formats_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    num_formats: u32,
    num_screens: u32,
    num_depths: u32,
    num_visuals: u32,
    num_subpixel: u32,
    pad1: [4]u8,
}

render_query_pict_index_values_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    format: render_pictformat_t,
}

render_query_pict_index_values_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    num_values: u32,
    pad1: [20]u8,
}

render_create_picture_value_list_t :: struct {
    repeat: u32,
    alphamap: render_picture_t,
    alphaxorigin: i32,
    alphayorigin: i32,
    clipxorigin: i32,
    clipyorigin: i32,
    clipmask: pixmap_t,
    graphicsexposure: u32,
    subwindowmode: u32,
    polyedge: u32,
    polymode: u32,
    dither: atom_t,
    componentalpha: u32,
}

render_create_picture_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    pid: render_picture_t,
    drawable: drawable_t,
    format: render_pictformat_t,
    value_mask: u32,
}

render_change_picture_value_list_t :: struct {
    repeat: u32,
    alphamap: render_picture_t,
    alphaxorigin: i32,
    alphayorigin: i32,
    clipxorigin: i32,
    clipyorigin: i32,
    clipmask: pixmap_t,
    graphicsexposure: u32,
    subwindowmode: u32,
    polyedge: u32,
    polymode: u32,
    dither: atom_t,
    componentalpha: u32,
}

render_change_picture_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    picture: render_picture_t,
    value_mask: u32,
}

render_set_picture_clip_rectangles_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    picture: render_picture_t,
    clip_x_origin: i16,
    clip_y_origin: i16,
}

render_free_picture_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    picture: render_picture_t,
}

render_composite_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    op: u8,
    pad0: [3]u8,
    src: render_picture_t,
    mask: render_picture_t,
    dst: render_picture_t,
    src_x: i16,
    src_y: i16,
    mask_x: i16,
    mask_y: i16,
    dst_x: i16,
    dst_y: i16,
    width: u16,
    height: u16,
}

render_trapezoids_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    op: u8,
    pad0: [3]u8,
    src: render_picture_t,
    dst: render_picture_t,
    mask_format: render_pictformat_t,
    src_x: i16,
    src_y: i16,
}

render_triangles_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    op: u8,
    pad0: [3]u8,
    src: render_picture_t,
    dst: render_picture_t,
    mask_format: render_pictformat_t,
    src_x: i16,
    src_y: i16,
}

render_tri_strip_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    op: u8,
    pad0: [3]u8,
    src: render_picture_t,
    dst: render_picture_t,
    mask_format: render_pictformat_t,
    src_x: i16,
    src_y: i16,
}

render_tri_fan_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    op: u8,
    pad0: [3]u8,
    src: render_picture_t,
    dst: render_picture_t,
    mask_format: render_pictformat_t,
    src_x: i16,
    src_y: i16,
}

render_create_glyph_set_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    gsid: render_glyphset_t,
    format: render_pictformat_t,
}

render_reference_glyph_set_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    gsid: render_glyphset_t,
    existing: render_glyphset_t,
}

render_free_glyph_set_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    glyphset: render_glyphset_t,
}

render_add_glyphs_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    glyphset: render_glyphset_t,
    glyphs_len: u32,
}

render_free_glyphs_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    glyphset: render_glyphset_t,
}

render_composite_glyphs_8_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    op: u8,
    pad0: [3]u8,
    src: render_picture_t,
    dst: render_picture_t,
    mask_format: render_pictformat_t,
    glyphset: render_glyphset_t,
    src_x: i16,
    src_y: i16,
}

render_composite_glyphs_16_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    op: u8,
    pad0: [3]u8,
    src: render_picture_t,
    dst: render_picture_t,
    mask_format: render_pictformat_t,
    glyphset: render_glyphset_t,
    src_x: i16,
    src_y: i16,
}

render_composite_glyphs_32_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    op: u8,
    pad0: [3]u8,
    src: render_picture_t,
    dst: render_picture_t,
    mask_format: render_pictformat_t,
    glyphset: render_glyphset_t,
    src_x: i16,
    src_y: i16,
}

render_fill_rectangles_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    op: u8,
    pad0: [3]u8,
    dst: render_picture_t,
    color: render_color_t,
}

render_create_cursor_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    cid: cursor_t,
    source: render_picture_t,
    x: u16,
    y: u16,
}

render_set_picture_transform_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    picture: render_picture_t,
    transform: render_transform_t,
}

render_query_filters_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    drawable: drawable_t,
}

render_query_filters_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    num_aliases: u32,
    num_filters: u32,
    pad1: [16]u8,
}

render_set_picture_filter_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    picture: render_picture_t,
    filter_len: u16,
    pad0: [2]u8,
}

render_create_anim_cursor_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    cid: cursor_t,
}

render_spanfix_t :: struct {
    l: render_fixed_t,
    r: render_fixed_t,
    y: render_fixed_t,
}

render_trap_t :: struct {
    top: render_spanfix_t,
    bot: render_spanfix_t,
}

render_add_traps_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    picture: render_picture_t,
    x_off: i16,
    y_off: i16,
}

render_create_solid_fill_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    picture: render_picture_t,
    color: render_color_t,
}

render_create_linear_gradient_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    picture: render_picture_t,
    p1: render_pointfix_t,
    p2: render_pointfix_t,
    num_stops: u32,
}

render_create_radial_gradient_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    picture: render_picture_t,
    inner: render_pointfix_t,
    outer: render_pointfix_t,
    inner_radius: render_fixed_t,
    outer_radius: render_fixed_t,
    num_stops: u32,
}

render_create_conical_gradient_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    picture: render_picture_t,
    center: render_pointfix_t,
    angle: render_fixed_t,
    num_stops: u32,
}

// Iterator structures
render_spanfix_iterator_t :: struct {
    data: ^render_spanfix_t,
    rem: _c.int,
    index: _c.int,
}

render_trap_iterator_t :: struct {
    data: ^render_trap_t,
    rem: _c.int,
    index: _c.int,
}

// Iterator structures
render_glyph_iterator_t :: struct {
    data: ^render_glyph_t,
    rem: _c.int,
    index: _c.int,
}

render_glyphset_iterator_t :: struct {
    data: ^render_glyphset_t,
    rem: _c.int,
    index: _c.int,
}

render_picture_iterator_t :: struct {
    data: ^render_picture_t,
    rem: _c.int,
    index: _c.int,
}

render_pictformat_iterator_t :: struct {
    data: ^render_pictformat_t,
    rem: _c.int,
    index: _c.int,
}

render_fixed_iterator_t :: struct {
    data: ^render_fixed_t,
    rem: _c.int,
    index: _c.int,
}

render_directformat_iterator_t :: struct {
    data: ^render_directformat_t,
    rem: _c.int,
    index: _c.int,
}

render_pictforminfo_iterator_t :: struct {
    data: ^render_pictforminfo_t,
    rem: _c.int,
    index: _c.int,
}

render_pictvisual_iterator_t :: struct {
    data: ^render_pictvisual_t,
    rem: _c.int,
    index: _c.int,
}

render_pictdepth_iterator_t :: struct {
    data: ^render_pictdepth_t,
    rem: _c.int,
    index: _c.int,
}

render_pictscreen_iterator_t :: struct {
    data: ^render_pictscreen_t,
    rem: _c.int,
    index: _c.int,
}

render_indexvalue_iterator_t :: struct {
    data: ^render_indexvalue_t,
    rem: _c.int,
    index: _c.int,
}

render_color_iterator_t :: struct {
    data: ^render_color_t,
    rem: _c.int,
    index: _c.int,
}

render_pointfix_iterator_t :: struct {
    data: ^render_pointfix_t,
    rem: _c.int,
    index: _c.int,
}

render_linefix_iterator_t :: struct {
    data: ^render_linefix_t,
    rem: _c.int,
    index: _c.int,
}

render_triangle_iterator_t :: struct {
    data: ^render_triangle_t,
    rem: _c.int,
    index: _c.int,
}

render_trapezoid_iterator_t :: struct {
    data: ^render_trapezoid_t,
    rem: _c.int,
    index: _c.int,
}

render_glyphinfo_iterator_t :: struct {
    data: ^render_glyphinfo_t,
    rem: _c.int,
    index: _c.int,
}

render_transform_iterator_t :: struct {
    data: ^render_transform_t,
    rem: _c.int,
    index: _c.int,
}

render_animcursorelt_iterator_t :: struct {
    data: ^render_animcursorelt_t,
    rem: _c.int,
    index: _c.int,
}

// External extension identifier
render_id: extension_t

when ODIN_OS == .Linux {
    foreign import libxcb "system:xcb"
} else when ODIN_OS == .Windows {
    foreign import libxcb "system:libxcb"
} else {
    foreign import libxcb "system:xcb"
}

@(link_prefix="xcb_")
@(default_calling_convention="c")
foreign libxcb {
    // Iterator functions
    render_glyph_next :: proc(i: ^render_glyph_iterator_t) ---
    render_glyph_end :: proc(i: render_glyph_iterator_t) -> generic_iterator_t ---
    render_glyphset_next :: proc(i: ^render_glyphset_iterator_t) ---
    render_glyphset_end :: proc(i: render_glyphset_iterator_t) -> generic_iterator_t ---
    render_picture_next :: proc(i: ^render_picture_iterator_t) ---
    render_picture_end :: proc(i: render_picture_iterator_t) -> generic_iterator_t ---
    render_pictformat_next :: proc(i: ^render_pictformat_iterator_t) ---
    render_pictformat_end :: proc(i: render_pictformat_iterator_t) -> generic_iterator_t ---
    render_fixed_next :: proc(i: ^render_fixed_iterator_t) ---
    render_fixed_end :: proc(i: render_fixed_iterator_t) -> generic_iterator_t ---
    render_directformat_next :: proc(i: ^render_directformat_iterator_t) ---
    render_directformat_end :: proc(i: render_directformat_iterator_t) -> generic_iterator_t ---
    render_pictforminfo_next :: proc(i: ^render_pictforminfo_iterator_t) ---
    render_pictforminfo_end :: proc(i: render_pictforminfo_iterator_t) -> generic_iterator_t ---
    render_pictvisual_next :: proc(i: ^render_pictvisual_iterator_t) ---
    render_pictvisual_end :: proc(i: render_pictvisual_iterator_t) -> generic_iterator_t ---
    render_pictdepth_next :: proc(i: ^render_pictdepth_iterator_t) ---
    render_pictdepth_end :: proc(i: render_pictdepth_iterator_t) -> generic_iterator_t ---
    render_pictscreen_next :: proc(i: ^render_pictscreen_iterator_t) ---
    render_pictscreen_end :: proc(i: render_pictscreen_iterator_t) -> generic_iterator_t ---
    render_indexvalue_next :: proc(i: ^render_indexvalue_iterator_t) ---
    render_indexvalue_end :: proc(i: render_indexvalue_iterator_t) -> generic_iterator_t ---
    render_color_next :: proc(i: ^render_color_iterator_t) ---
    render_color_end :: proc(i: render_color_iterator_t) -> generic_iterator_t ---
    render_pointfix_next :: proc(i: ^render_pointfix_iterator_t) ---
    render_pointfix_end :: proc(i: render_pointfix_iterator_t) -> generic_iterator_t ---
    render_linefix_next :: proc(i: ^render_linefix_iterator_t) ---
    render_linefix_end :: proc(i: render_linefix_iterator_t) -> generic_iterator_t ---
    render_triangle_next :: proc(i: ^render_triangle_iterator_t) ---
    render_triangle_end :: proc(i: render_triangle_iterator_t) -> generic_iterator_t ---
    render_trapezoid_next :: proc(i: ^render_trapezoid_iterator_t) ---
    render_trapezoid_end :: proc(i: render_trapezoid_iterator_t) -> generic_iterator_t ---
    render_glyphinfo_next :: proc(i: ^render_glyphinfo_iterator_t) ---
    render_glyphinfo_end :: proc(i: render_glyphinfo_iterator_t) -> generic_iterator_t ---
    render_transform_next :: proc(i: ^render_transform_iterator_t) ---
    render_transform_end :: proc(i: render_transform_iterator_t) -> generic_iterator_t ---
    render_animcursorelt_next :: proc(i: ^render_animcursorelt_iterator_t) ---
    render_animcursorelt_end :: proc(i: render_animcursorelt_iterator_t) -> generic_iterator_t ---
    render_spanfix_next :: proc(i: ^render_spanfix_iterator_t) ---
    render_spanfix_end :: proc(i: render_spanfix_iterator_t) -> generic_iterator_t ---
    render_trap_next :: proc(i: ^render_trap_iterator_t) ---
    render_trap_end :: proc(i: render_trap_iterator_t) -> generic_iterator_t ---

    // Sizeof functions
    render_pictdepth_sizeof :: proc(buffer: rawptr) -> _c.int ---
    render_pictscreen_sizeof :: proc(buffer: rawptr) -> _c.int ---
    render_query_pict_formats_sizeof :: proc(buffer: rawptr) -> _c.int ---
    render_query_pict_index_values_sizeof :: proc(buffer: rawptr) -> _c.int ---
    render_create_picture_sizeof :: proc(buffer: rawptr) -> _c.int ---
    render_change_picture_sizeof :: proc(buffer: rawptr) -> _c.int ---
    render_set_picture_clip_rectangles_sizeof :: proc(buffer: rawptr, rectangles_len: u32) -> _c.int ---
    render_trapezoids_sizeof :: proc(buffer: rawptr, traps_len: u32) -> _c.int ---
    render_triangles_sizeof :: proc(buffer: rawptr, triangles_len: u32) -> _c.int ---
    render_tri_strip_sizeof :: proc(buffer: rawptr, points_len: u32) -> _c.int ---
    render_tri_fan_sizeof :: proc(buffer: rawptr, points_len: u32) -> _c.int ---
    render_add_glyphs_sizeof :: proc(buffer: rawptr, data_len: u32) -> _c.int ---
    render_free_glyphs_sizeof :: proc(buffer: rawptr, glyphs_len: u32) -> _c.int ---
    render_composite_glyphs_8_sizeof :: proc(buffer: rawptr, glyphcmds_len: u32) -> _c.int ---
    render_composite_glyphs_16_sizeof :: proc(buffer: rawptr, glyphcmds_len: u32) -> _c.int ---
    render_composite_glyphs_32_sizeof :: proc(buffer: rawptr, glyphcmds_len: u32) -> _c.int ---
    render_fill_rectangles_sizeof :: proc(buffer: rawptr, rects_len: u32) -> _c.int ---
    render_query_filters_sizeof :: proc(buffer: rawptr) -> _c.int ---
    render_set_picture_filter_sizeof :: proc(buffer: rawptr, values_len: u32) -> _c.int ---
    render_create_anim_cursor_sizeof :: proc(buffer: rawptr, cursors_len: u32) -> _c.int ---
    render_add_traps_sizeof :: proc(buffer: rawptr, traps_len: u32) -> _c.int ---
    render_create_linear_gradient_sizeof :: proc(buffer: rawptr) -> _c.int ---
    render_create_radial_gradient_sizeof :: proc(buffer: rawptr) -> _c.int ---
    render_create_conical_gradient_sizeof :: proc(buffer: rawptr) -> _c.int ---

    // Request functions
    render_query_version :: proc(c: ^connection_t, client_major_version: u32, client_minor_version: u32) -> render_query_version_cookie_t ---
    render_query_version_unchecked :: proc(c: ^connection_t, client_major_version: u32, client_minor_version: u32) -> render_query_version_cookie_t ---
    render_query_version_reply :: proc(c: ^connection_t, cookie: render_query_version_cookie_t, e: ^^generic_error_t) -> ^render_query_version_reply_t ---

    render_query_pict_formats :: proc(c: ^connection_t) -> render_query_pict_formats_cookie_t ---
    render_query_pict_formats_unchecked :: proc(c: ^connection_t) -> render_query_pict_formats_cookie_t ---
    render_query_pict_formats_reply :: proc(c: ^connection_t, cookie: render_query_pict_formats_cookie_t, e: ^^generic_error_t) -> ^render_query_pict_formats_reply_t ---

    render_query_pict_index_values :: proc(c: ^connection_t, format: render_pictformat_t) -> render_query_pict_index_values_cookie_t ---
    render_query_pict_index_values_unchecked :: proc(c: ^connection_t, format: render_pictformat_t) -> render_query_pict_index_values_cookie_t ---
    render_query_pict_index_values_reply :: proc(c: ^connection_t, cookie: render_query_pict_index_values_cookie_t, e: ^^generic_error_t) -> ^render_query_pict_index_values_reply_t ---

    render_create_picture_checked :: proc(c: ^connection_t, pid: render_picture_t, drawable: drawable_t, format: render_pictformat_t, value_mask: u32, value_list: rawptr) -> void_cookie_t ---
    render_create_picture :: proc(c: ^connection_t, pid: render_picture_t, drawable: drawable_t, format: render_pictformat_t, value_mask: u32, value_list: rawptr) -> void_cookie_t ---
    render_create_picture_aux_checked :: proc(c: ^connection_t, pid: render_picture_t, drawable: drawable_t, format: render_pictformat_t, value_mask: u32, value_list: ^render_create_picture_value_list_t) -> void_cookie_t ---
    render_create_picture_aux :: proc(c: ^connection_t, pid: render_picture_t, drawable: drawable_t, format: render_pictformat_t, value_mask: u32, value_list: ^render_create_picture_value_list_t) -> void_cookie_t ---

    render_change_picture_checked :: proc(c: ^connection_t, picture: render_picture_t, value_mask: u32, value_list: rawptr) -> void_cookie_t ---
    render_change_picture :: proc(c: ^connection_t, picture: render_picture_t, value_mask: u32, value_list: rawptr) -> void_cookie_t ---
    render_change_picture_aux_checked :: proc(c: ^connection_t, picture: render_picture_t, value_mask: u32, value_list: ^render_change_picture_value_list_t) -> void_cookie_t ---
    render_change_picture_aux :: proc(c: ^connection_t, picture: render_picture_t, value_mask: u32, value_list: ^render_change_picture_value_list_t) -> void_cookie_t ---

    render_set_picture_clip_rectangles_checked :: proc(c: ^connection_t, picture: render_picture_t, clip_x_origin: i16, clip_y_origin: i16, rectangles_len: u32, rectangles: ^rectangle_t) -> void_cookie_t ---
    render_set_picture_clip_rectangles :: proc(c: ^connection_t, picture: render_picture_t, clip_x_origin: i16, clip_y_origin: i16, rectangles_len: u32, rectangles: ^rectangle_t) -> void_cookie_t ---

    render_free_picture_checked :: proc(c: ^connection_t, picture: render_picture_t) -> void_cookie_t ---
    render_free_picture :: proc(c: ^connection_t, picture: render_picture_t) -> void_cookie_t ---

    render_composite_checked :: proc(c: ^connection_t, op: u8, src: render_picture_t, mask: render_picture_t, dst: render_picture_t, src_x: i16, src_y: i16, mask_x: i16, mask_y: i16, dst_x: i16, dst_y: i16, width: u16, height: u16) -> void_cookie_t ---
    render_composite :: proc(c: ^connection_t, op: u8, src: render_picture_t, mask: render_picture_t, dst: render_picture_t, src_x: i16, src_y: i16, mask_x: i16, mask_y: i16, dst_x: i16, dst_y: i16, width: u16, height: u16) -> void_cookie_t ---

    render_trapezoids_checked :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, src_x: i16, src_y: i16, traps_len: u32, traps: ^render_trapezoid_t) -> void_cookie_t ---
    render_trapezoids :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, src_x: i16, src_y: i16, traps_len: u32, traps: ^render_trapezoid_t) -> void_cookie_t ---

    render_triangles_checked :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, src_x: i16, src_y: i16, triangles_len: u32, triangles: ^render_triangle_t) -> void_cookie_t ---
    render_triangles :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, src_x: i16, src_y: i16, triangles_len: u32, triangles: ^render_triangle_t) -> void_cookie_t ---

    render_tri_strip_checked :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, src_x: i16, src_y: i16, points_len: u32, points: ^render_pointfix_t) -> void_cookie_t ---
    render_tri_strip :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, src_x: i16, src_y: i16, points_len: u32, points: ^render_pointfix_t) -> void_cookie_t ---

    render_tri_fan_checked :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, src_x: i16, src_y: i16, points_len: u32, points: ^render_pointfix_t) -> void_cookie_t ---
    render_tri_fan :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, src_x: i16, src_y: i16, points_len: u32, points: ^render_pointfix_t) -> void_cookie_t ---

    render_create_glyph_set_checked :: proc(c: ^connection_t, gsid: render_glyphset_t, format: render_pictformat_t) -> void_cookie_t ---
    render_create_glyph_set :: proc(c: ^connection_t, gsid: render_glyphset_t, format: render_pictformat_t) -> void_cookie_t ---

    render_reference_glyph_set_checked :: proc(c: ^connection_t, gsid: render_glyphset_t, existing: render_glyphset_t) -> void_cookie_t ---
    render_reference_glyph_set :: proc(c: ^connection_t, gsid: render_glyphset_t, existing: render_glyphset_t) -> void_cookie_t ---

    render_free_glyph_set_checked :: proc(c: ^connection_t, glyphset: render_glyphset_t) -> void_cookie_t ---
    render_free_glyph_set :: proc(c: ^connection_t, glyphset: render_glyphset_t) -> void_cookie_t ---

    render_add_glyphs_checked :: proc(c: ^connection_t, glyphset: render_glyphset_t, glyphs_len: u32, glyphids: ^u32, glyphs: ^render_glyphinfo_t, data_len: u32, data: ^u8) -> void_cookie_t ---
    render_add_glyphs :: proc(c: ^connection_t, glyphset: render_glyphset_t, glyphs_len: u32, glyphids: ^u32, glyphs: ^render_glyphinfo_t, data_len: u32, data: ^u8) -> void_cookie_t ---

    render_free_glyphs_checked :: proc(c: ^connection_t, glyphset: render_glyphset_t, glyphs_len: u32, glyphs: ^render_glyph_t) -> void_cookie_t ---
    render_free_glyphs :: proc(c: ^connection_t, glyphset: render_glyphset_t, glyphs_len: u32, glyphs: ^render_glyph_t) -> void_cookie_t ---

    render_composite_glyphs_8_checked :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, glyphset: render_glyphset_t, src_x: i16, src_y: i16, glyphcmds_len: u32, glyphcmds: ^u8) -> void_cookie_t ---
    render_composite_glyphs_8 :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, glyphset: render_glyphset_t, src_x: i16, src_y: i16, glyphcmds_len: u32, glyphcmds: ^u8) -> void_cookie_t ---

    render_composite_glyphs_16_checked :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, glyphset: render_glyphset_t, src_x: i16, src_y: i16, glyphcmds_len: u32, glyphcmds: ^u8) -> void_cookie_t ---
    render_composite_glyphs_16 :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, glyphset: render_glyphset_t, src_x: i16, src_y: i16, glyphcmds_len: u32, glyphcmds: ^u8) -> void_cookie_t ---

    render_composite_glyphs_32_checked :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, glyphset: render_glyphset_t, src_x: i16, src_y: i16, glyphcmds_len: u32, glyphcmds: ^u8) -> void_cookie_t ---
    render_composite_glyphs_32 :: proc(c: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, glyphset: render_glyphset_t, src_x: i16, src_y: i16, glyphcmds_len: u32, glyphcmds: ^u8) -> void_cookie_t ---

    render_fill_rectangles_checked :: proc(c: ^connection_t, op: u8, dst: render_picture_t, color: render_color_t, rects_len: u32, rects: ^rectangle_t) -> void_cookie_t ---
    render_fill_rectangles :: proc(c: ^connection_t, op: u8, dst: render_picture_t, color: render_color_t, rects_len: u32, rects: ^rectangle_t) -> void_cookie_t ---

    render_create_cursor_checked :: proc(c: ^connection_t, cid: cursor_t, source: render_picture_t, x: u16, y: u16) -> void_cookie_t ---
    render_create_cursor :: proc(c: ^connection_t, cid: cursor_t, source: render_picture_t, x: u16, y: u16) -> void_cookie_t ---

    render_set_picture_transform_checked :: proc(c: ^connection_t, picture: render_picture_t, transform: render_transform_t) -> void_cookie_t ---
    render_set_picture_transform :: proc(c: ^connection_t, picture: render_picture_t, transform: render_transform_t) -> void_cookie_t ---

    render_query_filters :: proc(c: ^connection_t, drawable: drawable_t) -> render_query_filters_cookie_t ---
    render_query_filters_unchecked :: proc(c: ^connection_t, drawable: drawable_t) -> render_query_filters_cookie_t ---
    render_query_filters_reply :: proc(c: ^connection_t, cookie: render_query_filters_cookie_t, e: ^^generic_error_t) -> ^render_query_filters_reply_t ---

    render_set_picture_filter_checked :: proc(c: ^connection_t, picture: render_picture_t, filter_len: u16, filter: cstring, values_len: u32, values: ^render_fixed_t) -> void_cookie_t ---
    render_set_picture_filter :: proc(c: ^connection_t, picture: render_picture_t, filter_len: u16, filter: cstring, values_len: u32, values: ^render_fixed_t) -> void_cookie_t ---

    render_create_anim_cursor_checked :: proc(c: ^connection_t, cid: cursor_t, cursors_len: u32, cursors: ^render_animcursorelt_t) -> void_cookie_t ---
    render_create_anim_cursor :: proc(c: ^connection_t, cid: cursor_t, cursors_len: u32, cursors: ^render_animcursorelt_t) -> void_cookie_t ---

    render_add_traps_checked :: proc(c: ^connection_t, picture: render_picture_t, x_off: i16, y_off: i16, traps_len: u32, traps: ^render_trap_t) -> void_cookie_t ---
    render_add_traps :: proc(c: ^connection_t, picture: render_picture_t, x_off: i16, y_off: i16, traps_len: u32, traps: ^render_trap_t) -> void_cookie_t ---

    render_create_solid_fill_checked :: proc(c: ^connection_t, picture: render_picture_t, color: render_color_t) -> void_cookie_t ---
    render_create_solid_fill :: proc(c: ^connection_t, picture: render_picture_t, color: render_color_t) -> void_cookie_t ---

    render_create_linear_gradient_checked :: proc(c: ^connection_t, picture: render_picture_t, p1: render_pointfix_t, p2: render_pointfix_t, num_stops: u32, stops: ^render_fixed_t, colors: ^render_color_t) -> void_cookie_t ---
    render_create_linear_gradient :: proc(c: ^connection_t, picture: render_picture_t, p1: render_pointfix_t, p2: render_pointfix_t, num_stops: u32, stops: ^render_fixed_t, colors: ^render_color_t) -> void_cookie_t ---

    render_create_radial_gradient_checked :: proc(c: ^connection_t, picture: render_picture_t, inner: render_pointfix_t, outer: render_pointfix_t, inner_radius: render_fixed_t, outer_radius: render_fixed_t, num_stops: u32, stops: ^render_fixed_t, colors: ^render_color_t) -> void_cookie_t ---
    render_create_radial_gradient :: proc(c: ^connection_t, picture: render_picture_t, inner: render_pointfix_t, outer: render_pointfix_t, inner_radius: render_fixed_t, outer_radius: render_fixed_t, num_stops: u32, stops: ^render_fixed_t, colors: ^render_color_t) -> void_cookie_t ---

    render_create_conical_gradient_checked :: proc(c: ^connection_t, picture: render_picture_t, center: render_pointfix_t, angle: render_fixed_t, num_stops: u32, stops: ^render_fixed_t, colors: ^render_color_t) -> void_cookie_t ---
    render_create_conical_gradient :: proc(c: ^connection_t, picture: render_picture_t, center: render_pointfix_t, angle: render_fixed_t, num_stops: u32, stops: ^render_fixed_t, colors: ^render_color_t) -> void_cookie_t ---

    // Accessor functions
    render_pictdepth_visuals :: proc(R: ^render_pictdepth_t) -> ^render_pictvisual_t ---
    render_pictdepth_visuals_length :: proc(R: ^render_pictdepth_t) -> _c.int ---
    render_pictdepth_visuals_iterator :: proc(R: ^render_pictdepth_t) -> render_pictvisual_iterator_t ---

    render_pictscreen_depths_length :: proc(R: ^render_pictscreen_t) -> _c.int ---
    render_pictscreen_depths_iterator :: proc(R: ^render_pictscreen_t) -> render_pictdepth_iterator_t ---

    render_query_pict_formats_formats :: proc(R: ^render_query_pict_formats_reply_t) -> ^render_pictforminfo_t ---
    render_query_pict_formats_formats_length :: proc(R: ^render_query_pict_formats_reply_t) -> _c.int ---
    render_query_pict_formats_formats_iterator :: proc(R: ^render_query_pict_formats_reply_t) -> render_pictforminfo_iterator_t ---
    render_query_pict_formats_screens_length :: proc(R: ^render_query_pict_formats_reply_t) -> _c.int ---
    render_query_pict_formats_screens_iterator :: proc(R: ^render_query_pict_formats_reply_t) -> render_pictscreen_iterator_t ---
    render_query_pict_formats_subpixels :: proc(R: ^render_query_pict_formats_reply_t) -> ^u32 ---
    render_query_pict_formats_subpixels_length :: proc(R: ^render_query_pict_formats_reply_t) -> _c.int ---
    render_query_pict_formats_subpixels_end :: proc(R: ^render_query_pict_formats_reply_t) -> generic_iterator_t ---

    render_query_pict_index_values_values :: proc(R: ^render_query_pict_index_values_reply_t) -> ^render_indexvalue_t ---
    render_query_pict_index_values_values_length :: proc(R: ^render_query_pict_index_values_reply_t) -> _c.int ---
    render_query_pict_index_values_values_iterator :: proc(R: ^render_query_pict_index_values_reply_t) -> render_indexvalue_iterator_t ---

    render_create_picture_value_list_serialize :: proc(buffer: ^rawptr, value_mask: u32, aux: ^render_create_picture_value_list_t) -> _c.int ---
    render_create_picture_value_list_unpack :: proc(buffer: rawptr, value_mask: u32, aux: ^render_create_picture_value_list_t) -> _c.int ---
    render_create_picture_value_list_sizeof :: proc(buffer: rawptr, value_mask: u32) -> _c.int ---
    render_create_picture_value_list :: proc(R: ^render_create_picture_request_t) -> rawptr ---

    render_change_picture_value_list_serialize :: proc(buffer: ^rawptr, value_mask: u32, aux: ^render_change_picture_value_list_t) -> _c.int ---
    render_change_picture_value_list_unpack :: proc(buffer: rawptr, value_mask: u32, aux: ^render_change_picture_value_list_t) -> _c.int ---
    render_change_picture_value_list_sizeof :: proc(buffer: rawptr, value_mask: u32) -> _c.int ---
    render_change_picture_value_list :: proc(R: ^render_change_picture_request_t) -> rawptr ---

    render_set_picture_clip_rectangles_rectangles :: proc(R: ^render_set_picture_clip_rectangles_request_t) -> ^rectangle_t ---
    render_set_picture_clip_rectangles_rectangles_length :: proc(R: ^render_set_picture_clip_rectangles_request_t) -> _c.int ---
    render_set_picture_clip_rectangles_rectangles_iterator :: proc(R: ^render_set_picture_clip_rectangles_request_t) -> rectangle_iterator_t ---

    render_trapezoids_traps :: proc(R: ^render_trapezoids_request_t) -> ^render_trapezoid_t ---
    render_trapezoids_traps_length :: proc(R: ^render_trapezoids_request_t) -> _c.int ---
    render_trapezoids_traps_iterator :: proc(R: ^render_trapezoids_request_t) -> render_trapezoid_iterator_t ---

    render_triangles_triangles :: proc(R: ^render_triangles_request_t) -> ^render_triangle_t ---
    render_triangles_triangles_length :: proc(R: ^render_triangles_request_t) -> _c.int ---
    render_triangles_triangles_iterator :: proc(R: ^render_triangles_request_t) -> render_triangle_iterator_t ---

    render_tri_strip_points :: proc(R: ^render_tri_strip_request_t) -> ^render_pointfix_t ---
    render_tri_strip_points_length :: proc(R: ^render_tri_strip_request_t) -> _c.int ---
    render_tri_strip_points_iterator :: proc(R: ^render_tri_strip_request_t) -> render_pointfix_iterator_t ---

    render_tri_fan_points :: proc(R: ^render_tri_fan_request_t) -> ^render_pointfix_t ---
    render_tri_fan_points_length :: proc(R: ^render_tri_fan_request_t) -> _c.int ---
    render_tri_fan_points_iterator :: proc(R: ^render_tri_fan_request_t) -> render_pointfix_iterator_t ---

    render_add_glyphs_glyphids :: proc(R: ^render_add_glyphs_request_t) -> ^u32 ---
    render_add_glyphs_glyphids_length :: proc(R: ^render_add_glyphs_request_t) -> _c.int ---
    render_add_glyphs_glyphids_end :: proc(R: ^render_add_glyphs_request_t) -> generic_iterator_t ---
    render_add_glyphs_glyphs :: proc(R: ^render_add_glyphs_request_t) -> ^render_glyphinfo_t ---
    render_add_glyphs_glyphs_length :: proc(R: ^render_add_glyphs_request_t) -> _c.int ---
    render_add_glyphs_glyphs_iterator :: proc(R: ^render_add_glyphs_request_t) -> render_glyphinfo_iterator_t ---
    render_add_glyphs_data :: proc(R: ^render_add_glyphs_request_t) -> ^u8 ---
    render_add_glyphs_data_length :: proc(R: ^render_add_glyphs_request_t) -> _c.int ---
    render_add_glyphs_data_end :: proc(R: ^render_add_glyphs_request_t) -> generic_iterator_t ---

    render_free_glyphs_glyphs :: proc(R: ^render_free_glyphs_request_t) -> ^render_glyph_t ---
    render_free_glyphs_glyphs_length :: proc(R: ^render_free_glyphs_request_t) -> _c.int ---
    render_free_glyphs_glyphs_end :: proc(R: ^render_free_glyphs_request_t) -> generic_iterator_t ---

    render_composite_glyphs_8_glyphcmds :: proc(R: ^render_composite_glyphs_8_request_t) -> ^u8 ---
    render_composite_glyphs_8_glyphcmds_length :: proc(R: ^render_composite_glyphs_8_request_t) -> _c.int ---
    render_composite_glyphs_8_glyphcmds_end :: proc(R: ^render_composite_glyphs_8_request_t) -> generic_iterator_t ---

    render_composite_glyphs_16_glyphcmds :: proc(R: ^render_composite_glyphs_16_request_t) -> ^u8 ---
    render_composite_glyphs_16_glyphcmds_length :: proc(R: ^render_composite_glyphs_16_request_t) -> _c.int ---
    render_composite_glyphs_16_glyphcmds_end :: proc(R: ^render_composite_glyphs_16_request_t) -> generic_iterator_t ---

    render_composite_glyphs_32_glyphcmds :: proc(R: ^render_composite_glyphs_32_request_t) -> ^u8 ---
    render_composite_glyphs_32_glyphcmds_length :: proc(R: ^render_composite_glyphs_32_request_t) -> _c.int ---
    render_composite_glyphs_32_glyphcmds_end :: proc(R: ^render_composite_glyphs_32_request_t) -> generic_iterator_t ---

    render_fill_rectangles_rects :: proc(R: ^render_fill_rectangles_request_t) -> ^rectangle_t ---
    render_fill_rectangles_rects_length :: proc(R: ^render_fill_rectangles_request_t) -> _c.int ---
    render_fill_rectangles_rects_iterator :: proc(R: ^render_fill_rectangles_request_t) -> rectangle_iterator_t ---

    render_query_filters_aliases :: proc(R: ^render_query_filters_reply_t) -> ^u16 ---
    render_query_filters_aliases_length :: proc(R: ^render_query_filters_reply_t) -> _c.int ---
    render_query_filters_aliases_end :: proc(R: ^render_query_filters_reply_t) -> generic_iterator_t ---
    render_query_filters_filters_length :: proc(R: ^render_query_filters_reply_t) -> _c.int ---
    render_query_filters_filters_iterator :: proc(R: ^render_query_filters_reply_t) -> str_iterator_t ---

    render_set_picture_filter_filter :: proc(R: ^render_set_picture_filter_request_t) -> cstring ---
    render_set_picture_filter_filter_length :: proc(R: ^render_set_picture_filter_request_t) -> _c.int ---
    render_set_picture_filter_filter_end :: proc(R: ^render_set_picture_filter_request_t) -> generic_iterator_t ---
    render_set_picture_filter_values :: proc(R: ^render_set_picture_filter_request_t) -> ^render_fixed_t ---
    render_set_picture_filter_values_length :: proc(R: ^render_set_picture_filter_request_t) -> _c.int ---
    render_set_picture_filter_values_end :: proc(R: ^render_set_picture_filter_request_t) -> generic_iterator_t ---

    render_create_anim_cursor_cursors :: proc(R: ^render_create_anim_cursor_request_t) -> ^render_animcursorelt_t ---
    render_create_anim_cursor_cursors_length :: proc(R: ^render_create_anim_cursor_request_t) -> _c.int ---
    render_create_anim_cursor_cursors_iterator :: proc(R: ^render_create_anim_cursor_request_t) -> render_animcursorelt_iterator_t ---

    render_add_traps_traps :: proc(R: ^render_add_traps_request_t) -> ^render_trap_t ---
    render_add_traps_traps_length :: proc(R: ^render_add_traps_request_t) -> _c.int ---
    render_add_traps_traps_iterator :: proc(R: ^render_add_traps_request_t) -> render_trap_iterator_t ---

    render_create_linear_gradient_stops :: proc(R: ^render_create_linear_gradient_request_t) -> ^render_fixed_t ---
    render_create_linear_gradient_stops_length :: proc(R: ^render_create_linear_gradient_request_t) -> _c.int ---
    render_create_linear_gradient_stops_end :: proc(R: ^render_create_linear_gradient_request_t) -> generic_iterator_t ---
    render_create_linear_gradient_colors :: proc(R: ^render_create_linear_gradient_request_t) -> ^render_color_t ---
    render_create_linear_gradient_colors_length :: proc(R: ^render_create_linear_gradient_request_t) -> _c.int ---
    render_create_linear_gradient_colors_iterator :: proc(R: ^render_create_linear_gradient_request_t) -> render_color_iterator_t ---

    render_create_radial_gradient_stops :: proc(R: ^render_create_radial_gradient_request_t) -> ^render_fixed_t ---
    render_create_radial_gradient_stops_length :: proc(R: ^render_create_radial_gradient_request_t) -> _c.int ---
    render_create_radial_gradient_stops_end :: proc(R: ^render_create_radial_gradient_request_t) -> generic_iterator_t ---
    render_create_radial_gradient_colors :: proc(R: ^render_create_radial_gradient_request_t) -> ^render_color_t ---
    render_create_radial_gradient_colors_length :: proc(R: ^render_create_radial_gradient_request_t) -> _c.int ---
    render_create_radial_gradient_colors_iterator :: proc(R: ^render_create_radial_gradient_request_t) -> render_color_iterator_t ---

    render_create_conical_gradient_stops :: proc(R: ^render_create_conical_gradient_request_t) -> ^render_fixed_t ---
    render_create_conical_gradient_stops_length :: proc(R: ^render_create_conical_gradient_request_t) -> _c.int ---
    render_create_conical_gradient_stops_end :: proc(R: ^render_create_conical_gradient_request_t) -> generic_iterator_t ---
    render_create_conical_gradient_colors :: proc(R: ^render_create_conical_gradient_request_t) -> ^render_color_t ---
    render_create_conical_gradient_colors_length :: proc(R: ^render_create_conical_gradient_request_t) -> _c.int ---
    render_create_conical_gradient_colors_iterator :: proc(R: ^render_create_conical_gradient_request_t) -> render_color_iterator_t ---
}

