.section .text.entry
.globl _start
_start:
    move $a0, $sp
    b __start_main
