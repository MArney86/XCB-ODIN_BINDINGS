package xcb

import _c "core:c"
import "core:mem"

/**
 * @defgroup _ewmh_t XCB EWMH Functions
 *
 * These functions  allow easy handling  of the protocol  described in
 * the Extended Window Manager  Hints specification. The list of Atoms
 * is stored as an M4 file  (atomlist.m4) where each Atom is stored as
 * a variable defined in the header.
 *
 * Replies of requests generating a  list of pointers (such as list of
 * windows, atoms and UTF-8 strings)  are simply stored as a structure
 * holding  the XCB  reply which  should (usually)  never  be accessed
 * directly and has  to be wipe afterwards. This  structure provides a
 * convenient access to the list given in the reply itself.
 *
 * @{
 */

 /**
 * @brief Hold EWMH information specific to a screen
 */
ewmh_connection_t :: struct {
    /** The X connection */
    connection: ^connection_t,
    /** The screens on this connection */
    screens: ^^screen_t,
    nb_screens: _c.int,
    /** _NET_WM_CM_Sn atoms depending on the number of screens */
    _NET_WM_CM_Sn: ^^atom_t,
    /** The EWMH atoms of this connection */
    _NET_SUPPORTED: atom_t,
    _NET_CLIENT_LIST: atom_t,
    _NET_CLIENT_LIST_STACKING: atom_t,
    _NET_NUMBER_OF_DESKTOPS: atom_t,
    _NET_DESKTOP_GEOMETRY: atom_t,
    _NET_DESKTOP_VIEWPORT: atom_t,
    _NET_CURRENT_DESKTOP: atom_t,
    _NET_DESKTOP_NAMES: atom_t,
    _NET_ACTIVE_WINDOW: atom_t,
    _NET_WORKAREA: atom_t,
    _NET_SUPPORTING_WM_CHECK: atom_t,
    _NET_VIRTUAL_ROOTS: atom_t,
    _NET_DESKTOP_LAYOUT: atom_t,
    _NET_SHOWING_DESKTOP: atom_t,
    _NET_CLOSE_WINDOW: atom_t,
    _NET_MOVERESIZE_WINDOW: atom_t,
    _NET_WM_MOVERESIZE: atom_t,
    _NET_RESTACK_WINDOW: atom_t,
    _NET_REQUEST_FRAME_EXTENTS: atom_t,
    _NET_WM_NAME: atom_t,
    _NET_WM_VISIBLE_NAME: atom_t,
    _NET_WM_ICON_NAME: atom_t,
    _NET_WM_VISIBLE_ICON_NAME: atom_t,
    _NET_WM_DESKTOP: atom_t,
    _NET_WM_WINDOW_TYPE: atom_t,
    _NET_WM_STATE: atom_t,
    _NET_WM_ALLOWED_ACTIONS: atom_t,
    _NET_WM_STRUT: atom_t,
    _NET_WM_STRUT_PARTIAL: atom_t,
    _NET_WM_ICON_GEOMETRY: atom_t,
    _NET_WM_ICON: atom_t,
    _NET_WM_PID: atom_t,
    _NET_WM_HANDLED_ICONS: atom_t,
    _NET_WM_USER_TIME: atom_t,
    _NET_WM_USER_TIME_WINDOW: atom_t,
    _NET_FRAME_EXTENTS: atom_t,
    _NET_WM_PING: atom_t,
    _NET_WM_SYNC_REQUEST: atom_t,
    _NET_WM_SYNC_REQUEST_COUNTER: atom_t,
    _NET_WM_FULLSCREEN_MONITORS: atom_t,
    _NET_WM_FULL_PLACEMENT: atom_t,
    UTF8_STRING: atom_t,
    WM_PROTOCOLS: atom_t,
    MANAGER: atom_t,
    _NET_WM_WINDOW_TYPE_DESKTOP: atom_t,
    _NET_WM_WINDOW_TYPE_DOCK: atom_t,
    _NET_WM_WINDOW_TYPE_TOOLBAR: atom_t,
    _NET_WM_WINDOW_TYPE_MENU: atom_t,
    _NET_WM_WINDOW_TYPE_UTILITY: atom_t,
    _NET_WM_WINDOW_TYPE_SPLASH: atom_t,
    _NET_WM_WINDOW_TYPE_DIALOG: atom_t,
    _NET_WM_WINDOW_TYPE_DROPDOWN_MENU: atom_t,
    _NET_WM_WINDOW_TYPE_POPUP_MENU: atom_t,
    _NET_WM_WINDOW_TYPE_TOOLTIP: atom_t,
    _NET_WM_WINDOW_TYPE_NOTIFICATION: atom_t,
    _NET_WM_WINDOW_TYPE_COMBO: atom_t,
    _NET_WM_WINDOW_TYPE_DND: atom_t,
    _NET_WM_WINDOW_TYPE_NORMAL: atom_t,
    _NET_WM_STATE_MODAL: atom_t,
    _NET_WM_STATE_STICKY: atom_t,
    _NET_WM_STATE_MAXIMIZED_VERT: atom_t,
    _NET_WM_STATE_MAXIMIZED_HORZ: atom_t,
    _NET_WM_STATE_SHADED: atom_t,
    _NET_WM_STATE_SKIP_TASKBAR: atom_t,
    _NET_WM_STATE_SKIP_PAGER: atom_t,
    _NET_WM_STATE_HIDDEN: atom_t,
    _NET_WM_STATE_FULLSCREEN: atom_t,
    _NET_WM_STATE_ABOVE: atom_t,
    _NET_WM_STATE_BELOW: atom_t,
    _NET_WM_STATE_DEMANDS_ATTENTION: atom_t,
    _NET_WM_ACTION_MOVE: atom_t,
    _NET_WM_ACTION_RESIZE: atom_t,
    _NET_WM_ACTION_MINIMIZE: atom_t,
    _NET_WM_ACTION_SHADE: atom_t,
    _NET_WM_ACTION_STICK: atom_t,
    _NET_WM_ACTION_MAXIMIZE_HORZ: atom_t,
    _NET_WM_ACTION_MAXIMIZE_VERT: atom_t,
    _NET_WM_ACTION_FULLSCREEN: atom_t,
    _NET_WM_ACTION_CHANGE_DESKTOP: atom_t,
    _NET_WM_ACTION_CLOSE: atom_t,
    _NET_WM_ACTION_ABOVE: atom_t,
    _NET_WM_ACTION_BELOW: atom_t,
}

/**
 * @brief Hold a GetProperty reply containing a list of Atoms
 */
ewmh_get_atoms_reply_t :: struct {
    /** The number of Atoms */
    atoms_len: u32,
    /** The list of Atoms */
    atoms: ^atom_t,
    /** The actual GetProperty reply */
    _reply: ^get_property_reply_t,
}

/**
 * @brief Hold a GetProperty reply containing a list of Windows
 */
ewmh_get_windows_reply_t :: struct {
    /** The number of Windows */
    windows_len: u32,
    /** The list of Windows */
    windows: ^window_t,
    /** The actual GetProperty reply */
    _reply: ^get_property_reply_t,
}

/**
 * @brief Hold a GetProperty reply containg a list of UTF-8 strings
 */
ewmh_get_utf8_strings_reply_t :: struct {
    /** The number of UTF-8 strings */
    strings_len: u32,
    /** The list of UTF-8 strings */
    strings: ^_c.char,
    /** The actual GetProperty reply */
    _reply: ^get_property_reply_t,
}

/**
 * @brief Coordinates Property values
 */
ewmh_coordinates_t :: struct {
  /** The x coordinate */
  x: u32,
  /** The y coordinate */
  y: u32,
}

/**
 * @brief Hold reply of _NET_DESKTOP_VIEWPORT GetProperty
 */
ewmh_get_desktop_viewport_reply_t :: struct {
  /** The number of desktop viewports */
  desktop_viewport_len: u32,
  /** The desktop viewports */
  desktop_viewport: ^ewmh_coordinates_t,
  /** The actual GetProperty reply */
  _reply: ^get_property_reply_t,
}

/**
 * @brief Geometry Property values
 */
ewmh_geometry_t :: struct {
  /** The x coordinate */
  x: u32,
  /** The y coordinate */
  y: u32,
  /** The width */
  width: u32,
  /** The height */
  height: u32,
}

/**
 * @brief Hold reply of a _NET_WORKAREA GetProperty
 */
ewmh_get_workarea_reply_t :: struct {
  /** The number of desktop workarea */
  workarea_len: u32,
  /** The list of desktop workarea */
  workarea: ^ewmh_geometry_t,
  /** The actual GetProperty reply */
  _reply: ^get_property_reply_t,
}

/**
 * @brief Source indication in requests
 */
ewmh_client_source_type_t :: enum {
  /** No source at all (for clients supporting an older version of
      EWMH specification) */
  EWMH_CLIENT_SOURCE_TYPE_NONE,
  /** Normal application */
  EWMH_CLIENT_SOURCE_TYPE_NORMAL,
  /** Pagers and other clients that represent direct user actions */
  EWMH_CLIENT_SOURCE_TYPE_OTHER,
}

/**
 * @brief _NET_DESKTOP_LAYOUT orientation
 */
ewmh_desktop_layout_orientation_t :: enum {
  /** Horizontal orientation (desktops laid out in rows) */
  EWMH_WM_ORIENTATION_HORZ,
  /** Vertical orientation (desktops laid out in columns) */
  EWMH_WM_ORIENTATION_VERT,
}

/**
 * @brief _NET_DESKTOP_LAYOUT starting corner
 */
ewmh_desktop_layout_starting_corner_t :: enum {
  /** Starting corner on the top left */
  EWMH_WM_TOPLEFT,
  /** Starting corner on the top right */
  EWMH_WM_TOPRIGHT,
  /** Starting corner on the bottom right */
  EWMH_WM_BOTTOMRIGHT,
  /** Starting corner on the bottom left */
  EWMH_WM_BOTTOMLEFT,
}

/**
 * @brief Hold reply of a _NET_DESKTOP_LAYOUT GetProperty
 * @see ewmh_desktop_layout_orientation_t
 * @see ewmh_desktop_layout_starting_corner_t
 */
ewmh_get_desktop_layout_reply_t :: struct {
  /** The desktops orientation */
  orientation: u32,
  /** The number of columns */
  columns: u32,
  /** The number of rows */
  rows: u32,
  /** The desktops starting corner */
  starting_corner: u32,
}

/**
 * @brief _NET_WM_MOVERESIZE value when moving via keyboard
 * @see ewmh_moveresize_direction_t
 */
ewmh_moveresize_window_opt_flags_t :: enum {
  /** The window x coordinate */
  EWMH_MOVERESIZE_WINDOW_X = (1 << 8),
  /** The window y coordinate */
  EWMH_MOVERESIZE_WINDOW_Y = (1 << 9),
  /** The window width */
  EWMH_MOVERESIZE_WINDOW_WIDTH = (1 << 10),
  /** The window height */
  EWMH_MOVERESIZE_WINDOW_HEIGHT = (1 << 11),
}

/**
 * @brief _NET_WM_MOVERESIZE window movement or resizing
 */
ewmh_moveresize_direction_t :: enum {
  /** Resizing applied on the top left edge */
  EWMH_WM_MOVERESIZE_SIZE_TOPLEFT,
  /** Resizing applied on the top edge */
  EWMH_WM_MOVERESIZE_SIZE_TOP,
  /** Resizing applied on the top right edge */
  EWMH_WM_MOVERESIZE_SIZE_TOPRIGHT,
  /** Resizing applied on the right edge */
  EWMH_WM_MOVERESIZE_SIZE_RIGHT,
  /** Resizing applied on the bottom right edge */
  EWMH_WM_MOVERESIZE_SIZE_BOTTOMRIGHT,
  /** Resizing applied on the bottom edge */
  EWMH_WM_MOVERESIZE_SIZE_BOTTOM,
  /** Resizing applied on the bottom left edge */
  EWMH_WM_MOVERESIZE_SIZE_BOTTOMLEFT,
  /** Resizing applied on the left edge */
  EWMH_WM_MOVERESIZE_SIZE_LEFT,
  /* Movement only */
  EWMH_WM_MOVERESIZE_MOVE,
  /* Size via keyboard */
  EWMH_WM_MOVERESIZE_SIZE_KEYBOARD,
  /* Move via keyboard */
  EWMH_WM_MOVERESIZE_MOVE_KEYBOARD,
  /* Cancel operation */
  EWMH_WM_MOVERESIZE_CANCEL,
}

/**
 * @brief Action on the _NET_WM_STATE property
 */
ewmh_wm_state_action_t :: enum {
  /* Remove/unset property */
  EWMH_WM_STATE_REMOVE,
  /* Add/set property */
  EWMH_WM_STATE_ADD,
  /* Toggle property  */
  EWMH_WM_STATE_TOGGLE,
}

/**
 * @brief Hold reply of _NET_WM_STRUT_PARTIAL GetProperty
 */
ewmh_wm_strut_partial_t :: struct {
  /** Reserved space on the left border of the screen */
  left: u32,
  /** Reserved space on the right border of the screen */
  right: u32,
  /** Reserved space on the top border of the screen */
  top: u32,
  /** Reserved space on the bottom border of the screen */
  bottom: u32,
  /** Beginning y coordinate of the left strut */
  left_start_y: u32,
  /** Ending y coordinate of the left strut */
  left_end_y: u32,
  /** Beginning y coordinate of the right strut */
  right_start_y: u32,
  /** Ending y coordinate of the right strut */
  right_end_y: u32,
  /** Beginning x coordinate of the top strut */
  top_start_x: u32,
  /** Ending x coordinate of the top strut */
  top_end_x: u32,
  /** Beginning x coordinate of the bottom strut */
  bottom_start_x: u32,
  /** Ending x coordinate of the bottom strut */
  bottom_end_x: u32,
}

/**
 * @brief Hold a single icon from reply of _NET_WM_ICON GetProperty
 */
ewmh_wm_icon_iterator_t :: struct {
  /** Icon width */
  width: u32,
  /** Icon height */
  height: u32,
  /** Rows, left to right and top to bottom of the CARDINAL ARGB */
  data: ^u32,
  /** Number of icons remaining */
  rem: u32,
  /** Index of the current icon in the array of icons */
  index: u32,
}

/**
 * @brief Hold reply of _NET_WM_ICON GetProperty
 */
ewmh_get_wm_icon_reply_t :: struct {
  /** Number of icons */
  num_icons: u32,
  /** The actual GetProperty reply */
  _reply: ^get_property_reply_t,
}

/**
 * @brief Hold reply of _NET_REQUEST_FRAME_EXTENTS GetProperty
 */
ewmh_get_extents_reply_t :: struct {
  /** Width of the left border */
  left: u32,
  /** Width of the right border */
  right: u32,
  /** Width of the top border */
  top: u32,
  /** Width of the bottom border */
  bottom: u32,
}

/**
 * @brief Hold reply of _NET_WM_FULLSCREEN_MONITORS GetProperty
 */
ewmh_get_wm_fullscreen_monitors_reply_t :: struct {
  /** Monitor whose top edge defines the top edge of the fullscreen
      window */
  top: u32,
  /** Monitor whose bottom edge defines the bottom edge of the
      fullscreen window */
  bottom: u32,
  /** Monitor whose left edge defines the left edge of the fullscreen
      window */
  left: u32,
  /** Monitor whose right edge defines the right edge of the
      fullscreen window */
  right: u32,
}

/**
 * @brief Wipe the EWMH connection
 *
 * @param ewmh The information relative to EWMH
 */
ewmh_connection_wipe :: proc(ewmh: ^ewmh_connection_t) {
    if ewmh.screens != nil {
        mem.free(ewmh.screens)
        ewmh.screens = nil
    }
    if ewmh._NET_WM_CM_Sn != nil {
        mem.free(ewmh._NET_WM_CM_Sn)
        ewmh._NET_WM_CM_Sn = nil
    }
}

/**
 * @brief Get the list of supported atoms
 *
 * @param supported The list of atoms contained in the reply
 * @param r GetProperty _NET_SUPPORTED reply
 */
ewmh_get_supported_from_reply :: proc(supported: ^ewmh_get_atoms_reply_t, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_atoms_from_reply(supported, r)
}

/**
 * @brief Get reply from the GetProperty _NET_SUPPORTED cookie
 *
 * The  parameter  e  supplied  to  this  function  must  be  NULL  if
 * get_window_supported_unchecked() is used.  Otherwise, it stores
 * the error if any.
 *
 * @param ewmh The information relative to EWMH
 * @param cookie The _NET_SUPPORTED GetProperty request cookie
 * @param supported The reply to be filled
 * @param The generic_error_t supplied
 * @return Return 1 on success, 0 otherwise
 */

ewmh_get_supported_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, supported: ^ewmh_get_atoms_reply_t, e: ^^generic_error_t) -> u8 {
  return ewmh_get_atoms_reply(ewmh, cookie, supported, e)
}

/**
 * @brief  Get   the  list  of  client  windows   from  a  GetProperty
 * _NET_CLIENT_LIST reply
 *
 * @param clients The list of clients contained in the reply
 * @param r GetProperty _NET_CLIENT_LIST reply
 */
ewmh_get_client_list_from_reply :: proc(clients: ^ewmh_get_windows_reply_t, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_windows_from_reply(clients, r)
}

/**
 * @brief Get reply from the GetProperty _NET_CLIENT_LIST cookie
 *
 * The  parameter  e  supplied  to  this  function  must  be  NULL  if
 * get_window_client_list_unchecked()  is   used.   Otherwise,  it
 * stores the error if any.
 *
 * @param ewmh The information relative to EWMH
 * @param cookie The _NET_CLIENT_LIST GetProperty request cookie
 * @param clients The list of clients to be filled
 * @param The generic_error_t supplied
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_client_list_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, clients: ^ewmh_get_windows_reply_t, e: ^^generic_error_t) -> u8 {
  return ewmh_get_windows_reply(ewmh, cookie, clients, e)
}
/**
 * @brief  Get   the  list  of  client  windows   from  a  GetProperty
 * _NET_CLIENT_LIST_STACKING reply
 *
 * @param clients The list of clients contained in the reply
 * @param r GetProperty _NET_CLIENT_LIST_STACKING reply
 */
ewmh_get_client_list_stacking_from_reply :: proc(clients: ^ewmh_get_windows_reply_t, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_windows_from_reply(clients, r)
}

/**
 * @brief  Get reply  from  the GetProperty  _NET_CLIENT_LIST_STACKING
 * cookie
 *
 * The  parameter  e  supplied  to  this  function  must  be  NULL  if
 * get_window_client_list_stacking_unchecked()       is      used.
 * Otherwise, it stores the error if any.
 *
 * @param ewmh The information relative to EWMH
 * @param cookie The _NET_CLIENT_LIST_STACKING GetProperty request cookie
 * @param clients The list of clients to be filled
 * @param The generic_error_t supplied
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_client_list_stacking_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, clients: ^ewmh_get_windows_reply_t, e: ^^generic_error_t) -> u8 {
  return ewmh_get_windows_reply(ewmh, cookie, clients, e)
}
/**
 * @brief  Get   the  list  of  client  windows   from  a  GetProperty
 * _NET_NUMBER_OF_DESKTOPS reply
 *
 * @param clients The list of clients contained in the reply
 * @param r GetProperty _NET_NUMBER_OF_DESKTOPS reply
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_number_of_desktops_from_reply :: proc(number_of_desktops: ^u32, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_cardinal_from_reply(number_of_desktops, r)
}

/**
 * @brief Get reply from the GetProperty _NET_NUMBER_OF_DESKTOPS cookie
 *
 * The  parameter  e  supplied  to  this  function  must  be  NULL  if
 * get_window_number_of_desktops_unchecked()  is used.  Otherwise,
 * it stores the error if any.
 *
 * @param ewmh The information relative to EWMH
 * @param cookie The _NET_NUMBER_OF_DESKTOPS GetProperty request cookie
 * @param supported The reply to be filled
 * @param The generic_error_t supplied
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_number_of_desktops_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, number_of_desktops: ^u32, e: ^^generic_error_t) -> u8 {
  return ewmh_get_cardinal_reply(ewmh, cookie, number_of_desktops, e)
}

ewmh_request_change_number_of_desktops :: proc(ewmh: ^ewmh_connection_t, screen_nbr: int, new_number_of_desktops: u32) -> void_cookie_t {
    temp_value := new_number_of_desktops
    screens := mem.slice_ptr(ewmh.screens, int(ewmh.nb_screens))
    return ewmh_send_client_message(ewmh.connection, NONE, 
                                    screens[screen_nbr].root,
                                    ewmh._NET_NUMBER_OF_DESKTOPS,
                                    size_of(u32),
                                    &temp_value)
}

/**
 * @brief    Get   the   desktop    geometry   from    a   GetProperty
 * _NET_CURRENT_DESKTOP reply
 *
 * @param current_desktop The  current desktop
 * @param r GetProperty _NET_CURRENT_DESKTOP reply
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_current_desktop_from_reply :: proc(current_desktop: ^u32, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_cardinal_from_reply(current_desktop, r)
}

/**
 * @brief Get reply from the GetProperty _NET_CURRENT_DESKTOP cookie
 *
 * The  parameter  e  supplied  to  this  function  must  be  NULL  if
 * get_current_desktop_unchecked() is  used.  Otherwise, it stores
 * the error if any.
 *
 * @param ewmh The information relative to EWMH
 * @param cookie The _NET_CURRENT_DESKTOP GetProperty request cookie
 * @param vp The current desktop
 * @param The generic_error_t supplied
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_current_desktop_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, current_desktop: ^u32, e: ^^generic_error_t) -> u8 {
  return ewmh_get_cardinal_reply(ewmh, cookie, current_desktop, e)
}

/**
 * @brief    Get   the   desktop    geometry   from    a   GetProperty
 * _NET_DESKTOP_NAMES reply
 *
 * @param ewmh The information relative to EWMH
 * @param names The desktop names
 * @param r GetProperty _NET_DESKTOP_NAMES reply
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_desktop_names_from_reply :: proc(ewmh: ^ewmh_connection_t, names: ^ewmh_get_utf8_strings_reply_t, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_utf8_strings_from_reply(ewmh, names, r)
}

/**
 * @brief Get reply from the GetProperty _NET_DESKTOP_NAMES cookie
 *
 * The  parameter  e  supplied  to  this  function  must  be  NULL  if
 * get_desktop_names_unchecked()  is used.   Otherwise,  it stores
 * the error if any.
 *
 * @param ewmh The information relative to EWMH
 * @param cookie The _NET_DESKTOP_NAMES GetProperty request cookie
 * @param names The desktop names
 * @param The generic_error_t supplied
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_desktop_names_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, names: ^ewmh_get_utf8_strings_reply_t, e: ^^generic_error_t) -> u8 {
  return ewmh_get_utf8_strings_reply(ewmh, cookie, names, e)
}
/**
 * @brief  Get   the  list  of  client  windows   from  a  GetProperty
 * _NET_ACTIVE_WINDOW reply
 *
 * @param active_window The current active window
 * @param r GetProperty _NET_ACTIVE_WINDOW_OF_DESKTOPS reply
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_active_window_from_reply :: proc(active_window: ^window_t, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_window_from_reply(active_window, r)
}

/**
 * @brief Get reply from the GetProperty _NET_ACTIVE_WINDOW cookie
 *
 * The  parameter  e  supplied  to  this  function  must  be  NULL  if
 * get_active_window_unchecked()  is used.   Otherwise,  it stores
 * the error if any.
 *
 * @param ewmh The information relative to EWMH.
 * @param cookie The _NET_ACTIVE_WINDOW GetProperty request cookie.
 * @param active_window The reply to be filled.
 * @param The generic_error_t supplied.
 * @return Return 1 on success, 0 otherwise.
 */
ewmh_get_active_window_reply:: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, active_window: ^window_t, e: ^^generic_error_t) -> u8 {
  return ewmh_get_window_reply(ewmh, cookie, active_window, e)
}
/**
 * @brief  Get   the  list  of  client  windows   from  a  GetProperty
 * _NET_SUPPORTING_WM_CHECK reply
 *
 * @param window The child window created by the WM
 * @param r GetProperty _NET_SUPPORTING_WM_CHECK reply
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_supporting_wm_check_from_reply :: proc(window: ^window_t, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_window_from_reply(window, r)
}

/**
 * @brief  Get  reply  from the  GetProperty  _NET_SUPPORTING_WM_CHECK
 * cookie
 *
 * The  parameter  e  supplied  to  this  function  must  be  NULL  if
 * get_supporting_wm_check_unchecked()  is  used.   Otherwise,  it
 * stores the error if any.
 *
 * @param ewmh The information relative to EWMH
 * @param cookie The _NET_SUPPORTING_WM_CHECK GetProperty request cookie
 * @param window The reply to be filled
 * @param The generic_error_t supplied
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_supporting_wm_check_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, window: ^window_t, e: ^^generic_error_t) -> u8 {
  return ewmh_get_window_reply(ewmh, cookie, window, e)
}
/**
 * @brief Get  the desktop  geometry from a  GetProperty _NET_WORKAREA
 * reply
 *
 * @param virtual_roots The current virtual root windows
 * @param r GetProperty _NET_VIRTUAL_ROOTS reply
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_virtual_roots_from_reply :: proc(virtual_roots: ^ewmh_get_windows_reply_t, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_windows_from_reply(virtual_roots, r)
}

/**
 * @brief Get reply from the GetProperty _NET_VIRTUAL_ROOTS cookie
 *
 * The  parameter  e  supplied  to  this  function  must  be  NULL  if
 * get_virtual_roots_unchecked()  is used.   Otherwise,  it stores
 * the error if any.
 *
 * @param ewmh The information relative to EWMH
 * @param cookie The _NET_VIRTUAL_ROOTS GetProperty request cookie
 * @param virtual_roots The current virtual root windows
 * @param The generic_error_t supplied
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_virtual_roots_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, virtual_roots: ^ewmh_get_windows_reply_t, e: ^^generic_error_t) -> u8 {
  return ewmh_get_windows_reply(ewmh, cookie, virtual_roots, e)
}

ewmh_get_showing_desktop_from_reply :: proc(desktop: ^u32, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_cardinal_from_reply(desktop, r)
}

ewmh_get_showing_desktop_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, desktop: ^u32, e: ^^generic_error_t) -> u8 {
  return ewmh_get_cardinal_reply(ewmh, cookie, desktop, e)
}

ewmh_request_change_showing_desktop :: proc(ewmh: ^ewmh_connection_t, screen_nbr: int, enter: u32) -> void_cookie_t {
    screens := mem.slice_ptr(ewmh.screens, int(ewmh.nb_screens))
    enter_data := enter
    return ewmh_send_client_message(ewmh.connection, NONE,
                                      screens[screen_nbr].root,
                                      ewmh._NET_SHOWING_DESKTOP,
                                      size_of(type_of(enter)), &enter_data)
}

ewmh_request_frame_extents :: proc (ewmh: ^ewmh_connection_t, screen_nbr: _c.int, client_window: window_t) -> void_cookie_t {
    screens := mem.slice_ptr(ewmh.screens, int(ewmh.nb_screens))
    return ewmh_send_client_message(ewmh.connection, client_window,
                                      screens[screen_nbr].root,
                                      ewmh._NET_REQUEST_FRAME_EXTENTS, 0, nil)
}

ewmh_get_wm_name_from_reply :: proc(ewmh: ^ewmh_connection_t, data: ^ewmh_get_utf8_strings_reply_t, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_utf8_strings_from_reply(ewmh, data, r)
}

ewmh_get_wm_name_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, data: ^ewmh_get_utf8_strings_reply_t, e: ^^generic_error_t) -> u8 {
  return ewmh_get_utf8_strings_reply(ewmh, cookie, data, e)
}

ewmh_get_wm_visible_name_from_reply :: proc(ewmh: ^ewmh_connection_t, data: ^ewmh_get_utf8_strings_reply_t, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_utf8_strings_from_reply(ewmh, data, r)
}

ewmh_get_wm_visible_name_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, data: ^ewmh_get_utf8_strings_reply_t, e: ^^generic_error_t) -> u8 {
  return ewmh_get_utf8_strings_reply(ewmh, cookie, data, e)
}

ewmh_get_wm_icon_name_from_reply :: proc(ewmh: ^ewmh_connection_t, data: ^ewmh_get_utf8_strings_reply_t, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_utf8_strings_from_reply(ewmh, data, r)
}

ewmh_get_wm_icon_name_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, data: ^ewmh_get_utf8_strings_reply_t, e: ^^generic_error_t) -> u8 {
  return ewmh_get_utf8_strings_reply(ewmh, cookie, data, e)
}

ewmh_get_wm_visible_icon_name_from_reply :: proc(ewmh: ^ewmh_connection_t, data: ^ewmh_get_utf8_strings_reply_t, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_utf8_strings_from_reply(ewmh, data, r)
}

ewmh_get_wm_visible_icon_name_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, data: ^ewmh_get_utf8_strings_reply_t, e: ^^generic_error_t) -> u8 {
  return ewmh_get_utf8_strings_reply(ewmh, cookie, data, e)
}

ewmh_get_wm_desktop_from_reply :: proc(desktop: ^u32, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_cardinal_from_reply(desktop, r)
}

ewmh_get_wm_desktop_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, desktop: ^u32, e: ^^generic_error_t) -> u8 {
  return ewmh_get_cardinal_reply(ewmh, cookie, desktop, e)
}

/**
 * @brief Send ChangeProperty request to set _NET_WM_ICON window
 *        property. The given data is considered to be already
 *        prepared, namely that it is an array such as: WIDTH1,
 *        HEIGHT1, IMG1, WIDTH2, HEIGHT2, IMG2.
 *
 *        If you only want to add or append a single icon, you may
 *        consider using ewmh_append_wm_icon_checked which is far
 *        easier to use.
 *
 * _NET_WM_ICON CARDINAL[][2+n]/32
 *
 * @param ewmh The information relative to EWMH
 * @param mode ChangeProperty mode (prop_mode_t)
 * @param window The window to set the property on
 * @param data_len Length of the data
 * @param data The data
 */
ewmh_set_wm_icon_checked :: proc(ewmh: ^ewmh_connection_t, mode: u8, window: window_t, data_len: u32, data: ^u32) -> void_cookie_t {
  return change_property_checked(ewmh.connection, mode, window, ewmh._NET_WM_ICON, u32(atom_enum_t.ATOM_CARDINAL), 32, data_len, data)
}

/**
 * @see ewmh_set_wm_icon_checked
 */
ewmh_set_wm_icon :: proc(ewmh: ^ewmh_connection_t, mode: u8, window: window_t, data_len: u32, data: ^u32) -> void_cookie_t {
  return change_property(ewmh.connection, mode, window, ewmh._NET_WM_ICON, u32(atom_enum_t.ATOM_CARDINAL), 32, data_len, data)
}

ewmh_get_wm_pid_from_reply :: proc(pid: ^u32, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_cardinal_from_reply(pid, r)
}

ewmh_get_wm_pid_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, pid: ^u32, e: ^^generic_error_t) -> u8 {
  return ewmh_get_cardinal_reply(ewmh, cookie, pid, e)
}

ewmh_get_wm_handled_icons_from_reply :: proc(handled_icons: ^u32, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_cardinal_from_reply(handled_icons, r)
}

ewmh_get_wm_handled_icons_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, handled_icons: ^u32, e: ^^generic_error_t) -> u8 {
  return ewmh_get_cardinal_reply(ewmh, cookie, handled_icons, e)
}

ewmh_get_wm_user_time_from_reply :: proc(xtime: ^u32, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_cardinal_from_reply(xtime, r)
}

ewmh_get_wm_user_time_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, xtime: ^u32, e: ^^generic_error_t) -> u8 {
  return ewmh_get_cardinal_reply(ewmh, cookie, xtime, e)
}

ewmh_get_wm_user_time_window_from_reply :: proc(xtime: ^u32, r: ^get_property_reply_t) -> u8 {
  return ewmh_get_cardinal_from_reply(xtime, r)
}

ewmh_get_wm_user_time_window_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, xtime: ^u32, e: ^^generic_error_t) -> u8 {
  return ewmh_get_cardinal_reply(ewmh, cookie, xtime, e)
}

foreign import libxcb_ewmh "system:libxcb-ewmh.so"

@(link_prefix="xcb_")
@(default_calling_convention="c")
foreign libxcb_ewmh {
/**
 * @brief Send InternAtom requests for the EWMH atoms and its required atoms
 *
 * @param c The connection to the X server
 * @param ewmh The information relative to EWMH
 * @return The cookies corresponding to EWMH atoms
 */
ewmh_init_atoms :: proc(c: ^connection_t, ewmh: ^ewmh_connection_t) -> ^intern_atom_cookie_t ---
/**
 * @brief Process  the replies  to the screen  initialisation requests
 * previously sent
 *
 * @param emwh The information relative to EWMH
 * @param ewmh_cookies The cookies corresponding to EWMH atoms
 * @param e Error if any
 * @return Return 1 on success, 0 otherwise
 */
ewmh_init_atoms_replies :: proc(ewmh: ^ewmh_connection_t, ewmh_cookies: ^intern_atom_cookie_t, e: ^^generic_error_t) -> u8 ---
/**
 * @brief Send a SendEvent request containing a ClientMessage event
 *
 * This  function is  called  by all  the ewmh_request*  functions
 * whose should be used instead of calling directly this function
 *
 * @param c The X connection
 * @param window The window where the action will be applied
 * @param dest The destination window (usually the root window)
 * @param atom The type of the message
 * @param data_len The length of data to be sent
 * @param data The data to be sent
 * @return The cookie associated with the SendEvent request
 */
ewmh_send_client_message :: proc(c: ^connection_t, window: window_t, dest: window_t, atom: atom_t, data_len: u32, data: ^u32) -> void_cookie_t ---
ewmh_get_window_from_reply :: proc(window: ^window_t, r: ^get_property_reply_t) -> u8 ---
ewmh_get_window_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, window: ^window_t, e: ^^generic_error_t) -> u8 ---
ewmh_get_cardinal_from_reply :: proc(cardinal: ^u32, r: ^get_property_reply_t) -> u8 ---
ewmh_get_cardinal_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, cardinal: ^u32, e: ^^generic_error_t) -> u8 ---
/**
 * @brief Get  a list  of atoms from  a given GetProperty  reply whose
 * type is ATOM
 *
 * This  function  is  called  by  all  the  ewmh_get_*_from_reply
 * functions  whose should  be used  instead of  calling  it directly.
 * Indeed,  The GetProperty request  has been  previously sent  by the
 * corresponding ewmh_get_*.
 *
 * @param atoms The atoms list
 * @param r The reply to get the atoms list from
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_atoms_from_reply :: proc(atoms: ^ewmh_get_atoms_reply_t, r: ^get_property_reply_t) -> u8 ---
/**
 * @brief Get a list of atoms  from the reply of a GetProperty request
 * whose type is ATOM
 *
 * This function  is called by all  the ewmh_get_*_reply functions
 * whose  should   be  used  instead  of  calling   it  directly.  The
 * GetProperty request  has been previously sent  by the corresponding
 * ewmh_get_*.
 *
 * @param ewmh The per-screen EWMH specific information
 * @param cookie The GetProperty cookie
 * @param atoms The atoms list
 * @param e The error if any
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_atoms_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, atoms: ^ewmh_get_atoms_reply_t, e: ^^generic_error_t) -> u8 ---
/**
 * @brief Wipe the Atoms list reply
 *
 * This function must be called to free the memory allocated for atoms
 * when the reply is requested in *_reply functions.
 *
 * @param data The X reply to be freed
 */
ewmh_get_atoms_reply_wipe :: proc(data: ^ewmh_get_atoms_reply_t) ---
/**
 * @brief Get  a list  of atoms from  a given GetProperty  reply whose
 * type is WINDOW
 *
 * This  function  is  called  by  all  the  ewmh_get_*_from_reply
 * functions  whose should  be used  instead of  calling  it directly.
 * Indeed,  The GetProperty request  has been  previously sent  by the
 * corresponding ewmh_get_*.
 *
 * @param atoms The atoms list
 * @param r The reply to get the atoms list from
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_windows_from_reply :: proc(atoms: ^ewmh_get_windows_reply_t, r: ^get_property_reply_t) -> u8 ---
ewmh_get_utf8_strings_from_reply :: proc(ewmh: ^ewmh_connection_t, data: ^ewmh_get_utf8_strings_reply_t, r: ^get_property_reply_t) -> u8 ---
ewmh_get_utf8_strings_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, data: ^ewmh_get_utf8_strings_reply_t, e: ^^generic_error_t) -> u8 ---
/**
 * @brief Get a list of atoms  from the reply of a GetProperty request
 * whose type is WINDOW
 *
 * This function  is called by all  the ewmh_get_*_reply functions
 * whose  should   be  used  instead  of  calling   it  directly.  The
 * GetProperty request  has been previously sent  by the corresponding
 * ewmh_get_*.
 *
 * @param ewmh The per-screen EWMH specific information
 * @param cookie The GetProperty cookie
 * @param atoms The atoms list
 * @param e The error if any
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_windows_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, atoms: ^ewmh_get_windows_reply_t, e: ^^generic_error_t) -> u8 ---
/**
 * @brief Wipe the windows list reply
 *
 * This function must  be called to the free  the memory allocated for
 * windows when the reply is requested in '_reply' functions.
 *
 * @param data The X reply to be freed
 */
ewmh_get_windows_reply_wipe :: proc(data: ^ewmh_get_windows_reply_t) ---
/**
 * @brief Wipe the UTF-8 strings list reply
 *
 * This function must  be called to the free  the memory allocated for
 * UTF-8 strings when the reply is requested in '_reply' functions.
 *
 * @param data The X reply to be freed
 */
ewmh_get_utf8_strings_reply_wipe :: proc(data: ^ewmh_get_utf8_strings_reply_t) ---
/**
 * @brief Send a ChangeProperty request for _NET_SUPPORTED
 *
 * _NET_SUPPORTED, ATOM[]/32
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param list_len The number of Atoms supported by the WM
 * @param list The Atoms supported by the WM
 * @return Cookie associated with the ChangeProperty _NET_SUPPORTED request
 */
ewmh_set_supported :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, list_len: u32, list: ^atom_t) -> void_cookie_t ---
/**
 * @see ewmh_set_supported
 */
ewmh_set_supported_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, list_len: u32, list: ^atom_t) -> void_cookie_t ---
/**
 * @brief Send  GetProperty request to get  _NET_SUPPORTED root window
 *        property
 *
 * _NET_SUPPORTED, ATOM[]/32
 *
 * This property MUST  be set by the Window  Manager to indicate which
 * hints it supports. For example: considering _NET_WM_STATE both this
 * atom   and   all   supported  states   e.g.    _NET_WM_STATE_MODAL,
 * _NET_WM_STATE_STICKY, would be  listed. This assumes that backwards
 * incompatible changes will  not be made to the  hints (without being
 * renamed).
 *
 * This form can be used only if  the request will cause a reply to be
 * generated. Any returned error will be placed in the event queue.
 *
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @return The _NET_SUPPORTED cookie of the GetProperty request
 */
ewmh_get_supported_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---
/**
 * @see ewmh_get_supported_unchecked
 */
ewmh_get_supported :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---
/**
 * @brief Send a ChangeProperty request for _NET_SUPPORTED
 *
 * _NET_SUPPORTED, ATOM[]/32
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param list_len The number of Atoms supported by the WM
 * @param list The Atoms supported by the WM
 * @return Cookie associated with the ChangeProperty _NET_SUPPORTED request
 */
ewmh_set_client_list :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, list_len: u32, list: ^window_t) -> void_cookie_t ---
/**
 * @see ewmh_set_client_list
 */
ewmh_set_client_list_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, list_len: u32, list: ^window_t) -> void_cookie_t ---
/**
 * @brief Send GetProperty request to get _NET_CLIENT_LIST root window
 *        property
 *
 * This  array   contains  all  X   Windows  managed  by   the  Window
 * Manager. _NET_CLIENT_LIST has  initial mapping order, starting with
 * the oldest window.  This property SHOULD be set  and updated by the
 * Window Manager.
 *
 * @param ewmh The information relative to EWMH.
 * @return The _NET_CLIENT_LIST cookie of the GetProperty request.
 */
ewmh_get_client_list_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---
/**
 * @brief Send GetProperty request to get _NET_CLIENT_LIST root window
 *        property
 *
 * @see ewmh_get_client_list_unchecked
 * @param ewmh The information relative to EWMH.
 * @return The _NET_CLIENT_LIST cookie of the GetProperty request.
 */
ewmh_get_client_list :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---
/**
 * @brief Send a ChangeProperty request for _NET_CLIENT_LIST_STACKING
 *
 * _NET_CLIENT_LIST_STACKING, WINDOW[]/32
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param list_len The number of Atoms supported by the WM
 * @param list The Atoms supported by the WM
 * @return Cookie associated with the ChangeProperty _NET_CLIENT_LIST_STACKING request
 */
ewmh_set_client_list_stacking :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, list_len: u32, list: ^window_t) -> void_cookie_t ---
/**
 * @see ewmh_set_client_list_stacking
 */
ewmh_set_client_list_stacking_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, list_len: u32, list: ^window_t) -> void_cookie_t ---
/**
 * @brief  Send GetProperty  request to  get _NET_CLIENT_LIST_STACKING
 *        root window property
 *
 * This  array   contains  all  X   Windows  managed  by   the  Window
 * Manager.  _NET_CLIENT_LIST_STACKING   has  initial  mapping  order,
 * starting with the  oldest window.  This property SHOULD  be set and
 * updated by the Window Manager.
 *
 * @param ewmh The information relative to EWMH
 * @return The _NET_CLIENT_LIST_STACKING cookie of the GetProperty request
 */
ewmh_get_client_list_stacking_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---
/**
 * @see ewmh_get_client_list_unchecked
 */
ewmh_get_client_list_stacking :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---
/**
 * @brief Send a ChangeProperty request for _NET_NUMBER_OF_DESKTOPS
 *
 * _NET_NUMBER_OF_DESKTOPS? CARDINAL/32
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param number_of_desktops The number of desktops
 * @return Cookie associated with the ChangeProperty _NET_NUMBER_OF_DESKTOPS request
 */
ewmh_set_number_of_desktops :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, number_of_desktops: u32) -> void_cookie_t ---
/**
 * @see ewmh_set_number_of_desktops
 */
ewmh_set_number_of_desktops_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, number_of_desktops: u32) -> void_cookie_t ---
/**
 * @brief Send GetProperty request to get _NET_NUMBER_OF_DESKTOPS root
 *        window property
 *
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @return The _NET_NUMBER_OF_DESKTOPS cookie of the GetProperty request.
 */
ewmh_get_number_of_desktops_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---

/**
 * @see ewmh_get_number_of_desktops_unchecked
 */
ewmh_get_number_of_desktops :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---

/**
 * @brief Send a ChangeProperty request for _NET_DESKTOP_GEOMETRY
 *
 * _NET_DESKTOP_GEOMETRY width, height, CARDINAL[2]/32
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param new_width The new desktop width
 * @param new_height The new desktop height
 * @return Cookie associated with the ChangeProperty _NET_DESKTOP_GEOMETRY request
 */
ewmh_set_desktop_geometry :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, new_width: u32, new_height: u32) -> void_cookie_t ---
/**
 * @see ewmh_set_desktop_geometry
 */
ewmh_set_desktop_geometry_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, new_width: u32, new_height: u32) -> void_cookie_t ---
/**
 * @brief Send  GetProperty request to  get _NET_DESKTOP_GEOMETRY root
 *        window property
 *
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @return The _NET_DESKTOP_GEOMETRY cookie of the GetProperty request
 */
ewmh_get_desktop_geometry_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---
/**
 * @see ewmh_get_desktop_geometry_unchecked
 */
ewmh_get_desktop_geometry :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---
/**
 * @brief Send ClientMessage requesting to change the _NET_DESKTOP_GEOMETRY
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param new_width The new desktop width
 * @param new_height The new desktop height
 * @return The SendEvent cookie
 */
ewmh_request_change_desktop_geometry :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, new_width: u32, new_height: u32) -> void_cookie_t ---
/**
 * @brief    Get   the   desktop    geometry   from    a   GetProperty
 * _NET_DESKTOP_GEOMETRY reply
 *
 * @param width The current desktop width
 * @param height The current desktop height
 * @param r GetProperty _NET_DESKTOP_GEOMETRY reply
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_desktop_geometry_from_reply :: proc(width: ^u32, height: ^u32, r: ^get_property_reply_t) -> u8 ---
/**
 * @brief Get reply from the GetProperty _NET_DESKTOP_GEOMETRY cookie
 *
 * The  parameter  e  supplied  to  this  function  must  be  NULL  if
 * get_desktop_geometry_unchecked() is used.  Otherwise, it stores
 * the error if any.
 *
 * @param ewmh The information relative to EWMH
 * @param cookie The _NET_DESKTOP_GEOMETRY GetProperty request cookie
 * @param width The current desktop width
 * @param width The current desktop height
 * @param The generic_error_t supplied
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_desktop_geometry_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, width: ^u32, height: ^u32, e: ^^generic_error_t) -> u8 ---
/**
 * @brief Send a ChangeProperty request for _NET_DESKTOP_VIEWPORT
 *
 * _NET_DESKTOP_VIEWPORT x, y, CARDINAL[][2]/32
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param list_len The number of desktop viewports
 * @param list The desktop viewports
 * @return Cookie associated with the ChangeProperty _NET_DESKTOP_VIEWPORT request
 */
ewmh_set_desktop_viewport :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, list_len: u32, list: ^ewmh_coordinates_t) -> void_cookie_t ---
/**
 * @see ewmh_set_desktop_viewport
 */
ewmh_set_desktop_viewport_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, list_len: u32, list: ^ewmh_coordinates_t) -> void_cookie_t ---
/**
 * @brief Send  GetProperty request to  get _NET_DESKTOP_VIEWPORT root
 *        window property
 *
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @return The _NET_DESKTOP_VIEWPORT cookie of the GetProperty request
 */
ewmh_get_desktop_viewport_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---
/**
 * @see ewmh_get_desktop_viewport_unchecked
 */
ewmh_get_desktop_viewport :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---
/**
 * @brief Send ClientMessage requesting to change the _NET_DESKTOP_VIEWPORT
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param new_x The new x coordinate
 * @param new_y The new y coordinate
 * @return The SendEvent cookie
 */
ewmh_request_change_desktop_viewport :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, x: u32, y: u32) -> void_cookie_t ---
/**
 * @brief    Get   the   desktop    geometry   from    a   GetProperty
 * _NET_DESKTOP_VIEWPORT reply
 *
 * @param vp The  current desktop viewports
 * @param r GetProperty _NET_DESKTOP_VIEWPORT reply
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_desktop_viewport_from_reply :: proc(vp: ^ewmh_get_desktop_viewport_reply_t, r: ^get_property_reply_t) -> u8 ---
/**
 * @brief Get reply from the GetProperty _NET_DESKTOP_VIEWPORT cookie
 *
 * The  parameter  e  supplied  to  this  function  must  be  NULL  if
 * get_desktop_viewport_unchecked() is used.  Otherwise, it stores
 * the error if any.
 *
 * @param ewmh The information relative to EWMH
 * @param cookie The _NET_DESKTOP_VIEWPORT GetProperty request cookie
 * @param vp The current desktop viewports
 * @param The generic_error_t supplied
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_desktop_viewport_reply :: proc (ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, vp: ^ewmh_get_desktop_viewport_reply_t, e: ^^generic_error_t) -> u8 ---
/**
 * @brief Wipe the desktop viewports list reply
 *
 * This function must be called to free the memory allocated for atoms
 * when the reply  is requested in ewmh_get_desktop_viewport_reply
 * function.
 *
 * @param r The X reply to be freed
 */
ewmh_get_desktop_viewport_reply_wipe :: proc (r: ^ewmh_get_desktop_viewport_reply_t) ---
/**
 * @brief Send a ChangeProperty request for _NET_CURRENT_DESKTOP
 *
 * _NET_CURRENT_DESKTOP desktop, CARDINAL/32
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param new_current_desktop The new current desktop
 * @return Cookie associated with the ChangeProperty _NET_CURRENT_DESKTOP request
 */
ewmh_set_current_desktop :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, new_current_desktop: u32) -> void_cookie_t ---
/**
 * @see ewmh_set_current_desktop
 */
ewmh_set_current_desktop_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, new_current_desktop: u32) -> void_cookie_t ---
/**
 * @brief  Send GetProperty request  to get  _NET_CURRENT_DESKTOP root
 *        window property
 *
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @return The _NET_CURRENT_DESKTOP cookie of the GetProperty request
 */
ewmh_get_current_desktop_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---
/**
 * @see ewmh_get_current_desktop_unchecked
 */
ewmh_get_current_desktop :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---
/**
 * @brief Send ClientMessage requesting to change the _NET_CURRENT_DESKTOP
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param new_desktop The new current desktop
 * @param timestamp The request timestamp
 * @return The SendEvent cookie
 */
ewmh_request_change_current_desktop :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, new_desktop: u32, timestamp: timestamp_t) -> void_cookie_t ---
/**
 * @brief Send a ChangeProperty request for _NET_DESKTOP_NAMES
 *
 * _NET_DESKTOP_NAMES, UTF8_STRING[]
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param strings_len The number of desktop names
 * @param strings The desktop names
 * @return Cookie associated with the ChangeProperty _NET_DESKTOP_NAMES request
 */
ewmh_set_desktop_names :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, strings_len: u32, strings: cstring) -> void_cookie_t ---
/**
 * @see ewmh_set_desktop_names
 */
ewmh_set_desktop_names_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, strings_len: u32, strings: cstring) -> void_cookie_t ---
/**
 * @brief  Send  GetProperty request  to  get _NET_DESKTOP_NAMES  root
 *        window property
 *
 * @param ewmh The information relative to EWMH
 * @return The _NET_DESKTOP_NAMES cookie of the GetProperty request
 */
ewmh_get_desktop_names_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---
/**
 * @see ewmh_get_desktop_names_unchecked
 */
ewmh_get_desktop_names :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---

/**
 * @brief Send a ChangeProperty request for _NET_ACTIVE_WINDOW
 *
 * _NET_ACTIVE_WINDOW, WINDOW/32
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param new_active_window The window to make active
 * @return Cookie associated with the ChangeProperty _NET_ACTIVE_WINDOW request
 */
ewmh_set_active_window :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, new_active_window: window_t) -> void_cookie_t ---

/**
 * @see ewmh_set_active_window
 */
ewmh_set_active_window_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, new_active_window: window_t) -> void_cookie_t ---

/**
 * @brief Send ClientMessage requesting to change the _NET_ACTIVE_WINDOW
 *
 * The window ID  of the currently active window or  None if no window
 * has  the focus.  This  is a  read-only property  set by  the Window
 * Manager. If a Client wants to activate another window, it MUST send
 * a  _NET_ACTIVE_WINDOW  client  message  to  the  root  window.  The
 * timestamp is Client's  last user activity timestamp at  the time of
 * the request, and the currently active window is the Client's active
 * toplevel window, if any (the Window Manager may be e.g. more likely
 * to obey  the request  if it will  mean transferring focus  from one
 * active window to another).
 *
 * @see ewmh_client_source_type_t
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @param window_to_active The window ID to activate
 * @param source_indication The source indication
 * @param timestamp The client's last user activity timestamp
 * @param current_active_window The currently active window or None
 */
ewmh_request_change_active_window :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, window_to_activate: window_t, source_indication: ewmh_client_source_type_t, timestamp: timestamp_t, current_active_window: window_t) -> void_cookie_t ---

/**
 * @brief  Send  GetProperty request  to  get _NET_ACTIVE_WINDOW  root
 *        window property
 *
 * The window ID  of the currently active window or  None if no window
 * has  the focus.  This is  a read-only  property set  by  the Window
 * Manager.  This property  SHOULD be  set and  updated by  the Window
 * Manager.
 *
 * This form can be used only if  the request will cause a reply to be
 * generated. Any returned error will be placed in the event queue.
 *
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @return The _NET_ACTIVE_WINDOW cookie of the GetProperty request
 */
ewmh_get_active_window_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---

/**
 * @brief  Send  GetProperty request  to  get _NET_ACTIVE_WINDOW  root
 *        window property
 *
 * @see ewmh_get_active_window_unchecked
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @return The _NET_ACTIVE_WINDOW cookie of the GetProperty request
 */
ewmh_get_active_window :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---


/**
 * @brief Send a ChangeProperty request for _NET_WORKAREA
 *
 * _NET_WORKAREA, x, y, width, height CARDINAL[][4]/32
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param list_len The number of desktops workareas
 * @param list The desktops workareas
 * @return Cookie associated with the ChangeProperty _NET_WORKAREA request
 */
ewmh_set_workarea :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, list_len: _c.uint32_t, list: ^ewmh_geometry_t) -> void_cookie_t ---

/**
 * @see ewmh_set_workarea
 */
ewmh_set_workarea_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, list_len: _c.uint32_t, list: ^ewmh_geometry_t) -> void_cookie_t ---

/**
 * @brief  Send  GetProperty request  to  get _NET_WORKAREA  root
 *        window property
 *
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @return The _NET_WORKAREA cookie of the GetProperty request
 */
ewmh_get_workarea_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---

/**
 * @see ewmh_get_virtual_roots_unchecked
 */
ewmh_get_workarea :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---

/**
 * @brief Get  the desktop  geometry from a  GetProperty _NET_WORKAREA
 * reply
 *
 * @param wa The  current workarea
 * @param r GetProperty _NET_WORKAREA reply
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_workarea_from_reply :: proc(wa: ^ewmh_get_workarea_reply_t, r: ^get_property_reply_t) -> u8 ---

/**
 * @brief Get reply from the GetProperty _NET_WORKAREA cookie
 *
 * The  parameter  e  supplied  to  this  function  must  be  NULL  if
 * get_workarea_unchecked()  is used.   Otherwise,  it stores  the
 * error if any.
 *
 * @param ewmh The information relative to EWMH
 * @param cookie The _NET_WORKAREA GetProperty request cookie
 * @param wa The current workareas of desktops
 * @param The generic_error_t supplied
 * @return Return 1 on success, 0 otherwise
 */
ewmh_get_workarea_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, wa: ewmh_get_workarea_reply_t, e: ^^generic_error_t) -> u8 ---

/**
 * @brief Wipe the workarea list reply
 *
 * This function must be called to free the memory allocated for atoms
 * when   the  reply   is  requested   in  ewmh_get_workarea_reply
 * function.
 *
 * @param r The X reply to be freed
 */
ewmh_get_workarea_reply_wipe :: proc(r: ^ewmh_get_workarea_reply_t) ---

/**
 * @brief Send a ChangeProperty request for _NET_SUPPORTING_WM_CHECK
 *
 * _NET_SUPPORTING_WM_CHECK, WINDOW/32
 *
 * @param ewmh The per-screen EWMH information
 * @param parent_window The root window or child window created by the WM
 * @param child_window The child window created by the WM
 * @return Cookie associated with the ChangeProperty _NET_SUPPORTING_WM_CHECK request
 */
ewmh_set_supporting_wm_check :: proc(ewmh: ^ewmh_connection_t, parent_window: window_t, child_window: window_t) -> void_cookie_t ---

/**
 * @see ewmh_set_supporting_wm_check
 */
ewmh_set_supporting_wm_check_checked :: proc(ewmh: ^ewmh_connection_t, parent_window: window_t, child_window: window_t) -> void_cookie_t ---

/**
 * @brief  Send GetProperty  request  to get  _NET_SUPPORTING_WM_CHECK
 *        root window property
 *
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @return The _NET_SUPPORTING_WM_CHECK cookie of the GetProperty request
 */
ewmh_get_supporting_wm_check_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

/**
 * @see ewmh_get_supporting_wm_check_unchecked
 */
ewmh_get_supporting_wm_check :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---


/**
 * @brief Send a ChangeProperty request for _NET_VIRTUAL_ROOTS
 *
 * _NET_VIRTUAL_ROOTS, WINDOW[]/32
 *
 * @param ewmh The per-screen EWMH information
 * @param screen_nbr The screen number
 * @param list_len The number of virtual root windows
 * @param list The virtual root windows
 * @return Cookie associated with the ChangeProperty _NET_VIRTUAL_ROOTS request
 */
ewmh_set_virtual_roots :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, list_len: u32, list: ^window_t) -> void_cookie_t ---

/**
 * @see ewmh_set_virtual_roots
 */
ewmh_set_virtual_roots_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, list_len: u32, list: ^window_t) -> void_cookie_t ---

/**
 * @brief  Send  GetProperty  request  to  get  _NET_VIRTUAL_ROOTS  root
 *        window property
 *
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @param list_len The number of virtual root windows
 * @param list The virtual root windows
 * @return Cookie associated with the GetProperty _NET_VIRTUAL_ROOTS request
 */
ewmh_get_virtual_roots :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, list_len: u32, list: ^window_t) -> get_property_cookie_t ---

/**
 * @brief  Send  GetProperty request  to  get _NET_VIRTUAL_ROOTS  root
 *        window property
 *
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @return The _NET_VIRTUAL_ROOTS cookie of the GetProperty request
 */
ewmh_get_virtual_roots_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---

ewmh_set_desktop_layout :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, orientation: ewmh_desktop_layout_orientation_t, columns: u32, rows: u32, starting_corner: ewmh_desktop_layout_starting_corner_t) -> void_cookie_t ---

ewmh_set_desktop_layout_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, orientation: ewmh_desktop_layout_orientation_t, columns: u32, rows: u32, starting_corner: ewmh_desktop_layout_starting_corner_t) -> void_cookie_t ---

/**
 * @brief  Send GetProperty  request to  get  _NET_DESKTOP_LAYOUT root
 *        window property
 *
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @return The _NET_DESKTOP_LAYOUT cookie of the GetProperty request
 */
ewmh_get_desktop_layout_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---

/**
 * @see ewmh_get_desktop_layout_unchecked
 */
ewmh_get_desktop_layout :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---

ewmh_get_desktop_layout_from_reply :: proc(desktop_layouts: ^ewmh_get_desktop_layout_reply_t, r: ^get_property_reply_t) -> u8 ---

ewmh_get_desktop_layout_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, desktop_layouts: ^ewmh_get_desktop_layout_reply_t, e: ^^generic_error_t) -> u8 ---

ewmh_set_showing_desktop :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, desktop: u32) -> void_cookie_t ---

ewmh_set_showing_desktop_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, desktop: u32) -> void_cookie_t ---

ewmh_get_showing_desktop_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---

ewmh_get_showing_desktop :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_property_cookie_t ---


ewmh_request_close_window :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, window_to_close: window_t, timestamp: timestamp_t, source_indication: ewmh_client_source_type_t) -> void_cookie_t ---

ewmh_request_moveresize_window :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, moveresize_window: window_t, gravity: gravity_t, source_indication: ewmh_client_source_type_t, flags: ewmh_moveresize_window_opt_flags_t, x, y, width, height: u32) -> void_cookie_t ---

ewmh_request_wm_moveresize :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, moveresize_window: window_t, x_root: u32, y_root: u32, direction: ewmh_moveresize_direction_t, button: button_index_t, source_indication: ewmh_client_source_type_t) -> void_cookie_t ---

ewmh_request_restack_window :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, window_to_restack: window_t, sibling_window: window_t, detail: stack_mode_t) -> void_cookie_t ---

ewmh_set_wm_name :: proc(ewmh: ^ewmh_connection_t, window: window_t, strings_len: u32, strings: cstring) -> void_cookie_t ---

ewmh_set_wm_name_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, strings_len: u32, strings: cstring) -> void_cookie_t ---

ewmh_get_wm_name_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_name :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_set_wm_visible_name :: proc(ewmh: ^ewmh_connection_t, window: window_t, strings_len: u32, strings: cstring) -> void_cookie_t ---

ewmh_set_wm_visible_name_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, strings_len: u32, strings: cstring) -> void_cookie_t ---

ewmh_get_wm_visible_name_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_visible_name :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_set_wm_icon_name :: proc(ewmh: ^ewmh_connection_t, window: window_t, strings_len: u32, strings: cstring) -> void_cookie_t ---

ewmh_set_wm_icon_name_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, strings_len: u32, strings: cstring) -> void_cookie_t ---

ewmh_get_wm_icon_name_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_icon_name :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_set_wm_visible_icon_name :: proc(ewmh: ^ewmh_connection_t, window: window_t, strings_len: u32, strings: cstring) -> void_cookie_t ---

ewmh_set_wm_visible_icon_name_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, strings_len: u32, strings: cstring) -> void_cookie_t ---

ewmh_get_wm_visible_icon_name_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_visible_icon_name :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_set_wm_desktop :: proc(ewmh: ^ewmh_connection_t, window: window_t, desktop: u32) -> void_cookie_t ---

ewmh_set_wm_desktop_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, desktop: u32) -> void_cookie_t ---

ewmh_get_wm_desktop_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_desktop :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_request_change_wm_desktop :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, client_window: window_t, new_desktop: u32, source_indication: ewmh_client_source_type_t) -> void_cookie_t ---

ewmh_set_wm_window_type :: proc(ewmh: ^ewmh_connection_t, window: window_t, list_len: u32, list: ^atom_t) -> void_cookie_t ---

ewmh_set_wm_window_type_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, list_len: u32, list: ^atom_t) -> void_cookie_t ---

ewmh_get_wm_window_type_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_window_type :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_window_type_from_reply :: proc(wtypes: ^ewmh_get_atoms_reply_t, r: ^get_property_reply_t) -> u8 ---

ewmh_get_wm_window_type_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, name: ^ewmh_get_atoms_reply_t, e: ^^generic_error_t) -> u8 ---

ewmh_set_wm_state :: proc(ewmh: ^ewmh_connection_t, window: window_t, list_len: u32, list: ^atom_t) -> void_cookie_t ---

ewmh_set_wm_state_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, list_len: u32, list: ^atom_t) -> void_cookie_t ---

ewmh_get_wm_state_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_state :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_state_from_reply :: proc(wtypes: ^ewmh_get_atoms_reply_t, r: ^get_property_reply_t) -> u8 ---

ewmh_get_wm_state_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, name: ^ewmh_get_atoms_reply_t, e: ^^generic_error_t) -> u8 ---

ewmh_request_change_wm_state :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, client_window: window_t, action: ewmh_wm_state_action_t, first_property: atom_t, second_property: atom_t, source_indication: ewmh_client_source_type_t) -> void_cookie_t ---

ewmh_set_wm_allowed_actions :: proc(ewmh: ^ewmh_connection_t, window: window_t, list_len: u32, list: ^atom_t) -> void_cookie_t ---

ewmh_set_wm_allowed_actions_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, list_len: u32, list: ^atom_t) -> void_cookie_t ---

ewmh_get_wm_allowed_actions_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_allowed_actions :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_allowed_actions_from_reply :: proc(wtypes: ^ewmh_get_atoms_reply_t, r: ^get_property_reply_t) -> u8 ---

ewmh_get_wm_allowed_actions_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, name: ^ewmh_get_atoms_reply_t, e: ^^generic_error_t) -> u8 ---

ewmh_set_wm_strut :: proc(ewmh: ^ewmh_connection_t, window: window_t, left: u32, right: u32, top: u32, bottom: u32) -> void_cookie_t ---

ewmh_set_wm_strut_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, left: u32, right: u32, top: u32, bottom: u32) -> void_cookie_t ---

ewmh_get_wm_strut_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_strut :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_strut_from_reply :: proc(struts: ^ewmh_get_extents_reply_t, r: ^get_property_reply_t) -> u8 ---

ewmh_get_wm_strut_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, struts: ^ewmh_get_extents_reply_t, e: ^^generic_error_t) -> u8 ---

ewmh_set_wm_strut_partial :: proc(ewmh: ^ewmh_connection_t, window: window_t, wm_strut: ewmh_wm_strut_partial_t) -> void_cookie_t ---

ewmh_set_wm_strut_partial_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, wm_strut: ewmh_wm_strut_partial_t) -> void_cookie_t ---

ewmh_get_wm_strut_partial_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_strut_partial :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_strut_partial_from_reply :: proc(struts: ^ewmh_wm_strut_partial_t, r: ^get_property_reply_t) -> u8 ---

ewmh_get_wm_strut_partial_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, struts: ^ewmh_wm_strut_partial_t, e: ^^generic_error_t) -> u8 ---

ewmh_set_wm_icon_geometry :: proc(ewmh: ^ewmh_connection_t, window: window_t, left: u32, right: u32, top: u32, bottom: u32) -> void_cookie_t ---

ewmh_set_wm_icon_geometry_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, left: u32, right: u32, top: u32, bottom: u32) -> void_cookie_t ---

ewmh_get_wm_icon_geometry_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_icon_geometry :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_icon_geometry_from_reply :: proc(icons: ^ewmh_geometry_t, r: ^get_property_reply_t) -> u8 ---

ewmh_get_wm_icon_geometry_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, icons: ^ewmh_geometry_t, e: ^^generic_error_t) -> u8 ---

ewmh_append_wm_icon_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, width: u32, height: u32, img_len: u32, img: ^u32) -> void_cookie_t ---

ewmh_append_wm_icon :: proc(ewmh: ^ewmh_connection_t, window: window_t, width: u32, height: u32, img_len: u32, img: ^u32) -> void_cookie_t ---

ewmh_get_wm_icon_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_icon :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_icon_from_reply :: proc(wm_icon: ^ewmh_get_wm_icon_reply_t, r: ^get_property_reply_t) -> u8 ---

ewmh_get_wm_icon_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, wm_icon: ^ewmh_get_wm_icon_reply_t, e: ^^generic_error_t) -> u8 ---

ewmh_get_wm_icon_iterator :: proc(wm_icon: ^ewmh_get_wm_icon_reply_t) -> ewmh_wm_icon_iterator_t ---

ewmh_get_wm_icon_length :: proc(wm_icon: ^ewmh_get_wm_icon_reply_t) -> _c.uint ---

ewmh_get_wm_icon_next :: proc(iterator: ^ewmh_wm_icon_iterator_t) ---

ewmh_get_wm_icon_reply_wipe :: proc(wm_icon: ^ewmh_get_wm_icon_reply_t) ---

ewmh_set_wm_pid :: proc(ewmh: ^ewmh_connection_t, window: window_t, pid: u32) -> void_cookie_t ---

ewmh_set_wm_pid_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, pid: u32) -> void_cookie_t ---

ewmh_get_wm_pid_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_pid :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_set_wm_handled_icons :: proc(ewmh: ^ewmh_connection_t, window: window_t, handled_icons: u32) -> void_cookie_t ---

ewmh_set_wm_handled_icons_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, handled_icons: u32) -> void_cookie_t ---

ewmh_get_wm_handled_icons_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_handled_icons :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_set_wm_user_time :: proc(ewmh: ^ewmh_connection_t, window: window_t, xtime: u32) -> void_cookie_t ---

ewmh_set_wm_user_time_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, xtime: u32) -> void_cookie_t ---

ewmh_get_wm_user_time_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_user_time :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_set_wm_user_time_window :: proc(ewmh: ^ewmh_connection_t, window: window_t, xtime: u32) -> void_cookie_t ---

ewmh_set_wm_user_time_window_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, pid: u32) -> void_cookie_t ---

ewmh_get_wm_user_time_window_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_user_time_window :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_set_frame_extents :: proc(ewmh: ^ewmh_connection_t, window: window_t, left, right, top, bottom: u32) -> void_cookie_t ---

ewmh_set_frame_extents_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, left, right, top, bottom: u32) -> void_cookie_t ---

ewmh_get_frame_extents_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_frame_extents :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_frame_extents_from_reply :: proc(frame_extents: ^ewmh_get_extents_reply_t, r: ^get_property_reply_t) -> u8 ---

ewmh_get_frame_extents_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, frame_extents: ^ewmh_get_extents_reply_t, e: ^^generic_error_t) -> u8 ---

ewmh_send_wm_ping :: proc(ewmh: ^ewmh_connection_t, window: window_t, timestamp: timestamp_t) -> void_cookie_t ---

ewmh_set_wm_sync_request_counter :: proc(ewmh: ^ewmh_connection_t, window: window_t, wm_sync_request_counter_atom: atom_t, low, high: u32) -> void_cookie_t ---

ewmh_set_wm_sync_request_counter_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, wm_sync_request_counter_atom: atom_t, low, high: u32) -> void_cookie_t ---

ewmh_get_wm_sync_request_counter_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_sync_request_counter :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_sync_request_counter_from_reply :: proc(counter: ^u64, r: ^get_property_reply_t) -> u8 ---

ewmh_get_wm_sync_request_counter_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, counter: ^u64, e: ^^generic_error_t) -> u8 ---

ewmh_send_wm_sync_request :: proc(ewmh: ^ewmh_connection_t, window: window_t, wm_protocols_atom, wm_sync_request_atom: atom_t, timestamp: timestamp_t, counter: u64) -> void_cookie_t ---

ewmh_set_wm_fullscreen_monitors :: proc(ewmh: ^ewmh_connection_t, window: window_t, top, bottom, left, right: u32) -> void_cookie_t ---

ewmh_set_wm_fullscreen_monitors_checked :: proc(ewmh: ^ewmh_connection_t, window: window_t, top, bottom, left, right: u32) -> void_cookie_t ---

ewmh_get_wm_fullscreen_monitors_unchecked :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_fullscreen_monitors :: proc(ewmh: ^ewmh_connection_t, window: window_t) -> get_property_cookie_t ---

ewmh_get_wm_fullscreen_monitors_from_reply :: proc(monitors: ^ewmh_get_wm_fullscreen_monitors_reply_t, r: ^get_property_reply_t) -> u8 ---

ewmh_get_wm_fullscreen_monitors_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_property_cookie_t, monitors: ^ewmh_get_wm_fullscreen_monitors_reply_t, e: ^^generic_error_t) -> u8 ---


ewmh_request_change_wm_fullscreen_monitors :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, window: window_t, top, bottom, left, right: u32, source_indication: ewmh_client_source_type_t) -> void_cookie_t ---

/**
 * @brief Set _NET_WM_CM_Sn ownership to the given window
 *
 * For  each  screen they  manage,  compositing  manager MUST  acquire
 * ownership of a selection named _NET_WM_CM_Sn, where n is the screen
 * number.
 *
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @param owner The new owner of _NET_WM_CM_Sn selection
 * @param timestamp The client's last user activity timestamp
 * @param selection_data1 Optional data described by ICCCM
 * @param selection_data2 Optional data described by ICCCM
 */
ewmh_set_wm_cm_owner :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, owner: window_t, timestamp: timestamp_t, selection_data1, selection_data2: u32) -> void_cookie_t ---

/**
 * @see ewmh_set_wm_cm_owner
 */
ewmh_set_wm_cm_owner_checked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int, owner: window_t, timestamp: timestamp_t, selection_data1, selection_data2: u32) -> void_cookie_t ---

/**
 * @brief   Send  GetSelectOwner   request   to  get   the  owner   of
 *        _NET_WM_CM_Sn root window property
 *
 * @param ewmh The information relative to EWMH
 * @param screen_nbr The screen number
 * @return The _NET_WM_CM_Sn cookie of the GetSelectionOwner request
 */
ewmh_get_wm_cm_owner_unchecked :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_selection_owner_cookie_t ---

/**
 * @see ewmh_get_wm_cm_owner_unchecked
 */
ewmh_get_wm_cm_owner :: proc(ewmh: ^ewmh_connection_t, screen_nbr: _c.int) -> get_selection_owner_cookie_t ---

ewmh_get_wm_cm_owner_from_reply :: proc(owner: ^window_t, r: ^get_selection_owner_reply_t) -> u8 ---

/**
 * @brief Get reply from the GetProperty _NET_CLIENT_LIST cookie
 *
 * The  parameter  e  supplied  to  this  function  must  be  NULL  if
 * get_window_client_list_unchecked()  is   used.   Otherwise,  it
 * stores the error if any.
 *
 * @param ewmh The information relative to EWMH.
 * @param cookie The _NET_WM_CM_Sn GetSelectionOwner request cookie.
 * @param owner The window ID which owns the selection or None.
 * @param The generic_error_t supplied.
 * @return Return 1 on success, 0 otherwise.
 */
ewmh_get_wm_cm_owner_reply :: proc(ewmh: ^ewmh_connection_t, cookie: get_selection_owner_cookie_t, owner: ^window_t, e: ^^generic_error_t) -> u8 ---

}