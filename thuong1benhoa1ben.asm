.model small
.stack 100h
.data
    s1 db 'Nhap xau: $'
    s2 db 10,13,'Xau chu thuong: $'
    s3 db 10,13,'Xau chu hoa: $'
    s4 db 10,13,'Xau so: $'
    a db 100 dup(?)
    b db 100 dup(?)
    c db 100 dup(?)
.code
main proc
    mov ax,@data
    mov ds,ax

    ;in s1
    mov ah,9
    lea dx,s1
    int 21h

    ;nhap 1 xau
    mov bx,0
    mov si,0
    mov di,0
    mov ah,1
nhaptiep:
    int 21h
    cmp al,13
    je thoatnhap
    cmp al,'9'
    jle so
    cmp al,'a'
    jge thuong
    cmp al,'A'
    jl nhaptiep
    mov b[si],al
    inc si
    jmp nhaptiep
thuong:
    cmp al,'z'
    jg nhaptiep
    mov a[bx],al
    inc bx
    jmp nhaptiep
so:
    cmp al,'0'
    jl nhaptiep
    mov c[di],al
    inc di
    jmp nhaptiep
thoatnhap:
    ;in s2
    mov ah,9
    lea dx,s2
    int 21h

    ;in chu thuong
    mov a[bx],'$'
    lea dx,a
    int 21h

    ;in s3
    lea dx,s3
    int 21h

    ;in chu hoa
    mov b[si],'$'
    lea dx,b
    int 21h

    ;in s4
    lea dx,s4
    int 21h

    ;in so
    mov c[di],'$'
    lea dx,c
    int 21h

    ;thoat
    mov ah,4ch
    int 21h
main endp
end