.model small  ; significa que se reserva un espacio de memoria para un programa sencillo
.stack 100h   ; Establecemos el tamano maximo de 256bytes para un programa sencillo

.data ; seccion de definicion de variables
                            
                            
    ; texto = para variables string...
    ; db    = define bytes...
    ; $     = define el fin de la cadena...
    
    ; todo texto va entre comillas dobles... 


    texto db "Soy Glorfindel!$"

.code ; seccion de definicion de instrucciones...
main proc  
    ; proc viene de procedure
    ; finaliza con un endp = fin de procedure
    
    mov ax,@data ; llama al segmento de datos, guarda el valor en ax
    mov ds, ax   ; luego, se carga AX en DS
              
              
              
              
              
    mov ah, 9 ; Instruccion de imprimir 9 = imprimir hasta encontrar el $
    lea dx, texto ; lea no es de leer, si no de Load Effective Address carga la direccion de texto a DX
    int 21h ; 
    
    mov ah, 4Ch
    int 21h

main endp
end main