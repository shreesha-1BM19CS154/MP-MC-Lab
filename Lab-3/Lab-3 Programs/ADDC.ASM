.model small
.data
num1 db 12h,34h,56h,78h
num2 db 12h,34h,56h,78h
res db 4 dup(?)

.code
mov ax,@data
mov ds,ax
mov si,03h
mov cl,04h
clc
deciadd:mov al,num1[si]
        adc al,num2[si]
        daa
        mov res[si],al
        dec si
        loop deciadd
        mov ah,4ch
        int 21h
        end
