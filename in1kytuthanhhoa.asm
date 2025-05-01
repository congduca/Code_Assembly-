.model small
.stack 100h
.data
  s1 db 'Nhap 1 ky tu: $'
  s2 db 10,13, 'Ki tu vua nhap la: $'
  s3 db ?, '$' 
.code
    main proc
         mov ax,@data
         mov ds,ax
         
         lea dx, s1
         mov ah,9
         int 21h
         
         mov ah,1
         int 21h
         sub al,32
         mov s3, al
         
         lea dx,s2
         mov ah,9
         int 21h
         
         lea dx, s3  
         mov ah,9
         
         int 21h
         
         mov ah,4ch
         int 21h
         
    endp main
end
    