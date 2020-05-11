.thumb
.org 0x00
		
		
		push		{r0-r1, lr}			@ Pushes the registers used aside
		ldr			r1, =0x0202BED5		@ Loads the word 0x0202BED5 to r1
		mov			r0, #0x03			@ r0 equals 0x03
		strb		r0, [r1]			@ CavalierGuy has his original 7 mov
		pop			{r0-r1,pc}			@ Pops the intial register values back in
		bx			r14					@ Goes back to whatever it was doing before this
		
		