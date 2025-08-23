.global _start
_start:
	
DIFFOFSUMS:
    PUSH {R1, R2, R3, R4, LR}  
    LDR R1, =0x20000000        
    MOV R2, #5                 
    MOV R3, #0                 
    MOV R4, R2                 

FOR:
    CMP R2, #0                 
    BEQ FOR2                   

    LDR R0, [R1], #4           
    PUSH {R0}                  
    SUB R2, R2, #1             
    B FOR                      

FOR2:
    CMP R4, #0                 
    BEQ RESULT                 

    POP {R0}                   
    ADD R3, R3, R0             
    SUB R4, R4, #1             
    B FOR2                     

RESULT:
    MOV R0, R3                 
    POP {R1, R2, R3, R4, LR}   
    MOV PC, LR                 
