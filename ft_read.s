global  _ft_read
; read(int fildes rdi, void *buf rsi, size_t nbyte rdx);
_ft_read:
    cmp rdi, 0
    jl FT_FD_LESS_0
    cmp rdx, 0
    je FT_NOSIZE
    cmp rsi, 0
    je FT_NO_STRING
    mov rax, 0x2000003
    syscall
    jc FT_FD_LESS_0
    ret
FT_NOSIZE:
    mov rax, 0
    ret
FT_FD_LESS_0:
    mov rax, -1
    ret
FT_NO_STRING:
    mov rax, -1
    ret