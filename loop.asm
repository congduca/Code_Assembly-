           .model small
           .stack 10h
           .data
           
           .code
             main proc
           
                mov ch, 0
                mov cl, 10 
                mov ah,2
                mov dl,48 
                
               intiep:       
                int 21h
                mov bl,dl 
                mov dl,32                 
                int 21h
                mov dl,bl
                inc dl
                  
                loop intiep
               kt: 
                mov ah,4ch
                int 21h  
             
                
                
                main endp
             end main
                           
                           
        