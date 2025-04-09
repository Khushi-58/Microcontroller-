   AREA CS058P2,CODE,READONLY  
	   ENTRY
	   LDR R0,=0x40000000;      //load memory address to store fibonacci number
	   MOV R5,#0x0A;           // FIRST FIBANACCI NUMBER
	   MOV R1,#0;
	   MOV R2,#1;
	   STRB R1,[R0];
	   STRB R2,[R0,#1]!;        //LOOP COUNTER FOR 10 FIBONACCI NUMBER
STORE_FIB
       ADD R3,R2,R1;            //COMPUTE NXT FIBBONACCI NUMBER
	   MOV R1,R2;               //UPDATE R0 TO PREVIOUS
	   MOV R2,R3;
	   STRB R3,[R0,#1]!;        //UPDATE R1 TO NEW FIBONACCI NUMBER
	   SUBS R5,#1;
	   CMP R5,#0 ;             //DECREMENT COUNTER
	   BNE STORE_FIB
HERE B HERE
       END