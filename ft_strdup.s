extern _ft_strcpy
extern _malloc
extern _ft_strlen

global  _ft_strdup
; ft_stdupp(char *s {rdi})
; copy rdi r12
; ft_strlen r12
; malloc 
_ft_strdup:
    push rdi
    call _ft_strlen
    inc rax
    mov rdi, rax
    call _malloc
    cmp rax, byte 0
    je malloc_error
    pop rsi
    mov rdi, rax
    call _ft_strcpy
    ret

malloc_error:
    ret

