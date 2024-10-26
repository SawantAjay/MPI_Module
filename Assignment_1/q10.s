		AREA mycode,CODE,READONLY
		ENTRY
		EXPORT start
			
start   PROC
		
		LDR R0, =0X2200001C
		MOV R1, #1
		STR R1,[R0]
		
		B .
		ENDP
		END