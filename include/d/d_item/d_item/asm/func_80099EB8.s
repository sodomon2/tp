/* 80099EB8 00096DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80099EBC 00096DFC  7C 08 02 A6 */	mflr r0
/* 80099EC0 00096E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80099EC4 00096E04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80099EC8 00096E08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80099ECC 00096E0C  38 63 00 9C */	addi r3, r3, 0x9c
/* 80099ED0 00096E10  38 80 00 06 */	li r4, 6
/* 80099ED4 00096E14  38 A0 00 01 */	li r5, 1
/* 80099ED8 00096E18  4B F9 91 59 */	bl getItem__17dSv_player_item_cCFib
/* 80099EDC 00096E1C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80099EE0 00096E20  20 00 00 42 */	subfic r0, r0, 0x42
/* 80099EE4 00096E24  7C 00 00 34 */	cntlzw r0, r0
/* 80099EE8 00096E28  54 03 D9 7E */	srwi r3, r0, 5
/* 80099EEC 00096E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80099EF0 00096E30  7C 08 03 A6 */	mtlr r0
/* 80099EF4 00096E34  38 21 00 10 */	addi r1, r1, 0x10
/* 80099EF8 00096E38  4E 80 00 20 */	blr 