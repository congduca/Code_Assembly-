.model small
.stack 100h
.data 
s1 db 'Nhap so thap phan: $'
S2 DB 10,13, 'so vua nhap la: $'
x dw ?
y dw ?
.code
main proc 
      mov ax, @data
      mov ds, ax
      ;nhap so 
      mov ah,9
      lea dx,s1
      int 21h
      call nhapso
      ;Hien thi so
      mov ah,9
      lea dx,s2
      int 21h
      call hthi
      ;ket thuc
      mov ah,4ch
      int 21h
main endp
      ;nhap
      nhapso proc 
        mov x,0
        mov y,0
        mov bx,10
      nhap:
       mov ah,1
       int 21h
       

endp main
end main 