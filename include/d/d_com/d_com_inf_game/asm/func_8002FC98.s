/* 8002FC98 0002CBD8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002FC9C 0002CBDC  7C 08 02 A6 */ mflr r0
/* 8002FCA0 0002CBE0  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002FCA4 0002CBE4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8002FCA8 0002CBE8  7C 7F 1B 78 */ mr r31, r3
/* 8002FCAC 0002CBEC  88 0D 87 E4 */ lbz r0, lbl_80450D64-_SDA_BASE_(r13)
/* 8002FCB0 0002CBF0  7C 00 07 74 */ extsb r0, r0
/* 8002FCB4 0002CBF4  3C 60 80 3F */ lis r3, lbl_803F6094@ha
/* 8002FCB8 0002CBF8  38 63 60 94 */ addi r3, r3, lbl_803F6094@l
/* 8002FCBC 0002CBFC  1C 00 04 04 */ mulli r0, r0, 0x404
/* 8002FCC0 0002CC00  7C 63 02 14 */ add r3, r3, r0
/* 8002FCC4 0002CC04  80 83 00 20 */ lwz r4, 0x20(r3)
/* 8002FCC8 0002CC08  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002FCCC 0002CC0C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002FCD0 0002CC10  88 84 00 13 */ lbz r4, 0x13(r4)
/* 8002FCD4 0002CC14  48 00 53 D5 */ bl getSave2__10dSv_save_cFi
/* 8002FCD8 0002CC18  7F E4 FB 78 */ mr r4, r31
/* 8002FCDC 0002CC1C  48 00 4E 11 */ bl isVisitedRoom__13dSv_memory2_cFi
/* 8002FCE0 0002CC20  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8002FCE4 0002CC24  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002FCE8 0002CC28  7C 08 03 A6 */ mtlr r0
/* 8002FCEC 0002CC2C  38 21 00 10 */ addi r1, r1, 0x10
/* 8002FCF0 0002CC30  4E 80 00 20 */ blr
