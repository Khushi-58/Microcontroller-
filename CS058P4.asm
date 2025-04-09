    AREA CS058P4,CODE,READONLY
         ENTRY 
         MOV R1,#19      //NUMBER TO CHECK
         MOV R2,#1       //ASSUME PRIME
         CMP R1,#2       //IF N<2,NOT PRIME
         BLT NOT_PRIME
         BEQ DONE        //2 IS PRIME
         MOV R3,#2
CHECK_LOOP
         MUL R4,R3,R3    R4=R3*R3
         CMP R4,R1
         BGT DONE
DIV_LOOP
         SUB R5,R5,R3      //CHECK DIVISIBILITY
         CMP R5,#0
         BEQ NOT_PRIME
         BGT DIV_LOOP
         ADD R3,R3,#1
         B CHECK_LOOP
NOT_PRIME
         MOV R2,#0
DONE
         END
         