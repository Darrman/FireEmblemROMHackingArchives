.thumb
.org 0x00

		
		Initial:
		push		{r0-r1, lr}			@ Pushes the registers used aside
		ldr			r1, =0x0202BEC4		@ Loads the word 0x0202BEC4 to r1		
		ldrb		r0, [r1]			@ Loads whatever is at 0x0202BEC4 in r0
		cmp			r0, #0x52			@ If r0 is equal to #0x52
		beq			Rescue				@ Go to No Rescue
		b			NoRescue			@ Otherwise, go to Rescue
		
		Rescue:
		mov			r0, #0x10			@ r0 equals #0x10
		strb		r0, [r1]			@ Stores the new value to 0x0202BEC4
		b			End					@ Go to End
		
		NoRescue:
		mov			r0, #0x00			@ r0 equals #0x00
		strb		r0, [r1]			@ Stores the new value to 0x0202BEC4
		b			End					@ Go to End
		
		End:
		ldr			r1, =0x0202BED5		@ Loads the word 0x0202BED5 to r1
		mov			r0, #0x00			@ r0 equals #0x00
		strb		r0, [r1]			@ CavalierGuy only has 4 mov for his second move
		pop			{r0-r1,pc}			@ Pops the intial register values back in
		bx			r14					@ Goes back to whatever it was doing before this
		
		