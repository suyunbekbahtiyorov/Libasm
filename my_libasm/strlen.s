section .text
    ; declare functions

    global my_strlen

; strlen
my_strlen:
    push  rcx           
    xor   rcx, rcx    

    strlen_next:   

    cmp   [rdi], byte 0  
    jz    strlen_null    

    inc   rcx        
    inc   rdi           
    jmp   strlen_next   

    strlen_null:       

    mov   rax, rcx     
    pop   rcx        
    ret              
