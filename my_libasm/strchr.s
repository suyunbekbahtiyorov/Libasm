section .text
    ; declare functions

    global my_strchr

; strchr
my_strchr:
        xor rax, rax

    loop_strchr:
        cmp byte[rdi + rax], 0
        jz end
 
        cmp byte[rdi + rax], sil
        jz return_strchr

        inc rax
        jmp loop_strchr

    return_strchr:
        lea rax, [rdi + rax]
        ret

    end:
        xor rax, rax
        ret
