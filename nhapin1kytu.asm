.model small 
.stack 100h
.data
  s1 db 'Nhap 1 ky tu: $'
  s2 db 10,13, 'Ki tu vua nhap la: $'
  s3 db ? 
.code
main proc
     mov ax, @data
     mov ds,ax
     
     ;in s1
     lea dx, s1
     mov ah,9
     int 21h
     
     mov ah,1
     int 21h
     mov s3, al
     
     ; in s2
     lea dx, s2
     mov ah,9
     int 21h
     
     mov ah,2
     mov dl, s3
     int 21h
     
     mov ah,4ch
     int 21h
endp main
end