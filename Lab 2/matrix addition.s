.global _start
_start:
	    LDR R1, =0x20000000  
    	LDR R2, =0x20000010  
    	LDR R4, =0x20000020  

    	LDR R5, [R1]         
    	LDR R6, [R2]         
    	ADD R3, R5, R6       
    	STR R3, [R4]        

	    LDR R5, [R1, #4]   
    	LDR R6, [R2, #4]    
    	ADD R3, R5, R6     
    	STR R3, [R4, #4]   

    	LDR R5, [R1, #8]   
    	LDR R6, [R2, #8]     
    	ADD R3, R5, R6       
    	STR R3, [R4, #8]    

    	LDR R5, [R1, #12]   
    	LDR R6, [R2, #12]   
    	ADD R3, R5, R6      
    	STR R3, [R4, #12]  