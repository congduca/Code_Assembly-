.model small
.stack 100h
.data
.code 
main proc  
    ; main proc
    ; add cong
    mov al,4
    mov bl,5
    add al,bl 
    ; sub tru
    mov al,9
    mov bl,4
    sub al,bl  
    ;mul nhan    
    mov al,200       
    mov bl,4
    mul bl     
    ;div chia     
    ; chia voi thanh ghi 8 bit: phan nguyen luu trong al, phan du luu trong ah
    ; chia voi thanh ghi 16 bit: phan nguyen luu trong ax, phan du luu trong dx
    mov ax,20
    mov bx,6
    div bx    ;bl
   end main 