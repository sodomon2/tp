/* 802D1AE4 002CEA24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D1AE8 002CEA28  7C 08 02 A6 */	mflr r0
/* 802D1AEC 002CEA2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D1AF0 002CEA30  39 61 00 20 */	addi r11, r1, 0x20
/* 802D1AF4 002CEA34  48 09 06 E1 */	bl _savegpr_27
/* 802D1AF8 002CEA38  7C 7B 1B 78 */	mr r27, r3
/* 802D1AFC 002CEA3C  7C 9C 23 78 */	mr r28, r4
/* 802D1B00 002CEA40  81 8D 8E 40 */	lwz r12, lbl_804513C0-_SDA_BASE_(r13)
/* 802D1B04 002CEA44  28 0C 00 00 */	cmplwi r12, 0
/* 802D1B08 002CEA48  41 82 00 0C */	beq lbl_802D1B14
/* 802D1B0C 002CEA4C  7D 89 03 A6 */	mtctr r12
/* 802D1B10 002CEA50  4E 80 04 21 */	bctrl 
lbl_802D1B14:
/* 802D1B14 002CEA54  80 6D 8E 34 */	lwz r3, lbl_804513B4-_SDA_BASE_(r13)
/* 802D1B18 002CEA58  38 03 00 01 */	addi r0, r3, 1
/* 802D1B1C 002CEA5C  90 0D 8E 34 */	stw r0, lbl_804513B4-_SDA_BASE_(r13)
/* 802D1B20 002CEA60  3B A0 00 00 */	li r29, 0
/* 802D1B24 002CEA64  3C 60 80 43 */	lis r3, sThreadList__9JKRThread@ha
/* 802D1B28 002CEA68  83 C3 42 8C */	lwz r30, sThreadList__9JKRThread@l(r3)
/* 802D1B2C 002CEA6C  48 00 00 FC */	b lbl_802D1C28
lbl_802D1B30:
/* 802D1B30 002CEA70  83 FE 00 00 */	lwz r31, 0(r30)
/* 802D1B34 002CEA74  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 802D1B38 002CEA78  7C 00 D8 40 */	cmplw r0, r27
/* 802D1B3C 002CEA7C  40 82 00 34 */	bne lbl_802D1B70
/* 802D1B40 002CEA80  80 0D 8D F4 */	lwz r0, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
/* 802D1B44 002CEA84  28 00 00 00 */	cmplwi r0, 0
/* 802D1B48 002CEA88  90 1F 00 74 */	stw r0, 0x74(r31)
/* 802D1B4C 002CEA8C  88 1F 00 60 */	lbz r0, 0x60(r31)
/* 802D1B50 002CEA90  28 00 00 00 */	cmplwi r0, 0
/* 802D1B54 002CEA94  41 82 00 1C */	beq lbl_802D1B70
/* 802D1B58 002CEA98  48 07 0B BD */	bl OSGetTick
/* 802D1B5C 002CEA9C  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 802D1B60 002CEAA0  7C 60 18 50 */	subf r3, r0, r3
/* 802D1B64 002CEAA4  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 802D1B68 002CEAA8  7C 00 1A 14 */	add r0, r0, r3
/* 802D1B6C 002CEAAC  90 1F 00 64 */	stw r0, 0x64(r31)
lbl_802D1B70:
/* 802D1B70 002CEAB0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 802D1B74 002CEAB4  7C 00 E0 40 */	cmplw r0, r28
/* 802D1B78 002CEAB8  40 82 00 AC */	bne lbl_802D1C24
/* 802D1B7C 002CEABC  88 1F 00 60 */	lbz r0, 0x60(r31)
/* 802D1B80 002CEAC0  28 00 00 00 */	cmplwi r0, 0
/* 802D1B84 002CEAC4  41 82 00 18 */	beq lbl_802D1B9C
/* 802D1B88 002CEAC8  48 07 0B 8D */	bl OSGetTick
/* 802D1B8C 002CEACC  90 7F 00 6C */	stw r3, 0x6c(r31)
/* 802D1B90 002CEAD0  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 802D1B94 002CEAD4  38 03 00 01 */	addi r0, r3, 1
/* 802D1B98 002CEAD8  90 1F 00 68 */	stw r0, 0x68(r31)
lbl_802D1B9C:
/* 802D1B9C 002CEADC  80 6D 8E 30 */	lwz r3, lbl_804513B0-_SDA_BASE_(r13)
/* 802D1BA0 002CEAE0  88 03 00 08 */	lbz r0, 8(r3)
/* 802D1BA4 002CEAE4  28 00 00 00 */	cmplwi r0, 0
/* 802D1BA8 002CEAE8  41 82 00 7C */	beq lbl_802D1C24
/* 802D1BAC 002CEAEC  80 9F 00 74 */	lwz r4, 0x74(r31)
/* 802D1BB0 002CEAF0  7C 9D 23 78 */	mr r29, r4
/* 802D1BB4 002CEAF4  28 04 00 00 */	cmplwi r4, 0
/* 802D1BB8 002CEAF8  40 82 00 0C */	bne lbl_802D1BC4
/* 802D1BBC 002CEAFC  83 AD 8D F4 */	lwz r29, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
/* 802D1BC0 002CEB00  48 00 00 64 */	b lbl_802D1C24
lbl_802D1BC4:
/* 802D1BC4 002CEB04  80 6D 8D F8 */	lwz r3, sRootHeap__7JKRHeap-_SDA_BASE_(r13)
/* 802D1BC8 002CEB08  4B FF CF E1 */	bl isSubHeap__7JKRHeapCFP7JKRHeap
/* 802D1BCC 002CEB0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D1BD0 002CEB10  40 82 00 54 */	bne lbl_802D1C24
/* 802D1BD4 002CEB14  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 802D1BD8 002CEB18  2C 00 00 02 */	cmpwi r0, 2
/* 802D1BDC 002CEB1C  41 82 00 3C */	beq lbl_802D1C18
/* 802D1BE0 002CEB20  40 80 00 14 */	bge lbl_802D1BF4
/* 802D1BE4 002CEB24  2C 00 00 00 */	cmpwi r0, 0
/* 802D1BE8 002CEB28  41 82 00 3C */	beq lbl_802D1C24
/* 802D1BEC 002CEB2C  40 80 00 14 */	bge lbl_802D1C00
/* 802D1BF0 002CEB30  48 00 00 34 */	b lbl_802D1C24
lbl_802D1BF4:
/* 802D1BF4 002CEB34  2C 00 00 04 */	cmpwi r0, 4
/* 802D1BF8 002CEB38  40 80 00 2C */	bge lbl_802D1C24
/* 802D1BFC 002CEB3C  48 00 00 24 */	b lbl_802D1C20
lbl_802D1C00:
/* 802D1C00 002CEB40  3C 60 80 3A */	lis r3, lbl_8039CFA8@ha
/* 802D1C04 002CEB44  38 63 CF A8 */	addi r3, r3, lbl_8039CFA8@l
/* 802D1C08 002CEB48  38 63 00 34 */	addi r3, r3, 0x34
/* 802D1C0C 002CEB4C  48 01 6A F1 */	bl JUTWarningConsole
/* 802D1C10 002CEB50  83 AD 8D F4 */	lwz r29, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
/* 802D1C14 002CEB54  48 00 00 10 */	b lbl_802D1C24
lbl_802D1C18:
/* 802D1C18 002CEB58  83 AD 8D F4 */	lwz r29, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
/* 802D1C1C 002CEB5C  48 00 00 08 */	b lbl_802D1C24
lbl_802D1C20:
/* 802D1C20 002CEB60  83 AD 8D F0 */	lwz r29, sSystemHeap__7JKRHeap-_SDA_BASE_(r13)
lbl_802D1C24:
/* 802D1C24 002CEB64  83 DE 00 0C */	lwz r30, 0xc(r30)
lbl_802D1C28:
/* 802D1C28 002CEB68  28 1E 00 00 */	cmplwi r30, 0
/* 802D1C2C 002CEB6C  40 82 FF 04 */	bne lbl_802D1B30
/* 802D1C30 002CEB70  28 1D 00 00 */	cmplwi r29, 0
/* 802D1C34 002CEB74  41 82 00 0C */	beq lbl_802D1C40
/* 802D1C38 002CEB78  7F A3 EB 78 */	mr r3, r29
/* 802D1C3C 002CEB7C  4B FF C7 FD */	bl becomeCurrentHeap__7JKRHeapFv
lbl_802D1C40:
/* 802D1C40 002CEB80  81 8D 8E 44 */	lwz r12, lbl_804513C4-_SDA_BASE_(r13)
/* 802D1C44 002CEB84  28 0C 00 00 */	cmplwi r12, 0
/* 802D1C48 002CEB88  41 82 00 14 */	beq lbl_802D1C5C
/* 802D1C4C 002CEB8C  7F 63 DB 78 */	mr r3, r27
/* 802D1C50 002CEB90  7F 84 E3 78 */	mr r4, r28
/* 802D1C54 002CEB94  7D 89 03 A6 */	mtctr r12
/* 802D1C58 002CEB98  4E 80 04 21 */	bctrl 
lbl_802D1C5C:
/* 802D1C5C 002CEB9C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D1C60 002CEBA0  48 09 05 C1 */	bl _restgpr_27
/* 802D1C64 002CEBA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D1C68 002CEBA8  7C 08 03 A6 */	mtlr r0
/* 802D1C6C 002CEBAC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D1C70 002CEBB0  4E 80 00 20 */	blr