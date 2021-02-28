* = $8000
    ; this is just here to make dxa disassemble things in a friendly manner
    .word start

start:
    ; clear the screen

    ; set the background to black
    lda #0
    sta $D020
    sta $D021

    ; set the foreground to white
    lda #$00
    sta $FB
    lda #$D8
    sta $FC

    ldx #0 ; X is the line number
    ldy #0 ; Y is the column number
    lda #1
writeloop:
    sta ($FB), Y
    iny
    cpy #40
    bne writeloop

    inx
    cpx #25
    beq done_line

    ; add 40 to 2-byte value at $FB
    ; carry-in is 0 because the cpx earlier won't ever see X > #25
    lda #40
    adc $FB
    sta $FB
    lda #0
    adc $FC
    sta $FC

    ldy #0
    lda #1
    jmp writeloop

done_line:
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
