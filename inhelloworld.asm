.model small
.stack 100h
.data    
       tin db 'Hello Duc, cau la nguoi may man!$'
.code
main proc
    mov ax, @data
    mov ds, ax 
    lea dx, tin
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    
endp main
end