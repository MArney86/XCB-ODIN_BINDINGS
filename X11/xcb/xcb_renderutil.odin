package xcb

import _c "core:c"

// XCB Picture Format flags - using constants instead of enum for bitflags
PICT_FORMAT_ID         :: 1 << 0
PICT_FORMAT_TYPE       :: 1 << 1
PICT_FORMAT_DEPTH      :: 1 << 2
PICT_FORMAT_RED        :: 1 << 3
PICT_FORMAT_RED_MASK   :: 1 << 4
PICT_FORMAT_GREEN      :: 1 << 5
PICT_FORMAT_GREEN_MASK :: 1 << 6
PICT_FORMAT_BLUE       :: 1 << 7
PICT_FORMAT_BLUE_MASK  :: 1 << 8
PICT_FORMAT_ALPHA      :: 1 << 9
PICT_FORMAT_ALPHA_MASK :: 1 << 10
PICT_FORMAT_COLORMAP   :: 1 << 11

pict_format_t :: u32 // Type alias for the format flags

pict_standard_t :: enum _c.int {
	PICT_STANDARD_ARGB_32,
	PICT_STANDARD_RGB_24,
	PICT_STANDARD_A_8,
	PICT_STANDARD_A_4,
	PICT_STANDARD_A_1,
}

// Opaque struct for composite text stream
render_util_composite_text_stream_t :: distinct rawptr

// Note: render types are defined in render.odin

when ODIN_OS == .Linux {
    foreign import libxcb_renderutil "system:xcb-render-util"
} else when ODIN_OS == .Windows {
    foreign import libxcb_renderutil "system:libxcb-render-util"
} else {
    foreign import libxcb_renderutil "system:xcb-render-util"
}

@(link_prefix="xcb_")
@(default_calling_convention="c")
foreign libxcb_renderutil {
render_util_find_visual_format :: proc(formats: ^render_query_pict_formats_reply_t, visual: visualid_t) -> ^render_pictvisual_t ---
render_util_find_format :: proc(formats: ^render_query_pict_formats_reply_t, mask: _c.ulong, ptemplate: ^render_pictforminfo_t, count: _c.int) -> ^render_pictforminfo_t ---
render_util_find_standard_format :: proc(formats: ^render_query_pict_formats_reply_t, format: pict_standard_t) -> ^render_pictforminfo_t ---
render_util_query_version :: proc(c: ^connection_t) -> ^render_query_version_reply_t ---
render_util_query_formats :: proc(c: ^connection_t) -> ^render_query_pict_formats_reply_t ---
render_util_disconnect :: proc(c: ^connection_t) -> _c.int ---

// Composite text stream functions
render_util_composite_text_stream :: proc(initial_glyphset: render_glyphset_t, total_glyphs: u32, total_glyphset_changes: u32) -> render_util_composite_text_stream_t ---
render_util_glyphs_8 :: proc(stream: render_util_composite_text_stream_t, dx: i16, dy: i16, count: u32, glyphs: ^u8) ---
render_util_glyphs_16 :: proc(stream: render_util_composite_text_stream_t, dx: i16, dy: i16, count: u32, glyphs: ^u16) ---
render_util_glyphs_32 :: proc(stream: render_util_composite_text_stream_t, dx: i16, dy: i16, count: u32, glyphs: ^u32) ---
render_util_change_glyphset :: proc(stream: render_util_composite_text_stream_t, glyphset: render_glyphset_t) ---
render_util_composite_text :: proc(xc: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, src_x: i16, src_y: i16, stream: render_util_composite_text_stream_t) -> void_cookie_t ---
render_util_composite_text_checked :: proc(xc: ^connection_t, op: u8, src: render_picture_t, dst: render_picture_t, mask_format: render_pictformat_t, src_x: i16, src_y: i16, stream: render_util_composite_text_stream_t) -> void_cookie_t ---
render_util_composite_text_free :: proc(stream: render_util_composite_text_stream_t) ---
}