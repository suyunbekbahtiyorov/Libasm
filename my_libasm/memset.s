section .text
    ; declare functions

    global my_memset

; memset
my_memset:
	xor	rax, rax                

    loop_memset:                
        cmp	rax, rdx            
        jz	return_memset       
        mov	[rdi + rax], sil       
        inc	rax                 
        jmp	loop_memset       

    return_memset:             
        lea	rax, [rdi]         
        ret
