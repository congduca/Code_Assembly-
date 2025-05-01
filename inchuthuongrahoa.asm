
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
    s1 db 'nhap 1 ky tu: $'
    s2 db 10,13,'doi thanh chu hoa: $'
    s3 db 10,13, 'khong phai chu: $'
.code
  main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,s1
    int 21h 
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,s2
    int 21h
    
    cmp bl,97
    jge doi
    
    cmp bl,65
    jge kd
    cmp bl,90
    
       
    jle kd
    jmp kpchu
    
    doi:
    sub bl,32
  kd:  
    
   
   mov dl,bl 
   mov ah,2
   int 21h 
   jmp kt
  kpchu:
  mov ah,9
  lea dx,s3
  int 21h 
   
   kt:
   mov ah,4ch
   int 21h 
   
  main endp

ret




