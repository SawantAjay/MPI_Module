    AREA mycode,CODE,READONLY
	ENTRY
	EXPORT start
					
start
	LDR R0, =0X2005000
	MOV SP, R0
	LDR R1, =0X2006000
	MSR PSP, R1
	
	MOV R0, #0X01
	MOV R1, #0X02
	MOV R2, #0X03
	MOV R3, #0X04
	MOV R4, #0X05
	MOV R5, #0X06
	
	PUSH {R0-R5, LR}
	MRS R6, APSR              
	PUSH {R6}
	
	POP {R7-R12}
	POP {R6}                 
	MSR APSR_nzcvq, R6        
	
	B .
	END