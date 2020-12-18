%define ACCESS 21
section .data
sully:
.str db "%%define ACCESS 21%2$csection .data%2$csully:%2$c.str db %3$c%1$s%3$c, 0%2$c.file db %3$cSully_%%d.s%3$c, 0%2$c.exec db %3$cSully_%%d%3$c, 0%2$c.w db %3$cw%3$c, 0%2$c.nasm db %3$cnasm -f elf64 %%s%3$c, 0%2$c.gcc db %3$cgcc %%s.o -o %%s; ./%%s%3$c, 0%2$csection .text%2$cglobal main%2$cextern fprintf, fopen, fclose, sprintf, system%2$cmain:%2$cpush rbp%2$cmov rbp, rsp%2$cmov r12, %4$d%2$ccmp r12, 0%2$cjle end%2$csub rsp, 16%2$clea rdi, [rel rsp]%2$clea rsi, [rel sully.file]%2$cmov rdx, r12%2$ccall sprintf wrt ..plt%2$cmov rdi, rsp%2$cmov rsi, 0%2$cmov rax, ACCESS%2$csyscall%2$ccmp rax, 0x0%2$cjnz code%2$cdec r12%2$ccode:%2$csub rsp, 16%2$clea rdi, [rel rsp]%2$clea rsi, [rel sully.file]%2$cmov rdx, r12%2$ccall sprintf wrt ..plt%2$cmov rdi, rsp%2$clea rsi, [rel sully.w]%2$ccall fopen wrt ..plt%2$cpush rax%2$cmov rdi, rax%2$cmov rax, 0%2$clea rsi, [rel sully.str]%2$clea rdx, [rel sully.str]%2$cmov rcx, 10%2$cmov r8, 34%2$cmov r9, r12%2$ccall fprintf wrt ..plt%2$cpop rdi%2$ccall fclose wrt ..plt%2$clea rdx, [rel rsp]%2$csub rsp, 16%2$clea rdi, [rel rsp]%2$clea rsi, [rel sully.nasm]%2$ccall sprintf wrt ..plt%2$clea rdi, [rel rsp]%2$ccall system wrt ..plt%2$csub rsp, 16%2$clea rdi, [rel rsp]%2$clea rsi, [rel sully.exec]%2$cmov rdx, r12%2$ccall sprintf wrt ..plt%2$clea rdx, [rel rsp]%2$csub rsp, 32%2$clea rdi, [rel rsp]%2$clea rsi, [rel sully.gcc]%2$clea rcx, [rel rsp + 32]%2$clea r8, [rel rsp + 32]%2$ccall sprintf wrt ..plt%2$clea rdi, [rel rsp]%2$ccall system wrt ..plt%2$cend:%2$cleave%2$cmov rax, 0%2$cret", 0
.file db "Sully_%d.s", 0
.exec db "Sully_%d", 0
.w db "w", 0
.nasm db "nasm -f elf64 %s", 0
.gcc db "gcc %s.o -o %s; ./%s", 0
section .text
global main
extern fprintf, fopen, fclose, sprintf, system
main:
push rbp
mov rbp, rsp
mov r12, 5
cmp r12, 0
jle end
sub rsp, 16
lea rdi, [rel rsp]
lea rsi, [rel sully.file]
mov rdx, r12
call sprintf wrt ..plt
mov rdi, rsp
mov rsi, 0
mov rax, ACCESS
syscall
cmp rax, 0x0
jnz code
dec r12
code:
sub rsp, 16
lea rdi, [rel rsp]
lea rsi, [rel sully.file]
mov rdx, r12
call sprintf wrt ..plt
mov rdi, rsp
lea rsi, [rel sully.w]
call fopen wrt ..plt
push rax
mov rdi, rax
mov rax, 0
lea rsi, [rel sully.str]
lea rdx, [rel sully.str]
mov rcx, 10
mov r8, 34
mov r9, r12
call fprintf wrt ..plt
pop rdi
call fclose wrt ..plt
lea rdx, [rel rsp]
sub rsp, 16
lea rdi, [rel rsp]
lea rsi, [rel sully.nasm]
call sprintf wrt ..plt
lea rdi, [rel rsp]
call system wrt ..plt
sub rsp, 16
lea rdi, [rel rsp]
lea rsi, [rel sully.exec]
mov rdx, r12
call sprintf wrt ..plt
lea rdx, [rel rsp]
sub rsp, 32
lea rdi, [rel rsp]
lea rsi, [rel sully.gcc]
lea rcx, [rel rsp + 32]
lea r8, [rel rsp + 32]
call sprintf wrt ..plt
lea rdi, [rel rsp]
call system wrt ..plt
end:
leave
mov rax, 0
ret