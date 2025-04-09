   AREA CS058P3,CODE,READONLY
        ENTRY 
        LDR R0,=0x20000000;      //LOAD BASE ADDRESS OF NUMBER
        LDR R1,=0X20000000;      //CHANGE RESULT STORAGE ADDRESS
        MOV R2,#5;               //LOOP COUNTER(5 NUMBERS)
        MOV R3,#0;               //INITIALIZE SUM TO 0
  LOOP
        LDR R4,[R0],#4           //LOAD A NUMBER FROM MEM &INCREMENT ADDRESS
        MUL R5,R4,R4             //COMPUTE SQUARE OF THE NUMBER 
        ADD R3,R3,R5             //ADD SQUARE TO THE SUM
        SUBS R2,R2,#1            //REPEAT UNTIL COUNTER REACHES 0
        BNE LOOP
        STR R3,[R1]             //STORE FINAL SUM IN MEM
        STR R5,[R1,#4]          //STORE LAST SQUARED NUMBER 
        STR R2,[R1,#0]          //STORE REMAINING LOOP COUNT
        END