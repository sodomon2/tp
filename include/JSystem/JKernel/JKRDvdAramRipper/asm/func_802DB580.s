/* dmaBufferFlush__FUl dmaBufferFlush(unsigned long) */
/* dmaBufferFlush */
/* 802DB580 002D84C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB584 002D84C4  7C 08 02 A6 */	mflr r0
/* 802DB588 002D84C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB58C 002D84CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DB590 002D84D0  7C 65 1B 78 */	mr r5, r3
/* 802DB594 002D84D4  80 0D 8F 04 */	lwz r0, lbl_80451484-_SDA_BASE_(r13)
/* 802DB598 002D84D8  80 8D 8E FC */	lwz r4, lbl_8045147C-_SDA_BASE_(r13)
/* 802DB59C 002D84DC  7C 00 20 40 */	cmplw r0, r4
/* 802DB5A0 002D84E0  40 82 00 0C */	bne lbl_802DB5AC
/* 802DB5A4 002D84E4  38 60 00 00 */	li r3, 0
/* 802DB5A8 002D84E8  48 00 00 2C */	b lbl_802DB5D4
lbl_802DB5AC:
/* 802DB5AC 002D84EC  7C 64 00 50 */	subf r3, r4, r0
/* 802DB5B0 002D84F0  38 03 00 1F */	addi r0, r3, 0x1f
/* 802DB5B4 002D84F4  54 1F 00 34 */	rlwinm r31, r0, 0, 0, 0x1a
/* 802DB5B8 002D84F8  38 60 00 00 */	li r3, 0
/* 802DB5BC 002D84FC  7F E6 FB 78 */	mr r6, r31
/* 802DB5C0 002D8500  38 E0 00 00 */	li r7, 0
/* 802DB5C4 002D8504  4B FF 82 75 */	bl orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
/* 802DB5C8 002D8508  80 0D 8E FC */	lwz r0, lbl_8045147C-_SDA_BASE_(r13)
/* 802DB5CC 002D850C  90 0D 8F 04 */	stw r0, lbl_80451484-_SDA_BASE_(r13)
/* 802DB5D0 002D8510  7F E3 FB 78 */	mr r3, r31
lbl_802DB5D4:
/* 802DB5D4 002D8514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DB5D8 002D8518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DB5DC 002D851C  7C 08 03 A6 */	mtlr r0
/* 802DB5E0 002D8520  38 21 00 10 */	addi r1, r1, 0x10
/* 802DB5E4 002D8524  4E 80 00 20 */	blr
