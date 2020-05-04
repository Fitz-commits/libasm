global _ft_strcpy

	;char  *strcpy(char *dst, char *src)
	;dst = rdi
	;src = rsi

_ft_strcpy:
	push r12
	mov r12, rdi
	mov dl, byte [rsi]
	mov [rdi], dl
	cmp [rsi], byte 0
	jne FT_STRCPY_LOOP
	mov rax, r12
	pop r12
	ret

FT_STRCPY_LOOP:
	inc rdi
	inc rsi
	mov dl, byte [rsi]
	mov byte [rdi], dl
	cmp [rsi], byte 0
	jne FT_STRCPY_LOOP
	mov rax, r12
	pop r12
	ret
