; Everything that comes after a semicolon (;) is a comment

; Assembler-time constants may be defined using 'equ'

section .text

; You should implement functions in the .text section

; the global directive makes a function visible to the test files
global expected_minutes_in_oven
expected_minutes_in_oven:
    mov rax, 40 ;
    ret


global remaining_minutes_in_oven
remaining_minutes_in_oven:
    mov rax, 40 ;
    sub rax, rdi ;
    ret
mov rdi, 30 ;


global preparation_time_in_minutes
preparation_time_in_minutes:
    mov rax, 2 ;
    imul rax, rdi ;
    ret
mov rsi, 2


global elapsed_time_in_minutes
elapsed_time_in_minutes:
    mov  rax, 2;
    imul rax, rdi;
    add rax, rsi;
    ret
mov rdi, 2;
mov rsi, 40;
%ifidn __OUTPUT_FORMAT__,elf64
section .note.GNU-stack noalloc noexec nowrite progbits
%endif
