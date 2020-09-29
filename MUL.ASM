.model small
.data
a dw 30h
b dw 25h
c dw ?

.code
mov ax,@data
mov ds,ax
mov ax,a
mov bx,b
mul b
mov c,ax
mov ah,4ch
int 21h
end
