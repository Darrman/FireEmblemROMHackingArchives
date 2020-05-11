.thumb
.org 0x00
		
		push		{r0-r2, lr}			@ Pushes the registers used aside
		ldr			r0, =0x0202BC00		@ Loads the word 0x0202BC00 to r0 (Offset is the fund address)
		ldr			r1, [r0]			@ r1 is equal to the player's amount of gold
		ldr			r2, GoldAmount
		sub			r1, r2				@ Subtracts your gold by 900
		str			r1, [r0]			@ Stores the new money value in 0x0202BC00
		pop			{r0-r2,pc}			@ Pops the intial register values back in
		bx			r14					@ Goes back to whatever it was doing before this
		
		GoldAmount:
	.long			0x00000384
	
	