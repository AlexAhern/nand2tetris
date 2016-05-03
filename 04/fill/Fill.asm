// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

(START)
@i
M=0

(LOOP)
@24576
D=M
@BLACK
D;JGT
@WHITE
D;JEQ
@LOOP
0;JMP

(BLACK)
@i
M=0
(ILOOP)
	@i
	D=M
	@8192
	D=D-A
	@LOOP
	D;JEQ
	@i
	D=M
	@SCREEN
	A=A+D
	M=-1
	@i
	M=M+1	
	@ILOOP
	0;JMP
(WHITE)
@i
M=0
(JLOOP)
	@i
	D=M
	@8192
	D=D-A
	@LOOP
	D;JEQ
	@i
	D=M
	@SCREEN
	A=A+D
	M=0
	@i
	M=M+1	
	@JLOOP
	0;JMP


(END)
@END
0;JMP
