.model small
.stack 100h
.data
    s1 db 'Nhap 1 xau: $'
    s2 db 10,13, 'Xau vua nhap la: $'
    s db 100 DUP(?)
.code
    main proc
        
        mov ax,@data
        mov ds,ax
        
        ;in s1
        lea dx, s1
        mov ah,9
        int 21h
        
        mov bx,0
        mov ah,1
      nhaptiep:
        int 21h
        cmp al,13
        je thoat
        mov s[bx],al 
        inc bx
        jmp nhaptiep
        
     thoat:
         mov s[bx],'$'
         
         
     ; in s2
        lea dx,s2
        mov ah,9
        int 21h
        
     ; in s
       lea dx,s
       mov ah,9
       int 21h
       
      ;ketthuc ct 
       mov ah,4ch
       int 21h
    
    
    endp main     
   end