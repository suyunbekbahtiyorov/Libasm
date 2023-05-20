section .text
    ; declare functions

    global my_strncmp

; strncmp
my_strncmp:
	xor	rcx, rcx                       
    count_n:                           
        cmp	rdx,rcx                   
        jz	return_error                
        mov	al, [rdi + rcx]           
        cmp	byte[rdi + rcx], 0     
        jz	return_n                    
        cmp	byte[rsi + rcx], 0          
        jz	return_n                    
        cmp	al, byte[rsi + rcx]        
        jz	increment_n                

    return_n:                          
        sub	al, byte[rsi + rcx]      
        movsx	rax, al                 
        ret                             

    return_error:                   
        xor	rax, rax                   
        ret                            
        
    increment_n:                    
        inc	rcx                        
        jmp	count_n                    

