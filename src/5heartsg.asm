*=$0801
!byte $01,$08,$0b,$08,$01,$00,$9e,$32,$30,$36,$31,$00,$00,$00

LDA #0
STA $9F25	; Select primary VRAM address
LDA #$20	; VPOKE 1st argument (The 0x00 in this is the 0 bank)
STA $9F22	; Set primary address bank to 0, stride to 2
LDA #0
STA $9F21	; Set primary address high byte to 0

LDX #0		; Loop counter
LDY #0		; Address offset
next_heart:
	TYA
	STA $9F20	; Set Primary address low byte to 0

	LDA #$53	; <3
	STA $9F23	; Data line
	INY
	TYA		; Next byte over is color
	STA $9f20
	LDA #5		; Green
	STA $9f23	; Write the color
	INX
	INY
	CPX #5
	BNE next_heart
BRK