bits 64

global ft_strcpy
extern ft_strlen

segment .text
ft_strcpy:
	push rbp
	mov rbp, rsp
	mov rcx, 0
loop_cpy:
	cmp BYTE [rsi + rcx], 0
	jz end
	mov rax, [rsi + rcx]
	mov [rdi + rcx], rax
	inc rcx
	jmp loop_cpy
end:
	mov BYTE[rdi + rcx], 0
	mov rax, rdi
	leave
	ret