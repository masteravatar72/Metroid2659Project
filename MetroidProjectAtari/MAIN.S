; Generated by c68 v4.4.5, 25 Jan 95 (Jan 25 1995) from "main.c"
	data
	even
_defaultModel:
	dc.w	160,127,0,1,30,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,20,20,0
	dc.w	1,0,0,24,16,280,17,0
	dc.w	2,0,0,16,30,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0
_model1:
	dc.w	160,127,0,1,30,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,20,20,0
	dc.w	1,0,0,24,16,280,17,0
	dc.w	2,0,0,16,30,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0
_model2:
	dc.w	160,127,0,1,30,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,20,20,0
	dc.w	1,0,0,24,16,280,17,0
	dc.w	2,0,0,16,30,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0,0,0,0
	dc.w	0,0,0,0,0
	text
	even
_menu:
	link	a6,#-38
	movem.l	d3/d4/d5/d6/d7/a3/a4/a5,-(a7)
	move.l	8(a6),d6
	move.l	24(a6),a4
	;line	85
	move.l	#32,-8(a6)
	move.l	#32,-12(a6)
	lea	-8(a6),a3
	lea	_behindMouse,a5
	move.w	#2,-26(a6)
	clr.w	-28(a6)
	moveq	#0,d5
	;line	85
	move.l	d6,d4
	;line	86
	move.l	#_model1,-24(a6)
	;line	87
	move.l	d6,-(a7)
	jsr	_clearScreen
	addq.l	#4,a7
	;line	88
	move.l	12(a6),-(a7)
	jsr	_clearScreen
	addq.l	#4,a7
	;line	89
	pea	4
	jsr	_setMouseXlocation
	addq.l	#4,a7
	;line	90
	pea	4
	jsr	_setMouseYlocation
	addq.l	#4,a7
	;line	91
	move.l	#1,-8(a6)
	;line	92
	move.l	#1,-12(a6)
	;line	93
	move.l	16(a6),-(a7)
	jsr	_loadColors
	addq.l	#4,a7
	;line	94
	move.l	#1,(a3)
	;line	95
	move.l	d6,-(a7)
	move.l	20(a6),-(a7)
	jsr	_renderBackSplash
	addq.l	#8,a7
	;line	96
	move.l	12(a6),-(a7)
	move.l	20(a6),-(a7)
	jsr	_renderBackSplash
	addq.l	#8,a7
	;line	97
	move.l	d6,-(a7)
	pea	_behindMouse
	pea	32
	move.l	(a3),-(a7)
	jsr	_getBitmapRow
	lea	16(a7),a7
	;line	98
	move.l	12(a6),-(a7)
	pea	_behindMouse2
	pea	32
	move.l	(a3),-(a7)
	jsr	_getBitmapRow
	lea	16(a7),a7
	;line	99
	move.l	d6,-(a7)
	jsr	_set_video_base
	addq.l	#4,a7
	;line	100
	bra	L2
L1:
	;line	103
	jsr	_getMouseYlocation
	lsr.l	#2,d0
	move.l	d0,d3
	jsr	_getMouseXlocation
	lsr.l	#2,d0
	move.l	d0,d7
	;line	103
	jsr	_getMouseXlocation
	tst.l	d0
	bge	L4
	;line	104
	moveq	#1,d7
	;line	105
	pea	4
	jsr	_setMouseXlocation
	addq.l	#4,a7
	bra	L5
L4:
	;line	106
	jsr	_getMouseXlocation
	cmp.l	#1212,d0
	ble	L6
	;line	107
	pea	1212
	jsr	_setMouseXlocation
	addq.l	#4,a7
	;line	108
	move.l	#303,d7
L6:
L5:
	;line	110
	jsr	_getMouseYlocation
	tst.l	d0
	bge	L7
	;line	111
	pea	4
	jsr	_setMouseYlocation
	addq.l	#4,a7
	;line	112
	moveq	#1,d3
	bra	L8
L7:
	;line	113
	jsr	_getMouseYlocation
	cmp.l	#536,d0
	ble	L9
	;line	114
	pea	536
	jsr	_setMouseYlocation
	addq.l	#4,a7
	;line	115
	move.l	#134,d3
L9:
L8:
	;line	117
	moveq	#0,d5
	bra	L11
L10:
	;line	118
	ext.l	d5
	move.l	d5,d0
	add.l	d0,d0
	move.w	0(a4,d0.l),d0
	and.l	#65535,d0
	cmp.l	d0,d3
	bls	L14
	moveq	#1,d0
	add.w	d5,d0
	ext.l	d0
	add.l	d0,d0
	move.w	0(a4,d0.l),d0
	and.l	#65535,d0
	cmp.l	d0,d3
	bcc	L14
	jsr	_isLeftClickDown
	tst.w	d0
	beq	L14
	;line	119
	moveq	#2,d0
	add.w	d5,d0
	ext.l	d0
	add.l	d0,d0
	move.w	0(a4,d0.l),-28(a6)
L14:
L13:
	addq.w	#3,d5
L11:
	cmp.w	#9,d5
	blt	L10
L12:
	;line	122
	tst.l	d3
	bls	L15
	cmp.l	#135,d3
	bcc	L15
	tst.l	d7
	bls	L15
	cmp.l	#304,d7
	bcc	L15
	tst.w	_vsyncFlag
	beq	L15
	;line	123
	cmp.w	#1,-26(a6)
	bne	L16
	;line	124
	lea	-8(a6),a3
	;line	125
	lea	_behindMouse,a5
	;line	126
	move.l	d6,d4
	;line	127
	addq.w	#1,-26(a6)
	bra	L17
L16:
	;line	129
	lea	-12(a6),a3
	;line	130
	lea	_behindMouse2,a5
	;line	131
	move.l	12(a6),d4
	;line	132
	subq.w	#1,-26(a6)
L17:
	;line	134
	move.l	d4,-(a7)
	move.l	a5,-(a7)
	pea	32
	move.l	(a3),-(a7)
	jsr	_setBitmapRow
	lea	16(a7),a7
	;line	135
	move.l	d4,-(a7)
	move.l	a5,-(a7)
	pea	32
	move.l	d3,-(a7)
	jsr	_getBitmapRow
	lea	16(a7),a7
	;line	136
	move.l	d3,(a3)
	;line	137
	move.l	d4,-(a7)
	pea	_LaserImage
	pea	32
	move.l	d3,-(a7)
	jsr	_setBitmapRowOr
	lea	16(a7),a7
	;line	138
	move.l	d4,-(a7)
	jsr	_set_video_base
	addq.l	#4,a7
	;line	139
	clr.w	_vsyncFlag
L15:
L2:
	tst.w	-28(a6)
	beq	L1
L3:
	;line	142
	move.w	-28(a6),d0
L18:
	movem.l	-70(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk	a6
	rts
L19:
	dc.w	0,599,326,55,1825,1858,576,1601
	dc.w	563,1126,609,304,800,1364,1105
	dc.b	0,0
	even
_mainGame:
	link	a6,#-72
	movem.l	d3/d4/d5/d6/d7/a3/a4/a5,-(a7)
	lea	_level,a4
	move.l	#656,d6
	move.l	8(a6),d7
	lea	_renderLevel,a5
	;line	161
	lea	L19,a0
	lea	-32(a6),a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	clr.w	-46(a6)
	move.w	#2,-48(a6)
	moveq	#0,d3
	move.w	#-1,-56(a6)
	move.l	#_emptyFrameBuffer,d0
	and.l	#-256,d0
	add.l	#256,d0
	move.l	d0,-60(a6)
	;line	161
	lea	_defaultModel,a0
	lea	_model1,a1
	moveq	#81,d0
L20:
	move.l	(a0)+,(a1)+
	dbra	d0,L20
	move.w	(a0)+,(a1)+
	;line	162
	lea	_model1,a0
	lea	_model2,a1
	moveq	#81,d0
L21:
	move.l	(a0)+,(a1)+
	dbra	d0,L21
	move.w	(a0)+,(a1)+
	;line	163
	move.l	d7,-(a7)
	jsr	_clearScreen
	addq.l	#4,a7
	;line	164
	move.l	12(a6),-(a7)
	jsr	_clearScreen
	addq.l	#4,a7
	;line	165
	move.l	d7,-(a7)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	add.l	a4,d0
	move.l	d0,-(a7)
	jsr	(a5)
	addq.l	#8,a7
	;line	166
	move.l	12(a6),-(a7)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	add.l	a4,d0
	move.l	d0,-(a7)
	jsr	(a5)
	addq.l	#8,a7
	;line	167
	move.l	12(a6),-(a7)
	lea	-10(a7),a7
	lea	_model2,a0
	move.l	a7,a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.w	(a0)+,(a1)+
	jsr	_renderSamus
	lea	14(a7),a7
	;line	168
	move.l	12(a6),-(a7)
	pea	_model2+170
	jsr	_renderEnemys
	addq.l	#8,a7
	;line	169
	move.l	d7,-(a7)
	lea	-10(a7),a7
	lea	_model1,a0
	move.l	a7,a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.w	(a0)+,(a1)+
	jsr	_renderSamus
	lea	14(a7),a7
	;line	170
	move.l	d7,-(a7)
	pea	_model1+170
	jsr	_renderEnemys
	addq.l	#8,a7
	;line	171
	pea	-32(a6)
	jsr	_loadColors
	addq.l	#4,a7
	;line	172
	move.l	d7,d4
	;line	173
	move.l	d7,-(a7)
	jsr	_set_video_base
	addq.l	#4,a7
	;line	174
	jsr	_getTime
	ext.l	d0
	move.l	d0,-40(a6)
	;line	175
	bra	L23
L22:
	;line	176
	move.w	#1,-(a7)
	jsr	_isKeyDown
	addq.l	#2,a7
	tst.w	d0
	beq	L25
	;line	177
	move.w	#1,-46(a6)
L25:
	;line	179
	tst.w	_vsyncFlag
	beq	L26
	;line	181
	jsr	_getTime
	ext.l	d0
	sub.l	-40(a6),d0
	move.l	d0,-44(a6)
	;line	182
	move.l	-44(a6),d0
	add.l	d0,-40(a6)
	;line	183
	cmp.w	#1,-48(a6)
	bne	L27
	;line	184
	move.l	12(a6),d4
	;line	185
	lea	_model2,a3
	;line	186
	addq.w	#1,-48(a6)
	bra	L28
L27:
	;line	188
	move.l	d7,d4
	;line	189
	lea	_model1,a3
	;line	190
	subq.w	#1,-48(a6)
L28:
	;line	192
	move.l	d4,-(a7)
	move.w	8(a3),-(a7)
	move.w	#192,-(a7)
	move.w	#40,-(a7)
	jsr	_unplotNumbers
	lea	10(a7),a7
	;line	193
	move.l	d4,-(a7)
	lea	170,a0
	add.l	a3,a0
	pea	(a0)
	jsr	_deRenderEnemys
	addq.l	#8,a7
	;line	194
	move.l	d4,-(a7)
	moveq	#10,d0
	add.l	a3,d0
	move.l	d0,-(a7)
	jsr	_deRenderBullets
	addq.l	#8,a7
	;line	195
	move.l	d4,-(a7)
	lea	-10(a7),a7
	move.l	a3,a0
	move.l	a7,a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.w	(a0)+,(a1)+
	jsr	_deRenderSamus
	lea	14(a7),a7
	;line	196
	cmp.w	#-1,-56(a6)
	beq	L29
	;line	197
	move.l	-60(a6),-(a7)
	move.l	d4,-(a7)
	jsr	_deRenderLevel
	addq.l	#8,a7
	;line	198
	move.l	d4,-(a7)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	add.l	a4,d0
	move.l	d0,-(a7)
	jsr	(a5)
	addq.l	#8,a7
	;line	199
	move.w	#-1,-56(a6)
L29:
	;line	202
	cmp.w	#1,-48(a6)
	bne	L30
	;line	203
	lea	_model2,a0
	lea	_model1,a1
	moveq	#81,d0
L31:
	move.l	(a0)+,(a1)+
	dbra	d0,L31
	move.w	(a0)+,(a1)+
	bra	L32
L30:
	;line	205
	lea	_model1,a0
	lea	_model2,a1
	moveq	#81,d0
L33:
	move.l	(a0)+,(a1)+
	dbra	d0,L33
	move.w	(a0)+,(a1)+
L32:
	;line	207
	moveq	#10,d0
	add.l	a3,d0
	move.l	d0,-(a7)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	add.l	a4,d0
	move.l	d0,-(a7)
	move.l	-44(a6),-(a7)
	lea	-10(a7),a7
	move.l	a3,a0
	move.l	a7,a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.w	(a0)+,(a1)+
	pea	-72(a6)
	jsr	_moveSamus
	lea	26(a7),a7
	move.l	d0,a0
	move.l	a3,a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.w	(a0)+,(a1)+
	;line	208
	moveq	#10,d0
	add.l	a3,d0
	move.l	d0,-(a7)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	add.l	a4,d0
	move.l	d0,-(a7)
	jsr	_processBullets
	addq.l	#8,a7
	;line	209
	lea	170,a0
	add.l	a3,a0
	pea	(a0)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	add.l	a4,d0
	move.l	d0,-(a7)
	lea	-10(a7),a7
	move.l	a3,a0
	move.l	a7,a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.w	(a0)+,(a1)+
	jsr	_moveEnemys
	lea	18(a7),a7
	;line	210
	move.l	a3,-(a7)
	lea	170,a0
	add.l	a3,a0
	pea	(a0)
	jsr	_checkEnemyCollisionsWithPlayer
	addq.l	#8,a7
	;line	211
	moveq	#10,d0
	add.l	a3,d0
	move.l	d0,-(a7)
	lea	170,a0
	add.l	a3,a0
	pea	(a0)
	jsr	_checkEnemyCollisionsWithBullets
	addq.l	#8,a7
	;line	212
	tst.w	8(a3)
	bgt	L34
	;line	213
	move.w	#4,-46(a6)
L34:
	;line	216
	cmp.w	#295,(a3)
	ble	L35
	cmp.w	#100,2(a3)
	bgt	L35
	;line	217
	move.l	-60(a6),-(a7)
	move.l	d4,-(a7)
	jsr	_deRenderLevel
	addq.l	#8,a7
	;line	218
	move.w	d3,-56(a6)
	;line	219
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	move.l	d0,a0
	add.l	a4,a0
	move.w	652(a0),d0
	add.w	d0,2(a3)
	;line	220
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	move.l	d0,a0
	add.l	a4,a0
	move.w	644(a0),d3
	;line	221
	move.w	#11,(a3)
	;line	222
	moveq	#10,d0
	add.l	a3,d0
	move.l	d0,-(a7)
	jsr	_resetBullets
	addq.l	#4,a7
	;line	223
	moveq	#0,d5
	bra	L37
L36:
	;line	224
	ext.l	d5
	move.l	d5,d0
	asl.l	#4,d0
	move.l	d0,-(a7)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	move.l	d0,d1
	add.l	a4,d1
	move.l	(a7)+,d0
	add.l	d1,d0
	add.l	#480,d0
	move.l	d0,a0
	ext.l	d5
	move.l	d5,d0
	asl.l	#4,d0
	add.l	a3,d0
	add.l	#170,d0
	move.l	d0,a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
L39:
	addq.w	#1,d5
L37:
	cmp.w	#10,d5
	blt	L36
L38:
	;line	226
	move.l	d4,-(a7)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	add.l	a4,d0
	move.l	d0,-(a7)
	jsr	(a5)
	addq.l	#8,a7
L35:
	;line	228
	cmp.w	#295,(a3)
	ble	L40
	cmp.w	#100,2(a3)
	ble	L40
	;line	229
	move.l	-60(a6),-(a7)
	move.l	d4,-(a7)
	jsr	_deRenderLevel
	addq.l	#8,a7
	;line	230
	move.w	d3,-56(a6)
	;line	231
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	move.l	d0,a0
	add.l	a4,a0
	move.w	654(a0),d0
	add.w	d0,2(a3)
	;line	232
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	move.l	d0,a0
	add.l	a4,a0
	move.w	646(a0),d3
	;line	233
	move.w	#11,(a3)
	;line	234
	moveq	#10,d0
	add.l	a3,d0
	move.l	d0,-(a7)
	jsr	_resetBullets
	addq.l	#4,a7
	;line	235
	moveq	#0,d5
	bra	L42
L41:
	;line	236
	ext.l	d5
	move.l	d5,d0
	asl.l	#4,d0
	move.l	d0,-(a7)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	move.l	d0,d1
	add.l	a4,d1
	move.l	(a7)+,d0
	add.l	d1,d0
	add.l	#480,d0
	move.l	d0,a0
	ext.l	d5
	move.l	d5,d0
	asl.l	#4,d0
	add.l	a3,d0
	add.l	#170,d0
	move.l	d0,a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
L44:
	addq.w	#1,d5
L42:
	cmp.w	#10,d5
	blt	L41
L43:
	;line	238
	move.l	d4,-(a7)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	add.l	a4,d0
	move.l	d0,-(a7)
	jsr	(a5)
	addq.l	#8,a7
L40:
	;line	240
	cmp.w	#10,(a3)
	bge	L45
	cmp.w	#100,2(a3)
	bgt	L45
	;line	241
	move.l	-60(a6),-(a7)
	move.l	d4,-(a7)
	jsr	_deRenderLevel
	addq.l	#8,a7
	;line	242
	move.w	d3,-56(a6)
	;line	243
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	move.l	d0,a0
	add.l	a4,a0
	move.w	648(a0),d0
	add.w	d0,2(a3)
	;line	244
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	move.l	d0,a0
	add.l	a4,a0
	move.w	640(a0),d3
	;line	245
	move.w	#290,(a3)
	;line	246
	moveq	#10,d0
	add.l	a3,d0
	move.l	d0,-(a7)
	jsr	_resetBullets
	addq.l	#4,a7
	;line	247
	moveq	#0,d5
	bra	L47
L46:
	;line	248
	ext.l	d5
	move.l	d5,d0
	asl.l	#4,d0
	move.l	d0,-(a7)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	move.l	d0,d1
	add.l	a4,d1
	move.l	(a7)+,d0
	add.l	d1,d0
	add.l	#480,d0
	move.l	d0,a0
	ext.l	d5
	move.l	d5,d0
	asl.l	#4,d0
	add.l	a3,d0
	add.l	#170,d0
	move.l	d0,a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
L49:
	addq.w	#1,d5
L47:
	cmp.w	#10,d5
	blt	L46
L48:
	;line	250
	move.l	d4,-(a7)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	add.l	a4,d0
	move.l	d0,-(a7)
	jsr	(a5)
	addq.l	#8,a7
L45:
	;line	252
	cmp.w	#10,(a3)
	bge	L50
	cmp.w	#100,2(a3)
	ble	L50
	;line	253
	move.l	-60(a6),-(a7)
	move.l	d4,-(a7)
	jsr	_deRenderLevel
	addq.l	#8,a7
	;line	254
	move.w	d3,-56(a6)
	;line	255
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	move.l	d0,a0
	add.l	a4,a0
	move.w	650(a0),d0
	add.w	d0,2(a3)
	;line	256
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	move.l	d0,a0
	add.l	a4,a0
	move.w	642(a0),d3
	;line	257
	move.w	#290,(a3)
	;line	258
	moveq	#10,d0
	add.l	a3,d0
	move.l	d0,-(a7)
	jsr	_resetBullets
	addq.l	#4,a7
	;line	259
	moveq	#0,d5
	bra	L52
L51:
	;line	260
	ext.l	d5
	move.l	d5,d0
	asl.l	#4,d0
	move.l	d0,-(a7)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	move.l	d0,d1
	add.l	a4,d1
	move.l	(a7)+,d0
	add.l	d1,d0
	add.l	#480,d0
	move.l	d0,a0
	ext.l	d5
	move.l	d5,d0
	asl.l	#4,d0
	add.l	a3,d0
	add.l	#170,d0
	move.l	d0,a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
L54:
	addq.w	#1,d5
L52:
	cmp.w	#10,d5
	blt	L51
L53:
	;line	262
	move.l	d4,-(a7)
	ext.l	d3
	move.l	d3,-(a7)
	move.l	d6,-(a7)
	jsr	.Xlmul
	add.l	a4,d0
	move.l	d0,-(a7)
	jsr	(a5)
	addq.l	#8,a7
L50:
	;line	264
	move.l	d4,-(a7)
	move.w	8(a3),-(a7)
	move.w	#192,-(a7)
	move.w	#40,-(a7)
	jsr	_plotNumbers
	lea	10(a7),a7
	;line	265
	move.l	d4,-(a7)
	lea	-10(a7),a7
	move.l	a3,a0
	move.l	a7,a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.w	(a0)+,(a1)+
	jsr	_renderSamus
	lea	14(a7),a7
	;line	266
	move.l	d4,-(a7)
	lea	170,a0
	add.l	a3,a0
	pea	(a0)
	jsr	_renderEnemys
	addq.l	#8,a7
	;line	267
	move.l	d4,-(a7)
	moveq	#10,d0
	add.l	a3,d0
	move.l	d0,-(a7)
	jsr	_renderBullets
	addq.l	#8,a7
	;line	268
	cmp.w	#18,d3
	bne	L55
	tst.w	176(a3)
	bne	L55
	;line	269
	move.w	#3,-46(a6)
L55:
	;line	271
	move.l	d4,-(a7)
	jsr	_set_video_base
	addq.l	#4,a7
	;line	272
	clr.w	_vsyncFlag
L26:
L23:
	tst.w	-46(a6)
	beq	L22
L24:
	;line	275
	move.w	-46(a6),d0
L56:
	movem.l	-104(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk	a6
	rts
L57:
	dc.w	0,1911,1365,819,119,51,7,3
	dc.w	1904,816,768,0,1792,0,0
	dc.b	0,0
	even
L58:
	dc.w	0,1792,1904,48,1365,51,7,3
	dc.w	1904,816,768,0,1792,0,0
	dc.b	0,0
	even
L59:
	dc.w	0,819,3,1365,816,51,768,771
	dc.w	1792,1904,768,0,1792,0,0
	dc.b	0,0
	even
L60:
	dc.w	98,104,2,124,136,3,0,0
	dc.w	0
L61:
	dc.w	80,94,2,111,130,1,0,0
	dc.w	0
L62:
	dc.w	46,60,1,0,0,0,0,0
	dc.w	0
_main:
	link	a6,#-210
	movem.l	d3/d4/d5/a3,-(a7)
	lea	_install_vector,a3
	;line	293
	lea	L57,a0
	lea	-36(a6),a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	lea	L58,a0
	lea	-68(a6),a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	lea	L59,a0
	lea	-100(a6),a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	jsr	_get_video_base
	move.l	d0,d4
	move.l	#_secondFrameBuffer,d0
	and.l	#-256,d0
	add.l	#256,d0
	move.l	d0,d5
	move.l	#_emptyFrameBuffer,d0
	and.l	#-256,d0
	add.l	#256,d0
	move.l	d0,-144(a6)
	moveq	#1,d3
	lea	L60,a0
	lea	-164(a6),a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.w	(a0)+,(a1)+
	lea	L61,a0
	lea	-182(a6),a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.w	(a0)+,(a1)+
	lea	L62,a0
	lea	-200(a6),a1
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.l	(a0)+,(a1)+
	move.w	(a0)+,(a1)+
	clr.w	-202(a6)
	pea	_trap0_vbl
	move.w	#28,-(a7)
	jsr	(a3)
	addq.l	#6,a7
	move.l	d0,-206(a6)
	pea	_trapIKBR
	move.w	#70,-(a7)
	jsr	(a3)
	addq.l	#6,a7
	move.l	d0,-210(a6)
	;line	293
	pea	-132(a6)
	jsr	_getColors
	addq.l	#4,a7
	;line	294
	jsr	_start_music
	;line	295
	move.l	-144(a6),-(a7)
	jsr	_clearScreen
	addq.l	#4,a7
	;line	296
	bra	L64
L63:
	;line	297
	pea	-164(a6)
	pea	_backSplash
	pea	-36(a6)
	move.l	d5,-(a7)
	move.l	d4,-(a7)
	jsr	_menu
	lea	20(a7),a7
	move.w	d0,d3
	;line	298
	cmp.w	#3,d3
	bne	L66
	;line	299
	bra	L65
L66:
	;line	301
	bra	L68
L67:
	;line	302
	move.l	d5,-(a7)
	move.l	d4,-(a7)
	jsr	_mainGame
	addq.l	#8,a7
	move.w	d0,d3
	;line	303
	cmp.w	#4,d3
	bne	L70
	;line	304
	pea	-182(a6)
	pea	_gameOverHex
	pea	-68(a6)
	move.l	d5,-(a7)
	move.l	d4,-(a7)
	jsr	_menu
	lea	20(a7),a7
	move.w	d0,d3
	bra	L71
L70:
	;line	305
	cmp.w	#3,d3
	bne	L72
	;line	306
	pea	-200(a6)
	pea	_winScreenHex
	pea	-100(a6)
	move.l	d5,-(a7)
	move.l	d4,-(a7)
	jsr	_menu
	lea	20(a7),a7
	move.w	d0,d3
L72:
L71:
L68:
	cmp.w	#2,d3
	beq	L67
L69:
L64:
	cmp.w	#1,d3
	beq	L63
L65:
	;line	310
	pea	0
	move.w	#32,-(a7)
	jsr	__trap_1_wl
	addq.l	#6,a7
	move.l	d0,-4(a6)
	;line	311
	jsr	_stop_sound
	;line	312
	move.l	-4(a6),-(a7)
	move.w	#32,-(a7)
	jsr	__trap_1_wl
	addq.l	#6,a7
	;line	313
	pea	-132(a6)
	jsr	_loadColors
	addq.l	#4,a7
	;line	314
	move.l	d4,-(a7)
	jsr	_set_video_base
	addq.l	#4,a7
	;line	315
	move.l	-210(a6),-(a7)
	move.w	#70,-(a7)
	jsr	(a3)
	addq.l	#6,a7
	;line	316
	move.l	-206(a6),-(a7)
	move.w	#28,-(a7)
	jsr	(a3)
	;line	317
	moveq	#0,d0
L73:
	movem.l	-226(a6),d3/d4/d5/a3
	unlk	a6
	rts
_install_vector:
	link	a6,#-12
	move.l	a3,-(a7)
	;line	329
	move.w	8(a6),d0
	ext.l	d0
	asl.l	#2,d0
	move.l	d0,a3
	pea	0
	move.w	#32,-(a7)
	jsr	__trap_1_wl
	addq.l	#6,a7
	move.l	d0,-12(a6)
	;line	329
	move.l	(a3),-4(a6)
	;line	330
	move.l	10(a6),(a3)
	;line	332
	move.l	-12(a6),-(a7)
	move.w	#32,-(a7)
	jsr	__trap_1_wl
	;line	333
	move.l	-4(a6),d0
L74:
	move.l	-16(a6),a3
	unlk	a6
	rts
	globl	_install_vector
	globl	_menu
	globl	_mainGame
	globl	_defaultModel
	globl	_model1
	globl	_model2
	bss
_secondFrameBuffer:
	ds.b	32256
	globl	_secondFrameBuffer
_emptyFrameBuffer:
	ds.b	32256
	globl	_emptyFrameBuffer
	even
_behindMouse:
	ds.b	5120
	globl	_behindMouse
_behindMouse2:
	ds.b	5120
	globl	_behindMouse2
	globl	_main
