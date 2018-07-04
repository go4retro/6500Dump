
		; 1520 ROM 03 disassembly

		; 2014 Soci/Singular

accu		= $0
longer		= $2
shorter		= $4
cmd_x		= $6
cmd_y		= $8
absorig_x	= $a
absorig_y	= $c
relorig_x	= $e
relorig_y	= $10
num_temp	= $12
num_neg		= $14
count		= $15
fontp		= $16
upper_lower	= $18
quote_counter	= $19
underline	= $1a
font_tmp	= $1b
char_size	= $1c
current_color	= $1d
color		= $1e
cmd_use_pen	= $1f
pen_state	= $20
char_rotation	= $21
dashed		= $22
dash_counter	= $23
step1_x		= $25
sign_x		= $26
step1_y		= $27
sign_y		= $28
stepper_x	= $29
was_x		= $2a
stepper_y	= $2b
serial_buf	= $2c
serial_eot	= $2d
port_a		= $80			; ATNIN=0, CLKIN=1, ATNACK=5, DATAOUT=6, DATAIN=7
port_b		= $81			; DEVICE=0-2, LED=4, REMOVE=5, CHANGE=6, FEED=7
port_c		= $82			; PENDOWN=0, PENUP=1, COLORSWITH=7
port_d		= $83			; STEPX=0-3, STEPY=4-7
latch_l		= $85
latch_now	= $88
control		= $8f

		*= $800

font					; (X), (Y), (PEN), END
		.byte $ff
;SPACE
		.byte $80
;EXCLAMATION MARK
		.byte $22, $25, $35, $33, $23, $26, $2f, $3f, $37, $a7
;QUOTATION MARK
		.byte $1e, $1d, $3e, $bd
;NUMBER SIGN
		.byte $14, $1d, $3c, $35, $46, $07, $0a, $cb
;DOLLAR SIGN
		.byte $14, $35, $47, $39, $19, $0b, $1d, $3d, $2e, $a3
;PERCENT SIGN
		.byte $04, $4d, $1c, $0d, $0b, $1b, $1d, $36, $47, $45, $35, $b7
;AMPERSAND
		.byte $42, $0b, $0d, $1f, $2d, $2b, $07, $05, $13, $23, $c7
;APOSTROPHE
		.byte $2a, $af
;LEFT PARENTHESIS
		.byte $32, $23, $15, $1d, $2f, $bf
;RIGHT PARENTHESIS
		.byte $22, $33, $45, $4d, $3f, $af
;ASTERISK
		.byte $04, $4d, $0c, $45, $2c, $a5
;PLUS SIGN
		.byte $24, $2d, $08, $c9
;COMMA
		.byte $20, $33, $35, $25, $23, $b3
;HYPHEN-MINUS
		.byte $08, $c9
;FULL STOP
		.byte $22, $25, $35, $33, $a3
;SOLIDUS
		.byte $02, $dd
;DIGIT ZERO
		.byte $04, $4d, $3f, $1f, $0d, $05, $13, $33, $45, $cd
;DIGIT ONE
		.byte $1c, $2f, $23, $12, $b3
;DIGIT TWO
		.byte $0c, $1f, $3f, $4d, $4b, $03, $c3
;DIGIT THREE
		.byte $0c, $1f, $3f, $4d, $4b, $39, $29, $38, $47, $45, $33, $13, $85
;DIGIT FOUR
		.byte $32, $3f, $09, $07, $c7
;DIGIT FIVE
		.byte $04, $13, $33, $45, $49, $3b, $0b, $0f, $cf
;DIGIT SIX
		.byte $08, $1b, $3b, $49, $45, $33, $13, $05, $0d, $1f, $3f, $cd
;DIGIT SEVEN
		.byte $02, $4b, $4f, $8f
;DIGIT EIGHT
		.byte $18, $0b, $0d, $1f, $3f, $4d, $4b, $39, $47, $45, $33, $13, $05, $07, $19, $b9
;DIGIT NINE
		.byte $04, $13, $33, $45, $4d, $3f, $1f, $0d, $0b, $19, $39, $cb
;COLON
		.byte $14, $17, $27, $25, $15, $1a, $1d, $2d, $2b, $9b
;SEMICOLON
		.byte $12, $25, $27, $17, $15, $25, $2a, $2d, $1d, $1b, $ab
;LESS-THAN SIGN
		.byte $42, $19, $cf
;EQUALS SIGN
		.byte $16, $47, $1a, $cb
;GREATER-THAN SIGN
		.byte $12, $49, $9f
;QUESTION MARK
		.byte $0c, $1f, $3f, $4d, $4b, $39, $29, $27, $24, $a3
;COMMERCIAL AT
		.byte $36, $3b, $1b, $15, $35, $47, $4b, $3d, $1d, $0b, $05, $13, $c3
;LATIN CAPITAL LETTER A
		.byte $02, $0b, $2f, $4b, $43, $08, $c9
;LATIN CAPITAL LETTER B
		.byte $02, $0f, $3f, $4d, $4b, $39, $08, $39, $47, $45, $33, $83
;LATIN CAPITAL LETTER C
		.byte $44, $33, $13, $05, $0d, $1f, $3f, $cd
;LATIN CAPITAL LETTER D
		.byte $02, $0f, $3f, $4d, $45, $33, $83
;LATIN CAPITAL LETTER E
		.byte $42, $03, $0f, $4f, $38, $89
;LATIN CAPITAL LETTER F
		.byte $02, $0f, $4f, $08, $b9
;LATIN CAPITAL LETTER G
		.byte $4c, $3f, $1f, $0d, $05, $13, $43, $49, $a9
;LATIN CAPITAL LETTER H
		.byte $02, $0f, $4e, $43, $08, $c9
;LATIN CAPITAL LETTER I
		.byte $12, $33, $22, $2f, $1e, $bf
;LATIN CAPITAL LETTER J
		.byte $04, $13, $23, $35, $bf
;LATIN CAPITAL LETTER K
		.byte $02, $0f, $4e, $07, $18, $c3
;LATIN CAPITAL LETTER L
		.byte $0e, $03, $c3
;LATIN CAPITAL LETTER M
		.byte $02, $0f, $2b, $29, $2b, $4f, $c3
;LATIN CAPITAL LETTER N
		.byte $02, $0f, $0c, $45, $4e, $c3
;LATIN CAPITAL LETTER O
		.byte $04, $0d, $1f, $3f, $4d, $45, $33, $13, $85
;LATIN CAPITAL LETTER P
		.byte $02, $0f, $3f, $4d, $4b, $39, $89
;LATIN CAPITAL LETTER Q
		.byte $26, $43, $32, $13, $05, $0d, $1f, $3f, $4d, $45, $b3
;LATIN CAPITAL LETTER R
		.byte $02, $0f, $3f, $4d, $4b, $39, $09, $18, $c3
;LATIN CAPITAL LETTER S
		.byte $04, $13, $33, $45, $47, $39, $19, $0b, $0d, $1f, $3f, $cd
;LATIN CAPITAL LETTER T
		.byte $22, $2f, $0e, $cf
;LATIN CAPITAL LETTER U
		.byte $0e, $05, $13, $33, $45, $cf
;LATIN CAPITAL LETTER V
		.byte $0e, $07, $23, $47, $cf
;LATIN CAPITAL LETTER W
		.byte $0e, $03, $27, $28, $27, $43, $cf
;LATIN CAPITAL LETTER X
		.byte $02, $05, $4d, $4f, $0e, $0d, $45, $c3
;LATIN CAPITAL LETTER Y
		.byte $22, $29, $4d, $4f, $0e, $0d, $a9
;LATIN CAPITAL LETTER Z
		.byte $0e, $4f, $4d, $05, $03, $c3
;LEFT SQUARE BRACKET
		.byte $22, $03, $0f, $af
;POUND SIGN
		.byte $5c, $4d, $3b, $35, $23, $13, $05, $17, $33, $53, $28, $c9
;RIGHT SQUARE BRACKET
		.byte $12, $33, $3f, $9f
;UPWARDS ARROW
		.byte $22, $2d, $08, $2d, $c9
;LEFTWARDS ARROW
		.byte $24, $09, $2d, $08, $d9
;BOX DRAWINGS LIGHT HORIZONTAL
		.byte $08, $f9
;LATIN SMALL LETTER A
		.byte $34, $23, $13, $05, $07, $19, $29, $37, $0a, $2b, $39, $35, $c3
;LATIN SMALL LETTER B
		.byte $0e, $03, $23, $35, $39, $2b, $8b
;LATIN SMALL LETTER C
		.byte $34, $23, $13, $05, $09, $1b, $2b, $b9
;LATIN SMALL LETTER D
		.byte $3a, $1b, $09, $05, $13, $33, $bf
;LATIN SMALL LETTER E
		.byte $06, $37, $39, $2b, $1b, $09, $05, $13, $b3
;LATIN SMALL LETTER F
		.byte $22, $2f, $3f, $18, $b9
;LATIN SMALL LETTER G
		.byte $02, $11, $21, $33, $39, $2b, $1b, $09, $07, $15, $25, $b7
;LATIN SMALL LETTER H
		.byte $02, $0f, $0a, $2b, $39, $b3
;LATIN SMALL LETTER I
		.byte $22, $29, $2a, $ad
;LATIN SMALL LETTER J
		.byte $02, $11, $21, $33, $39, $3a, $bd
;LATIN SMALL LETTER K
		.byte $32, $17, $0e, $03, $04, $bb
;LATIN SMALL LETTER L
		.byte $1e, $13, $a3
;LATIN SMALL LETTER M
		.byte $02, $0b, $08, $1b, $29, $23, $28, $3b, $49, $c3
;LATIN SMALL LETTER N
		.byte $02, $0b, $09, $1b, $2b, $39, $b3
;LATIN SMALL LETTER O
		.byte $04, $09, $1b, $2b, $39, $35, $23, $13, $85
;LATIN SMALL LETTER P
		.byte $04, $25, $37, $39, $2b, $0b, $81
;LATIN SMALL LETTER Q
		.byte $40, $31, $3b, $1b, $09, $07, $15, $b5
;LATIN SMALL LETTER R
		.byte $0a, $19, $13, $18, $2b, $bb
;LATIN SMALL LETTER S
		.byte $04, $13, $23, $35, $27, $17, $09, $1b, $2b, $b9
;LATIN SMALL LETTER T
		.byte $0a, $2b, $1e, $13, $a3
;LATIN SMALL LETTER U
		.byte $0a, $03, $33, $bb
;LATIN SMALL LETTER V
		.byte $0a, $07, $23, $47, $cb
;LATIN SMALL LETTER W
		.byte $0a, $05, $13, $25, $27, $25, $33, $45, $cb
;LATIN SMALL LETTER X
		.byte $02, $4b, $0a, $c3
;LATIN SMALL LETTER Y
		.byte $0a, $09, $25, $4a, $49, $81
;LATIN SMALL LETTER Z
		.byte $0a, $4b, $03, $c3
;BOX DRAWINGS LIGHT VERTICAL
		.byte $30, $bf
;LOW LINE
		.byte $70, $81
;WHITE UP-POINTING TRIANGLE
		.byte $02, $39, $63, $83
;GREEK CAPITAL LETTER PI
		.byte $06, $19, $39, $33, $12, $19, $39, $cb
;WHITE MEDIUM SQUARE
		.byte $02, $0f, $5f, $53, $83
;---------------
reset		sei
		ldx #$3f
		txs
		lda #%10111111		; data hi
		sta port_a
		ldx #%11111111
		stx port_b
		stx port_c
		inx
		stx port_d
		lda #%11100000
		sta control
		txa
		ldx #61
zp_init		sta 0,x
		dex
		bne zp_init
		jsr line_feed
		lda #4
		sta count
		lsr
		sta char_size
stepper_init	ldx #139
		jsr stepper_left
		dec count
		bne stepper_init
		lda #12
		sta count
pen_init	jsr stepper_lr
		lda port_c
		bpl pen_ok
		dec count
		bne pen_init
flash_led	dex
		stx port_b
		jsr wait_5ms
		sta port_d
		beq flash_led
pen_ok		ldx #67
		jsr stepper_right
-		jsr next_color
		ldx #$5f		;white medium square
		jsr print_char
		lda color
		bne -
		dec char_size
paper_feed	jsr carriage_return
idle_loop	jsr wait_5ms
		sta port_d
iec_loop2	jsr atnack_hi
iec_loop	lda port_b
		bpl paper_feed
		asl
		bmi nchange
		jsr next_color
		beq idle_loop
nchange		asl
		bmi nremove
		lda #>512
		sta cmd_x+1
		jsr move_abs_pup
nremove		jsr check_iec
		bpl iec_loop
		lda #%01100000		;atnack and dataout
		jsr set_iec_lines
		jsr wait_serial
		jsr iecin
		lda port_b
		and #%00000111		;device number
		clc
		adc #$24		;4 to 11
		cmp serial_buf
		beq device_ok
iec_skip	jsr data_hi_check
		bmi iec_skip
		bpl iec_loop2

device_ok	jsr check_iec
		bcs device_ok
		lda #$60
		sta serial_buf
		jsr check_iec
		bpl +
		jsr iecin
+		lda serial_buf
		cmp #$60
		blt iec_skip
		cmp #$68
		bge iec_skip
		and #%00000111
		asl
		tay
		lda modes+1,y
		pha
		lda modes,y
		pha
		cpy #4
		blt +
		jsr iecin_number
		tya
+		rts

modes		.rta ascii_mode
		.rta plotter_mode
		.rta set_color
		.rta set_size
		.rta set_rotation
		.rta set_dashed
		.rta set_uplower
		.rta reset
;---------------
set_color	jsr select_pen
		beq skip_rest
;---------------
set_size	and #%00000011
		sta char_size
		bpl skip_rest
;---------------
set_rotation	sta char_rotation
		bpl skip_rest
;---------------
set_dashed	and #%00001111
		sta dashed
		bpl skip_rest
;---------------
set_uplower	and #%00000001
		lsr
		ror
		sta upper_lower
		bcc skip_rest
-		jsr iecin
skip_rest	lda serial_eot
		beq -
		jmp idle_loop
;---------------
iecin2		lda serial_eot
		eor #%11111111
		beq at_eot
;---------------
iecin		jsr check_iec
		bcs iecin
-		jsr data_hi_check
		and #%00100000
		bne -
		sta serial_eot
		ldx #9
-		jsr check_iec
		bcs neot
		dex
		bne -
		jsr data_lo
		dec serial_eot
		ldx #7
-		dex
		bne -
		jsr data_hi_check
neot		ldx #8
iecbitloop	lda port_a
		and #%00000010		;clk
		beq iecbitloop
-		lda port_a
		and #%00000010		;clk
		bne -
		lda port_a
		eor #%11111111
		asl			;data
		ror serial_buf
		dex
		bne iecbitloop
-		jsr check_iec		;clk?
		bcc -
		jsr data_lo
		ldx #20
-		dex
		bne -
		lda serial_eot
		bpl +
		jsr atnack_hi
+		lda serial_buf
		cmp #"{cr}"
at_eot		rts
;---------------
atn_hi		lda #%00100000		;atnack (unused)
		bne set_iec_lines
;---------------
data_lo		lda #%01000000		;data
;---------------
set_iec_lines	ora port_a
		bne sta_iec
;---------------
atnack_hi	lda #%11011111		;atnack
		and port_a
		sta port_a
;---------------
data_hi_check	lda #%10111111		;data
		and port_a
sta_iec		sta port_a
;---------------
check_iec	lda port_a
		cmp port_a
		bne check_iec
		lsr
		ror
		rts
;---------------
ascii_mode	jsr iecin
		beq do_cr
		cmp #"{lf}"
		beq do_cr
		cmp #"{shift return}"
		beq do_shcr
		cmp #"{pi}"
		bne +
		lda #$de
+		cmp #'"'
		bne +
		inc quote_counter
+		eor upper_lower
		sta serial_buf
		and #%01111111
		sec
		sbc #32
		bge +
		lda quote_counter
		and #%00000001
		sta underline
		beq nextchar
		lda serial_buf
		and #%01111111
		ora #%00100000
+		cmp #64
		bge nextchar
		cmp #32
		blt +
		ldx serial_buf
		bpl +
		adc #%00011111
+		sta serial_buf
		jsr in_printarea_x
		bcc +
		jsr carriage_return
+		jsr print_buf
		lsr underline
		bcc nextchar
		jsr set_absorigin
		ldx #$5c		;low line
		jsr print_char
nextchar	lda serial_eot
		beq ascii_mode
		bne skip_rest2

do_cr		jsr carriage_return
		stx quote_counter
		stx underline
		beq nextchar
do_shcr		jsr move_left_side
		beq nextchar
;---------------
plotter_mode	jsr iecin
		stx cmd_use_pen
		cmp #"i"
		bne +
		jsr set_relorigin
+		cmp #"h"
		bne +
		jsr set_absorigin
+		cmp #"m"
		beq nuse_pen
		cmp #"r"
		beq nuse_pen
		cmp #"d"
		beq +
		cmp #"j"
		bne skip_rest2
+		inc cmd_use_pen
nuse_pen	pha
		jsr iecin_number
		sty cmd_x
		sta cmd_x+1
		jsr iecin_number
		sty cmd_y
		sta cmd_y+1
		pla
		and #%00000100
		beq +
		jsr move_abs
		beq skip_rest2
+		jsr move_rel
skip_rest2	jmp skip_rest
;---------------
iecin_number	lda #3
		sta count
		jsr num_clr
-		jsr iecin2
		beq num_end
		cmp #"."
		beq digits_finished
		cmp #"-"
		bne +
		dec num_neg
+		jsr is_digit
		bcs -
next_digit	pha
		asl num_temp
		rol num_temp+1
		ldx num_temp
		ldy num_temp+1
		asl num_temp
		rol num_temp+1
		asl num_temp
		rol num_temp+1
		clc
		txa
		adc num_temp
		sta num_temp
		tya
		adc num_temp+1
		sta num_temp+1
		pla
		clc
		adc num_temp
		sta num_temp
		bcc +
		inc num_temp+1
+		dec count
		beq digits_finished
		jsr iecin2
		beq num_end
		jsr is_digit
		bcc next_digit
-		cmp #"e"
		bne +
		jsr num_clr
+		cmp #" "
		beq num_end
		cmp #","
		beq num_end
digits_finished jsr iecin2
		bne -
num_end		ldy num_temp
		lda num_temp+1
		ldx num_neg
		beq nneg
;---------------
negate		pha
		tya
		eor #$ff
		tay
		pla
		eor #$ff
		iny
		bne nneg
		clc
		adc #1
nneg		rts
;---------------
num_clr		lda #0
		sta num_neg
		sta num_temp
		sta num_temp+1
		rts
;---------------
is_digit	tax
		sec
		sbc #"0"
		blt +
		cmp #10
		blt its_digit
+		txa
		sec
its_digit	rts
;---------------
print_buf	ldx serial_buf
;---------------
print_char	inx
		lda #>font
		sta fontp+1
		ldy #<font
		sty fontp
-		lda (fontp),y
		bpl +
		dex
		beq char_found
+		inc fontp
		bne -
		inc fontp+1
		bne -
char_found	jsr set_relorigin
print_loop	ldy #1
		lda (fontp),y		;exxxyyyp
		sta font_tmp
print_last	lsr
		tax
		and #%00000111
		sta cmd_y
		lda #0
		sta cmd_x+1
		sta cmd_y+1
		rol
		sta cmd_use_pen
		txa
		lsr
		lsr
		lsr
		and #%00000111
		sta cmd_x
		ldx font_tmp
		inx
		beq +
		lda char_rotation
		beq +
		ldy cmd_y
		lda cmd_x
		eor #%00000111
		sta cmd_y
		sty cmd_x
+		ldx char_size
		beq +
-		asl cmd_x
		rol cmd_x+1
		asl cmd_y
		rol cmd_y+1
		dex
		bne -
+		jsr move_rel
		inc fontp
		bne +
		inc fontp+1
+		lda font_tmp
		bpl print_loop
		cmp #$ff
		beq +
		lda #$ff
		sta font_tmp
		lda #$e0
		bne print_last

+		rts
;---------------
move_rel	ldx #2
-		clc
		lda cmd_x,x
		adc relorig_x,x
		sta cmd_x,x
		lda cmd_x+1,x
		adc relorig_x+1,x
		sta cmd_x+1,x
		dex
		dex
		beq -
;---------------
move_abs	ldx #2
-		sec
		lda cmd_x,x
		sbc absorig_x,x
		sta cmd_x,x
		lda cmd_x+1,x
		sbc absorig_x+1,x
		sta cmd_x+1,x
		dex
		dex
		beq -

		ldx #2
-		ldy cmd_x,x
		lda cmd_x+1,x
		sta sign_x,x
		bpl +
		jsr negate
		sta cmd_x+1,x
		sty cmd_x,x
+		dex
		dex
		beq -

		sec
		lda cmd_y
		sbc cmd_x
		lda cmd_y+1
		sbc cmd_x+1
		lda #0
		sta dash_counter
		rol
		rol
		tax
		lda cmd_x+1,x
		sta longer+1
		lsr
		sta accu+1
		lda cmd_x,x
		sta longer
		ror
		sta accu
		txa
		eor #2
		tax
		sta was_x
		lda cmd_x,x
		sta shorter
		lda cmd_x+1,x
		sta shorter+1

move_loop	lda cmd_x
		ora cmd_x+1
		bne +
		lda cmd_y
		ora cmd_y+1
		bne move_v1
		rts

+		lda cmd_y
		ora cmd_y+1
		beq move_h1

		sec
		lda accu
		sbc shorter
		sta accu
		lda accu+1
		sbc shorter+1
		sta accu+1
		blt overf

		lda was_x
		beq move_v1
move_h1		inc step1_x
		bne +

overf		clc
		lda accu
		adc longer
		sta accu
		lda accu+1
		adc longer+1
		sta accu+1

		inc step1_x
move_v1		inc step1_y

+		ldx #2
move_xy_loop	lda sign_x,x
		bmi +
		jsr step1
+		ldy absorig_x,x
		lda absorig_x+1,x
		bpl +
		jsr negate
+		pha
		tya
		sec
		sbc #<999
		pla
		sbc #>999
		bge +
		txa
		bne move_ib
		jsr in_printarea_x
		bcc move_ib
+		rol cmd_use_pen
		sec
		ror cmd_use_pen
		bmi move_oob

move_ib		lda step1_x,x
		beq nstep
		lda sign_x,x
		bmi +
		inc stepper_x,x
		inc stepper_x,x
+		dec stepper_x,x

move_oob	lda step1_x,x
		beq nstep
		lda cmd_x,x
		bne +
		dec cmd_x+1,x
+		dec cmd_x,x

nstep		lda sign_x,x
		bpl +
		jsr step1
+		dex
		dex
		beq move_xy_loop

		lda cmd_use_pen
		bpl +
		lda #0
		sta cmd_use_pen
		sta pen_state
+		beq pen_up
		ldx dashed
		beq pen_down
		lda dash_counter
		bne skip_pen
		stx dash_counter
		lda pen_state
		and #%00000001
		beq pen_down
;---------------
pen_up		ldx #%11111110
		bne +

pen_down	ldx #%11111101
+		cpx pen_state
		beq skip_pen
		cpx #%11111101
		beq +
		jsr wait_2ms
+		stx port_c
		stx pen_state
		jsr wait_2ms
		lda #%11111111
		sta port_c
skip_pen	jsr set_stepper
		sta step1_x
		sta step1_y
		dec dash_counter
		jmp move_loop
;---------------
step1		ldy step1_x,x
		beq +
		asl
		bcs step1_m
		inc absorig_x,x
		bne +
		inc absorig_x+1,x
+		rts

step1_m		lda absorig_x,x
		bne +
		dec absorig_x+1,x
+		dec absorig_x,x
		rts
;---------------
in_printarea_x	sec
		lda absorig_x
		sbc #<480
		lda absorig_x+1
		sbc #>480
		rts
;---------------
set_stepper	lda stepper_x
		and #%00000011
		tay
		lda stepconst_x,y
		pha
		lda stepper_y
		and #%00000011
		tay
		pla
		ora stepconst_y,y
		sta port_d
;---------------
wait_serial	lda #<3800
		ldy #>3800
		bne wait
;---------------
wait_2ms	lda #<4943
		ldy #>4943
		bne wait
;---------------
wait_5ms	lda #<11382
		ldy #>11382
wait		sta latch_l
		sty latch_now
-		lda control
		bpl -
		lda #0
		rts

stepconst_x	.byte %00001001,%00001010,%00000110,%00000101
stepconst_y	.byte %10010000,%10100000,%01100000,%01010000
;---------------
carriage_return jsr move_left_side
;---------------
line_feed	ldx char_size
		inx
		lda #5
-		asl
		dex
		bne -
		sta absorig_y
		stx absorig_y+1
		jsr move_abs_pup
;---------------
set_relorigin	ldx #4
-		lda absorig_x-1,x
		sta relorig_x-1,x
		dex
		bne -
		rts
;---------------
set_absorigin	ldx #4
-		lda relorig_x-1,x
		sta cmd_x-1,x
		dex
		bne -
		beq move_abs_pup
;---------------
move_left_side	lda #0
		sta cmd_x
		sta cmd_x+1
		beq move_horiz
;---------------
next_color	inc color
		lda color
;---------------
select_pen	and #%00000011
		sta color
		lda current_color
		cmp color
		beq same_color
		lda absorig_x
		pha
		lda absorig_x+1
		pha
		jsr pen_up
		jsr move_left_side
-		ldx #65
		jsr stepper_left
		jsr stepper_lr
		jsr stepper_lr
		ldx #65
		jsr stepper_right
		inc current_color
		lda current_color
		and #%00000011
		sta current_color
		cmp color
		bne -
		pla
		sta cmd_x+1
		pla
		sta cmd_x
move_horiz	lda absorig_y
		sta cmd_y
		lda absorig_y+1
		sta cmd_y+1
;---------------
move_abs_pup	lda #$80
		sta cmd_use_pen
		jmp move_abs
;---------------
stepper_lr	jsr stepper_r
		ldx #35
;---------------
stepper_left	dec stepper_x
		jsr set_stepper
		dex
		bne stepper_left
same_color	rts
;---------------
stepper_r	ldx #35
;---------------
stepper_right	inc stepper_x
		jsr set_stepper
		dex
		bne stepper_right
		rts

		.byte $aa,$aa,$aa,$aa,$aa,$aa,$aa,$aa
		.byte $aa,$aa,$aa

		.word reset
		.word reset
		.word reset

