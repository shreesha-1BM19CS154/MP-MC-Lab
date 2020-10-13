.model small
.data
 a db 11h,13h,15h,17h,19h
 b db 20h,22h,24h,26h,28h
.code
mov ax,@data
mov ds,ax
lea si,a
lea di,b

mov cl,05h

l:mov al,[si]
     xchg al,[di]
     mov [si],al
     inc si
     inc di
     loop l
mov ah,4ch
int 21h
end
