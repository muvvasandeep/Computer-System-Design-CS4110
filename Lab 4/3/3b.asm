//Array pointer is stored in R0 and size in R1

@oddcount
M=0

@evencount
M=0

@R0
D=M
@curr
M=D

@i
M=0

(LOOPSTART)
	@i
	D=M
	@R1
	D=D-M
	@LOOPEND
	D;JGE
	
	@1
	D=1
	@curr
	A=M
	D=D&M
	@EVEN
	D;JEQ
	
	@oddcount
	M=M+1
	@ENDIF
	0;JMP
	
	(EVEN)
	@evencount
	M=M+1
	
	(ENDIF)
	@curr
	M=M+1
	@i
	M=M+1
	
	@LOOPSTART
	0;JMP
(LOOPEND)
@LOOPEND
0;JMP
