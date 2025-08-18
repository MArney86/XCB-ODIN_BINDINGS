package xcb

import _c "core:c"

/**
 * XCB Image fast pixel ops.
 *
 * Fast inline versions of xcb_image_get_pixel() and
 * xcb_image_put_pixel() for various common cases.
 * The naming convention is xcb_image_put_pixel_FUB()
 * where F is the format and is either XY for bitmaps
 * or Z for pixmaps, U is the bitmap unit size or pixmap
 * bits-per-pixel, and B is the endianness (if needed)
 * and is either M for most-significant-first or L for
 * least-significant-first.  Note that no checking
 * is done on the arguments to these routines---caller beware.
 * Also note that the pixel type is chosen to be appropriate
 * to the unit; bitmaps use int and pixmaps use the appropriate
 * size of unsigned.
 * @ingroup xcb__image_t
 */

image_put_pixel_XY32M :: proc(image: ^image_t, x: u32, y: u32, pixel: _c.int) {
    unit := (x >> 3) & ~mask(2)
    byte := mask(2) - ((x >> 3) & mask(2))
    bit := mask(3) - (x & mask(3))
    m := u8(1 << bit)
    p := u8(pixel << bit)
    bp := (^u8)(uintptr(image.data) + uintptr((y * image.stride) + (unit | byte)))
    bp^ = (bp^ & ~m) | p
}

image_put_pixel_XY32L :: proc(image: ^image_t, x: u32, y: u32, pixel: _c.int) {
    bit := x & mask(3)
    m := u8(1 << bit)
    p := u8(pixel << bit)
    bp := (^u8)(uintptr(image.data) + uintptr((y * image.stride) + (x >> 3)))
    bp^ = (bp^ & ~m) | p
}

image_get_pixel_XY32M :: proc(image: ^image_t, x: u32, y: u32) -> _c.int {
    unit := (x >> 3) & ~mask(2)
    byte := mask(2) - ((x >> 3) & mask(2))
    bit := mask(3) - (x & mask(3))
    bp := (^u8)(uintptr(image.data) + uintptr((y * image.stride) + (unit | byte)))
    return _c.int((bp^ >> bit) & 1)
}

image_get_pixel_XY32L :: proc(image: ^image_t, x: u32, y: u32) -> _c.int {
    bit := x & mask(3)
    bp := (^u8)(uintptr(image.data) + uintptr((y * image.stride) + (x >> 3)))
    return _c.int((bp^ >> bit) & 1)
}

image_put_pixel_Z8 :: proc(image: ^image_t, x: u32, y: u32, pixel: u8) {
    data_ptr := (^u8)(uintptr(image.data) + uintptr(x + y * image.stride))
    data_ptr^ = pixel
}

image_get_pixel_Z8 :: proc(image: ^image_t, x: u32, y: u32) -> u8 {
    data_ptr := (^u8)(uintptr(image.data) + uintptr(x + y * image.stride))
    return data_ptr^
}

image_put_pixel_Z32M :: proc(image: ^image_t, x: u32, y: u32, pixel: u32) {
    row := (^u8)(uintptr(image.data) + uintptr(y * image.stride))
    row_ptr := (^u8)(uintptr(row) + uintptr(x << 2))
    row_ptr^ = u8(pixel >> 24)
    (^u8)(uintptr(row_ptr) + 1)^ = u8(pixel >> 16)
    (^u8)(uintptr(row_ptr) + 2)^ = u8(pixel >> 8)
    (^u8)(uintptr(row_ptr) + 3)^ = u8(pixel)
}

image_put_pixel_Z32L :: proc(image: ^image_t, x: u32, y: u32, pixel: u32) {
    row := (^u8)(uintptr(image.data) + uintptr(y * image.stride))
    row_ptr := (^u8)(uintptr(row) + uintptr(x << 2))
    row_ptr^ = u8(pixel)
    (^u8)(uintptr(row_ptr) + 1)^ = u8(pixel >> 8)
    (^u8)(uintptr(row_ptr) + 2)^ = u8(pixel >> 16)
    (^u8)(uintptr(row_ptr) + 3)^ = u8(pixel >> 24)
}

image_get_pixel_Z32M :: proc(image: ^image_t, x: u32, y: u32) -> u32 {
    row := (^u8)(uintptr(image.data) + uintptr(y * image.stride))
    row_ptr := (^u8)(uintptr(row) + uintptr(x << 2))
    pixel := u32(row_ptr^) << 24
    pixel |= u32((^u8)(uintptr(row_ptr) + 1)^) << 16
    pixel |= u32((^u8)(uintptr(row_ptr) + 2)^) << 8
    return pixel | u32((^u8)(uintptr(row_ptr) + 3)^)
}

image_get_pixel_Z32L :: proc(image: ^image_t, x: u32, y: u32) -> u32 {
    row := (^u8)(uintptr(image.data) + uintptr(y * image.stride))
    row_ptr := (^u8)(uintptr(row) + uintptr(x << 2))
    pixel := u32(row_ptr^)
    pixel |= u32((^u8)(uintptr(row_ptr) + 1)^) << 8
    pixel |= u32((^u8)(uintptr(row_ptr) + 2)^) << 16
    return pixel | u32((^u8)(uintptr(row_ptr) + 3)^) << 24
}
