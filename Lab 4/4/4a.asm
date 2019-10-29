//Stack pointer is R0


@100
D=A
@R0
M=D

@START
0;JMP

(MOD_FUNC)
	@R0
	M=M-1
	A=M
	D=M
	@mt
	M=D
	
	@R0
	M=M-1
	A=M
	D=M
	@at
	M=D
	
	(LOOP)
		@mt
		D=M
		@at
		D=D-M
		@LOOPEND
		D;JGT
		
		@at
		D=M
		@mt
		D=D-M
		@at
		M=D
		
		@LOOP
		0;JMP
	(LOOPEND)
	
	@at
	D=M
	@R0
	M=M-1
	A=M
	A=M
	M=D	
	
	@R0
	M=M-1
	A=M
	A=M
	0;JMP

(START)

@FUNCTION_RETURN
D=A
@R0
A=M
M=D
@R0
M=M+1

@b
D=A
@R0
A=M
M=D
@R0
M=M+1

@a
D=M
@R0
A=M
M=D
@R0
M=M+1

@m
D=M
@R0
A=M
M=D
@R0
M=M+1

@MOD_FUNC
0;JMP

(FUNCTION_RETURN)
@FUNCTION_RETURN
0;JMP
