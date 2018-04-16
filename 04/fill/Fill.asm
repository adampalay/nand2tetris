// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// screen is from 16384 to 24576

(LOOP)
    @8192
    D=A
    @counter
    M=D

    @24576
    D=M
    @WHITEOUT
    D;JEQ
    @BLACKOUT
    D;JNE
    @LOOP
    0;JMP

(BLACKOUT)

    @counter
    MD=M-1
    @16384
    A=A+D
    M=-1

    @LOOP
    D;JEQ

    @BLACKOUT
    0;JMP


(WHITEOUT)

    @counter
    MD=M-1
    @16384
    A=A+D
    M=0

    @LOOP
    D;JEQ

    @WHITEOUT
    0;JMP


