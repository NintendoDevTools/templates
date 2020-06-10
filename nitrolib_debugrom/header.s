.global entry_arm9
.global entry_arm7
.global _start

.extern _entrypoint_arm7
.extern _entrypoint_arm9

.section .text

_start:
entry_arm9:
    b _entrypoint_arm9

entry_arm7:
    b _entrypoint_arm7
