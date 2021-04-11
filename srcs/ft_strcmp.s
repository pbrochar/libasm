bits 64

global ft_strcmp
 
segment .text
ft_strcmp:
	push rbp
	mov rbp, rsp
	xor rax, rax
loop:
	mov al, BYTE [rdi]
	mov ah, BYTE [rsi]
	cmp al, 0
	je end
	cmp ah, 0
	je end
	cmp ah, al
	jnz end
	inc rdi
	inc rsi
	jmp loop

end:
	;movzx rax, al
	;movzx rbx, ah
	sub rax, rbx
	leave
	ret