
.model small
.stack 100h ; 256bytes

.data ; empezamos con las variables
    
    num1 db 5
    num2 db 7
    resultado db ? ; ? es para valores deconocidos

.code ; semento de codigo / instruciones
main proc
    mov ax, @data ; llamamos el segmento de datos
    mov ds, ax; pasamos en limpio los datos?
                
    ; guardamos la variable num1 en otra, para luego sumar el num2            
    mov al, num1
    add al, num2
    
    ; luego movemos AL a resultado
    mov resultado, al
    
    ; Toca mostrar el resultado
    add resultado, 30h ; parece ser una convencion a ASCII
    mov dl, resultado
    mov ah, 2
    int 21h
    
    mov ah, 4Ch
    int 21h
    
main endp 
end main
