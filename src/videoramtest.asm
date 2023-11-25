*=$0801
!byte $01,$08,$0b,$08,$01,$00,$9e,$32,$30,$36,$31,$00,$00,$00

!cpu 65c02		; set target processor
*=$0801				; Assembled code should start at $0801
				; (where BASIC programs start)
				; The real program starts at $0810 = 2064
!byte $0C,$08			; $080C - pointer to next line of BASIC code
!byte $0A,$00			; 2-byte line number ($000A = 10)
!byte $9E			; SYS BASIC token
!byte $20			; [space]
!byte $32,$30,$36,$34		; $32="2",$30="0",$36="6",$34="4"
				; (ASCII encoded nums for dec starting addr)
!byte $00			; End of Line
!byte $00,$00			; This is address $080C containing
				; 2-byte pointer to next line of BASIC code
				; ($0000 = end of program)
*=$0810				; Here starts the real program

; LDA #0
; STA $9F25	; Select primary VRAM address
; LDA #$20	; VPOKE 1st argument (The 0x00 in this is the 0 bank)
; STA $9F22	; Set primary address bank to 0, stride to 2

; VPOKE 0,0,2
; VPOKE 0,1,8
; The following is the same as the 2 above VPOKE statements

LDA #0		; VPOKE 2nd argument
STA $9F20	; Set Primary address low byte to 0
LDA #0		; Not using the high byte, just want to stay on <0,0>
STA $9F21	; Set primary address high byte to 0
LDA #2		; VPOKE 3rd argument (set the character to "B")
STA $9F23	; Writing $73 to primary address ($00:$0000)

; Set the color to orange
LDA #1		; VPOKE 2nd argument (next byte over)
STA $9f20	; Next byte over
LDA #8		; VPOKE 3rd argument (orange color code)
STA $9f23	; Write the color
rts