global _start	; nasm derective to set entry point for the program

; this section is used to store initilized data.
;
; you just name memmory addresses and write data
; in memmory starting from that address.
; you can store multiple values using ",", they
; are stored sequentially. 
section .data
        initialized_msg db "I was defined before program ", "execution", 0xA

; this section is used to store data initialized by zeroes
; it is separate section because it is cheaper to initialize large sequential
; amount of data with zeros than scathered data
section .bss
        uninitialized_msg resb 13

section .text

_start:
	; when calling syscall we put syscall number in rax
	; other arguments are put in registers rdi, rsi, rdx, rcx, r8, r9
	mov rsi, initialized_msg ; address where message starts
	mov rdx, 100 ; length of the message
	call _print
        call _exit

_print:
        mov rax, 1 ; write syscall
        mov rdi, 1 ; file descriptor where to write, 1 = to STDOUT
        syscall

_exit:
        mov rax, 60
        xor rdi, rdi ; put 0 inside rdi, 0 - exit code = all OK
        syscall
