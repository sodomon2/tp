/* 80032D1C 0002FC5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80032D20 0002FC60  7C 08 02 A6 */	mflr r0
/* 80032D24 0002FC64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80032D28 0002FC68  39 61 00 20 */	addi r11, r1, 0x20
/* 80032D2C 0002FC6C  48 32 F4 B1 */	bl _savegpr_29
/* 80032D30 0002FC70  7C 7D 1B 78 */	mr r29, r3
/* 80032D34 0002FC74  7C BE 2B 78 */	mr r30, r5
/* 80032D38 0002FC78  7C DF 33 78 */	mr r31, r6
/* 80032D3C 0002FC7C  48 33 5D F1 */	bl strcpy
/* 80032D40 0002FC80  9B DD 00 09 */	stb r30, 9(r29)
/* 80032D44 0002FC84  9B FD 00 08 */	stb r31, 8(r29)
/* 80032D48 0002FC88  39 61 00 20 */	addi r11, r1, 0x20
/* 80032D4C 0002FC8C  48 32 F4 DD */	bl _restgpr_29
/* 80032D50 0002FC90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80032D54 0002FC94  7C 08 03 A6 */	mtlr r0
/* 80032D58 0002FC98  38 21 00 20 */	addi r1, r1, 0x20
/* 80032D5C 0002FC9C  4E 80 00 20 */	blr