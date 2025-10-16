#make_COM#
ORG 100h ; for COM file.
CALL p1
ADD AX, 1
hlt

;RET ; return to OS.


p1 PROC ; procedure declaration.
MOV AX, 1234h
RET ; return to caller.
p1 ENDP