.global _start
_start:
	
	MOV R0, #2
	MOV R1, #3
	CMP R0, R1
	ADDGE R0, R1, R0
	SUBMI R0, R1,R0