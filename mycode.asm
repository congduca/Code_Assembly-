.model small
.stack 100h
.data
   s1 db 'Hello first asseembly progams'      
   s2 db 'Character: $'
.code
   main proc
    mov ax,@data
    mov ds,ax
    ;hien thi xau ki tu
    ;label: ma lenh toan hang; comment
    mov ah,9
    lea dx,s1
    int 21h          
    ;input character
    mov ah,1
    int 21h ;char --> al     
    mov bl,al
    
    ; display s2
    mov ah,9
    lea dx,s2
    int 21h      
    
    ;dispaly char   
    mov ah,2
    mov dl,bl
    int 21h
    
    
    ;ket thuc chuong trinh
    mov ah,4ch ;mox ax,4c00h
    int 21h
    
  main endp
end main                                                             