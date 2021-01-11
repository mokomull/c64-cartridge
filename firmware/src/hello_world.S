* = $8000
    lda #8
    sta 1024
    lda #5
    sta 1025
    lda #12
    sta 1026
    sta 1027
    lda #15
    sta 1028
    rts

.dsb $a000 - *, $00
