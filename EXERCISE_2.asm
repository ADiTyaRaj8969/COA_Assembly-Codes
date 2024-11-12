// Program to perform data transfer operations
// 1. Write the data 41h into register C and copy it to Accumulator
	   MVI C,41	// Load 41h into register C
	   MOV A,C	// Copy the content of register C to Accumulator
// 2. Load Register H with 34h and Register L with ABh
	   MVI H,34	// Load 34h into register H
	   MVI L,AB	// Load ABh into register L
// 3. Copy 32h in all the Registers
	   MVI A,32	// Load 32h into Accumulator
	   MVI B,32	// Load 32h into register B
	   MVI C,32	// Load 32h into register C
	   MVI D,32	// Load 32h into register D
	   MVI E,32	// Load 32h into register E
	   MVI H,32	// Load 32h into register H
	   MVI L,32	// Load 32h into register L
// 4. Load accumulator with the content of memory whose address is D000h using three different techniques
// Technique 1: Direct addressing
	   LXI H,D000	// Load HL pair with D000h
	   MOV A,M	// Copy content of memory location D000h to Accumulator
// Technique 2: Using Register Indirect addressing
	   LXI H,D000	// Load HL pair with D000h
	   MOV A,M	// Copy content of memory location D000h to Accumulator
// Technique 3: Using Immediate value
		// This is a pseudo instruction, use the previous values in A
// Exchange the content of memory location D000h and D001h using direct addressing
	   HLT
	   LXI H,D000	// Load HL pair with D000h
	   MOV B,M	// Store content of D000h in register B
	   INX H	// Increment HL to point to D001h
	   MOV C,M	// Store content of D001h in register C
	   MOV M,B	// Move content of B (original D000h) to D001h
	   DCX H	// Decrement HL to point back to D000h
// Indirect addressing to exchange the content
	   MOV M,C	// Move content of C (original D001h) to D000h
	   LXI H,D000	// Load HL pair with D000h
	   MOV B,M	// Store content of D000h in register B
	   INX H	// Increment HL to point to D001h
	   MOV C,M	// Store content of D001h in register C
	   MOV M,B	// Move content of B (original D000h) to D001h
	   DCX H	// Decrement HL to point back to D000h
// End of the program
	   MOV M,C	// Move content of C (original D001h) to D000h
	   HLT	// Halt the program
