bits 64

global ft_putnbr
extern ft_putchar
extern ft_putstr

segment .text
ft_putnbr:
	push rbp
	mov rbp, rsp
	sub rsp, 0x10
	mov DWORD [rbp - 0x4], edi
	cmp DWORD [rbp - 0x4], 0x0
	jnge is_neg
	movsx rax, DWORD [rbp - 0x4]
	mov QWORD [rbp - 0x10],rax
	jmp if

if:
	cmp QWORD [rbp - 0x10], 0x9
	jnle to_div
	jnge to_print

to_print:
	mov rdi, QWORD [rbp - 0x10]
	add rdi, 0x30
	call ft_putchar
	jmp end

to_div:
	mov rdx, 0x0
	mov rcx, 0xa
	mov rax, QWORD [rbp - 0x10]
	div rcx
	mov rdi, rax
	mov QWORD [rbp - 0x10], rdx
	call ft_putnbr
	mov rdi, QWORD [rbp - 0x10]
	add rdi, 0x30
	call ft_putchar
	jmp end

is_neg:
	mov rdi, '-'
	call ft_putchar
	movsx rax, DWORD [rbp - 0x4]
	neg rax
	mov QWORD [rbp - 0x10], rax
	jmp if

end:
	leave
	ret