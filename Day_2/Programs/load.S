.section .text
.global load
.type load, @function
#The above are some of the codes which is needed to write assembly language program

load: 
		add 	a4, a0, zero	//Instanstiate sum register a4 with 0x0; a4 =a0+0;
		add 	a2, a0, a1		//Store cunt of 10 in register a2. Register a1 is loaded with 0xa (decimal 10) from main function
		add		a3, a0, zero	//Initialize intermediate sum register a3 by 0;

loop: 
		add 	a4, a3, a4		// Increment addition : a4 = a3+a4;
		addi 	a3, a3, 1		// Increment intermediate register by 1
		blt 	a3, a2, loop	// blt means branch if less than. If a3 is less than a2, branch to label named <loop>
		add 	a0, a4, zero	// Store the final result to register a0 so that it can be read b the main program
		ret