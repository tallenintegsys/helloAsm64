section .data
hello: 		db 'Hello world!',10    ; string \n not NULL terminated
helloLen:  	equ $-hello             ; Length of the string

	global _start
	section .text

_start:
		mov	rax, 1		; The system call sys_write
		mov	rdi, 1		; 1 = STDOUT
		mov	rsi, hello	; ptr to string
		mov	rdx, helloLen	; len (it's a constant not a ptr)
		syscall			; formally, "int 80h" Call the kernel


		mov	rax, 60		; The system call for exit (sys_exit)
		mov	rbx, 0		; Exit with return code of 0 (no error)
		syscall			; formally known as, "int 80h"
