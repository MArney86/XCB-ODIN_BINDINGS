package xcb

import _c "core:c"

XCB_BIGREQUESTS_MAJOR_VERSION :: 0
XCB_BIGREQUESTS_MINOR_VERSION :: 0

@(link_name="xcb_big_requests_id")
big_requests_id: extension_t

XCB_BIG_REQUESTS_ENABLE :: 0

big_requests_enable_cookie_t :: struct {
    sequence: _c.uint,
}

big_requests_enable_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
}

big_requests_enable_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    maximum_request_length: u32,
}

when ODIN_OS == .Linux {
    foreign import libxcb "system:libxcb.so"
} else when ODIN_OS == .FreeBSD || ODIN_OS == .OpenBSD || ODIN_OS == .NetBSD {
    foreign import libxcb "system:libxcb.so"
} else when ODIN_OS == .Darwin {
    foreign import libxcb "system:libxcb.so"
} else {
    foreign import libxcb "system:libxcb.lib"
}

@(link_prefix="xcb_")
@(default_calling_convention="c")
foreign libxcb {
    big_requests_enable :: proc(c: ^connection_t) -> big_requests_enable_cookie_t ---
    big_requests_enable_unchecked :: proc(c: ^connection_t) -> big_requests_enable_cookie_t ---
    big_requests_enable_reply :: proc(c: ^connection_t, cookie: big_requests_enable_cookie_t, e: ^^generic_error_t) -> ^big_requests_enable_reply_t ---
}