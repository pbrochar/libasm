bits 64

global ft_strlen

segment .text
ft_strlen:
	push rbp
	mov rbp, rsp
	xor rax, rax
loop:
	cmp BYTE [rdi + rax], 0
	jz end
	inc rax
	jmp loop
end:
	leave
	ret