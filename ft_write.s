global _ft_write
; write(rdi, rsi, rdx)
; rdi file descriptor
; rsi adress of the string to write
; number byte to write
; error handling
extern	___error 
_ft_write:
    mov rax, 0x2000004
    syscall
    jc _error
    ret
_error :
    push r10
    mov r10, rax
    neg r10w
    call ___error
    mov byte [rax], r10b
    mov rax, -1
    pop r10
    ret
