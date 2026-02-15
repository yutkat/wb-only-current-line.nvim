# wb-only-current-line.nvim

Restrict `w`, `b`, `W`, `B` word motions to the current line only, preventing the cursor from jumping to adjacent lines.

![gif](https://user-images.githubusercontent.com/8683947/89706387-13e52300-d9a0-11ea-9e01-0adce68c817d.gif)

## Features

- Overrides `w`, `b`, `W`, `B` in normal and visual modes
- When a motion would cross a line boundary, the cursor moves to the end (`$`) or beginning (`^`) of the current line instead
- Supports count prefixes (e.g. `3w`) — the motion repeats up to the count, stopping at the line boundary
