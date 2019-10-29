//Calculates C = A + B
//Pointer for A, B, C are stored in R0, R1, R2 respectively
//Value for n and m are stored in R3 and R4 respectively

@i
M=0

@j
M=0

@R0		//Location of A
D=M
@at
M=D

@R1		//Location of B
D=M
@bt
M=D

@R2		//Location of C
D=M
@ct
M=D


(OUTLOOP)
	@i
	D=M
	@R3		//Value of n
	D=D-M
	@ENDOUT
	D;JGE
	
	@j
	M=0
	
	(INLOOP)
		@j
		D=M
		@R4		//Value of m
		D=D-M
		@ENDIN
		D;JGE
		
		@at
		A=M
		D=M
		
		@bt
		A=M
		D=D+M
		
		@ct
		A=M
		M=D
		
		@at
		M=M+1
		@bt
		M=M+1
		@ct
		M=M+1
		
		@j
		M=M+1
		
		@INLOOP
		0;JMP
	
	(ENDIN)
	@i
	M=M+1
	
	@OUTLOOP
	0;JMP

(ENDOUT)
@ENDOUT
0;JMP
