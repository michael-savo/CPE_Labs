.global _start
_start:
	
	MOV R0, #2
	MOV R1, #3
	CMP R0, R1
	BMI L1
	ADD R0, R1, R0
	B L2
	L1:
	SUB R0, R1,R0
	L2: