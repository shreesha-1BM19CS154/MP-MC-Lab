.model small
.data
 a dw 2345h
 b dw 4521h
 d dw 1256h
 c dw ?

.code
 mov ax,@data
 mov ds,ax
 mov bl,a
 add bl,b
 sub bl,d
 mov c,bl
 mov ah,4ch
 int 21h
 end
