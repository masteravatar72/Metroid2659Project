; Generated by c68 v4.4.5, 25 Jan 95 (Jan 25 1995) from "renderer.c"
	text
	even
_renderSamus:
	link	a6,#0
	movem.l	d3/a3/a4/a5,-(a7)
	move.l	18(a6),d3
	lea	8(a6),a3
	lea	10(a6),a4
	lea	_renderBitmap,a5
	;line	8
	move.w	12(a6),d0
	addq.w	#1,d0
	beq	L2
	subq.w	#1,d0
	beq	L3
	subq.w	#1,d0
	beq	L4
	bra	L1
L2:
	;line	10
	move.l	d3,-(a7)
	pea	_samusHeadLeft
	moveq	#2,d0
	add.w	(a4),d0
	move.w	d0,-(a7)
	move.w	(a3),-(a7)
	jsr	(a5)
	lea	12(a7),a7
	;line	11
	move.l	d3,-(a7)
	pea	_samusBodyLeft
	moveq	#17,d0
	add.w	(a4),d0
	move.w	d0,-(a7)
	moveq	#3,d0
	add.w	(a3),d0
	move.w	d0,-(a7)
	jsr	(a5)
	;line	12
	bra	L1
L3:
	;line	14
	move.l	d3,-(a7)
	pea	_samusUP
	move.w	#37,-(a7)
	move.w	(a4),d0
	subq.w	#4,d0
	move.w	d0,-(a7)
	moveq	#3,d0
	add.w	(a3),d0
	move.w	d0,-(a7)
	jsr	_renderBitmapWithSize
	;line	15
	bra	L1
L4:
	;line	17
	move.l	d3,-(a7)
	pea	_samusHeadRight
	moveq	#2,d0
	add.w	(a4),d0
	move.w	d0,-(a7)
	moveq	#3,d0
	add.w	(a3),d0
	move.w	d0,-(a7)
	jsr	(a5)
	lea	12(a7),a7
	;line	18
	move.l	d3,-(a7)
	pea	_samusBodyRight
	moveq	#17,d0
	add.w	(a4),d0
	move.w	d0,-(a7)
	move.w	(a3),-(a7)
	jsr	(a5)
L1:
	;line	19
	movem.l	-16(a6),d3/a3/a4/a5
	unlk	a6
	rts
_plotNumbers:
	link	a6,#-4
	move.l	d3,-(a7)
	;line	30
	move.w	12(a6),d0
	ext.l	d0
	divs	#10,d0
	move.w	d0,d3
	move.w	12(a6),d0
	move.w	d3,d1
	muls	#10,d1
	sub.w	d1,d0
	move.w	d0,-4(a6)
	;line	30
	move.l	14(a6),-(a7)
	move.w	d3,-(a7)
	move.w	10(a6),-(a7)
	move.w	8(a6),-(a7)
	jsr	_plotNumber
	lea	10(a7),a7
	;line	31
	move.l	14(a6),-(a7)
	move.w	-4(a6),-(a7)
	move.w	10(a6),-(a7)
	move.w	8(a6),d0
	addq.w	#8,d0
	move.w	d0,-(a7)
	jsr	_plotNumber
	move.l	-8(a6),d3
	unlk	a6
	rts
_plotNumber:
	link	a6,#0
	movem.l	d3/d4/d5/a3,-(a7)
	move.w	8(a6),d3
	move.w	10(a6),d4
	move.l	14(a6),d5
	lea	_renderBitmapWithSize,a3
	;line	39
	move.w	12(a6),d0
	ext.l	d0
	cmp.w	#9,d0
	bhi	L6
	lea	L7,a0
	add.l	d0,d0
	add.w	0(a0,d0.l),a0
	jmp	(a0)
L8:
	;line	41
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber0
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	42
	bra	L5
L9:
	;line	44
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber1
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	45
	bra	L5
L10:
	;line	47
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber2
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	48
	bra	L5
L11:
	;line	50
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber3
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	51
	bra	L5
L12:
	;line	53
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber4
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	54
	bra	L5
L13:
	;line	56
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber5
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	57
	bra	L5
L14:
	;line	59
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber6
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	60
	bra	L5
L15:
	;line	62
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber7
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	63
	bra	L5
L16:
	;line	65
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber8
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	66
	bra	L5
L17:
	;line	68
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber9
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	69
	bra	L5
L6:
	;line	71
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber9
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
L5:
	;line	72
	movem.l	-16(a6),d3/d4/d5/a3
	unlk	a6
	rts
L7:
	dc.w	L8-L7,L9-L7,L10-L7,L11-L7,L12-L7
	dc.w	L13-L7,L14-L7,L15-L7,L16-L7,L17-L7
_unplotNumbers:
	link	a6,#-4
	move.l	d3,-(a7)
	;line	83
	move.w	12(a6),d0
	ext.l	d0
	divs	#10,d0
	move.w	d0,d3
	move.w	12(a6),d0
	move.w	d3,d1
	muls	#10,d1
	sub.w	d1,d0
	move.w	d0,-4(a6)
	;line	83
	move.l	14(a6),-(a7)
	move.w	d3,-(a7)
	move.w	10(a6),-(a7)
	move.w	8(a6),-(a7)
	jsr	_unplotNumber
	lea	10(a7),a7
	;line	84
	move.l	14(a6),-(a7)
	move.w	-4(a6),-(a7)
	move.w	10(a6),-(a7)
	move.w	8(a6),d0
	addq.w	#8,d0
	move.w	d0,-(a7)
	jsr	_unplotNumber
	move.l	-8(a6),d3
	unlk	a6
	rts
_unplotNumber:
	link	a6,#0
	movem.l	d3/d4/d5/a3,-(a7)
	move.w	8(a6),d3
	move.w	10(a6),d4
	move.l	14(a6),d5
	lea	_renderBitmapWithSizeXOR,a3
	;line	92
	move.w	12(a6),d0
	ext.l	d0
	cmp.w	#9,d0
	bhi	L19
	lea	L20,a0
	add.l	d0,d0
	add.w	0(a0,d0.l),a0
	jmp	(a0)
L21:
	;line	94
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber0
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	95
	bra	L18
L22:
	;line	97
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber1
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	98
	bra	L18
L23:
	;line	100
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber2
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	101
	bra	L18
L24:
	;line	103
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber3
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	104
	bra	L18
L25:
	;line	106
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber4
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	107
	bra	L18
L26:
	;line	109
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber5
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	110
	bra	L18
L27:
	;line	112
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber6
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	113
	bra	L18
L28:
	;line	115
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber7
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	116
	bra	L18
L29:
	;line	118
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber8
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	119
	bra	L18
L30:
	;line	121
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber9
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
	;line	122
	bra	L18
L19:
	;line	124
	move.l	d5,-(a7)
	pea	_LitteralyTheNumber9
	move.w	#8,-(a7)
	move.w	d4,-(a7)
	move.w	d3,-(a7)
	jsr	(a3)
L18:
	;line	125
	movem.l	-16(a6),d3/d4/d5/a3
	unlk	a6
	rts
L20:
	dc.w	L21-L20,L22-L20,L23-L20,L24-L20,L25-L20
	dc.w	L26-L20,L27-L20,L28-L20,L29-L20,L30-L20
_renderReo:
	link	a6,#0
	;line	134
	move.l	12(a6),-(a7)
	pea	_reoLeft
	move.w	10(a6),-(a7)
	move.w	8(a6),-(a7)
	jsr	_renderBitmap
	lea	12(a7),a7
	;line	135
	move.l	12(a6),-(a7)
	pea	_reoRight
	move.w	10(a6),-(a7)
	move.w	8(a6),d0
	add.w	#16,d0
	move.w	d0,-(a7)
	jsr	_renderBitmap
	unlk	a6
	rts
_deRenderReo:
	link	a6,#0
	;line	143
	move.l	12(a6),-(a7)
	pea	_reoLeft
	move.w	10(a6),-(a7)
	move.w	8(a6),-(a7)
	jsr	_renderBitmapXOR
	lea	12(a7),a7
	;line	144
	move.l	12(a6),-(a7)
	pea	_reoRight
	move.w	10(a6),-(a7)
	move.w	8(a6),d0
	add.w	#16,d0
	move.w	d0,-(a7)
	jsr	_renderBitmapXOR
	unlk	a6
	rts
_renderEnemys:
	link	a6,#-2
	movem.l	d3/d4/a3/a4,-(a7)
	move.l	8(a6),a3
	move.l	12(a6),d4
	lea	_renderBitmapWithSize,a4
	;line	153
	moveq	#0,d3
	bra	L32
L31:
	;line	154
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	move.w	6(a0),d0
	subq.w	#1,d0
	beq	L36
	subq.w	#1,d0
	beq	L37
	subq.w	#1,d0
	beq	L38
	subq.w	#1,d0
	beq	L39
	bra	L35
L36:
	;line	156
	move.l	d4,-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	move.w	2(a0),-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.w	0(a3,d0.l),-(a7)
	jsr	_renderReo
	addq.l	#8,a7
	;line	157
	bra	L35
L37:
	;line	159
	move.l	d4,-(a7)
	pea	_SkreeEnemyValues
	move.w	#32,-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	move.w	2(a0),-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.w	0(a3,d0.l),-(a7)
	jsr	(a4)
	lea	14(a7),a7
	;line	160
	bra	L35
L38:
	;line	162
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	tst.w	4(a0)
	beq	L41
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	cmp.w	#1,4(a0)
	bne	L40
L41:
	;line	163
	move.l	d4,-(a7)
	pea	_motherBrainLeft
	move.w	#64,-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	move.w	2(a0),-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.w	0(a3,d0.l),-(a7)
	jsr	(a4)
	lea	14(a7),a7
	;line	164
	move.l	d4,-(a7)
	pea	_motherBrainMid
	move.w	#64,-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	move.w	2(a0),-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.w	0(a3,d0.l),d0
	add.w	#16,d0
	move.w	d0,-(a7)
	jsr	(a4)
	lea	14(a7),a7
	;line	165
	move.l	d4,-(a7)
	pea	_motherBrainRight
	move.w	#64,-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	move.w	2(a0),-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.w	0(a3,d0.l),d0
	add.w	#32,d0
	move.w	d0,-(a7)
	jsr	(a4)
	lea	14(a7),a7
	;line	166
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	addq.w	#1,4(a0)
L40:
	;line	168
	bra	L35
L39:
	;line	170
	move.l	d4,-(a7)
	pea	_zebImage
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	move.w	2(a0),-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.w	0(a3,d0.l),-(a7)
	jsr	_renderBitmap
	lea	12(a7),a7
L35:
L34:
	;line	171
	addq.w	#1,d3
L32:
	cmp.w	#10,d3
	blt	L31
L33:
	movem.l	-18(a6),d3/d4/a3/a4
	unlk	a6
	rts
_deRenderEnemys:
	link	a6,#-2
	movem.l	d3/d4/a3,-(a7)
	move.l	8(a6),a3
	move.l	12(a6),d4
	;line	182
	moveq	#0,d3
	bra	L43
L42:
	;line	183
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	move.w	6(a0),d0
	subq.w	#1,d0
	beq	L47
	subq.w	#1,d0
	beq	L48
	subq.w	#2,d0
	beq	L49
	bra	L46
L47:
	;line	185
	move.l	d4,-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	move.w	2(a0),-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.w	0(a3,d0.l),-(a7)
	jsr	_deRenderReo
	addq.l	#8,a7
	;line	186
	bra	L46
L48:
	;line	188
	move.l	d4,-(a7)
	pea	_SkreeEnemyValues
	move.w	#32,-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	move.w	2(a0),-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.w	0(a3,d0.l),-(a7)
	jsr	_renderBitmapWithSizeXOR
	lea	14(a7),a7
	;line	189
	bra	L46
L49:
	;line	191
	move.l	d4,-(a7)
	pea	_zebImage
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.l	d0,a0
	add.l	a3,a0
	move.w	2(a0),-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#4,d0
	move.w	0(a3,d0.l),-(a7)
	jsr	_renderBitmapXOR
	lea	12(a7),a7
L46:
L45:
	;line	192
	addq.w	#1,d3
L43:
	cmp.w	#10,d3
	blt	L42
L44:
	movem.l	-14(a6),d3/d4/a3
	unlk	a6
	rts
_deRenderSamus:
	link	a6,#0
	movem.l	d3/a3/a4/a5,-(a7)
	move.l	18(a6),d3
	lea	8(a6),a3
	lea	10(a6),a4
	lea	_renderBitmapXOR,a5
	;line	201
	move.w	12(a6),d0
	addq.w	#1,d0
	beq	L51
	subq.w	#1,d0
	beq	L52
	subq.w	#1,d0
	beq	L53
	bra	L50
L51:
	;line	203
	move.l	d3,-(a7)
	pea	_samusHeadLeft
	moveq	#2,d0
	add.w	(a4),d0
	move.w	d0,-(a7)
	move.w	(a3),-(a7)
	jsr	(a5)
	lea	12(a7),a7
	;line	204
	move.l	d3,-(a7)
	pea	_samusBodyLeft
	moveq	#17,d0
	add.w	(a4),d0
	move.w	d0,-(a7)
	moveq	#3,d0
	add.w	(a3),d0
	move.w	d0,-(a7)
	jsr	(a5)
	;line	205
	bra	L50
L52:
	;line	207
	move.l	d3,-(a7)
	pea	_samusUP
	move.w	#37,-(a7)
	move.w	(a4),d0
	subq.w	#4,d0
	move.w	d0,-(a7)
	moveq	#3,d0
	add.w	(a3),d0
	move.w	d0,-(a7)
	jsr	_renderBitmapWithSizeXOR
	;line	208
	bra	L50
L53:
	;line	210
	move.l	d3,-(a7)
	pea	_samusHeadRight
	moveq	#2,d0
	add.w	(a4),d0
	move.w	d0,-(a7)
	moveq	#3,d0
	add.w	(a3),d0
	move.w	d0,-(a7)
	jsr	(a5)
	lea	12(a7),a7
	;line	211
	move.l	d3,-(a7)
	pea	_samusBodyRight
	moveq	#17,d0
	add.w	(a4),d0
	move.w	d0,-(a7)
	move.w	(a3),-(a7)
	jsr	(a5)
L50:
	;line	212
	movem.l	-16(a6),d3/a3/a4/a5
	unlk	a6
	rts
_renderBullets:
	link	a6,#-2
	movem.l	d3/a3,-(a7)
	move.l	8(a6),a3
	;line	222
	moveq	#0,d3
	bra	L55
L54:
	;line	223
	ext.l	d3
	move.l	d3,d0
	asl.l	#3,d0
	move.l	d0,a0
	add.l	a3,a0
	tst.w	4(a0)
	bne	L59
	ext.l	d3
	move.l	d3,d0
	asl.l	#3,d0
	move.l	d0,a0
	add.l	a3,a0
	tst.w	6(a0)
	beq	L58
L59:
	;line	224
	move.l	12(a6),-(a7)
	pea	_bulletData
	move.w	#4,-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#3,d0
	move.l	d0,a0
	add.l	a3,a0
	move.w	2(a0),-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#3,d0
	move.w	0(a3,d0.l),-(a7)
	jsr	_renderBitmapWithSize
	lea	14(a7),a7
L58:
L57:
	addq.w	#1,d3
L55:
	cmp.w	#20,d3
	blt	L54
L56:
	movem.l	-10(a6),d3/a3
	unlk	a6
	rts
_deRenderBullets:
	link	a6,#-2
	movem.l	d3/a3,-(a7)
	move.l	8(a6),a3
	;line	235
	moveq	#0,d3
	bra	L61
L60:
	;line	236
	ext.l	d3
	move.l	d3,d0
	asl.l	#3,d0
	move.l	d0,a0
	add.l	a3,a0
	tst.w	4(a0)
	bne	L65
	ext.l	d3
	move.l	d3,d0
	asl.l	#3,d0
	move.l	d0,a0
	add.l	a3,a0
	tst.w	6(a0)
	beq	L64
L65:
	;line	237
	move.l	12(a6),-(a7)
	pea	_bulletData
	move.w	#4,-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#3,d0
	move.l	d0,a0
	add.l	a3,a0
	move.w	2(a0),-(a7)
	ext.l	d3
	move.l	d3,d0
	asl.l	#3,d0
	move.w	0(a3,d0.l),-(a7)
	jsr	_renderBitmapWithSizeXOR
	lea	14(a7),a7
L64:
L63:
	addq.w	#1,d3
L61:
	cmp.w	#20,d3
	blt	L60
L62:
	movem.l	-10(a6),d3/a3
	unlk	a6
	rts
_renderLevel:
	link	a6,#-46
	movem.l	d3/d4/d5/a3/a4,-(a7)
	move.l	12(a6),a3
	lea	-46(a6),a4
	;line	249
	move.l	a3,-(a7)
	pea	_LitteralyTheLettersHP
	move.w	#8,-(a7)
	move.w	#192,-(a7)
	move.w	#20,-(a7)
	jsr	_renderBitmapWithSize
	lea	14(a7),a7
	;line	250
	moveq	#0,d4
	bra	L67
L66:
	;line	251
	moveq	#0,d3
	bra	L71
L70:
	;line	252
	move.w	d4,d0
	muls	#40,d0
	move.l	d0,a0
	add.l	8(a6),a0
	ext.l	d3
	move.l	d3,d0
	add.l	d0,d0
	add.l	d0,a0
	move.w	(a0),d0
	asl.w	#5,d0
	ext.l	d3
	move.l	d3,d1
	add.l	d1,d1
	move.w	d0,0(a4,d1.l)
L73:
	addq.w	#1,d3
L71:
	cmp.w	#20,d3
	blt	L70
L72:
	;line	254
	moveq	#0,d5
	bra	L75
L74:
	;line	255
	moveq	#0,d3
	bra	L79
L78:
	;line	256
	ext.l	d3
	move.l	d3,d0
	add.l	d0,d0
	cmp.w	#31,0(a4,d0.l)
	ble	L82
	;line	257
	ext.l	d3
	move.l	d3,d0
	add.l	d0,d0
	move.w	0(a4,d0.l),d0
	ext.l	d0
	asl.l	#2,d0
	move.l	d0,a0
	add.l	#_allBlocks,a0
	move.l	(a0),(a3)
	;line	258
	addq.l	#4,a3
	;line	259
	ext.l	d3
	move.l	d3,d0
	add.l	d0,d0
	addq.w	#1,0(a4,d0.l)
	;line	260
	ext.l	d3
	move.l	d3,d0
	add.l	d0,d0
	move.w	0(a4,d0.l),d0
	ext.l	d0
	asl.l	#2,d0
	move.l	d0,a0
	add.l	#_allBlocks,a0
	move.l	(a0),(a3)
	;line	261
	addq.l	#4,a3
	;line	262
	ext.l	d3
	move.l	d3,d0
	add.l	d0,d0
	addq.w	#1,0(a4,d0.l)
	bra	L83
L82:
	;line	264
	addq.l	#8,a3
L83:
L81:
	addq.w	#1,d3
L79:
	cmp.w	#20,d3
	blt	L78
L80:
L77:
	addq.w	#1,d5
L75:
	cmp.w	#16,d5
	blt	L74
L76:
L69:
	addq.w	#1,d4
L67:
	cmp.w	#12,d4
	blt	L66
L68:
	movem.l	-66(a6),d3/d4/d5/a3/a4
	unlk	a6
	rts
_deRenderLevel:
	link	a6,#0
	;line	275
	pea	32000
	move.l	12(a6),-(a7)
	move.l	8(a6),-(a7)
	jsr	_memcpy
	unlk	a6
	rts
	globl	_deRenderBullets
	globl	_renderBullets
	globl	_renderLevel
	globl	_deRenderLevel
	globl	_renderSamus
	globl	_deRenderSamus
	globl	_deRenderReo
	globl	_renderReo
	globl	_deRenderEnemys
	globl	_renderEnemys
	globl	_plotNumbers
	globl	_plotNumber
	globl	_unplotNumbers
	globl	_unplotNumber
