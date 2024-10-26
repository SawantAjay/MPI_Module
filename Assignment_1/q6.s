		AREA mycode,CODE,READONLY
		ENTRY
		EXPORT start
			
start   PROC
		
		LDR R0, =0XFFFFFFFF
		LDR R1, =0X00000001
		
		ADD R2,R0,R1
		
		SUB R3,R0,R1
		
		MUL R4,R0,R1
		
		UDIV R5,R0,R1
		
		B  .
		
		ENDP
		END