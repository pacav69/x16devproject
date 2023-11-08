
;****************************************
;* Hello World in C64 Assembler         *
;*                                      *
;* Default ACME Configuration Assembler *
;****************************************

*=$0801   ; Starting Address BASIC + 1 =&gt; SYS 2049

  !byte $0C,$08,$40,$00,$9E,$20,$32,$30,$36,$32,$00,$00,$00 ; BASIC CODE: 1024 SYS 2062

  jsr $E544     ; Call the Function that clears the screen
  ldx #$00      ; Put 0 in Register X (Index Register)

.write:
  lda .hello,x  ; Read next character from Address at Label .hello + Offeset X
  jsr $FFD2     ; CHROUT Subroutine, prints the Character loaded into Register A
  inx           ; Increments Register X by 1
  cpx #$0B      ; Compare if Value in Register X equals to 11
  bne .write    ; If Value in Register X is not 11, go back to $033E
  rts           ; Return to Basic

.hello: !text "HELLO WORLD"