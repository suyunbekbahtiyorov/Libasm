section .text
    ; declare functions
    
    global my_index

; index
my_index:               
    xor rax, rax
    loop_index:                        
        cmp byte[rdi + rax], 0          
        jz end_index                    
 
        cmp byte[rdi + rax], sil       
        jz good_index                   

        inc rax                         
        jmp loop_index                  

    good_index:                         
        lea rax, [rdi + rax]            
        ret                            

    end_index:                          
        xor rax, rax                    
        ret                              
