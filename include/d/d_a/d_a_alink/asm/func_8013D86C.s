/* 8013D86C 0013A7AC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8013D870 0013A7B0  7C 08 02 A6 */ mflr r0
/* 8013D874 0013A7B4  90 01 00 14 */ stw r0, 0x14(r1)
/* 8013D878 0013A7B8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8013D87C 0013A7BC  93 C1 00 08 */ stw r30, 8(r1)
/* 8013D880 0013A7C0  7C 7E 1B 78 */ mr r30, r3
/* 8013D884 0013A7C4  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 8013D888 0013A7C8  38 7E 33 98 */ addi r3, r30, 0x3398
/* 8013D88C 0013A7CC  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013D890 0013A7D0  3C 80 80 39 */ lis r4, lbl_8038EF28@ha
/* 8013D894 0013A7D4  38 84 EF 28 */ addi r4, r4, lbl_8038EF28@l
/* 8013D898 0013A7D8  C0 44 00 10 */ lfs f2, 0x10(r4)
/* 8013D89C 0013A7DC  48 13 2E A5 */ bl cLib_chaseF__FPfff
/* 8013D8A0 0013A7E0  7F C3 F3 78 */ mr r3, r30
/* 8013D8A4 0013A7E4  38 80 00 00 */ li r4, 0
/* 8013D8A8 0013A7E8  4B F7 5E 8D */ bl daAlink_c_NS_setShapeAngleToAtnActor
/* 8013D8AC 0013A7EC  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 8013D8B0 0013A7F0  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 8013D8B4 0013A7F4  7F E3 FB 78 */ mr r3, r31
/* 8013D8B8 0013A7F8  C0 22 93 30 */ lfs f1, lbl_80452D30-_SDA2_BASE_(r2)
/* 8013D8BC 0013A7FC  48 1E AB 71 */ bl J3DFrameCtrl_NS_checkPass
/* 8013D8C0 0013A800  2C 03 00 00 */ cmpwi r3, 0
/* 8013D8C4 0013A804  41 82 00 0C */ beq lbl_8013D8D0
/* 8013D8C8 0013A808  7F C3 F3 78 */ mr r3, r30
/* 8013D8CC 0013A80C  4B FA 7B 2D */ bl daAlink_c_NS_setGrabItemThrow
lbl_8013D8D0:
/* 8013D8D0 0013A810  7F E3 FB 78 */ mr r3, r31
/* 8013D8D4 0013A814  48 02 0B F9 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 8013D8D8 0013A818  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8013D8DC 0013A81C  41 82 00 14 */ beq lbl_8013D8F0
/* 8013D8E0 0013A820  7F C3 F3 78 */ mr r3, r30
/* 8013D8E4 0013A824  38 80 00 00 */ li r4, 0
/* 8013D8E8 0013A828  4B FE C2 5D */ bl daAlink_c_NS_checkNextActionWolf
/* 8013D8EC 0013A82C  48 00 00 28 */ b lbl_8013D914
lbl_8013D8F0:
/* 8013D8F0 0013A830  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 8013D8F4 0013A834  3C 60 80 39 */ lis r3, lbl_8038F95C@ha
/* 8013D8F8 0013A838  38 63 F9 5C */ addi r3, r3, lbl_8038F95C@l
/* 8013D8FC 0013A83C  C0 03 00 60 */ lfs f0, 0x60(r3)
/* 8013D900 0013A840  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8013D904 0013A844  40 81 00 10 */ ble lbl_8013D914
/* 8013D908 0013A848  7F C3 F3 78 */ mr r3, r30
/* 8013D90C 0013A84C  38 80 00 01 */ li r4, 1
/* 8013D910 0013A850  4B FE C2 35 */ bl daAlink_c_NS_checkNextActionWolf
lbl_8013D914:
/* 8013D914 0013A854  38 60 00 01 */ li r3, 1
/* 8013D918 0013A858  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8013D91C 0013A85C  83 C1 00 08 */ lwz r30, 8(r1)
/* 8013D920 0013A860  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8013D924 0013A864  7C 08 03 A6 */ mtlr r0
/* 8013D928 0013A868  38 21 00 10 */ addi r1, r1, 0x10
/* 8013D92C 0013A86C  4E 80 00 20 */ blr
