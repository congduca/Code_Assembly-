.model small
.stack 100h
.data  
   s1 db 'Nhap 1 xau: $'
   s2 db 10,13, 'Xau vua nhap la: $'
   s db 100 DUP ('$') 
.code
   main proc
    mov ax,@data
    mov ds,ax 
    
    lea dx,s1
    mov ah,9
    int 21h
    
    mov ah,10
    lea dx, s
    int 21h
    
    lea dx, s2
    mov ah,9
    int 21h
    
    lea dx, s + 2 
    int 21h
    
   endp main
end
    
    