
@1
	D=M    //copies R1 into D
	@multiply //creates multiply variable
	M=D    // multiply = R1

	@2
	M=0 //2 = 0
(LOOP)
	@multiply
	D=M //copies multiply to D
	@END
	D; JEQ // if multiply equals zero, end 

	@1
	D=D-A // D = multiply -1
	@multiply
	M=D //  reduces mulitply each time

	@2
	D=M   
	@0
	D=D+M // d = R0 + total
	@2
	M=D //total = total + R0

	@LOOP
	0;JMP //jumps back to start of lopo
(END)
	@END
	0; JMP //ends program


