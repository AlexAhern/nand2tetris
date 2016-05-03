// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@i
M=1
@prod
M=0
(LOOP)
	@R0
	D=M
	@R1
	D=M
	@ZERO
	D;JEQ
	@R1
	D=M
	@ZERO
	D;JEQ
	@i
	D=M
	@R1
	D=D-M // i=i-R1
	@END
	D;JGT // if (i=R1) >0 goto END
	@R0	
	D=M 
	@prod
	M=M+D //R2 = R2 + R0		
	@prod
	D=M
	@R2
	M=D
	@i
	M=M+1 //i=i+1
	@LOOP
	0;JMP
	(ZERO)
	@R2
	M=0
(END)
	@END
	0;JMP
