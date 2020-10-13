.model small
.data
a db 78h
b db 80h

.code
mov ax,@data
mov ds,ax
mov al,a
add al,80h
daa
mov ah,4ch
int 21h
end
