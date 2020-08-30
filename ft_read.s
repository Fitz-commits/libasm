extern ___error
global  _ft_read
; read(int fildes rdi, void *buf rsi, size_t nbyte rdx);
_ft_read:
    push rdi
    call ___error
    cmp dword [rax], 0
    jne _continue
    mov dword [rax], 0
    _continue:
    pop rdi
    mov rax, 0x2000003
    syscall
    jc _error
    ret
_error :
    push r10
    mov r10, rax
    call ___error
    mov [rax], r10
    neg rax
    mov rax, -1
    pop r10
    ret
