.model small
.model small
.stack 100h
.data
    s1 db 'Nhap so thu nhat: $'
    s2 db 10,13,'Nhap so thu hai: $'
    s3 db 10,13,'Result: $'
    a dw 0
    b dw 0
.code
    main proc
        ; cong 2 so a va b (2 so bat ky)
        mov ax, @data
        mov ds, ax
        
        ;in s1
        lea dx, s1
        mov ah, 9
        int 21h
        
        ;nhap so thu 1
        mov bx,10
        mov cx,0
nhaptiep1:
        mov ah, 1
        int 21h
        cmp al,13
        je thoatnhapso1
        sub al,'0'
        mov cl,al
        mov ax,a
        mul bx
        add ax,cx
        mov a,ax
        jmp nhaptiep1
        
thoatnhapso1:      
        lea dx, s2
        mov ah, 9
        int 21h
        
        ;nhap so thu 2
        mov bx,10
        mov cx,0
        mov ax,0
nhaptiep2:
        mov ah, 1
        int 21h
        cmp al,13
        je thoatnhapso2
        sub al,'0'
        mov cl,al
        mov ax,b
        mul bx
        add ax,cx
        mov b,ax
        jmp nhaptiep2
thoatnhapso2:
        
        lea dx, s3
        mov ah, 9
        int 21h
        
        ;in so a + b
        mov bx,b
        add a,bx
        
        mov bx,10
        mov cx,0
        
        mov ax,a
chiatiep:
        mov dx,0
        div bx ; auto lay ax chia cho bx va lay du vao dx
        inc cl
        
        cmp ax,0
        je thoat
        push dx; day phan du vao stack
        jmp chiatiep
thoat:  
        push dx
        mov ah,2
intiep:
        pop dx
        add dx,48
        int 21h
        loop intiep
               
        mov ah, 4ch
        int 21h
    main endp
end main