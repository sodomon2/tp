/* 800E1D6C 000DECAC  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800E1D70 000DECB0  7C 08 02 A6 */ mflr r0
/* 800E1D74 000DECB4  90 01 00 24 */ stw r0, 0x24(r1)
/* 800E1D78 000DECB8  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 800E1D7C 000DECBC  7C 7F 1B 78 */ mr r31, r3
/* 800E1D80 000DECC0  80 03 28 28 */ lwz r0, 0x2828(r3)
/* 800E1D84 000DECC4  28 00 00 00 */ cmplwi r0, 0
/* 800E1D88 000DECC8  41 82 00 84 */ beq lbl_800E1E0C
/* 800E1D8C 000DECCC  38 60 00 00 */ li r3, 0
/* 800E1D90 000DECD0  A0 1F 2F DC */ lhz r0, 0x2fdc(r31)
/* 800E1D94 000DECD4  28 00 00 46 */ cmplwi r0, 0x46
/* 800E1D98 000DECD8  40 82 00 14 */ bne lbl_800E1DAC
/* 800E1D9C 000DECDC  A0 1F 1F BC */ lhz r0, 0x1fbc(r31)
/* 800E1DA0 000DECE0  28 00 00 53 */ cmplwi r0, 0x53
/* 800E1DA4 000DECE4  40 82 00 08 */ bne lbl_800E1DAC
/* 800E1DA8 000DECE8  38 60 00 01 */ li r3, 1
lbl_800E1DAC:
/* 800E1DAC 000DECEC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800E1DB0 000DECF0  40 82 00 5C */ bne lbl_800E1E0C
/* 800E1DB4 000DECF4  7F E3 FB 78 */ mr r3, r31
/* 800E1DB8 000DECF8  4B FF F5 79 */ bl daAlink_c_NS_getCopyRodBallDisMax
/* 800E1DBC 000DECFC  7F E3 FB 78 */ mr r3, r31
/* 800E1DC0 000DED00  38 81 00 08 */ addi r4, r1, 8
/* 800E1DC4 000DED04  4B FD D7 3D */ bl daAlink_c_NS_checkSightLine
/* 800E1DC8 000DED08  C0 01 00 08 */ lfs f0, 8(r1)
/* 800E1DCC 000DED0C  D0 1F 20 6C */ stfs f0, 0x206c(r31)
/* 800E1DD0 000DED10  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 800E1DD4 000DED14  D0 1F 20 70 */ stfs f0, 0x2070(r31)
/* 800E1DD8 000DED18  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 800E1DDC 000DED1C  D0 1F 20 74 */ stfs f0, 0x2074(r31)
/* 800E1DE0 000DED20  38 00 00 01 */ li r0, 1
/* 800E1DE4 000DED24  98 1F 20 68 */ stb r0, 0x2068(r31)
/* 800E1DE8 000DED28  38 7F 12 2C */ addi r3, r31, 0x122c
/* 800E1DEC 000DED2C  4B FA 24 D5 */ bl dCcD_GObjInf_NS_ChkAtHit
/* 800E1DF0 000DED30  28 03 00 00 */ cmplwi r3, 0
/* 800E1DF4 000DED34  41 82 00 10 */ beq lbl_800E1E04
/* 800E1DF8 000DED38  38 7F 20 64 */ addi r3, r31, 0x2064
/* 800E1DFC 000DED3C  48 04 49 15 */ bl daAlink_sight_c_NS_onLockFlg
/* 800E1E00 000DED40  48 00 00 0C */ b lbl_800E1E0C
lbl_800E1E04:
/* 800E1E04 000DED44  38 00 00 00 */ li r0, 0
/* 800E1E08 000DED48  98 1F 20 B0 */ stb r0, 0x20b0(r31)
lbl_800E1E0C:
/* 800E1E0C 000DED4C  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800E1E10 000DED50  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800E1E14 000DED54  7C 08 03 A6 */ mtlr r0
/* 800E1E18 000DED58  38 21 00 20 */ addi r1, r1, 0x20
/* 800E1E1C 000DED5C  4E 80 00 20 */ blr
