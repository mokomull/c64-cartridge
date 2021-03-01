screen_chars = $0400

kb_row = $DC00
kb_column = $DC01

* = $8000
    ; this is just here to make dxa disassemble things in a friendly manner
    .word start

start:
    ; clear the screen
    lda #<screen_chars
    sta $FB
    lda #>screen_chars
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

scan_keyboard:
    ; $FB-FC are the screen buffer where we'll display the results
    lda #<screen_chars
    sta $FB
    lda #>screen_chars
    sta $FC

    ; A will be written to the keyboard rows
    lda #$FE

scan_row:
    sta kb_row
    pha

    lda kb_column
    ldy #0 ; Y is the bit index that we're showing
show_bit:
    lsr
    bcc show_key_down

    ; A is the byte we want to display for this bit
    ; X saves the keyboard row bits while we're doing this.
    tax
    lda #87 ; bold O
    jmp show_next

show_key_down:
    tax
    lda #86 ; bold X

show_next:
    sta ($FB), Y
    txa

    ; skip a character to give visual space between displayed bits
    iny
    iny
    cpy #16
    bne show_bit

    ; increment the buffer address by 80 - give some space between bits
    lda #80
    clc
    adc $FB
    sta $FB
    lda #0
    adc $FC
    sta $FC

    pla
    sec ; rotate in a 1 bit
    rol
    ; restart the scanning when we rotate-out the 0 bit
    bcc scan_keyboard
    ; otherwise scan the next row
    jmp scan_row

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
