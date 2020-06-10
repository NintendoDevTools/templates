OUTPUT_ARCH(arm)
ENTRY(_start)

SECTIONS {
    .debug 0x02700000 : {
        header.o;
    }

    .arm9 : {
        arm9/build/*.o(.text);
        arm9/build/*.o(.rodata);
        arm9/build/*.o(.data);
        arm9/build/*.o(.bss);
    }

    .arm7 : {
        arm7/build/*.o(.text);
        arm7/build/*.o(.rodata);
        arm7/build/*.o(.data);
        arm7/build/*.o(.bss);
    }
}
