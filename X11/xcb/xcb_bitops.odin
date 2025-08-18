package xcb

/**
 * Create a low-order bitmask.
 * @param n Mask size.
 * @return Mask.
 *
 * Create a bitmask with the lower @p n bits set and the
 * rest of the word clear.
 * @ingroup xcb__bitops
 */
mask :: proc(n: u32) -> u32 {
    return n == 32 ? ~u32(0) : (1 << n) - 1
}

/**
 * Population count.
 * @param x Integer representing a bitset.
 * @return Number of 1 bits in the bitset.
 *
 * This is a reasonably fast algorithm for counting the bits
 * in a 32-bit word.  Currently a classic binary
 * divide-and-conquer popcount: popcount_2() from
 * http://en.wikipedia.org/wiki/Hamming_weight.
 * @ingroup xcb__bitops
 */

/* 15 ops, 3 long immediates, 14 stages, 9 alu ops, 9 alu stages */
popcount :: proc(x: u32) -> u32 {
    m1 := u32(0x55555555)
    m2 := u32(0x33333333)
    m4 := u32(0x0f0f0f0f)
    x := x
    x -= (x >> 1) & m1
    x = (x & m2) + ((x >> 2) & m2)
    x = (x + (x >> 4)) & m4
    x += x >> 8
    return (x + (x >> 16)) & 0x3f
}

/**
 * Round up to the next power-of-two unit size.
 * @param base Number to be rounded up.
 * @param pad Multiple to be rounded to; must be a power of two.
 * @return Rounded-up number.
 *
 * Rounds @p base up to a multiple of @p pad, where @p pad
 * is a power of two.  The more general case is handled by
 * xcb_roundup().
 * @ingroup xcb__bitops
 */
roundup_2 :: proc(base: u32, pad: u32) -> u32 {
    return (base + pad - 1) & -pad
}

/**
 * Round down to the next power-of-two unit size.
 * @param base Number to be rounded down.
 * @param pad Multiple to be rounded to; must be a power of two.
 * @return Rounded-down number.
 *
 * Rounds @p base down to a multiple of @p pad, where @p pad
 * is a power of two.  The more general case is handled by
 * xcb_rounddown().
 * @ingroup xcb__bitops
 */
rounddown_2 :: proc(base: u32, pad: u32) -> u32 {
    return base & -pad
}

/**
 * Round up to the next unit size.
 * @param base Number to be rounded up.
 * @param pad Multiple to be rounded to.
 * @return Rounded-up number.
 *
 * This is a general routine for rounding @p base up
 * to a multiple of @p pad.  If you know that @p pad
 * is a power of two, you should probably call roundup_2()
 * instead.
 * @ingroup xcb__bitops
 */
roundup :: proc(base: u32, pad: u32) -> u32 {
    if pad == 0 do return base  // Safety check
    b: u32 = base + pad - 1
    /* faster if pad is a power of two */
    if ((pad - 1) & pad) == 0 {
        return b & -pad
    }
    return b - b % pad
}

/**
 * Round down to the next unit size.
 * @param base Number to be rounded down.
 * @param pad Multiple to be rounded to.
 * @return Rounded-down number.
 *
 * This is a general routine for rounding @p base down
 * to a multiple of @p pad.  If you know that @p pad
 * is a power of two, you should probably call xcb_rounddown_2()
 * instead.
 * @ingroup xcb__bitops
 */
rounddown :: proc(base: u32, pad: u32) -> u32 {
    if pad == 0 do return base  // Safety check
    /* faster if pad is a power of two */
    if ((pad - 1) & pad) == 0 {
        return base & -pad
    }
    return base - base % pad
}

/**
 * Reverse bits of word.
 * @param x Target word.
 * @param n Number of low-order bits to reverse.
 * @return Word with low @p n bits reversed, all others 0.
 *
 * Reverses the bottom @p n bits of @p x.
 * @ingroup xcb__bitops
 */
bit_reverse :: proc(x: u32, n: u8) -> u32 {
    if n > 32 do return 0  // Safety check
    if n == 0 do return 0
    
    m1: u32 = 0x00ff00ff
    m2: u32 = 0x0f0f0f0f
    m3: u32 = 0x33333333
    m4: u32 = 0x55555555
    x := x
    x = ((x << 16) | (x >> 16))
    x = ((x & m1) << 8) | ((x >> 8) & m1)
    x = ((x & m2) << 4) | ((x >> 4) & m2)
    x = ((x & m3) << 2) | ((x >> 2) & m3)
    x = ((x & m4) << 1) | ((x >> 1) & m4)
    x >>= 32 - n
    return x
}

/**
 * Host byte order.
 * @return The byte order of the host.
 *
 * Tests the host's byte order and returns either
 * XCB_IMAGE_ORDER_MSB_FIRST or XCB_IMAGE_ORDER_LSB_FIRST
 * as appropriate.
 * @ingroup xcb__bitops
 */
host_byte_order :: proc() -> image_order_t {
    endian_test := u32(0x01020304)
    first_byte := cast(^u8)&endian_test
    
    switch first_byte^ {
    case 0x01:
        return image_order_t.IMAGE_ORDER_MSB_FIRST
    case 0x04:
        return image_order_t.IMAGE_ORDER_LSB_FIRST
    }
    panic("Unknown byte order")
}

