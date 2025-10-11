.model small
.stack 100h
.data
    mensaje db "Hola, mundo!$"

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 9       ; función para imprimir cadena
    lea dx, mensaje
    int 21h         ; llamada a DOS

    mov ah, 4Ch     ; terminar programa
    int 21h
main endp
end main
