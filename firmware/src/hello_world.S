* = $8000
    ; this is just here to make dxa disassemble things in a friendly manner
    .word start

start:
    ; clear the screen
    lda #$00
    sta $FB
    lda #$04
    sta $FC
    lda #32
    jsr set_screen_bytes    

    ; set the background to black
    lda #0
    sta $D020
    sta $D021

    ; set the foreground to white
    lda #$00
    sta $FB
    lda #$D8
    sta $FC

    lda #1
    jsr set_screen_bytes
    rts

// sets a screen (25x40) full of data to a given byte
// input: A: data to write to the screen buffer
//        ($FB-$FC): address of the screen buffer
// clobbers: X, Y
set_screen_bytes:
    ldx #0 ; X is the line number
    ldy #0 ; Y is the column number

writeloop:
    sta ($FB), Y
    iny
    cpy #40
    bne writeloop

    inx
    cpx #25
    beq done_screen

    ; add 40 to 2-byte value at $FB
    ; carry-in is 0 because the cpx earlier won't ever see X > #25
    pha
    lda #40
    adc $FB
    sta $FB
    lda #0
    adc $FC
    sta $FC

    ldy #0
    pla
    jmp writeloop

done_screen:
    rts

.dsb $a000 - *, $00
