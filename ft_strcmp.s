global _ft_strcmp

_ft_strcmp:
    push r12
    push rcx
    mov rcx, -1
    jmp FT_STRCMP_LOOP
FT_STRCMP_LOOP:
    inc rcx
    cmp byte [rdi + rcx], 0
    je stop
    cmp byte [rsi + rcx], 0
    je stop
    movzx rax, byte [rdi + rcx]
    movzx r12, byte [rsi + rcx]
    cmp rax, r12
    je FT_STRCMP_LOOP
    jmp stop
stop:
    movzx rax, byte [rdi + rcx]
    movzx r12, byte [rsi + rcx]
    sub rax, r12
    pop r12
    pop rcx
    ret
