.thumb
.org 0x00
		
		
		push		{r0-r1, lr}			@ Pushes the registers used aside
		ldr			r1, =0x0202CF1A 	@ Loads the word 0x0202CF1A to r1
		ldrb		r0, [r1]			@ Loads whatever is at 0x0202CF1A in r0
		add			r0, #0x04			@ Adds four to r0
		strb		r0, [r1]			@ Stores the new value to 0x0202CF1A; +4 Maximum Health
		ldr			r1, =0x0202CF1B 	@ Loads the word 0x0202CF1B to r1
		ldrb		r0, [r1]			@ Loads whatver is at 0x0202CF1B in r0
		add			r0, #0x04			@ Adds four to r0
		strb		r0, [r1]			@ Stores the new value to 0x0202CF1B; +4 Current Health
		ldr			r1, =0x0202CF1C 	@ Loads the word 0x0202CF1C to r1
		ldrb		r0, [r1]			@ Loads whatever is at 0x0202CF1C
		add			r0, #0x02			@ Adds two to r0
		strb		r0, [r1]			@ +2 Mag
		ldr			r1, =0x0202CF1E		@ Basically a pattern at this point, but done for different stats
		ldrb		r0, [r1]
		add			r0, #0x02
		strb		r0, [r1]			@ +2 Spd
		ldr			r1, =0x0202CF1F		
		ldrb		r0, [r1]
		add			r0, #0x02
		strb		r0, [r1]			@ +2 Def
		ldr			r1, =0x0202CF20	
		ldrb		r0, [r1]
		add			r0, #0x02
		strb		r0, [r1]			@ +2 Res
		ldr			r1, =0x0202CF21	
		ldrb		r0, [r1]
		add			r0, #0x02
		strb		r0, [r1]			@ +2 Lck
		pop			{r0-r1,pc}			@ Pops the intial register values back in
		bx			r14					@ Goes back to whatever it was doing before this
		
		