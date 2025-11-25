# XCB Odin Bindings

Odin language bindings for XCB (X protocol C-language Binding), providing low-level access to the X Window System protocol.

## Overview

XCB is a modern replacement for Xlib that offers a lightweight, efficient interface to the X11 protocol. These bindings enable Odin developers to create native X11 applications with direct protocol access.

## Features

- Complete bindings for XCB core protocol (`xproto`)
- Extension support including:
  - BigRequests (`bigreq`)
  - DRI3 (`dri3`)
  - RandR (`randr`)
  - Render (`render`)
  - MIT-SHM (`shm`)
  - XC-MISC (`xc_misc`)
  - XKB (`xkb`)
- Utility libraries:
  - XCB Cursor
  - XCB EWMH (Extended Window Manager Hints)
  - XCB Image
  - XCB Keysyms
  - XCB Pixel
  - XCB RenderUtil

## Installation

### Recommended Installation

For seamless integration with the Odin standard library collection, install the `xcb` folder in your Odin installation's vendor directory:

```text
<ODIN_ROOT>/vendor/x11/xcb/
```

Where `<ODIN_ROOT>` is your Odin installation directory.

**Example paths:**

- Linux/macOS: `/usr/local/Odin/vendor/x11/xcb/`
- Windows: `C:\Odin\vendor\x11\xcb\`

### Manual Installation

Alternatively, you can clone this repository to any location and import it using relative or absolute paths in your Odin projects.

## Usage

Import the XCB bindings in your Odin code:

```odin
import xcb "vendor:x11/xcb"
```

Or if using a custom installation path:

```odin
import xcb "path/to/xcb"
```

### Notice

some field names in structs and enums may be changed to remove conflict with reserved word differences between C and Odin.

## Version Information

**Current Release:** Bindings based on XCB version 2.4-8build2

## Requirements

- Odin compiler
- XCB libraries installed on your system (Linux/Unix)

## License

Please refer to the XCB LICENSE file for licensing information.

## Contributing

Contributions, issues, and feature requests are welcome. Please ensure any pull requests maintain compatibility with the current XCB version.

## Resources

- [XCB Documentation](https://xcb.freedesktop.org/)
- [Odin Programming Language](https://odin-lang.org/)
- [X11 Protocol Reference](https://www.x.org/releases/current/doc/)
