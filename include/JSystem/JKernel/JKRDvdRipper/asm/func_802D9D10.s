/* loadToMainRAM__12JKRDvdRipperFP10JKRDvdFilePUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlP14JKRCompressionPUl JKRDvdRipper::loadToMainRAM(JKRDvdFile *, unsigned char *, JKRExpandSwitch, unsigned long, JKRHeap *, JKRDvdRipper::EAllocDirection, unsigned long, int *, unsigned long *) */
/* JKRDvdRipper_NS_loadToMainRAM_X2_ */
/* 802D9D10 002D6C50  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 802D9D14 002D6C54  7C 08 02 A6 */	mflr r0
/* 802D9D18 002D6C58  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 802D9D1C 002D6C5C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 802D9D20 002D6C60  48 08 84 91 */	bl _savegpr_18
/* 802D9D24 002D6C64  7C 76 1B 78 */	mr r22, r3
/* 802D9D28 002D6C68  7C 9C 23 78 */	mr r28, r4
/* 802D9D2C 002D6C6C  7C B5 2B 78 */	mr r21, r5
/* 802D9D30 002D6C70  7C DF 33 78 */	mr r31, r6
/* 802D9D34 002D6C74  7C F4 3B 78 */	mr r20, r7
/* 802D9D38 002D6C78  7D 12 43 78 */	mr r18, r8
/* 802D9D3C 002D6C7C  7D 3E 4B 78 */	mr r30, r9
/* 802D9D40 002D6C80  7D 53 53 78 */	mr r19, r10
/* 802D9D44 002D6C84  82 E1 00 C8 */	lwz r23, 0xc8(r1)
/* 802D9D48 002D6C88  3B 20 00 00 */	li r25, 0
/* 802D9D4C 002D6C8C  3B 60 00 00 */	li r27, 0
/* 802D9D50 002D6C90  3B A0 00 00 */	li r29, 0
/* 802D9D54 002D6C94  81 83 00 00 */	lwz r12, 0(r3)
/* 802D9D58 002D6C98  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D9D5C 002D6C9C  7D 89 03 A6 */	mtctr r12
/* 802D9D60 002D6CA0  4E 80 04 21 */	bctrl
/* 802D9D64 002D6CA4  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D9D68 002D6CA8  54 18 00 34 */	rlwinm r24, r0, 0, 0, 0x1a
/* 802D9D6C 002D6CAC  2C 15 00 01 */	cmpwi r21, 1
/* 802D9D70 002D6CB0  40 82 00 94 */	bne lbl_802D9E04
/* 802D9D74 002D6CB4  38 01 00 67 */	addi r0, r1, 0x67
/* 802D9D78 002D6CB8  54 1A 00 34 */	rlwinm r26, r0, 0, 0, 0x1a
lbl_802D9D7C:
/* 802D9D7C 002D6CBC  38 76 00 5C */	addi r3, r22, 0x5c
/* 802D9D80 002D6CC0  7F 44 D3 78 */	mr r4, r26
/* 802D9D84 002D6CC4  38 A0 00 20 */	li r5, 0x20
/* 802D9D88 002D6CC8  38 C0 00 00 */	li r6, 0
/* 802D9D8C 002D6CCC  38 E0 00 02 */	li r7, 2
/* 802D9D90 002D6CD0  48 06 F0 B5 */	bl DVDReadPrio
/* 802D9D94 002D6CD4  2C 03 00 00 */	cmpwi r3, 0
/* 802D9D98 002D6CD8  40 80 00 28 */	bge lbl_802D9DC0
/* 802D9D9C 002D6CDC  2C 03 FF FD */	cmpwi r3, -3
/* 802D9DA0 002D6CE0  41 82 00 10 */	beq lbl_802D9DB0
/* 802D9DA4 002D6CE4  88 0D 83 48 */	lbz r0, lbl_804508C8-_SDA_BASE_(r13)
/* 802D9DA8 002D6CE8  28 00 00 00 */	cmplwi r0, 0
/* 802D9DAC 002D6CEC  40 82 00 0C */	bne lbl_802D9DB8
lbl_802D9DB0:
/* 802D9DB0 002D6CF0  38 60 00 00 */	li r3, 0
/* 802D9DB4 002D6CF4  48 00 04 18 */	b lbl_802DA1CC
lbl_802D9DB8:
/* 802D9DB8 002D6CF8  48 07 2C 0D */	bl VIWaitForRetrace
/* 802D9DBC 002D6CFC  4B FF FF C0 */	b lbl_802D9D7C
lbl_802D9DC0:
/* 802D9DC0 002D6D00  7F 43 D3 78 */	mr r3, r26
/* 802D9DC4 002D6D04  38 80 00 20 */	li r4, 0x20
/* 802D9DC8 002D6D08  48 06 17 B9 */	bl DCInvalidateRange
/* 802D9DCC 002D6D0C  7F 43 D3 78 */	mr r3, r26
/* 802D9DD0 002D6D10  48 00 1F 29 */	bl checkCompressed__9JKRDecompFPUc
/* 802D9DD4 002D6D14  2C 03 00 03 */	cmpwi r3, 3
/* 802D9DD8 002D6D18  40 82 00 08 */	bne lbl_802D9DE0
/* 802D9DDC 002D6D1C  38 60 00 00 */	li r3, 0
lbl_802D9DE0:
/* 802D9DE0 002D6D20  7C 7B 1B 78 */	mr r27, r3
/* 802D9DE4 002D6D24  88 BA 00 07 */	lbz r5, 7(r26)
/* 802D9DE8 002D6D28  88 9A 00 06 */	lbz r4, 6(r26)
/* 802D9DEC 002D6D2C  88 7A 00 04 */	lbz r3, 4(r26)
/* 802D9DF0 002D6D30  88 1A 00 05 */	lbz r0, 5(r26)
/* 802D9DF4 002D6D34  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D9DF8 002D6D38  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D9DFC 002D6D3C  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D9E00 002D6D40  7C BA 03 78 */	or r26, r5, r0
lbl_802D9E04:
/* 802D9E04 002D6D44  28 13 00 00 */	cmplwi r19, 0
/* 802D9E08 002D6D48  41 82 00 08 */	beq lbl_802D9E10
/* 802D9E0C 002D6D4C  93 73 00 00 */	stw r27, 0(r19)
lbl_802D9E10:
/* 802D9E10 002D6D50  2C 15 00 01 */	cmpwi r21, 1
/* 802D9E14 002D6D54  40 82 00 9C */	bne lbl_802D9EB0
/* 802D9E18 002D6D58  2C 1B 00 00 */	cmpwi r27, 0
/* 802D9E1C 002D6D5C  41 82 00 94 */	beq lbl_802D9EB0
/* 802D9E20 002D6D60  28 1F 00 00 */	cmplwi r31, 0
/* 802D9E24 002D6D64  41 82 00 10 */	beq lbl_802D9E34
/* 802D9E28 002D6D68  7C 1A F8 40 */	cmplw r26, r31
/* 802D9E2C 002D6D6C  40 81 00 08 */	ble lbl_802D9E34
/* 802D9E30 002D6D70  7F FA FB 78 */	mr r26, r31
lbl_802D9E34:
/* 802D9E34 002D6D74  28 1C 00 00 */	cmplwi r28, 0
/* 802D9E38 002D6D78  40 82 00 28 */	bne lbl_802D9E60
/* 802D9E3C 002D6D7C  7F 43 D3 78 */	mr r3, r26
/* 802D9E40 002D6D80  2C 12 00 01 */	cmpwi r18, 1
/* 802D9E44 002D6D84  38 80 FF E0 */	li r4, -32
/* 802D9E48 002D6D88  40 82 00 08 */	bne lbl_802D9E50
/* 802D9E4C 002D6D8C  38 80 00 20 */	li r4, 0x20
lbl_802D9E50:
/* 802D9E50 002D6D90  7E 85 A3 78 */	mr r5, r20
/* 802D9E54 002D6D94  4B FF 46 21 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D9E58 002D6D98  7C 7C 1B 78 */	mr r28, r3
/* 802D9E5C 002D6D9C  3B 20 00 01 */	li r25, 1
lbl_802D9E60:
/* 802D9E60 002D6DA0  28 1C 00 00 */	cmplwi r28, 0
/* 802D9E64 002D6DA4  40 82 00 0C */	bne lbl_802D9E70
/* 802D9E68 002D6DA8  38 60 00 00 */	li r3, 0
/* 802D9E6C 002D6DAC  48 00 03 60 */	b lbl_802DA1CC
lbl_802D9E70:
/* 802D9E70 002D6DB0  2C 1B 00 01 */	cmpwi r27, 1
/* 802D9E74 002D6DB4  40 82 00 8C */	bne lbl_802D9F00
/* 802D9E78 002D6DB8  7F 03 C3 78 */	mr r3, r24
/* 802D9E7C 002D6DBC  38 80 00 20 */	li r4, 0x20
/* 802D9E80 002D6DC0  7E 85 A3 78 */	mr r5, r20
/* 802D9E84 002D6DC4  4B FF 45 F1 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D9E88 002D6DC8  7C 7D 1B 79 */	or. r29, r3, r3
/* 802D9E8C 002D6DCC  40 82 00 74 */	bne lbl_802D9F00
/* 802D9E90 002D6DD0  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 802D9E94 002D6DD4  28 00 00 01 */	cmplwi r0, 1
/* 802D9E98 002D6DD8  40 82 00 68 */	bne lbl_802D9F00
/* 802D9E9C 002D6DDC  7F 83 E3 78 */	mr r3, r28
/* 802D9EA0 002D6DE0  38 80 00 00 */	li r4, 0
/* 802D9EA4 002D6DE4  4B FF 46 5D */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D9EA8 002D6DE8  38 60 00 00 */	li r3, 0
/* 802D9EAC 002D6DEC  48 00 03 20 */	b lbl_802DA1CC
lbl_802D9EB0:
/* 802D9EB0 002D6DF0  28 1C 00 00 */	cmplwi r28, 0
/* 802D9EB4 002D6DF4  40 82 00 3C */	bne lbl_802D9EF0
/* 802D9EB8 002D6DF8  7C 7E C0 50 */	subf r3, r30, r24
/* 802D9EBC 002D6DFC  28 1F 00 00 */	cmplwi r31, 0
/* 802D9EC0 002D6E00  41 82 00 10 */	beq lbl_802D9ED0
/* 802D9EC4 002D6E04  7C 03 F8 40 */	cmplw r3, r31
/* 802D9EC8 002D6E08  40 81 00 08 */	ble lbl_802D9ED0
/* 802D9ECC 002D6E0C  7F E3 FB 78 */	mr r3, r31
lbl_802D9ED0:
/* 802D9ED0 002D6E10  2C 12 00 01 */	cmpwi r18, 1
/* 802D9ED4 002D6E14  38 80 FF E0 */	li r4, -32
/* 802D9ED8 002D6E18  40 82 00 08 */	bne lbl_802D9EE0
/* 802D9EDC 002D6E1C  38 80 00 20 */	li r4, 0x20
lbl_802D9EE0:
/* 802D9EE0 002D6E20  7E 85 A3 78 */	mr r5, r20
/* 802D9EE4 002D6E24  4B FF 45 91 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D9EE8 002D6E28  7C 7C 1B 78 */	mr r28, r3
/* 802D9EEC 002D6E2C  3B 20 00 01 */	li r25, 1
lbl_802D9EF0:
/* 802D9EF0 002D6E30  28 1C 00 00 */	cmplwi r28, 0
/* 802D9EF4 002D6E34  40 82 00 0C */	bne lbl_802D9F00
/* 802D9EF8 002D6E38  38 60 00 00 */	li r3, 0
/* 802D9EFC 002D6E3C  48 00 02 D0 */	b lbl_802DA1CC
lbl_802D9F00:
/* 802D9F00 002D6E40  2C 1B 00 00 */	cmpwi r27, 0
/* 802D9F04 002D6E44  40 82 01 8C */	bne lbl_802DA090
/* 802D9F08 002D6E48  38 60 00 00 */	li r3, 0
/* 802D9F0C 002D6E4C  28 1E 00 00 */	cmplwi r30, 0
/* 802D9F10 002D6E50  41 82 00 8C */	beq lbl_802D9F9C
/* 802D9F14 002D6E54  38 01 00 27 */	addi r0, r1, 0x27
/* 802D9F18 002D6E58  54 13 00 34 */	rlwinm r19, r0, 0, 0, 0x1a
/* 802D9F1C 002D6E5C  7F D2 F3 78 */	mr r18, r30
lbl_802D9F20:
/* 802D9F20 002D6E60  38 76 00 5C */	addi r3, r22, 0x5c
/* 802D9F24 002D6E64  7E 64 9B 78 */	mr r4, r19
/* 802D9F28 002D6E68  38 A0 00 20 */	li r5, 0x20
/* 802D9F2C 002D6E6C  7E 46 93 78 */	mr r6, r18
/* 802D9F30 002D6E70  38 E0 00 02 */	li r7, 2
/* 802D9F34 002D6E74  48 06 EF 11 */	bl DVDReadPrio
/* 802D9F38 002D6E78  2C 03 00 00 */	cmpwi r3, 0
/* 802D9F3C 002D6E7C  40 80 00 40 */	bge lbl_802D9F7C
/* 802D9F40 002D6E80  2C 03 FF FD */	cmpwi r3, -3
/* 802D9F44 002D6E84  41 82 00 10 */	beq lbl_802D9F54
/* 802D9F48 002D6E88  88 0D 83 48 */	lbz r0, lbl_804508C8-_SDA_BASE_(r13)
/* 802D9F4C 002D6E8C  28 00 00 00 */	cmplwi r0, 0
/* 802D9F50 002D6E90  40 82 00 24 */	bne lbl_802D9F74
lbl_802D9F54:
/* 802D9F54 002D6E94  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 802D9F58 002D6E98  28 00 00 01 */	cmplwi r0, 1
/* 802D9F5C 002D6E9C  40 82 00 10 */	bne lbl_802D9F6C
/* 802D9F60 002D6EA0  7F 83 E3 78 */	mr r3, r28
/* 802D9F64 002D6EA4  38 80 00 00 */	li r4, 0
/* 802D9F68 002D6EA8  4B FF 45 99 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D9F6C:
/* 802D9F6C 002D6EAC  38 60 00 00 */	li r3, 0
/* 802D9F70 002D6EB0  48 00 02 5C */	b lbl_802DA1CC
lbl_802D9F74:
/* 802D9F74 002D6EB4  48 07 2A 51 */	bl VIWaitForRetrace
/* 802D9F78 002D6EB8  4B FF FF A8 */	b lbl_802D9F20
lbl_802D9F7C:
/* 802D9F7C 002D6EBC  7E 63 9B 78 */	mr r3, r19
/* 802D9F80 002D6EC0  38 80 00 20 */	li r4, 0x20
/* 802D9F84 002D6EC4  48 06 15 FD */	bl DCInvalidateRange
/* 802D9F88 002D6EC8  7E 63 9B 78 */	mr r3, r19
/* 802D9F8C 002D6ECC  48 00 1D 6D */	bl checkCompressed__9JKRDecompFPUc
/* 802D9F90 002D6ED0  2C 03 00 03 */	cmpwi r3, 3
/* 802D9F94 002D6ED4  40 82 00 08 */	bne lbl_802D9F9C
/* 802D9F98 002D6ED8  38 60 00 00 */	li r3, 0
lbl_802D9F9C:
/* 802D9F9C 002D6EDC  2C 03 00 00 */	cmpwi r3, 0
/* 802D9FA0 002D6EE0  41 82 00 14 */	beq lbl_802D9FB4
/* 802D9FA4 002D6EE4  2C 15 00 02 */	cmpwi r21, 2
/* 802D9FA8 002D6EE8  41 82 00 0C */	beq lbl_802D9FB4
/* 802D9FAC 002D6EEC  2C 15 00 00 */	cmpwi r21, 0
/* 802D9FB0 002D6EF0  40 82 00 90 */	bne lbl_802DA040
lbl_802D9FB4:
/* 802D9FB4 002D6EF4  7E 7E C0 50 */	subf r19, r30, r24
/* 802D9FB8 002D6EF8  28 1F 00 00 */	cmplwi r31, 0
/* 802D9FBC 002D6EFC  41 82 00 10 */	beq lbl_802D9FCC
/* 802D9FC0 002D6F00  7C 1F 98 40 */	cmplw r31, r19
/* 802D9FC4 002D6F04  40 80 00 08 */	bge lbl_802D9FCC
/* 802D9FC8 002D6F08  7F F3 FB 78 */	mr r19, r31
lbl_802D9FCC:
/* 802D9FCC 002D6F0C  7F D2 F3 78 */	mr r18, r30
lbl_802D9FD0:
/* 802D9FD0 002D6F10  38 76 00 5C */	addi r3, r22, 0x5c
/* 802D9FD4 002D6F14  7F 84 E3 78 */	mr r4, r28
/* 802D9FD8 002D6F18  7E 65 9B 78 */	mr r5, r19
/* 802D9FDC 002D6F1C  7E 46 93 78 */	mr r6, r18
/* 802D9FE0 002D6F20  38 E0 00 02 */	li r7, 2
/* 802D9FE4 002D6F24  48 06 EE 61 */	bl DVDReadPrio
/* 802D9FE8 002D6F28  2C 03 00 00 */	cmpwi r3, 0
/* 802D9FEC 002D6F2C  40 80 00 40 */	bge lbl_802DA02C
/* 802D9FF0 002D6F30  2C 03 FF FD */	cmpwi r3, -3
/* 802D9FF4 002D6F34  41 82 00 10 */	beq lbl_802DA004
/* 802D9FF8 002D6F38  88 0D 83 48 */	lbz r0, lbl_804508C8-_SDA_BASE_(r13)
/* 802D9FFC 002D6F3C  28 00 00 00 */	cmplwi r0, 0
/* 802DA000 002D6F40  40 82 00 24 */	bne lbl_802DA024
lbl_802DA004:
/* 802DA004 002D6F44  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 802DA008 002D6F48  28 00 00 01 */	cmplwi r0, 1
/* 802DA00C 002D6F4C  40 82 00 10 */	bne lbl_802DA01C
/* 802DA010 002D6F50  7F 83 E3 78 */	mr r3, r28
/* 802DA014 002D6F54  38 80 00 00 */	li r4, 0
/* 802DA018 002D6F58  4B FF 44 E9 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802DA01C:
/* 802DA01C 002D6F5C  38 60 00 00 */	li r3, 0
/* 802DA020 002D6F60  48 00 01 AC */	b lbl_802DA1CC
lbl_802DA024:
/* 802DA024 002D6F64  48 07 29 A1 */	bl VIWaitForRetrace
/* 802DA028 002D6F68  4B FF FF A8 */	b lbl_802D9FD0
lbl_802DA02C:
/* 802DA02C 002D6F6C  28 17 00 00 */	cmplwi r23, 0
/* 802DA030 002D6F70  41 82 00 08 */	beq lbl_802DA038
/* 802DA034 002D6F74  92 77 00 00 */	stw r19, 0(r23)
lbl_802DA038:
/* 802DA038 002D6F78  7F 83 E3 78 */	mr r3, r28
/* 802DA03C 002D6F7C  48 00 01 90 */	b lbl_802DA1CC
lbl_802DA040:
/* 802DA040 002D6F80  2C 03 00 02 */	cmpwi r3, 2
/* 802DA044 002D6F84  40 82 00 28 */	bne lbl_802DA06C
/* 802DA048 002D6F88  7E C3 B3 78 */	mr r3, r22
/* 802DA04C 002D6F8C  7F 84 E3 78 */	mr r4, r28
/* 802DA050 002D6F90  7F 05 C3 78 */	mr r5, r24
/* 802DA054 002D6F94  7F E6 FB 78 */	mr r6, r31
/* 802DA058 002D6F98  38 E0 00 00 */	li r7, 0
/* 802DA05C 002D6F9C  7F C8 F3 78 */	mr r8, r30
/* 802DA060 002D6FA0  7E E9 BB 78 */	mr r9, r23
/* 802DA064 002D6FA4  48 00 01 81 */	bl JKRDecompressFromDVD__FP10JKRDvdFilePvUlUlUlUlPUl
/* 802DA068 002D6FA8  48 00 00 20 */	b lbl_802DA088
lbl_802DA06C:
/* 802DA06C 002D6FAC  3C 60 80 3A */	lis r3, lbl_8039D290@ha
/* 802DA070 002D6FB0  38 63 D2 90 */	addi r3, r3, lbl_8039D290@l
/* 802DA074 002D6FB4  38 80 01 43 */	li r4, 0x143
/* 802DA078 002D6FB8  38 A3 00 11 */	addi r5, r3, 0x11
/* 802DA07C 002D6FBC  38 C3 00 14 */	addi r6, r3, 0x14
/* 802DA080 002D6FC0  4C C6 31 82 */	crclr 6
/* 802DA084 002D6FC4  48 00 81 79 */	bl JUTException_NS_panic_f
lbl_802DA088:
/* 802DA088 002D6FC8  7F 83 E3 78 */	mr r3, r28
/* 802DA08C 002D6FCC  48 00 01 40 */	b lbl_802DA1CC
lbl_802DA090:
/* 802DA090 002D6FD0  2C 1B 00 01 */	cmpwi r27, 1
/* 802DA094 002D6FD4  40 82 00 D0 */	bne lbl_802DA164
/* 802DA098 002D6FD8  28 1E 00 00 */	cmplwi r30, 0
/* 802DA09C 002D6FDC  41 82 00 20 */	beq lbl_802DA0BC
/* 802DA0A0 002D6FE0  3C 60 80 3A */	lis r3, lbl_8039D290@ha
/* 802DA0A4 002D6FE4  38 63 D2 90 */	addi r3, r3, lbl_8039D290@l
/* 802DA0A8 002D6FE8  38 80 01 4D */	li r4, 0x14d
/* 802DA0AC 002D6FEC  38 A3 00 11 */	addi r5, r3, 0x11
/* 802DA0B0 002D6FF0  38 C3 00 38 */	addi r6, r3, 0x38
/* 802DA0B4 002D6FF4  4C C6 31 82 */	crclr 6
/* 802DA0B8 002D6FF8  48 00 81 45 */	bl JUTException_NS_panic_f
lbl_802DA0BC:
/* 802DA0BC 002D6FFC  38 76 00 5C */	addi r3, r22, 0x5c
/* 802DA0C0 002D7000  7F A4 EB 78 */	mr r4, r29
/* 802DA0C4 002D7004  7F 05 C3 78 */	mr r5, r24
/* 802DA0C8 002D7008  38 C0 00 00 */	li r6, 0
/* 802DA0CC 002D700C  38 E0 00 02 */	li r7, 2
/* 802DA0D0 002D7010  48 06 ED 75 */	bl DVDReadPrio
/* 802DA0D4 002D7014  2C 03 00 00 */	cmpwi r3, 0
/* 802DA0D8 002D7018  40 80 00 4C */	bge lbl_802DA124
/* 802DA0DC 002D701C  2C 03 FF FD */	cmpwi r3, -3
/* 802DA0E0 002D7020  41 82 00 10 */	beq lbl_802DA0F0
/* 802DA0E4 002D7024  88 0D 83 48 */	lbz r0, lbl_804508C8-_SDA_BASE_(r13)
/* 802DA0E8 002D7028  28 00 00 00 */	cmplwi r0, 0
/* 802DA0EC 002D702C  40 82 00 30 */	bne lbl_802DA11C
lbl_802DA0F0:
/* 802DA0F0 002D7030  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 802DA0F4 002D7034  28 00 00 01 */	cmplwi r0, 1
/* 802DA0F8 002D7038  40 82 00 10 */	bne lbl_802DA108
/* 802DA0FC 002D703C  7F 83 E3 78 */	mr r3, r28
/* 802DA100 002D7040  38 80 00 00 */	li r4, 0
/* 802DA104 002D7044  4B FF 43 FD */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802DA108:
/* 802DA108 002D7048  7F A3 EB 78 */	mr r3, r29
/* 802DA10C 002D704C  38 80 00 00 */	li r4, 0
/* 802DA110 002D7050  4B FF 43 F1 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802DA114 002D7054  38 60 00 00 */	li r3, 0
/* 802DA118 002D7058  48 00 00 B4 */	b lbl_802DA1CC
lbl_802DA11C:
/* 802DA11C 002D705C  48 07 28 A9 */	bl VIWaitForRetrace
/* 802DA120 002D7060  4B FF FF 9C */	b lbl_802DA0BC
lbl_802DA124:
/* 802DA124 002D7064  7F A3 EB 78 */	mr r3, r29
/* 802DA128 002D7068  7F 04 C3 78 */	mr r4, r24
/* 802DA12C 002D706C  48 06 14 55 */	bl DCInvalidateRange
/* 802DA130 002D7070  7F A3 EB 78 */	mr r3, r29
/* 802DA134 002D7074  7F 84 E3 78 */	mr r4, r28
/* 802DA138 002D7078  7F 45 D3 78 */	mr r5, r26
/* 802DA13C 002D707C  7F C6 F3 78 */	mr r6, r30
/* 802DA140 002D7080  48 00 18 49 */	bl orderSync__9JKRDecompFPUcPUcUlUl
/* 802DA144 002D7084  7F A3 EB 78 */	mr r3, r29
/* 802DA148 002D7088  38 80 00 00 */	li r4, 0
/* 802DA14C 002D708C  4B FF 43 B5 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802DA150 002D7090  28 17 00 00 */	cmplwi r23, 0
/* 802DA154 002D7094  41 82 00 08 */	beq lbl_802DA15C
/* 802DA158 002D7098  93 57 00 00 */	stw r26, 0(r23)
lbl_802DA15C:
/* 802DA15C 002D709C  7F 83 E3 78 */	mr r3, r28
/* 802DA160 002D70A0  48 00 00 6C */	b lbl_802DA1CC
lbl_802DA164:
/* 802DA164 002D70A4  2C 1B 00 02 */	cmpwi r27, 2
/* 802DA168 002D70A8  40 82 00 4C */	bne lbl_802DA1B4
/* 802DA16C 002D70AC  7E C3 B3 78 */	mr r3, r22
/* 802DA170 002D70B0  7F 84 E3 78 */	mr r4, r28
/* 802DA174 002D70B4  7F 05 C3 78 */	mr r5, r24
/* 802DA178 002D70B8  7F 46 D3 78 */	mr r6, r26
/* 802DA17C 002D70BC  7F C7 F3 78 */	mr r7, r30
/* 802DA180 002D70C0  39 00 00 00 */	li r8, 0
/* 802DA184 002D70C4  7E E9 BB 78 */	mr r9, r23
/* 802DA188 002D70C8  48 00 00 5D */	bl JKRDecompressFromDVD__FP10JKRDvdFilePvUlUlUlUlPUl
/* 802DA18C 002D70CC  28 03 00 00 */	cmplwi r3, 0
/* 802DA190 002D70D0  41 82 00 1C */	beq lbl_802DA1AC
/* 802DA194 002D70D4  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 802DA198 002D70D8  41 82 00 10 */	beq lbl_802DA1A8
/* 802DA19C 002D70DC  7F 83 E3 78 */	mr r3, r28
/* 802DA1A0 002D70E0  38 80 00 00 */	li r4, 0
/* 802DA1A4 002D70E4  4B FF 43 5D */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802DA1A8:
/* 802DA1A8 002D70E8  3B 80 00 00 */	li r28, 0
lbl_802DA1AC:
/* 802DA1AC 002D70EC  7F 83 E3 78 */	mr r3, r28
/* 802DA1B0 002D70F0  48 00 00 1C */	b lbl_802DA1CC
lbl_802DA1B4:
/* 802DA1B4 002D70F4  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 802DA1B8 002D70F8  41 82 00 10 */	beq lbl_802DA1C8
/* 802DA1BC 002D70FC  7F 83 E3 78 */	mr r3, r28
/* 802DA1C0 002D7100  38 80 00 00 */	li r4, 0
/* 802DA1C4 002D7104  4B FF 43 3D */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802DA1C8:
/* 802DA1C8 002D7108  38 60 00 00 */	li r3, 0
lbl_802DA1CC:
/* 802DA1CC 002D710C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 802DA1D0 002D7110  48 08 80 2D */	bl _restgpr_18
/* 802DA1D4 002D7114  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 802DA1D8 002D7118  7C 08 03 A6 */	mtlr r0
/* 802DA1DC 002D711C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 802DA1E0 002D7120  4E 80 00 20 */	blr
