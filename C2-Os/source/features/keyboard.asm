; ==================================================================
; ==================================================================
; C2OS -- The C2 Operating System kernel
; Developed By- Chathurika Dhananjani, a SOFTWARE ENGINEERING undergraduate From University Of Kelaniya
;

; ==================================================================

; ------------------------------------------------------------------
; os_wait_for_key -- Waits for keypress and returns key
; IN: Nothing; OUT: AX = key pressed, other regs preserved

os_wait_for_key:
	mov ah, 0x11
	int 0x16

	jnz .key_pressed

	hlt
	jmp os_wait_for_key

.key_pressed:
	mov ah, 0x10
	int 0x16
	ret

