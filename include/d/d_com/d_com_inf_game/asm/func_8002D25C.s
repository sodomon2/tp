/* 8002D25C 0002A19C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002D260 0002A1A0  7C 08 02 A6 */ mflr r0
/* 8002D264 0002A1A4  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002D268 0002A1A8  7C 64 1B 78 */ mr r4, r3
/* 8002D26C 0002A1AC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002D270 0002A1B0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002D274 0002A1B4  38 63 4E C4 */ addi r3, r3, 0x4ec4
/* 8002D278 0002A1B8  4B FF 71 0D */ bl dStage_roomControl_c_NS_getStatusRoomDt
/* 8002D27C 0002A1BC  28 03 00 00 */ cmplwi r3, 0
/* 8002D280 0002A1C0  40 82 00 0C */ bne lbl_8002D28C
/* 8002D284 0002A1C4  38 60 00 00 */ li r3, 0
/* 8002D288 0002A1C8  48 00 00 14 */ b lbl_8002D29C
lbl_8002D28C:
/* 8002D28C 0002A1CC  81 83 00 00 */ lwz r12, 0(r3)
/* 8002D290 0002A1D0  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 8002D294 0002A1D4  7D 89 03 A6 */ mtctr r12
/* 8002D298 0002A1D8  4E 80 04 21 */ bctrl
lbl_8002D29C:
/* 8002D29C 0002A1DC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002D2A0 0002A1E0  7C 08 03 A6 */ mtlr r0
/* 8002D2A4 0002A1E4  38 21 00 10 */ addi r1, r1, 0x10
/* 8002D2A8 0002A1E8  4E 80 00 20 */ blr
