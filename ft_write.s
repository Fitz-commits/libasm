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
    push rax
    call ___error
    pop qword [rax]
    mov rax, -1
    ret
