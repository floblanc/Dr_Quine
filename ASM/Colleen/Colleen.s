;out fun
section .data
print:
	.str db ";out fun%2$csection .data%2$cprint:%2$c%3$c.str db %4$c%1$s%4$c, 0%2$c%2$csection .text%2$c%3$cglobal main%2$c%3$cextern printf%2$c%2$cmain:%2$c%3$c;in main%2$c%3$cpush rbp%2$c%3$cmov rbp, rsp%2$c%3$clea rdi, [ rel print.str ]%2$c%3$clea rsi, [ rel print.str ]%2$c%3$cmov rdx, 10%2$c%3$cmov rcx, 9%2$c%3$cmov r8, 34%2$c%3$ccall printf wrt ..plt%2$c%3$cmov rax, 0%2$c%3$cleave%2$c%3$cret%2$c", 0

section .text
	global main
	extern printf

main:
	;in main
	push rbp
	mov rbp, rsp
	lea rdi, [ rel print.str ]
	lea rsi, [ rel print.str ]
	mov rdx, 10
	mov rcx, 9
	mov r8, 34
	call printf wrt ..plt
	mov rax, 0
	leave
	ret
