    AREA CS058P5,CODE,READONLY
         ENTRY
         MOV R1,#5        ;32 BIT NUMBER
         MOV R2,#0        ; COUNTER FORM SET BITS
         MOV R2,#32       ;LOOP COUNTER 
COUNT_LOOP
         LSR R4,R1,#31     ; MOVE LSB TO MSB POSITION
         ADD R2,R2,R4      ;ADD R4 TO COUNT 
         LSR R1,R1,#1      ;LOGICAL SHIFT RIGHT
         SUBS R3,R3,#1     ;DECREASE LOOP COUNTER
         BNE COUNT_LOOP    ;
DONE
         END