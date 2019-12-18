# 6502 Hello World

This is a lightly modified version of the 6502 "Hello World" code from [Ben
Eater's video series](https://eater.net/6502).

This version uses [ca65](https://cc65.github.io/doc/ca65.html) instead of
vasm, as ca65 is available in the [cc65 Debian
package](https://packages.debian.org/search?keywords=cc65).

I also included the NMI and IRQ vectors to fully flesh out the 6502 vectors
table.  This feels more correct, at least because now the vector table starts
at $fffa (its actual starting location) rather than $fffc (the location of the
reset vector entry).

The 6522 I/O port controller is referenced using symbolic names (e.g. `io_b`)
rather than address literals (e.g. `$6000`).
