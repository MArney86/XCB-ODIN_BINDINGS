package xcb

import _c "core:c"

// XC-MISC extension constants
XCB_XCMISC_MAJOR_VERSION :: 1
XCB_XCMISC_MINOR_VERSION :: 1

// Opcodes
XCB_XC_MISC_GET_VERSION :: 0
XCB_XC_MISC_GET_XID_RANGE :: 1
XCB_XC_MISC_GET_XID_LIST :: 2

// Cookie types
xc_misc_get_version_cookie_t :: struct {
    sequence: _c.uint,
}

xc_misc_get_xid_range_cookie_t :: struct {
    sequence: _c.uint,
}

xc_misc_get_xid_list_cookie_t :: struct {
    sequence: _c.uint,
}

// Request types
xc_misc_get_version_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    client_major_version: u16,
    client_minor_version: u16,
}

xc_misc_get_xid_range_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
}

xc_misc_get_xid_list_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    count: u32,
}

// Reply types
xc_misc_get_version_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    server_major_version: u16,
    server_minor_version: u16,
}

xc_misc_get_xid_range_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    start_id: u32,
    count: u32,
}

xc_misc_get_xid_list_reply_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    length: u32,
    ids_len: u32,
    pad1: [20]u8,
}

// Foreign import
when ODIN_OS == .Linux {
    foreign import libxcb "system:libxcb.so"
} else when ODIN_OS == .FreeBSD || ODIN_OS == .OpenBSD || ODIN_OS == .NetBSD {
    foreign import libxcb "system:libxcb.so"
} else when ODIN_OS == .Darwin {
    foreign import libxcb "system:libxcb.so"
} else {
    foreign import libxcb "system:libxcb.lib"
}

// Extension identifier (extern declaration)
@(link_prefix="xcb_")
@(default_calling_convention="c")

foreign libxcb {
    /**
     * @brief Get XC-MISC extension version
     * @param c The connection
     * @param client_major_version Client major version
     * @param client_minor_version Client minor version
     * @return A cookie
     *
     * Delivers a request to the X server.
     */
    xc_misc_get_version :: proc(c: ^connection_t, client_major_version: u16, client_minor_version: u16) -> xc_misc_get_version_cookie_t ---

    /**
     * @brief Get XC-MISC extension version (unchecked)
     * @param c The connection
     * @param client_major_version Client major version
     * @param client_minor_version Client minor version
     * @return A cookie
     *
     * Delivers a request to the X server.
     *
     * This form can be used only if the request will cause
     * a reply to be generated. Any returned error will be
     * placed in the event queue.
     */
    xc_misc_get_version_unchecked :: proc(c: ^connection_t, client_major_version: u16, client_minor_version: u16) -> xc_misc_get_version_cookie_t ---

    /**
     * @brief Return the reply for get_version
     * @param c The connection
     * @param cookie The cookie
     * @param e The xcb_generic_error_t supplied
     *
     * Returns the reply of the request asked by
     *
     * The parameter @p e supplied to this function must be NULL if
     * xc_misc_get_version_unchecked(). is used.
     * Otherwise, it stores the error if any.
     *
     * The returned value must be freed by the caller using free().
     */
    xc_misc_get_version_reply :: proc(c: ^connection_t, cookie: xc_misc_get_version_cookie_t, e: ^^generic_error_t) -> ^xc_misc_get_version_reply_t ---

    /**
     * @brief Get XID range
     * @param c The connection
     * @return A cookie
     *
     * Delivers a request to the X server.
     */
    xc_misc_get_xid_range :: proc(c: ^connection_t) -> xc_misc_get_xid_range_cookie_t ---

    /**
     * @brief Get XID range (unchecked)
     * @param c The connection
     * @return A cookie
     *
     * Delivers a request to the X server.
     *
     * This form can be used only if the request will cause
     * a reply to be generated. Any returned error will be
     * placed in the event queue.
     */
    xc_misc_get_xid_range_unchecked :: proc(c: ^connection_t) -> xc_misc_get_xid_range_cookie_t ---

    /**
     * @brief Return the reply for get_xid_range
     * @param c The connection
     * @param cookie The cookie
     * @param e The xcb_generic_error_t supplied
     *
     * Returns the reply of the request asked by
     *
     * The parameter @p e supplied to this function must be NULL if
     * xcb_xc_misc_get_xid_range_unchecked(). is used.
     * Otherwise, it stores the error if any.
     *
     * The returned value must be freed by the caller using free().
     */
    xc_misc_get_xid_range_reply :: proc(c: ^connection_t, cookie: xc_misc_get_xid_range_cookie_t, e: ^^generic_error_t) -> ^xc_misc_get_xid_range_reply_t ---

    /**
     * @brief Calculate the size of xc_misc_get_xid_list reply
     * @param _buffer The buffer containing the reply
     * @return The size in bytes
     */
    xc_misc_get_xid_list_sizeof :: proc(_buffer: rawptr) -> _c.int ---

    /**
     * @brief Get XID list
     * @param c The connection
     * @param count Number of XIDs to allocate
     * @return A cookie
     *
     * Delivers a request to the X server.
     */
    xc_misc_get_xid_list :: proc(c: ^connection_t, count: u32) -> xc_misc_get_xid_list_cookie_t ---

    /**
     * @brief Get XID list (unchecked)
     * @param c The connection
     * @param count Number of XIDs to allocate
     * @return A cookie
     *
     * Delivers a request to the X server.
     *
     * This form can be used only if the request will cause
     * a reply to be generated. Any returned error will be
     * placed in the event queue.
     */
    xc_misc_get_xid_list_unchecked :: proc(c: ^connection_t, count: u32) -> xc_misc_get_xid_list_cookie_t ---

    /**
     * @brief Get the IDs array from xc_misc_get_xid_list reply
     * @param R The reply structure
     * @return Pointer to the IDs array
     */
    xc_misc_get_xid_list_ids :: proc(R: ^xc_misc_get_xid_list_reply_t) -> ^u32 ---

    /**
     * @brief Get the length of the IDs array
     * @param R The reply structure
     * @return Length of the IDs array
     */
    xc_misc_get_xid_list_ids_length :: proc(R: ^xc_misc_get_xid_list_reply_t) -> _c.int ---

    /**
     * @brief Get iterator end for the IDs array
     * @param R The reply structure
     * @return Generic iterator pointing to the end
     */
    xc_misc_get_xid_list_ids_end :: proc(R: ^xc_misc_get_xid_list_reply_t) -> generic_iterator_t ---

    /**
     * @brief Return the reply for get_xid_list
     * @param c The connection
     * @param cookie The cookie
     * @param e The xcb_generic_error_t supplied
     *
     * Returns the reply of the request asked by
     *
     * The parameter @p e supplied to this function must be NULL if
     * xcb_xc_misc_get_xid_list_unchecked(). is used.
     * Otherwise, it stores the error if any.
     *
     * The returned value must be freed by the caller using free().
     */
    xc_misc_get_xid_list_reply :: proc(c: ^connection_t, cookie: xc_misc_get_xid_list_cookie_t, e: ^^generic_error_t) -> ^xc_misc_get_xid_list_reply_t ---
}
