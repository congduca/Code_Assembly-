.model small
.stack 100h
.data  
nhan db "Xin Chao$"
.code 
main proc 
    ; Viet code vao day 
    
    ; ham ngat ah loai 1
    ; de nhap vao mot ky tu tu ban phim
    mov ah,1
    int 21h 
    
    ; ham ngat ah loai 2
    ; de in ra 1 ky tu 
    mov ah,2
    mov dl,48
    int 21h      
    
    ;ham ngat ky tu loai 9
    ; de in ra 1 chuoi ky tu 
    mov ax, @data  
    mov ds,ax
    mov ah,9
    lea dx,nhan
    int 21h 
    
    ; ham ngat ah, 4ch
    ; de dung chuong trinh 
    mov ah,4ch
    int 21h
    
    
main endp
end main 