package xcb

import _c "core:c"

XCB_DRI3_MAJOR_VERSION :: 1
XCB_DRI3_MINOR_VERSION :: 3

@(link_name="xcb_dri3_id")
dri3_id: extension_t

XCB_DRI3_QUERY_VERSION :: 0
XCB_DRI3_OPEN :: 1
XCB_DRI3_PIXMAP_FROM_BUFFER :: 2
XCB_DRI3_BUFFER_FROM_PIXMAP :: 3
XCB_DRI3_FENCE_FROM_FD :: 4
XCB_DRI3_FD_FROM_FENCE :: 5
XCB_DRI3_GET_SUPPORTED_MODIFIERS :: 6
XCB_DRI3_PIXMAP_FROM_BUFFERS :: 7
XCB_DRI3_BUFFERS_FROM_PIXMAP :: 8
XCB_DRI3_SET_DRM_DEVICE_IN_USE :: 9


dri3_query_version_cookie_t :: struct {
    sequence: _c.uint,
}

dri3_query_version_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    major_version: u32,
    minor_version: u32,
}

dri3_query_version_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    major_version: u32,
    minor_version: u32,
}

dri3_open_cookie_t :: struct {
    sequence: _c.uint,
}

dri3_open_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    drawable: drawable_t,
    provider: u32,
}

dri3_open_reply_t :: struct {
    response_type: u8,
    nfd: u8,
    sequence: u16,
    length: u32,
    pad0: [24]u8,
}

dri3_pixmap_from_buffer_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    pixmap: pixmap_t,
    drawable: drawable_t,
    size: u32,
    width: u16,
    height: u16,
    stride: u16,
    depth: u8,
    bpp: u8,
}

dri3_buffer_from_pixmap_cookie_t :: struct {
    sequence: _c.uint,
}

dri3_buffer_from_pixmap_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    pixmap: pixmap_t,
}

dri3_buffer_from_pixmap_reply_t :: struct {
    response_type: u8,
    nfd: u8,
    sequence: u16,
    length: u32,
    size: u32,
    width: u16,
    height: u16,
    stride: u16,
    depth: u8,
    bpp: u8,
    pad0: [12]u8,
}

dri3_fence_from_fd_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    drawable: drawable_t,
    fence: u32,
    initially_triggered: u8,
    pad0: [3]u8,
}

dri3_fd_from_fence_cookie_t :: struct {
    sequence: _c.uint,
}

dri3_fd_from_fence_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    drawable: drawable_t,
    fence: u32,
}

dri3_fd_from_fence_reply_t :: struct {
    response_type: u8,
    nfd: u8,
    sequence: u16,
    length: u32,
    pad0: [24]u8,
}

dri3_get_supported_modifiers_cookie_t :: struct {
    sequence: _c.uint,
}

dri3_get_supported_modifiers_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: u32,
    depth: u8,
    bpp: u8,
    pad0: [2]u8,
}

dri3_get_supported_modifiers_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    num_window_modifiers: u32,
    num_screen_modifiers: u32,
    pad1: [16]u8,
}

dri3_pixmap_from_buffers_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    pixmap: pixmap_t,
    window: window_t,
    num_buffers: u8,
    pad0: [3]u8,
    width: u16,
    height: u16,
    stride0: u32,
    offset0: u32,
    stride1: u32,
    offset1: u32,
    stride2: u32,
    offset2: u32,
    stride3: u32,
    offset3: u32,
    depth: u8,
    bpp: u8,
    pad1: [2]u8,
    modifier: u64,
}

dri3_buffers_from_pixmap_cookie_t :: struct {
    sequence: _c.uint,
}

dri3_buffers_from_pixmap_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    pixmap: pixmap_t,
}

dri3_buffers_from_pixmap_reply_t :: struct {
    response_type: u8,
    nfd: u8,
    sequence: u16,
    length: u32,
    width: u16,
    height: u16,
    pad0: [4]u8,
    modifier: u64,
    depth: u8,
    bpp: u8,
    pad1: [6]u8,
}

dri3_set_drm_device_in_use_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    window: window_t,
    drmMajor: u32,
    drmMinor: u32,
}

when ODIN_OS == .Linux {
    foreign import libxcb_dri3 "system:libxcb-dri3.so"
} else when ODIN_OS == .FreeBSD || ODIN_OS == .OpenBSD || ODIN_OS == .NetBSD {
    foreign import libxcb_dri3 "system:libxcb-dri3.so"
} else when ODIN_OS == .Darwin {
    foreign import libxcb_dri3 "system:libxcb-dri3.so"
} else {
    foreign import libxcb_dri3 "system:libxcb-dri3.lib"
}

@(link_prefix="xcb_")
@(default_calling_convention="c")
foreign libxcb_dri3 {
    dri3_query_version :: proc(c: ^connection_t, major_version: u32, minor_version: u32) -> dri3_query_version_cookie_t ---
    dri3_query_version_unchecked :: proc(c: ^connection_t, major_version: u32, minor_version: u32) -> dri3_query_version_cookie_t ---
    dri3_query_version_reply :: proc(c: ^connection_t, cookie: dri3_query_version_cookie_t, e: ^^generic_error_t) -> ^dri3_query_version_reply_t ---
    dri3_open :: proc(c: ^connection_t, drawable: drawable_t, provider: u32) -> dri3_open_cookie_t ---
    dri3_open_unchecked :: proc(c: ^connection_t, drawable: drawable_t, provider: u32) -> dri3_open_cookie_t ---
    dri3_open_reply :: proc(c: ^connection_t, cookie: dri3_open_cookie_t, e: ^^generic_error_t) -> ^dri3_open_reply_t ---
    dri3_open_reply_fds :: proc(c: ^connection_t, reply: ^dri3_open_reply_t) -> ^_c.int ---
    dri3_pixmap_from_buffer_checked :: proc(c: ^connection_t, pixmap: pixmap_t, drawable: drawable_t, size: u32, width: u16, height: u16, stride: u16, depth: u8, bpp: u8, pixmap_fd: i32) -> void_cookie_t ---
    dri3_pixmap_from_buffer :: proc(c: ^connection_t, pixmap: pixmap_t, drawable: drawable_t, size: u32, width: u16, height: u16, stride: u16, depth: u8, bpp: u8, pixmap_fd: i32) -> void_cookie_t ---
    dri3_buffer_from_pixmap :: proc(c: ^connection_t, pixmap: pixmap_t) -> dri3_buffer_from_pixmap_cookie_t ---
    dri3_buffer_from_pixmap_unchecked :: proc(c: ^connection_t, pixmap: pixmap_t) -> dri3_buffer_from_pixmap_cookie_t ---
    dri3_buffer_from_pixmap_reply :: proc(c: ^connection_t, cookie: dri3_buffer_from_pixmap_cookie_t, e: ^^generic_error_t) -> ^dri3_buffer_from_pixmap_reply_t ---
    dri3_buffer_from_pixmap_reply_fds :: proc(c: ^connection_t, reply: ^dri3_buffer_from_pixmap_reply_t) -> ^_c.int ---
    dri3_fence_from_fd_checked :: proc(c: ^connection_t, drawable: drawable_t, fence: u32, initially_triggered: u8, fence_fd: i32) -> void_cookie_t ---
    dri3_fence_from_fd :: proc(c: ^connection_t, drawable: drawable_t, fence: u32, initially_triggered: u8, fence_fd: i32) -> void_cookie_t ---
    dri3_fd_from_fence :: proc(c: ^connection_t, drawable: drawable_t, fence: u32) -> dri3_fd_from_fence_cookie_t ---
    dri3_fd_from_fence_unchecked :: proc(c: ^connection_t, drawable: drawable_t, fence: u32) -> dri3_fd_from_fence_cookie_t ---
    dri3_fd_from_fence_reply :: proc(c: ^connection_t, cookie: dri3_fd_from_fence_cookie_t, e: ^^generic_error_t) -> ^dri3_fd_from_fence_reply_t ---
    dri3_fd_from_fence_reply_fds :: proc(c: ^connection_t, reply: ^dri3_fd_from_fence_reply_t) -> ^_c.int ---
    dri3_get_supported_modifiers_sizeof :: proc(_buffer: rawptr) -> _c.int ---
    dri3_get_supported_modifiers :: proc(c: ^connection_t, window: u32, depth: u8, bpp: u8) -> dri3_get_supported_modifiers_cookie_t ---
    dri3_get_supported_modifiers_unchecked :: proc(c: ^connection_t, window: u32, depth: u8, bpp: u8) -> dri3_get_supported_modifiers_cookie_t ---
    dri3_get_supported_modifiers_window_modifiers :: proc(R: ^dri3_get_supported_modifiers_reply_t) -> ^u64 ---
    dri3_get_supported_modifiers_window_modifiers_length :: proc(R: ^dri3_get_supported_modifiers_reply_t) -> _c.int ---
    dri3_get_supported_modifiers_window_modifiers_end :: proc(R: ^dri3_get_supported_modifiers_reply_t) -> generic_iterator_t ---
    dri3_get_supported_modifiers_screen_modifiers :: proc(R: ^dri3_get_supported_modifiers_reply_t) -> ^u64 ---
    dri3_get_supported_modifiers_screen_modifiers_length :: proc(R: ^dri3_get_supported_modifiers_reply_t) -> _c.int ---
    dri3_get_supported_modifiers_screen_modifiers_end :: proc(R: ^dri3_get_supported_modifiers_reply_t) -> generic_iterator_t ---
    dri3_get_supported_modifiers_reply :: proc(c: ^connection_t, cookie: dri3_get_supported_modifiers_cookie_t, e: ^^generic_error_t) -> ^dri3_get_supported_modifiers_reply_t ---
    dri3_pixmap_from_buffers_checked :: proc(c: ^connection_t, pixmap: pixmap_t, window: window_t, num_buffers: u8, width: u16, height: u16, stride0: u32, offset0: u32, stride1: u32, offset1: u32, stride2: u32, offset2: u32, stride3: u32, offset3: u32, depth: u8, bpp: u8, modifier: u64, buffers: ^i32) -> void_cookie_t ---
    dri3_pixmap_from_buffers :: proc(c: ^connection_t, pixmap: pixmap_t, window: window_t, num_buffers: u8, width: u16, height: u16, stride0: u32, offset0: u32, stride1: u32, offset1: u32, stride2: u32, offset2: u32, stride3: u32, offset3: u32, depth: u8, bpp: u8, modifier: u64, buffers: ^i32) -> void_cookie_t ---
    dri3_buffers_from_pixmap_sizeof :: proc(_buffer: rawptr, buffers: i32) -> _c.int ---
    dri3_buffers_from_pixmap :: proc(c: ^connection_t, pixmap: pixmap_t) -> dri3_buffers_from_pixmap_cookie_t ---
    dri3_buffers_from_pixmap_unchecked :: proc(c: ^connection_t, pixmap: pixmap_t) -> dri3_buffers_from_pixmap_cookie_t ---
    dri3_buffers_from_pixmap_strides :: proc(R: ^dri3_buffers_from_pixmap_reply_t) -> ^u32 ---
    dri3_buffers_from_pixmap_strides_length :: proc(R: ^dri3_buffers_from_pixmap_reply_t) -> _c.int ---
    dri3_buffers_from_pixmap_strides_end :: proc(R: ^dri3_buffers_from_pixmap_reply_t) -> generic_iterator_t ---
    dri3_buffers_from_pixmap_offsets :: proc(R: ^dri3_buffers_from_pixmap_reply_t) -> ^u32 ---
    dri3_buffers_from_pixmap_offsets_length :: proc(R: ^dri3_buffers_from_pixmap_reply_t) -> _c.int ---
    dri3_buffers_from_pixmap_offsets_end :: proc(R: ^dri3_buffers_from_pixmap_reply_t) -> generic_iterator_t ---
    dri3_buffers_from_pixmap_buffers :: proc(R: ^dri3_buffers_from_pixmap_reply_t) -> ^i32 ---
    dri3_buffers_from_pixmap_buffers_length :: proc(R: ^dri3_buffers_from_pixmap_reply_t) -> _c.int ---
    dri3_buffers_from_pixmap_buffers_end :: proc(R: ^dri3_buffers_from_pixmap_reply_t) -> generic_iterator_t ---
    dri3_buffers_from_pixmap_reply :: proc(c: ^connection_t, cookie: dri3_buffers_from_pixmap_cookie_t, e: ^^generic_error_t) -> ^dri3_buffers_from_pixmap_reply_t ---
    dri3_buffers_from_pixmap_reply_fds :: proc(c: ^connection_t, reply: ^dri3_buffers_from_pixmap_reply_t) -> ^_c.int ---
    dri3_set_drm_device_in_use_checked :: proc(c: ^connection_t, window: window_t, drmMajor: u32, drmMinor: u32) -> void_cookie_t ---
    dri3_set_drm_device_in_use :: proc(c: ^connection_t, window: window_t, drmMajor: u32, drmMinor: u32) -> void_cookie_t ---
}