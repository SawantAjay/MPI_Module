		AREA mycode,CODE,READONLY
		ENTRY
		EXPORT start
			
start   PROC
		
		LDR R1,=string
		LDR R2,[R1]
		
convert_loop
		
		CMP R2,#0
		BEQ done
		
		CMP R2,#'a'
		BLT store
		
		SUB R2,R2,#32
		STRB R2,[R1]
		
		ADD R1,R1,#1
		LDRB R2,[R1]
		B convert_loop
store 
		STRB R2,[R1]
		ADD R1,R1,#1
		LDRB R2,[R1]
		B convert_loop
done 
		BX LR
		
string 
		DCB "hello world",0
		ENDP
		END
