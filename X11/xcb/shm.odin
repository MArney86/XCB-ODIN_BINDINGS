package xcb

import _c "core:c"

SHM_COMPLETION :: 0
SHM_BAD_SEG :: 0
SHM_QUERY_VERSION :: 0
SHM_ATTACH :: 1
SHM_DETACH :: 2
SHM_PUT_IMAGE :: 3
SHM_GET_IMAGE :: 4
SHM_CREATE_PIXMAP :: 5
SHM_ATTACH_FD :: 6
SHM_CREATE_SEGMENT :: 7

shm_seg_t :: u32
shm_bad_seg_error_t :: value_error_t

shm_seg_iterator_t :: struct {
    data: ^shm_seg_t,
    rem: _c.int,
    index: _c.int,
}
shm_completion_event_t :: struct {
    response_type: u8,
    pad0: u8,
    sequence: u16,
    drawable: drawable_t,
    minor_event: u16,
    major_event: u8,
    pad1: u8,
    shmseg: shm_seg_t,
    offset: u32,
}

shm_query_version_cookie_t :: struct {
    sequence: _c.uint,
}

shm_query_version_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
}

shm_query_version_reply_t :: struct {
    response_type: u8,
    shared_pixmaps: u8,
    sequence: u16,
    length: u32,
    major_version: u16,
    minor_version: u16,
    uid: u16,
    gid: u16,
    pixmap_format: u8,
    pad0: [15]u8,
}

shm_attach_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    shmseg: shm_seg_t,
    shmid: u32,
    read_only: u8,
    pad0: [3]u8,
}

shm_detach_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    shmseg: shm_seg_t,
}

shm_put_image_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    drawable: drawable_t,
    gc: gcontext_t,
    total_width: u16,
    total_height: u16,
    src_x: u16,
    src_y: u16,
    src_width: u16,
    src_height: u16,
    dst_x: i16,
    dst_y: i16,
    depth: u8,
    format: u8,
    send_event: u8,
    pad0: [1]u8,
    shmseg: shm_seg_t,
    offset: u32,
}

shm_get_image_cookie_t :: struct {
    sequence: u32,
}

shm_get_image_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    drawable: drawable_t,
    x: i16,
    y: i16,
    width: u16,
    height: u16,
    plane_mask: u32,
    format: u8,
    pad0: [3]u8,
    shmseg: shm_seg_t,
    offset: u32,
}

shm_get_image_reply_t :: struct {
    response_type: u8,
    depth: u8,
    sequence: u16,
    length: u32,
    visual: visualid_t,
    size: u32,
}

shm_create_pixmap_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    pid: pixmap_t,
    drawable: drawable_t,
    width: u16,
    height: u16,
    depth: u8,
    pad0: [3]u8,
    shmseg: shm_seg_t,
    offset: u32,
}

shm_attach_fd_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    shmseg: shm_seg_t,
    read_only: u8,
    pad0: [3]u8,
}

shm_create_segment_cookie_t :: struct {
    sequence: u32,
}

shm_create_segment_request_t :: struct {
    major_opcode: u8,
    minor_opcode: u8,
    length: u16,
    shmseg: shm_seg_t,
    size: u32,
    read_only: u8,
    pad0: [3]u8,
}

shm_create_segment_reply_t :: struct {
    response_type: u8,
    nfd: u8,
    sequence: u16,
    length: u32,
    pad0: [24]u8,
}

foreign import libxcb_shm "system:libxcb-shm.so"

@(link_prefix="xcb_")
@(default_calling_convention="c")
foreign libxcb_shm {

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_shm_seg_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_shm_seg_t)
 */
shm_seg_next :: proc(i: ^shm_seg_iterator_t) ---
/**
 * Return the iterator pointing to the last element
 * @param i An xcb_shm_seg_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */
shm_seg_end :: proc(i: shm_seg_iterator_t) -> generic_iterator_t ---
/**
 * @brief Query the version of the MIT-SHM extension.
 *
 * @param c The connection
 * @return A cookie
 *
 * This is used to determine the version of the MIT-SHM extension supported by the
 * X server.  Clients MUST NOT make other requests in this extension until a reply
 * to this requests indicates the X server supports them.
 *
 */
shm_query_version :: proc(c: ^connection_t) -> shm_query_version_cookie_t ---
/**
 * @brief Query the version of the MIT-SHM extension.
 *
 * @param c The connection
 * @return A cookie
 *
 * This is used to determine the version of the MIT-SHM extension supported by the
 * X server.  Clients MUST NOT make other requests in this extension until a reply
 * to this requests indicates the X server supports them.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
shm_query_version_unchecked :: proc(c: ^connection_t) -> shm_query_version_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_shm_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

shm_query_version_reply :: proc(c: ^connection_t, cookie: shm_query_version_cookie_t, e: ^^generic_error_t) -> ^shm_query_version_reply_t ---
/**
 * @brief Attach a System V shared memory segment.
 *
 * @param c The connection
 * @param shmseg A shared memory segment ID created with xcb_generate_id().
 * @param shmid The System V shared memory segment the server should map.
 * @param read_only True if the segment shall be mapped read only by the X11 server, otherwise false.
 * @return A cookie
 *
 * Attach a System V shared memory segment to the server.  This will fail unless
 * the server has permission to map the segment.  The client may destroy the segment
 * as soon as it receives a XCB_SHM_COMPLETION event with the shmseg value in this
 * request and with the appropriate serial number.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
shm_attach_checked :: proc(c: ^connection_t, shmseg: shm_seg_t, shmid: u32, read_only: u8) -> void_cookie_t ---
/**
 * @brief Attach a System V shared memory segment.
 *
 * @param c The connection
 * @param shmseg A shared memory segment ID created with xcb_generate_id().
 * @param shmid The System V shared memory segment the server should map.
 * @param read_only True if the segment shall be mapped read only by the X11 server, otherwise false.
 * @return A cookie
 *
 * Attach a System V shared memory segment to the server.  This will fail unless
 * the server has permission to map the segment.  The client may destroy the segment
 * as soon as it receives a XCB_SHM_COMPLETION event with the shmseg value in this
 * request and with the appropriate serial number.
 *
 */
shm_attach :: proc(c: ^connection_t, shmseg: shm_seg_t, shmid: u32, read_only: u8) -> void_cookie_t ---
/**
 * @brief Destroys the specified shared memory segment.
 *
 * @param c The connection
 * @param shmseg The segment to be destroyed.
 * @return A cookie
 *
 * Destroys the specified shared memory segment.  This will never fail unless the
 * segment number is incorrect.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
shm_detach_checked :: proc(c: ^connection_t, shmseg: shm_seg_t) -> void_cookie_t ---
/**
 * @brief Destroys the specified shared memory segment.
 *
 * @param c The connection
 * @param shmseg The segment to be destroyed.
 * @return A cookie
 *
 * Destroys the specified shared memory segment.  This will never fail unless the
 * segment number is incorrect.
 *
 */
shm_detach :: proc(c: ^connection_t, shmseg: shm_seg_t) -> void_cookie_t ---
/**
 * @brief Copy data from the shared memory to the specified drawable.
 *
 * @param c The connection
 * @param drawable The drawable to draw to.
 * @param gc The graphics context to use.
 * @param total_width The total width of the source image.
 * @param total_height The total height of the source image.
 * @param src_x The source X coordinate of the sub-image to copy.
 * @param src_y The source Y coordinate of the sub-image to copy.
 * @param src_width The width, in source image coordinates, of the data to copy from the source.
 * The X server will use this to determine the amount of data to copy.  The amount
 * of the destination image that is overwritten is determined automatically.
 * @param src_height The height, in source image coordinates, of the data to copy from the source.
 * The X server will use this to determine the amount of data to copy.  The amount
 * of the destination image that is overwritten is determined automatically.
 * @param dst_x The X coordinate on the destination drawable to copy to.
 * @param dst_y The Y coordinate on the destination drawable to copy to.
 * @param depth The depth to use.
 * @param format The format of the image being drawn.  If it is XYBitmap, depth must be 1, or a
 * “BadMatch” error results.  The foreground pixel in the GC determines the source
 * for the one bits in the image, and the background pixel determines the source
 * for the zero bits.  For XYPixmap and ZPixmap, the depth must match the depth of
 * the drawable, or a “BadMatch” error results.
 * @param send_event True if the server should send an XCB_SHM_COMPLETION event when the blit
 * completes.
 * @param offset The offset that the source image starts at.
 * @return A cookie
 *
 * Copy data from the shared memory to the specified drawable.  The amount of bytes
 * written to the destination image is always equal to the number of bytes read
 * from the shared memory segment.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
shm_put_image_checked :: proc(c: ^connection_t, drawable: drawable_t, gc: gcontext_t, total_width: u16, total_height: u16, src_x: u16, src_y: u16, src_width: u16, src_height: u16, dst_x: i16, dst_y: i16, depth: u8, format: u8, send_event: u8, shmseg: shm_seg_t, offset: u32) -> void_cookie_t ---  
/**
 * @brief Copy data from the shared memory to the specified drawable.
 *
 * @param c The connection
 * @param drawable The drawable to draw to.
 * @param gc The graphics context to use.
 * @param total_width The total width of the source image.
 * @param total_height The total height of the source image.
 * @param src_x The source X coordinate of the sub-image to copy.
 * @param src_y The source Y coordinate of the sub-image to copy.
 * @param src_width The width, in source image coordinates, of the data to copy from the source.
 * The X server will use this to determine the amount of data to copy.  The amount
 * of the destination image that is overwritten is determined automatically.
 * @param src_height The height, in source image coordinates, of the data to copy from the source.
 * The X server will use this to determine the amount of data to copy.  The amount
 * of the destination image that is overwritten is determined automatically.
 * @param dst_x The X coordinate on the destination drawable to copy to.
 * @param dst_y The Y coordinate on the destination drawable to copy to.
 * @param depth The depth to use.
 * @param format The format of the image being drawn.  If it is XYBitmap, depth must be 1, or a
 * “BadMatch” error results.  The foreground pixel in the GC determines the source
 * for the one bits in the image, and the background pixel determines the source
 * for the zero bits.  For XYPixmap and ZPixmap, the depth must match the depth of
 * the drawable, or a “BadMatch” error results.
 * @param send_event True if the server should send an XCB_SHM_COMPLETION event when the blit
 * completes.
 * @param offset The offset that the source image starts at.
 * @return A cookie
 *
 * Copy data from the shared memory to the specified drawable.  The amount of bytes
 * written to the destination image is always equal to the number of bytes read
 * from the shared memory segment.
 *
 */
shm_put_image :: proc(c: ^connection_t, drawable: drawable_t, gc: gcontext_t, total_width: u16, total_height: u16, src_x: u16, src_y: u16, src_width: u16, src_height: u16, dst_x: i16, dst_y: i16, depth: u8, format: u8, send_event: u8, shmseg: shm_seg_t, offset: u32) -> void_cookie_t ---
/**
 * @brief Copies data from the specified drawable to the shared memory segment.
 *
 * @param c The connection
 * @param drawable The drawable to copy the image out of.
 * @param x The X coordinate in the drawable to begin copying at.
 * @param y The Y coordinate in the drawable to begin copying at.
 * @param width The width of the image to copy.
 * @param height The height of the image to copy.
 * @param plane_mask A mask that determines which planes are used.
 * @param format The format to use for the copy (???).
 * @param shmseg The destination shared memory segment.
 * @param offset The offset in the shared memory segment to copy data to.
 * @return A cookie
 *
 * Copy data from the specified drawable to the shared memory segment.  The amount
 * of bytes written to the destination image is always equal to the number of bytes
 * read from the shared memory segment.
 *
 */
xcb_shm_get_image :: proc(c: ^connection_t, drawable: drawable_t, x: i16, y: i16, width: u16, height: u16, plane_mask: u32, format: u8, shmseg: shm_seg_t, offset: u32) -> shm_get_image_cookie_t ---
/**
 * @brief Copies data from the specified drawable to the shared memory segment.
 *
 * @param c The connection
 * @param drawable The drawable to copy the image out of.
 * @param x The X coordinate in the drawable to begin copying at.
 * @param y The Y coordinate in the drawable to begin copying at.
 * @param width The width of the image to copy.
 * @param height The height of the image to copy.
 * @param plane_mask A mask that determines which planes are used.
 * @param format The format to use for the copy (???).
 * @param shmseg The destination shared memory segment.
 * @param offset The offset in the shared memory segment to copy data to.
 * @return A cookie
 *
 * Copy data from the specified drawable to the shared memory segment.  The amount
 * of bytes written to the destination image is always equal to the number of bytes
 * read from the shared memory segment.
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
shm_get_image_unchecked :: proc(c: ^connection_t, drawable: drawable_t, x: i16, y: i16, width: u16, height: u16, plane_mask: u32, format: u8, shmseg: shm_seg_t, offset: u32) -> shm_get_image_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_shm_get_image_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
shm_get_image_reply :: proc(c: ^connection_t, cookie: shm_get_image_cookie_t, e: ^^generic_error_t) -> ^shm_get_image_reply_t ---
/**
 * @brief Create a pixmap backed by shared memory.
 *
 * @param c The connection
 * @param pid A pixmap ID created with xcb_generate_id().
 * @param drawable The drawable to create the pixmap in.
 * @param width The width of the pixmap to create.  Must be nonzero, or a Value error results.
 * @param height The height of the pixmap to create.  Must be nonzero, or a Value error results.
 * @param depth The depth of the pixmap to create.  Must be nonzero, or a Value error results.
 * @param shmseg The shared memory segment to use to create the pixmap.
 * @param offset The offset in the segment to create the pixmap at.
 * @return A cookie
 *
 * Create a pixmap backed by shared memory.  Writes to the shared memory will be
 * reflected in the contents of the pixmap, and writes to the pixmap will be
 * reflected in the contents of the shared memory.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
shm_create_pixmap_checked :: proc(c: ^connection_t, pid: pixmap_t, drawable: drawable_t, width: u16, height: u16, depth: u8, shmseg: shm_seg_t, offset: u32) -> void_cookie_t ---
/**
 * @brief Create a pixmap backed by shared memory.
 *
 * @param c The connection
 * @param pid A pixmap ID created with xcb_generate_id().
 * @param drawable The drawable to create the pixmap in.
 * @param width The width of the pixmap to create.  Must be nonzero, or a Value error results.
 * @param height The height of the pixmap to create.  Must be nonzero, or a Value error results.
 * @param depth The depth of the pixmap to create.  Must be nonzero, or a Value error results.
 * @param shmseg The shared memory segment to use to create the pixmap.
 * @param offset The offset in the segment to create the pixmap at.
 * @return A cookie
 *
 * Create a pixmap backed by shared memory.  Writes to the shared memory will be
 * reflected in the contents of the pixmap, and writes to the pixmap will be
 * reflected in the contents of the shared memory.
 *
 */
shm_create_pixmap :: proc(c: ^connection_t, pid: pixmap_t, drawable: drawable_t, width: u16, height: u16, depth: u8, shmseg: shm_seg_t, offset: u32) -> void_cookie_t ---
/**
 * @brief Create a shared memory segment
 *
 * @param c The connection
 * @param shmseg A shared memory segment ID created with xcb_generate_id().
 * @param shm_fd The file descriptor the server should mmap().
 * @param read_only True if the segment shall be mapped read only by the X11 server, otherwise false.
 * @return A cookie
 *
 * Create a shared memory segment.  The file descriptor will be mapped at offset
 * zero, and the size will be obtained using fstat().  A zero size will result in a
 * Value error.
 *
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */
shm_attach_fd_checked :: proc(c: ^connection_t, shmseg: shm_seg_t, shm_fd: i32, read_only: u8) -> void_cookie_t ---
/**
 * @brief Create a shared memory segment
 *
 * @param c The connection
 * @param shmseg A shared memory segment ID created with xcb_generate_id().
 * @param shm_fd The file descriptor the server should mmap().
 * @param read_only True if the segment shall be mapped read only by the X11 server, otherwise false.
 * @return A cookie
 *
 * Create a shared memory segment.  The file descriptor will be mapped at offset
 * zero, and the size will be obtained using fstat().  A zero size will result in a
 * Value error.
 *
 */
shm_attach_fd :: proc(c: ^connection_t, shmseg: shm_seg_t, shm_fd: i32, read_only: u8) -> void_cookie_t ---
/**
 * @brief Asks the server to allocate a shared memory segment.
 *
 * @param c The connection
 * @param shmseg A shared memory segment ID created with xcb_generate_id().
 * @param size The size of the segment to create.
 * @param read_only True if the server should map the segment read-only; otherwise false.
 * @return A cookie
 *
 * Asks the server to allocate a shared memory segment.  The server’s reply will
 * include a file descriptor for the client to pass to mmap().
 *
 */
shm_create_segment :: proc(c: ^connection_t, shmseg: shm_seg_t, size: u32, read_only: u8) -> void_cookie_t ---
/**
 * @brief Asks the server to allocate a shared memory segment.
 *
 * @param c The connection
 * @param shmseg A shared memory segment ID created with xcb_generate_id().
 * @param size The size of the segment to create.
 * @param read_only True if the server should map the segment read-only; otherwise false.
 * @return A cookie
 *
 * Asks the server to allocate a shared memory segment.  The server’s reply will
 * include a file descriptor for the client to pass to mmap().
 *
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */
shm_create_segment_unchecked :: proc(c: ^connection_t, shmseg: shm_seg_t, size: u32, read_only: u8) -> shm_create_segment_cookie_t ---
/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 *
 * The parameter @p e supplied to this function must be NULL if
 * xcb_shm_create_segment_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */
shm_create_segment_reply :: proc(c: ^connection_t, cookie: shm_create_segment_cookie_t, e: ^^generic_error_t) -> ^shm_create_segment_reply_t ---
/**
 * Return the reply fds
 * @param c      The connection
 * @param reply  The reply
 *
 * Returns a pointer to the array of reply fds of the reply.
 *
 * The returned value points into the reply and must not be free().
 * The fds are not managed by xcb. You must close() them before freeing the reply.
 */
shm_create_segment_reply_fds :: proc(c: ^connection_t, reply: ^shm_create_segment_reply_t) -> ^_c.int ---
}