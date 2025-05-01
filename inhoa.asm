.model small 
.stack 100h
.data
    s1 db 'nhap xau: $'
    s2 db 10,13, 'xau vua nhap: $'
    s3 db 10,13, 'chuyen thanh chu hoa: $'    
    s4 db 10,13, 'Chuyen thanh chu thuong: $'
    s  db 100 dup('$')
.code               
    main proc
        mov ax, @data
        mov ds,ax
        
        mov ah,9
        lea dx,s1
        int 21h
        mov cx,0
        mov bx,0
   nhaptiep:
        mov ah,1
        int 21h
        cmp al,13
        je enter
        mov s[bx],al   
        inc bx
        jmp nhaptiep
        
  enter:  
       mov s[bx],'$'
       
       mov ah,9
       lea dx,s2
       int 21h 
       
       mov ah,9
       lea dx, s
       int 21h
       
      
       
       mov ah,9
       lea dx,s3
       int 21h  
       
       mov cx,bx
       mov bx,0 
   tiep:    
       cmp s[bx],97
       jl chuhoa
       sub s[bx],32 
  chuhoa:
        inc bx
        cmp bx,cx
        jle tiep
        
        mov ah,9
        lea dx,s
        int 21h  
           ;
        mov ah,9
        lea dx, s4
        int 21h
        
        mov cx,bx
        mov bx,0
      tiep2:  
        cmp s[bx],65
       jl chuthuong
       add s[bx],32 
  chuthuong:
        inc bx
        cmp bx,cx
        jle tiep2
        
        mov ah,9
        lea dx,s
        int 21h  
       
       
       ;mov cx,bx
       ;mov bx,0
       ;mov ah,2
       
  ; intiep:
   ;    mov dl,s[bx]       
    ;   int 21h
     ;  inc bx
      ; cmp bx,cx
       ;jle intiep
       
       mov ah,4ch
       int 21h
       main endp
    endp main