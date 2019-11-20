// Set B - Question (b)
// Program to sum the numbers in a array of size 5
// Find Max and Min in the array of size 5 

//Array pointer is stored in R0 and end of array is assumed as 0

@R0
D=M
@curr
M=D
@Min
M=D
@Max
M=D

@total
M=0

(LOOPSTART)
	@curr
	A=M
	D=M
	@LOOPEND
	D;JEQ
	
	@curr
	M=M+1
	@total
	M=M+D
	
	@LOOPSTART
	0;JMP
(LOOPEND)

(CHECKMIN)
	


@LOOPEND
0;JMP
