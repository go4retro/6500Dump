* = $0000

      lda #$ff
      sta $82
loop2:
      ldx #00
loop:
chk:
      lda $82
      beq chk
      stx $80
      lda #$0
      sta $82
      lda #$ff
      sta $82
chk2:
      lda $82
      bne chk2
      inx
      bne loop
      inc $08
      lda $08
      cmp #$10
      bne loop2
loop3:
      beq loop3
