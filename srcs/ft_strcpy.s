bits 64

extern ft_strlen
global ft_strcpy

segment .text
ft_strcpy:
	push rbp
	mov rbp, rsp
	xor rcx, rcx
loop:
	cmp BYTE [rsi + rcx], 0
	jz end
	mov rax, [rsi + rcx]
	mov [rdi + rcx], rax
	inc rcx
	jmp loop
end:
	mov rax, rdi
	leave
	ret