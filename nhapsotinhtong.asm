.model small
.stack 100h
.data
    s1 db 'Nhap so: $'
    s2 db 10, 13, 'So vua nhap: $'
    a dw 0
.code
    main proc
        ;Nhap dl
        mov ax, @data
        mov ds, ax
                
        ;In xau s1         
        lea dx, s1
        mov ah, 9
        int 21h
        
        mov bx, 10
        mov cx, 0
        
    nhaptiep:    
        mov ah, 1
        int 21h
        cmp al, 13
        je cong
        sub al, '0'
        mov cl, al
        mov ax, a
        mul bx
        add ax, cx
        mov a, ax
        jmp nhaptiep
        
cong:        
        mov cx, 0
        
        mov bx, a
        mov ax, 0
        
cong1:    
        add ax, cx
        add cx, 1
        cmp cx, bx
        jle cong1
        
        mov a, ax
        
    enter:
        mov ah, 9
        lea dx, s2
        int 21h
        
        mov bx, 10
        mov ax, a
        mov cx, 0
    
    chiatiep:    
        mov dx, 0
        div bx
        push dx
        inc cl
        cmp ax, 0
        je intiep
        jmp chiatiep
        
        
    intiep:
        mov ah, 2
        pop dx
        add dx, '0'
        int 21h
        loop intiep
        
    ketthuc:            
        mov ah, 4ch
        int 21h
    main endp
end