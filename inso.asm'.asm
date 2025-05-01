           .model small
           .stack 10h
           .data
           
           .code
             main proc
           
               
                mov ah,2
                mov dl,48 
                
               intiep:   
                int 21h
               
                inc dl
                cmp dl,57  
                jle intiep
                
                mov ah,4ch
                int 21h
                
                main endp
             end main
                           
                           
        