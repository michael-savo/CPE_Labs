.global _start
_start:
	
	LDR R1, =0x20000000
	LDR R2, =0x20000010
	LDR R4, =0x20000020
	MOV R7, #4
	MOV R0, #0

FOR:
	CMP R0, R7
	BEQ RESULT
	
	LDR R5, [R1], #4
	LDR R6, [R2], #4
	ADD R3, R5, R6
	STR R3, [R4], #4
	
	ADD R0, R0, #1
	B FOR

RESULT:
	B RESULT