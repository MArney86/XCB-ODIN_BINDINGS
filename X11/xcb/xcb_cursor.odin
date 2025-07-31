package xcb

import _c "core:c"

/**
 * @defgroup xcb__cursor_context_t XCB Cursor Functions
 *
 * These functions are the equivalent of libXcursor, but re-implemented for
 * XCB. They respect the user’s configured cursor theme when loading cursors,
 * specified by the X resources setting "Xcursor.theme".
 *
 * Here is how you would use these functions to change the X11 root window
 * cursor to "watch":
 * @code
 * int screennr;
 * xcb_connection_t *conn = xcb_connect(NULL, &screennr);
 * if (conn == NULL || xcb_connection_has_error(conn))
 *     err(EXIT_FAILURE, "Could not connect to X11");
 *
 * xcb_screen_t *screen = xcb_aux_get_screen(conn, screennr);
 * xcb_cursor_context_t *ctx;
 * if (xcb_cursor_context_new(conn, screen, &ctx) < 0)
 *     err(EXIT_FAILURE, "Could not initialize xcb-cursor");
 *
 * xcb_cursor_t cid = xcb_cursor_load_cursor(ctx, "watch");
 *
 * xcb_screen_t *screen = xcb_setup_roots_iterator(xcb_get_setup(conn)).data;
 * xcb_change_window_attributes(conn, screen->root, XCB_CW_CURSOR, (uint32_t[]){ cid });
 * xcb_free_cursor(conn, cid);
 * xcb_flush(conn);
 *
 * xcb_cursor_context_free(ctx);
 * xcb_disconnect(conn);
 * @endcode
 *
 * @{
 */

 /**
 * @struct xcb_cursor_context_t
 * Describes a context for using this library.
 *
 * Create a context with @ref xcb_cursor_context_new (), then load one or more
 * cursors with @ref xcb_cursor_load_cursor () and destroy the context with @ref
 * xcb_cursor_context_free ().
 */
xcb_cursor_context_t :: struct {}

foreign import libxcb "system:libxcb.so"

@(link_prefix="xcb_")
foreign libxcb {
/**
 * Create a new @ref xcb_cursor_context_t.
 *
 * @param conn A working XCB connection, which will be used until you destroy
 * the context with @ref xcb_cursor_context_free ().
 * @param screen The xcb_screen_t to use (e.g. for getting the RESOURCE_MANAGER
 * contents, for creating cursors on, for using the size as fallback when
 * calculating the best cursor size).
 * @param ctx A pointer to an xcb_cursor_context_t* which will be modified to
 * refer to the newly created context.
 * @return 0 on success, a negative error code otherwise.
 *
 * @ingroup xcb_cursor_context_t
 */
cursor_context_new :: proc(conn: ^connection_t, screen: ^screen_t, ctx: ^^xcb_cursor_context_t) -> _c.int ---;

/**
 * Loads the specified cursor, either from the cursor theme or by falling back
 * to the X11 "cursor" font.
 *
 * @param ctx A cursor context, created with @ref xcb_cursor_context_new ()
 * @param name The name of the cursor to load, e.g. "watch".
 * @returns The ID of the created cursor. When you are done using it, use
 * xcb_free_cursor. Calling @ref xcb_cursor_context_free () will NOT free the
 * created cursor.
 *
 */
xcb_cursor_load_cursor :: proc (ctx: ^cursor_context_t, name: ^_c.char) -> cursor_t ---

/**
 * Frees the @ref xcb_cursor_context_t.
 *
 * @param ctx The context to free.
 *
 */
xcb_cursor_context_free :: proc (ctx: ^cursor_context_t)

}