//Pointer for array is stored in R0 and size stored in R1

@onescount
M=0

@zeroscount
M=0

@R0
D=M
@curr
M=D

@i
M=0

(LOOPSTART1)
	@i
	D=M
	@R1
	D=D-M
	@LOOPEND1
	D;JGE
	
	@curr
	A=M
	D=M
	@ZERO
	D;JEQ
	
	@onescount
	M=M+1
	@ENDIF
	0;JMP
	
	(ZERO)
	@zeroscount
	M=M+1
	
	(ENDIF)
	@curr
	M=M+1
	@i
	M=M+1
	
	@LOOPSTART1
	0;JMP
(LOOPEND1)

@R0
D=M
@curr
M=D

@i
M=0

(LOOPSTART2)
	@i
	D=M
	@zeroscount
	D=D-M
	@LOOPEND2
	D;JGE
	
	@curr
	A=M
	M=0
	
	@curr
	M=M+1
	@i
	M=M+1
	
	@LOOPSTART2
	0;JMP
(LOOPEND2)
	
@i
M=0

(LOOPSTART3)
	@i
	D=M
	@onescount
	D=D-M
	@LOOPEND3
	D;JGE
	
	@curr
	A=M
	M=1
	
	@curr
	M=M+1
	@i
	M=M+1
	
	@LOOPSTART3
	0;JMP
(LOOPEND3)
@LOOPEND3
0;JMP
