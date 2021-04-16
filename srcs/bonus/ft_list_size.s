bits 64

global ft_list_size

segment .text
ft_list_size:
	push rbp
	mov rbp, rsp
	mov rcx, 0
inc_counter:
	inc rcx
	mov rdi, [rdi + 8]
loop_size:
	cmp rdi, 0
	je end
	jne inc_counter
end:
	mov rax, rcx
	leave
	ret