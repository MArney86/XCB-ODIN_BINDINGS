package xcb

import _c "core:c"


// xcb_out.c

protocol_request_t :: struct {
    count: _c.size_t,
    ext: ^extension_t,
    opcode: u8,
    isvoid: u8,
}

send_request_flags_t :: enum _c.int {
    XCB_REQUEST_CHECKED = 1 << 0,
    XCB_REQUEST_RAW = 1 << 1,
    XCB_REQUEST_DISCARD_REPLY = 1 << 2,
    XCB_REQUEST_REPLY_FDS = 1 << 3,
}

// Foreign function declarations

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
    /**
     * @brief Send a request to the server.
     * @param c The connection to the X server.
     * @param flags A combination of flags from the xcb_send_request_flags_t enumeration.
     * @param vector Data to send; must have two iovecs before start for internal use.
     * @param request Information about the request to be sent.
     * @return The request's sequence number on success, 0 otherwise.
     *
     * This function sends a new request to the X server. The data of the request is
     * given as an array of @c iovecs in the @p vector argument. The length of that
     * array and the necessary management information are given in the @p request
     * argument.
     *
     * When this function returns, the request might or might not be sent already.
     * Use xcb_flush() to make sure that it really was sent.
     *
     * Please note that this function is not the preferred way for sending requests.
     * It's better to use the generated wrapper functions.
     *
     * Please note that xcb might use index -1 and -2 of the @p vector array internally,
     * so they must be valid!
     */
    send_request :: proc(c: ^connection_t, flags: _c.int, vector: ^iovec, request: ^protocol_request_t) -> _c.uint ---

    /**
     * @brief Send a request to the server.
     * @param c The connection to the X server.
     * @param flags A combination of flags from the xcb_send_request_flags_t enumeration.
     * @param vector Data to send; must have two iovecs before start for internal use.
     * @param request Information about the request to be sent.
     * @param num_fds Number of additional file descriptors to send to the server
     * @param fds Additional file descriptors that should be send to the server.
     * @return The request's sequence number on success, 0 otherwise.
     *
     * This function sends a new request to the X server. The data of the request is
     * given as an array of @c iovecs in the @p vector argument. The length of that
     * array and the necessary management information are given in the @p request
     * argument.
     *
     * If @p num_fds is non-zero, @p fds points to an array of file descriptors that
     * will be sent to the X server along with this request. After this function
     * returns, all file descriptors sent are owned by xcb and will be closed
     * eventually.
     *
     * When this function returns, the request might or might not be sent already.
     * Use xcb_flush() to make sure that it really was sent.
     *
     * Please note that this function is not the preferred way for sending requests.
     *
     * Please note that xcb might use index -1 and -2 of the @p vector array internally,
     * so they must be valid!
     */
    send_request_with_fds :: proc(c: ^connection_t, flags: _c.int, vector: ^iovec, request: ^protocol_request_t, num_fds: _c.uint, fds: ^_c.int) -> _c.uint ---

    /**
     * @brief Send a request to the server, with 64-bit sequence number returned.
     * @param c The connection to the X server.
     * @param flags A combination of flags from the xcb_send_request_flags_t enumeration.
     * @param vector Data to send; must have two iovecs before start for internal use.
     * @param request Information about the request to be sent.
     * @return The request's sequence number on success, 0 otherwise.
     *
     * This function sends a new request to the X server. The data of the request is
     * given as an array of @c iovecs in the @p vector argument. The length of that
     * array and the necessary management information are given in the @p request
     * argument.
     *
     * When this function returns, the request might or might not be sent already.
     * Use xcb_flush() to make sure that it really was sent.
     *
     * Please note that this function is not the preferred way for sending requests.
     * It's better to use the generated wrapper functions.
     *
     * Please note that xcb might use index -1 and -2 of the @p vector array internally,
     * so they must be valid!
     */
    send_request64 :: proc(c: ^connection_t, flags: _c.int, vector: ^iovec, request: ^protocol_request_t) -> u64 ---

    /**
     * @brief Send a request to the server, with 64-bit sequence number returned.
     * @param c The connection to the X server.
     * @param flags A combination of flags from the xcb_send_request_flags_t enumeration.
     * @param vector Data to send; must have two iovecs before start for internal use.
     * @param request Information about the request to be sent.
     * @param num_fds Number of additional file descriptors to send to the server
     * @param fds Additional file descriptors that should be send to the server.
     * @return The request's sequence number on success, 0 otherwise.
     *
     * This function sends a new request to the X server. The data of the request is
     * given as an array of @c iovecs in the @p vector argument. The length of that
     * array and the necessary management information are given in the @p request
     * argument.
     *
     * If @p num_fds is non-zero, @p fds points to an array of file descriptors that
     * will be sent to the X server along with this request. After this function
     * returns, all file descriptors sent are owned by xcb and will be closed
     * eventually.
     *
     * When this function returns, the request might or might not be sent already.
     * Use xcb_flush() to make sure that it really was sent.
     *
     * Please note that this function is not the preferred way for sending requests.
     * It's better to use the generated wrapper functions.
     *
     * Please note that xcb might use index -1 and -2 of the @p vector array internally,
     * so they must be valid!
     */
    send_request_with_fds64 :: proc(c: ^connection_t, flags: _c.int, vector: ^iovec, request: ^protocol_request_t, num_fds: _c.uint, fds: ^_c.int) -> u64 ---

    /**
     * @brief Send a file descriptor to the server in the next call to xcb_send_request.
     * @param c The connection to the X server.
     * @param fd The file descriptor to send.
     *
     * After this function returns, the file descriptor given is owned by xcb and
     * will be closed eventually.
     *
     * @deprecated This function cannot be used in a thread-safe way. Two threads
     * that run xcb_send_fd(); xcb_send_request(); could mix up their file
     * descriptors. Instead, xcb_send_request_with_fds() should be used.
     */
    send_fd :: proc(c: ^connection_t, fd: _c.int) ---

    /**
     * @brief Take over the write side of the socket
     * @param c The connection to the X server.
     * @param return_socket Callback function that will be called when xcb wants
     *                        to use the socket again.
     * @param closure Argument to the callback function.
     * @param flags A combination of flags from the xcb_send_request_flags_t enumeration.
     * @param sent Location to the sequence number of the last sequence request.
     *              Must not be NULL.
     * @return 1 on success, else 0.
     *
     * xcb_take_socket allows external code to ask XCB for permission to
     * take over the write side of the socket and send raw data with
     * xcb_writev. xcb_take_socket provides the sequence number of the last
     * request XCB sent. The caller of xcb_take_socket must supply a
     * callback which XCB can call when it wants the write side of the
     * socket back to make a request. This callback synchronizes with the
     * external socket owner and flushes any output queues if appropriate.
     * If you are sending requests which won't cause a reply, please note the
     * comment for xcb_writev which explains some sequence number wrap issues.
     *
     * All replies that are generated while the socket is owned externally have
     * @p flags applied to them. For example, use XCB_REQUEST_CHECK if you don't
     * want errors to go to xcb's normal error handling, but instead having to be
     * picked up via xcb_wait_for_reply(), xcb_poll_for_reply() or
     * xcb_request_check().
     */
    take_socket :: proc(c: ^connection_t, return_socket: proc(closure: rawptr), closure: rawptr, flags: _c.int, sent: ^u64) -> _c.int ---

    /**
     * @brief Send raw data to the X server.
     * @param c The connection to the X server.
     * @param vector Array of data to be sent.
     * @param count Number of entries in @p vector.
     * @param requests Number of requests that are being sent.
     * @return 1 on success, else 0.
     *
     * You must own the write-side of the socket (you've called
     * xcb_take_socket, and haven't returned from return_socket yet) to call
     * xcb_writev. Also, the iovec must have at least 1 byte of data in it.
     * You have to make sure that xcb can detect sequence number wraps correctly.
     * This means that the first request you send after xcb_take_socket must cause a
     * reply (e.g. just insert a GetInputFocus request). After every (1 << 16) - 1
     * requests without a reply, you have to insert a request which will cause a
     * reply. You can again use GetInputFocus for this. You do not have to wait for
     * any of the GetInputFocus replies, but can instead handle them via
     * xcb_discard_reply().
     */
    writev :: proc(c: ^connection_t, vector: ^iovec, count: _c.int, requests: u64) -> _c.int ---

    // xcb_in.c

    /**
     * @brief Wait for the reply of a given request.
     * @param c The connection to the X server.
     * @param request Sequence number of the request as returned by xcb_send_request().
     * @param e Location to store errors in, or NULL. Ignored for unchecked requests.
     *
     * Returns the reply to the given request or returns null in the event of
     * errors. Blocks until the reply or error for the request arrives, or an I/O
     * error occurs.
     */
    wait_for_reply :: proc(c: ^connection_t, request: _c.uint, e: ^^generic_error_t) -> rawptr ---

    /**
     * @brief Wait for the reply of a given request, with 64-bit sequence number
     * @param c The connection to the X server.
     * @param request 64-bit sequence number of the request as returned by xcb_send_request64().
     * @param e Location to store errors in, or NULL. Ignored for unchecked requests.
     *
     * Returns the reply to the given request or returns null in the event of
     * errors. Blocks until the reply or error for the request arrives, or an I/O
     * error occurs.
     *
     * Unlike its xcb_wait_for_reply() counterpart, the given sequence number is not
     * automatically "widened" to 64-bit.
     */
    wait_for_reply64 :: proc(c: ^connection_t, request: u64, e: ^^generic_error_t) -> rawptr ---

    /**
     * @brief Poll for the reply of a given request.
     * @param c The connection to the X server.
     * @param request Sequence number of the request as returned by xcb_send_request().
     * @param reply Location to store the reply in, must not be NULL.
     * @param error Location to store errors in, or NULL. Ignored for unchecked requests.
     * @return 1 when the reply to the request was returned, else 0.
     *
     * Checks if the reply to the given request already received. Does not block.
     */
    poll_for_reply :: proc(c: ^connection_t, request: _c.uint, reply: ^rawptr, error: ^^generic_error_t) -> _c.int ---

    /**
     * @brief Poll for the reply of a given request, with 64-bit sequence number.
     * @param c The connection to the X server.
     * @param request 64-bit sequence number of the request as returned by xcb_send_request().
     * @param reply Location to store the reply in, must not be NULL.
     * @param error Location to store errors in, or NULL. Ignored for unchecked requests.
     * @return 1 when the reply to the request was returned, else 0.
     *
     * Checks if the reply to the given request already received. Does not block.
     *
     * Unlike its xcb_poll_for_reply() counterpart, the given sequence number is not
     * automatically "widened" to 64-bit.
     */
    poll_for_reply64 :: proc(c: ^connection_t, request: u64, reply: ^rawptr, error: ^^generic_error_t) -> _c.int ---

    /**
     * @brief Don't use this, only needed by the generated code.
     * @param c The connection to the X server.
     * @param reply A reply that was received from the server
     * @param replylen The size of the reply.
     * @return Pointer to the location where received file descriptors are stored.
     */
    get_reply_fds :: proc(c: ^connection_t, reply: rawptr, replylen: _c.size_t) -> ^_c.int ---

    // xcb_util.c

    /**
     * @param list The base of an array
     * @param len The length of the array
     * @return The sum of all entries in the array.
     */
    sumof :: proc(list: ^u8, len: _c.int) -> _c.int ---
}

// I need to define iovec struct since it's used in the functions above
// This is typically from sys/uio.h
iovec :: struct {
    iov_base: rawptr,
    iov_len: _c.size_t,
}
