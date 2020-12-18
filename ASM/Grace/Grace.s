%define FUN extern fprintf, fopen, fclose
%define MAIN main:
%define CODE "%%define FUN extern fprintf, fopen, fclose%2$c%%define MAIN main:%2$c%%define CODE %4$c%1$s%4$c%2$c%2$csection .data%2$c%3$c.str db CODE, 0%2$c%3$c.name db %4$cGrace_kid.s%4$c, 0%2$c%3$c.w db %4$cw%4$c, 0%2$c%2$csection .text%2$c%3$cglobal main%2$c%3$cFUN%2$c%2$cMAIN%2$c%3$cpush rbp%2$c%3$cmov rbp, rsp%2$c%3$clea rdi, [ rel .name ]%2$c%3$clea rsi, [ rel .w ]%2$c%3$ccall fopen wrt ..plt%2$c%3$cpush rax%2$c%3$cmov rdi, rax%2$c%3$cmov rax, 0%2$c%3$clea rsi, [rel .str]%2$c%3$clea rdx, [rel .str]%2$c%3$cmov rcx, 10%2$c%3$cmov r8, 9%2$c%3$cmov r9, 34%2$c%3$ccall fprintf wrt ..plt%2$c%3$cpop rdi%2$c%3$ccall fclose wrt ..plt%2$c%3$cmov rax, 0%2$c%3$cleave%2$c%3$cret%2$c"

section .data
	.str db CODE, 0
	.name db "Grace_kid.s", 0
	.w db "w", 0

section .text
	global main
	FUN

MAIN
	push rbp
	mov rbp, rsp
	lea rdi, [ rel .name ]
	lea rsi, [ rel .w ]
	call fopen wrt ..plt
	push rax
	mov rdi, rax
	mov rax, 0
	lea rsi, [rel .str]
	lea rdx, [rel .str]
	mov rcx, 10
	mov r8, 9
	mov r9, 34
	call fprintf wrt ..plt
	pop rdi
	call fclose wrt ..plt
	mov rax, 0
	leave
	ret
