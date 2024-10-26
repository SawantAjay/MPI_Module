       AREA mycode,CODE,READONLY
	   ENTRY
	   EXPORT start
		   
start  PROC
	
	   LDR R0, = 0xFFFFFFF6
	   LDR R1, = 0x0000000A
	   
	   BL signed_add
	   BL signed_sub
	   
	   B .
	   
signed_add
	   ADD R4,R0,R1
	   BX LR
	   
signed_sub
	   SUB R3,R0,R1
	   BX LR
	   
stop   
	   B stop
	   
	   END