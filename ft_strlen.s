global _ft_strlen

_ft_strlen:
	mov rax, -1
	cmp [rdi], byte 0
	jne ft_strlen_loop
	inc rax
	ret
ft_strlen_loop:
	inc rax
	cmp byte [rdi + rax], byte 0
	jne ft_strlen_loop
	ret
