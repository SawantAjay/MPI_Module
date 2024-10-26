       AREA sumbytes,CODE,READONLY
	   EXPORT start
		
start  PROC
		
	   LDR R0,=0X20000100
	   LDR R1,=0X20000000
	   LDR R2,=0X20000000
	   MOV R3, #10
	   
loop   
	   
	   LDRB R4, [R0], #1
	   ADD R1,R1,R4
	   ADC R2,R2,#0
	   SUBS R3,R3,#1
	   BNE loop
	   
	   ADD R1,R1,R2
	   LDR R5,= 0X20000600
	   STR R1,[R5]
	   
	   B .
	   END