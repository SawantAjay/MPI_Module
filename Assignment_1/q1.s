    AREA mycode, CODE, READONLY
    ENTRY
    EXPORT start

start PROC
    ; Initialize the 64-bit numbers
    ; First number (A) = 0x00000003 FFFFFFFF (upper = 0, lower = 0xFFFFFFFF)
    MOV     R0, #3        ; Upper part of A
    MOV     R1, #0xFFFFFFFF ; Lower part of A

    ; Second number (B) = 0x00000005 00000005 (upper = 0, lower = 2)
    MOV     R2, #5        ; Upper part of B
    MOV     R3, #5        ; Lower part of B

    ; Perform addition
    ADDS    R4, R1, R3     ; Add lower parts (A + B)
    ADCS    R5, R0, R2     ; Add upper parts (A_upper + B_upper + carry)
    ;final ans 0000000900000004
    ; Infinite loop to stop execution
    B     .

    ENDP
    END
