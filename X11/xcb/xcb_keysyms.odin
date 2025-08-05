package xcb

import _c "core:c"

/**
 * XCB Keysyms Library
 * 
 * This library provides convenience functions for handling keyboard symbols
 * in XCB applications. It allows conversion between keycodes and keysyms.
 */

// Opaque structure for key symbols context
key_symbols_t :: struct {}

// In XCB, key_release_event_t is the same as key_press_event_t
key_release_event_t :: key_press_event_t

foreign import libxcb_keysyms "system:xcb-keysyms"

@(link_prefix="xcb_")
@(default_calling_convention="c")
foreign libxcb_keysyms {
    /**
     * @brief Allocate and initialize a key symbols context.
     * @param c The XCB connection.
     * @return A pointer to the key symbols context, or NULL on error.
     */
    key_symbols_alloc :: proc(c: ^connection_t) -> ^key_symbols_t ---
    /**
     * @brief Free a key symbols context.
     * @param syms The key symbols context to free.
     */
    key_symbols_free :: proc(syms: ^key_symbols_t) ---
    /**
     * @brief Get the keysym associated with a keycode.
     * @param syms The key symbols context.
     * @param keycode The keycode to look up.
     * @param col The column (modifier state) to use.
     * @return The keysym, or NO_SYMBOL if not found.
     */
    key_symbols_get_keysym :: proc(syms: ^key_symbols_t, keycode: keycode_t, col: _c.int) -> keysym_t ---
    /**
     * @brief Get the keycodes attached to a keysym.
     * There can be several values, so what is returned is an array of keycode
     * terminated by NO_SYMBOL. You are responsible for freeing it.
     * Be aware that this function can be slow. It will convert all
     * combinations of all available keycodes to keysyms to find the ones that
     * match.
     * @param syms Key symbols context.
     * @param keysym The keysym to look for.
     * @return A NO_SYMBOL terminated array of keycode, or NULL if nothing is found.
     */
    key_symbols_get_keycode :: proc(syms: ^key_symbols_t, keysym: keysym_t) -> ^keycode_t ---
    /**
     * @brief Look up the keysym associated with a key press event.
     * @param syms The key symbols context.
     * @param event The key press event.
     * @param col The column (modifier state) to use.
     * @return The keysym, or NO_SYMBOL if not found.
     */
    key_press_lookup_keysym :: proc(syms: ^key_symbols_t, event: ^key_press_event_t, col: _c.int) -> keysym_t ---

    /**
     * @brief Look up the keysym associated with a key release event.
     * @param syms The key symbols context.
     * @param event The key release event.
     * @param col The column (modifier state) to use.
     * @return The keysym, or NO_SYMBOL if not found.
     */
    key_release_lookup_keysym :: proc(syms: ^key_symbols_t, event: ^key_release_event_t, col: _c.int) -> keysym_t ---

    /**
     * @brief Refresh the keyboard mapping.
     * @param syms The key symbols context.
     * @param event The mapping notify event.
     * @return 1 if the mapping was refreshed, 0 otherwise.
     */
    refresh_keyboard_mapping :: proc(syms: ^key_symbols_t, event: ^mapping_notify_event_t) -> _c.int ---

    // Tests for classes of symbols

    /**
     * @brief Test if a keysym is a keypad key.
     * @param keysym The keysym to test.
     * @return Non-zero if it's a keypad key, 0 otherwise.
     */
    is_keypad_key :: proc(keysym: keysym_t) -> _c.int ---

    /**
     * @brief Test if a keysym is a private keypad key.
     * @param keysym The keysym to test.
     * @return Non-zero if it's a private keypad key, 0 otherwise.
     */
    is_private_keypad_key :: proc(keysym: keysym_t) -> _c.int ---

    /**
     * @brief Test if a keysym is a cursor key.
     * @param keysym The keysym to test.
     * @return Non-zero if it's a cursor key, 0 otherwise.
     */
    is_cursor_key :: proc(keysym: keysym_t) -> _c.int ---

    /**
     * @brief Test if a keysym is a PF key.
     * @param keysym The keysym to test.
     * @return Non-zero if it's a PF key, 0 otherwise.
     */
    is_pf_key :: proc(keysym: keysym_t) -> _c.int ---

    /**
     * @brief Test if a keysym is a function key.
     * @param keysym The keysym to test.
     * @return Non-zero if it's a function key, 0 otherwise.
     */
    is_function_key :: proc(keysym: keysym_t) -> _c.int ---

    /**
     * @brief Test if a keysym is a miscellaneous function key.
     * @param keysym The keysym to test.
     * @return Non-zero if it's a miscellaneous function key, 0 otherwise.
     */
    is_misc_function_key :: proc(keysym: keysym_t) -> _c.int ---

    /**
     * @brief Test if a keysym is a modifier key.
     * @param keysym The keysym to test.
     * @return Non-zero if it's a modifier key, 0 otherwise.
     */
    is_modifier_key :: proc(keysym: keysym_t) -> _c.int ---
}
 