extern ___error
global  _ft_read
; read(int fildes rdi, void *buf rsi, size_t nbyte rdx);
_ft_read:
    mov rax, 0x2000003
    syscall
    jc _error
    ret
_error :
    push rax
    call ___error
    pop qword [rax]
    neg rax
    mov rax, -1
    ret