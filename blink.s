.segment "CODE"
  .org $8000

reset:
  lda #$ff
  sta $6002

loop:
  lda #$55
  sta $6000

  lda #$aa
  sta $6000

  jmp loop

nmi:
  rti

irq:
  rti

.segment "VECTORS"
  .org $fffa

  .word nmi
  .word reset
  .word irq

; vim: ai ts=2 sts=2 et sw=2
