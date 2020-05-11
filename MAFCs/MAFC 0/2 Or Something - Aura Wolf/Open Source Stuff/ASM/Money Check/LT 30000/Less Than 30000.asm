.thumb
.org 0x00
		
		Main:
		ldr			r0, =0x0202BC00		@ Loads the word 0x0202BC00 to r0 (Offset is the fund address)
		ldr			r1, [r0]			@ r1 is equal to the player's amount of gold
		ldr 		r2, Minimum			@ Loads the word 0x00007530
		cmp			r1, r2				@ If the player has less than 30000 gold
		blt			TriggerDialogue		@ Then go to TriggerDialogue
		b			DoNotTrigger		@ Otherwise, go to DoNotTrigger
		
		TriggerDialogue:
		mov 		r0, #0x00			@ r0 equals 0x00 (True)
		bx			r14					@ Goes back to whatever it was doing before this
		
		DoNotTrigger:
		mov			r0, #0x01			@ r0 equals 0x01 (False)
		bx			r14					@ Goes back to whatever it was doing before this
		
		Minimum:
	.long				0x00007530
	