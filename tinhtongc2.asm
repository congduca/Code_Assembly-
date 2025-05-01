
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
    s1 db 'Nhap so: $'
    s2 db 10, 13, 'Tong: $'
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        lea dx, s1
        mov ah, 9
        int 21h
        
        mov ah, 1
        int 21h
        sub al, 48 ;doi thanh so
        mov bl, 0  ; s=0
        mov cl, 1  ;i=1
        
        back:
        add bl, cl    ;s=s+i
        add cl, 1       ;i=i+1
        cmp cl, al
        jle back
        
        
        mov ah, 9 
        lea dx, s2
        int 21h 
        
        mov al,bl
        mov ah,0
        mov bl,10
        div bl ; al= thuong , ah =du
        
        mov bl,al
        mov bh,ah
        
        mov ah,2
        mov dl, bl
        add dl, 48
        int 21h
        mov dl,bh
        add bl,48
        int 21h
    kt:            
        mov ah, 4ch
        int 21h
    main endp
end

ret




