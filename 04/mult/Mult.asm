// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
// a=R0, b=R1, result=R2

// result=0
@R2
M = 0

// i=b
@R1
D = M

@i
M = D

(LOOP)
// if D==0 JMP to END
@i
D=M

@END
D; JEQ

// D=a
@R0
D=M

// result += a
@R2
M=M+D

// i--
@i
M=M-1

@LOOP
0; JMP

(END)
@END
0; JMP
