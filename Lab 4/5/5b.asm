@SCREEN
D=A
@addr
M=D

@256
D=A
@n
M=D

@32
D=A
@m
M=D

@row
M=0

@21845
D=A
@oddrow
M=D

@32767
D=A
@evenrow
M=D
@10923
D=A
@evenrow
M=M+D

@i
M=0

(OUTLOOP)
	@i
	D=M
	@n
	D=D-M
	@ENDOUT
	D;JGE
	
	@row
	D=M
	@EVENROW
	D;JEQ
	
	@oddrow
	D=M
	@current
	M=D
	@row
	M=0
	@ROWSTART
	0;JMP
	
	(EVENROW)
	@evenrow
	D=M
	@current
	M=D
	@row
	M=1
	
	(ROWSTART)
	@j
	M=0
	
	(INLOOP)
		@j
		D=M
		@m
		D=D-M
		@ENDIN
		D;JGE
		
		@current
		D=M
		@addr
		A=M
		M=D
		@addr
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
