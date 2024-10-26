      AREA blocktransfer, CODE, READONLY    ; Define code section       	  
	  EXPORT start
	
start 
	
	  LDR R0, =0X20000100
	  LDR R1, =0X20000200
	  MOV R2, #16
	   
loop_transfer
	   
	  LDRB R3, [R0], #1
	  STRB R3, [R1], #1
	  SUBS R2,R2, #1
	   
	  BNE loop_transfer
	   
	  B .
	  END
	   