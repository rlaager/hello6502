.segment "CODE"
  .org $8000

reset:
  lda #$ff
  sta $6002

  lda #$50
  sta $6000

loop:
  ror
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
