/* 800DB418 000D8358  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800DB41C 000D835C  7C 08 02 A6 */ mflr r0
/* 800DB420 000D8360  90 01 00 24 */ stw r0, 0x24(r1)
/* 800DB424 000D8364  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 800DB428 000D8368  7C 7F 1B 78 */ mr r31, r3
/* 800DB42C 000D836C  3C 80 00 02 */ lis r4, 0x000200AC@ha
/* 800DB430 000D8370  38 84 00 AC */ addi r4, r4, 0x000200AC@l
/* 800DB434 000D8374  81 83 06 28 */ lwz r12, 0x628(r3)
/* 800DB438 000D8378  81 8C 01 1C */ lwz r12, 0x11c(r12)
/* 800DB43C 000D837C  7D 89 03 A6 */ mtctr r12
/* 800DB440 000D8380  4E 80 04 21 */ bctrl
/* 800DB444 000D8384  80 1F 31 A0 */ lwz r0, 0x31a0(r31)
/* 800DB448 000D8388  54 00 03 5B */ rlwinm. r0, r0, 0, 0xd, 0xd
/* 800DB44C 000D838C  41 82 00 30 */ beq lbl_800DB47C
/* 800DB450 000D8390  88 1F 2F 99 */ lbz r0, 0x2f99(r31)
/* 800DB454 000D8394  28 00 00 0F */ cmplwi r0, 0xf
/* 800DB458 000D8398  41 82 00 24 */ beq lbl_800DB47C
/* 800DB45C 000D839C  38 00 00 07 */ li r0, 7
/* 800DB460 000D83A0  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 800DB464 000D83A4  38 7F 30 80 */ addi r3, r31, 0x3080
/* 800DB468 000D83A8  38 80 00 00 */ li r4, 0
/* 800DB46C 000D83AC  38 A0 00 04 */ li r5, 4
/* 800DB470 000D83B0  38 C0 0C 00 */ li r6, 0xc00
/* 800DB474 000D83B4  38 E0 01 80 */ li r7, 0x180
/* 800DB478 000D83B8  48 08 45 05 */ bl daPy_addCalcShort
lbl_800DB47C:
/* 800DB47C 000D83BC  A8 1F 30 0E */ lha r0, 0x300e(r31)
/* 800DB480 000D83C0  2C 00 00 00 */ cmpwi r0, 0
/* 800DB484 000D83C4  41 82 00 40 */ beq lbl_800DB4C4
/* 800DB488 000D83C8  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800DB48C 000D83CC  D0 21 00 08 */ stfs f1, 8(r1)
/* 800DB490 000D83D0  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800DB494 000D83D4  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800DB498 000D83D8  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800DB49C 000D83DC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DB4A0 000D83E0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DB4A4 000D83E4  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800DB4A8 000D83E8  38 80 00 05 */ li r4, 5
/* 800DB4AC 000D83EC  38 A0 00 01 */ li r5, 1
/* 800DB4B0 000D83F0  38 C1 00 08 */ addi r6, r1, 8
/* 800DB4B4 000D83F4  4B F9 46 5D */ bl dVibration_c_NS_StartQuake
/* 800DB4B8 000D83F8  A8 7F 30 0E */ lha r3, 0x300e(r31)
/* 800DB4BC 000D83FC  38 03 FF FF */ addi r0, r3, -1
/* 800DB4C0 000D8400  B0 1F 30 0E */ sth r0, 0x300e(r31)
lbl_800DB4C4:
/* 800DB4C4 000D8404  A8 7F 30 08 */ lha r3, 0x3008(r31)
/* 800DB4C8 000D8408  2C 03 00 00 */ cmpwi r3, 0
/* 800DB4CC 000D840C  41 82 00 10 */ beq lbl_800DB4DC
/* 800DB4D0 000D8410  38 03 FF FF */ addi r0, r3, -1
/* 800DB4D4 000D8414  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 800DB4D8 000D8418  48 00 00 C0 */ b lbl_800DB598
lbl_800DB4DC:
/* 800DB4DC 000D841C  A8 1F 30 0C */ lha r0, 0x300c(r31)
/* 800DB4E0 000D8420  2C 00 00 00 */ cmpwi r0, 0
/* 800DB4E4 000D8424  41 82 00 0C */ beq lbl_800DB4F0
/* 800DB4E8 000D8428  48 0A 61 59 */ bl dCam_getBody
/* 800DB4EC 000D842C  48 08 5F C1 */ bl dCamera_c_NS_Start
lbl_800DB4F0:
/* 800DB4F0 000D8430  7F E3 FB 78 */ mr r3, r31
/* 800DB4F4 000D8434  48 03 C7 9D */ bl daAlink_c_NS_resetSpecialEvent
/* 800DB4F8 000D8438  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800DB4FC 000D843C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800DB500 000D8440  38 63 5B D4 */ addi r3, r3, 0x5bd4
/* 800DB504 000D8444  38 80 00 1F */ li r4, 0x1f
/* 800DB508 000D8448  4B F9 48 8D */ bl dVibration_c_NS_StopQuake
/* 800DB50C 000D844C  80 7F 31 A0 */ lwz r3, 0x31a0(r31)
/* 800DB510 000D8450  54 60 07 BD */ rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 800DB514 000D8454  40 82 00 10 */ bne lbl_800DB524
/* 800DB518 000D8458  80 1F 31 98 */ lwz r0, 0x3198(r31)
/* 800DB51C 000D845C  2C 00 00 00 */ cmpwi r0, 0
/* 800DB520 000D8460  41 82 00 30 */ beq lbl_800DB550
lbl_800DB524:
/* 800DB524 000D8464  A8 1F 30 10 */ lha r0, 0x3010(r31)
/* 800DB528 000D8468  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800DB52C 000D846C  7F E3 FB 78 */ mr r3, r31
/* 800DB530 000D8470  38 80 FF FF */ li r4, -1
/* 800DB534 000D8474  38 A0 00 01 */ li r5, 1
/* 800DB538 000D8478  38 C0 00 00 */ li r6, 0
/* 800DB53C 000D847C  38 E0 00 00 */ li r7, 0
/* 800DB540 000D8480  39 00 00 00 */ li r8, 0
/* 800DB544 000D8484  39 20 00 02 */ li r9, 2
/* 800DB548 000D8488  4B FF E1 95 */ bl daAlink_c_NS_procCoLargeDamageInit
/* 800DB54C 000D848C  48 00 00 4C */ b lbl_800DB598
lbl_800DB550:
/* 800DB550 000D8490  54 60 03 5B */ rlwinm. r0, r3, 0, 0xd, 0xd
/* 800DB554 000D8494  41 82 00 30 */ beq lbl_800DB584
/* 800DB558 000D8498  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800DB55C 000D849C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800DB560 000D84A0  41 82 00 14 */ beq lbl_800DB574
/* 800DB564 000D84A4  7F E3 FB 78 */ mr r3, r31
/* 800DB568 000D84A8  38 80 00 00 */ li r4, 0
/* 800DB56C 000D84AC  48 05 CF C1 */ bl daAlink_c_NS_procWolfSwimWaitInit
/* 800DB570 000D84B0  48 00 00 28 */ b lbl_800DB598
lbl_800DB574:
/* 800DB574 000D84B4  7F E3 FB 78 */ mr r3, r31
/* 800DB578 000D84B8  38 80 00 00 */ li r4, 0
/* 800DB57C 000D84BC  48 02 8D 7D */ bl daAlink_c_NS_procSwimWaitInit
/* 800DB580 000D84C0  48 00 00 18 */ b lbl_800DB598
lbl_800DB584:
/* 800DB584 000D84C4  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 800DB588 000D84C8  28 00 01 42 */ cmplwi r0, 0x142
/* 800DB58C 000D84CC  40 82 00 0C */ bne lbl_800DB598
/* 800DB590 000D84D0  7F E3 FB 78 */ mr r3, r31
/* 800DB594 000D84D4  4B FD A3 59 */ bl daAlink_c_NS_checkWaitAction
lbl_800DB598:
/* 800DB598 000D84D8  38 60 00 01 */ li r3, 1
/* 800DB59C 000D84DC  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800DB5A0 000D84E0  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800DB5A4 000D84E4  7C 08 03 A6 */ mtlr r0
/* 800DB5A8 000D84E8  38 21 00 20 */ addi r1, r1, 0x20
/* 800DB5AC 000D84EC  4E 80 00 20 */ blr
