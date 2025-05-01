.model small
.stack 100h
.data
  s1 db 'ket qua phep nhan la: $'
.code
main proc
    mov al, 5
    mov cl, 3
    mul cl
   ; add ax, 30h ; Chuy?n d?i k?t qu? thành mã ASCII
    lea dx, s1
    mov ah, 9
    int 21h
    mov ah, 4Ch
    int 21h
endp main
end