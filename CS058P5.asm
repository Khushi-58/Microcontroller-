    AREA CS058P5,CODE,READONLY
         ENTRY
         MOV R0,#5   //LOAD FIRST NUMBER (A=5)
         MOV R1,#10   //LOAD SECOND NUMBER(B=10)
         ADD R0,R0,R1  //R0=R0+R1
         SUB R1,R0,R1  //R1=R0-R1
         SUB R0,R0,R1  //R0=R0-R1
   DONE
         END