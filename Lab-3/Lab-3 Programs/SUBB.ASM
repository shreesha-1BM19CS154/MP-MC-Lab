.model small
.data
num1 db 78h,65h,43h,21h
num2 db 12h,34h,56h,78h
res db 4 dup(?)

.code
mov ax,@data
mov ds,ax
mov si,03h
mov cl,04h
clc
decisubb:mov al,num1[si]
         sbb al,num2[si]
         das
         mov res[si],al
         dec si
         loop decisubb
         mov ah,4ch
         int 21h
         end
       
