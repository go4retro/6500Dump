lda #0
sta $82
loop2: ldx #00
loop: lda $100,x
sta $80
lda #$ff
sta $82
lda #$00
sta $82
inx
bne loop
inc $08
lda $08
cmp #$10
bne loop2
loop3: beq loop3

