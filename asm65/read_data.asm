* = $0000

        lda #$ff    ; set up semaphore
        sta $82
loop2:
        ldx #00     ; index
loop:
chk:
        lda $82     ; chk semaphore
        beq chk
        lda $800,x  ; load value
        sta $80     ; store
        lda #$0     ; assert semaphore
        sta $82
        lda #$ff    ; de-assert semaphore
        sta $82
chk2:
        lda $82     ; watch semaphore to be asserted
        bne chk2
        inx
        bne loop
        inc $08
        lda $08
        cmp #$10
        bne loop2
loop3:
        beq loop3
