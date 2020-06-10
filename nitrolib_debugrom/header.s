.global entry_arm9
.global entry_arm7
.global _start

.extern arm9_main
.extern arm7_main

.section .text

_start:
entry_arm9:
    b arm9_main

entry_arm7:
    b arm7_main
