/* 80110518 0010D458  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8011051C 0010D45C  7C 08 02 A6 */ mflr r0
/* 80110520 0010D460  90 01 00 14 */ stw r0, 0x14(r1)
/* 80110524 0010D464  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80110528 0010D468  93 C1 00 08 */ stw r30, 8(r1)
/* 8011052C 0010D46C  7C 7E 1B 78 */ mr r30, r3
/* 80110530 0010D470  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 80110534 0010D474  80 63 07 18 */ lwz r3, 0x718(r3)
/* 80110538 0010D478  4B F9 8D 11 */ bl daAlink_c_NS_simpleAnmPlay
/* 8011053C 0010D47C  7F E3 FB 78 */ mr r3, r31
/* 80110540 0010D480  48 04 DF 8D */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 80110544 0010D484  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80110548 0010D488  41 82 00 48 */ beq lbl_80110590
/* 8011054C 0010D48C  7F C3 F3 78 */ mr r3, r30
/* 80110550 0010D490  80 9E 32 CC */ lwz r4, 0x32cc(r30)
/* 80110554 0010D494  48 00 82 61 */ bl daAlink_c_NS_checkEndMessage
/* 80110558 0010D498  2C 03 00 00 */ cmpwi r3, 0
/* 8011055C 0010D49C  41 82 00 34 */ beq lbl_80110590
/* 80110560 0010D4A0  7F C3 F3 78 */ mr r3, r30
/* 80110564 0010D4A4  48 01 46 05 */ bl daAlink_c_NS_resetFairyEffect
/* 80110568 0010D4A8  A0 1E 2F DC */ lhz r0, 0x2fdc(r30)
/* 8011056C 0010D4AC  28 00 00 48 */ cmplwi r0, 0x48
/* 80110570 0010D4B0  41 82 00 14 */ beq lbl_80110584
/* 80110574 0010D4B4  7F C3 F3 78 */ mr r3, r30
/* 80110578 0010D4B8  38 80 00 00 */ li r4, 0
/* 8011057C 0010D4BC  38 A0 00 00 */ li r5, 0
/* 80110580 0010D4C0  4B FB 0D 5D */ bl daAlink_c_NS_deleteEquipItem
lbl_80110584:
/* 80110584 0010D4C4  7F C3 F3 78 */ mr r3, r30
/* 80110588 0010D4C8  48 00 77 09 */ bl daAlink_c_NS_resetSpecialEvent
/* 8011058C 0010D4CC  48 00 00 80 */ b lbl_8011060C
lbl_80110590:
/* 80110590 0010D4D0  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 80110594 0010D4D4  C0 02 93 60 */ lfs f0, lbl_80452D60-_SDA2_BASE_(r2)
/* 80110598 0010D4D8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8011059C 0010D4DC  4C 41 13 82 */ cror 2, 1, 2
/* 801105A0 0010D4E0  40 82 00 10 */ bne lbl_801105B0
/* 801105A4 0010D4E4  38 00 00 FE */ li r0, 0xfe
/* 801105A8 0010D4E8  98 1E 2F 93 */ stb r0, 0x2f93(r30)
/* 801105AC 0010D4EC  48 00 00 60 */ b lbl_8011060C
lbl_801105B0:
/* 801105B0 0010D4F0  C0 02 94 64 */ lfs f0, lbl_80452E64-_SDA2_BASE_(r2)
/* 801105B4 0010D4F4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801105B8 0010D4F8  4C 41 13 82 */ cror 2, 1, 2
/* 801105BC 0010D4FC  40 82 00 10 */ bne lbl_801105CC
/* 801105C0 0010D500  38 00 00 00 */ li r0, 0
/* 801105C4 0010D504  B0 1E 30 1A */ sth r0, 0x301a(r30)
/* 801105C8 0010D508  48 00 00 44 */ b lbl_8011060C
lbl_801105CC:
/* 801105CC 0010D50C  C0 02 93 3C */ lfs f0, lbl_80452D3C-_SDA2_BASE_(r2)
/* 801105D0 0010D510  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 801105D4 0010D514  4C 41 13 82 */ cror 2, 1, 2
/* 801105D8 0010D518  40 82 00 34 */ bne lbl_8011060C
/* 801105DC 0010D51C  80 7E 07 08 */ lwz r3, 0x708(r30)
/* 801105E0 0010D520  80 63 00 04 */ lwz r3, 4(r3)
/* 801105E4 0010D524  80 63 00 60 */ lwz r3, 0x60(r3)
/* 801105E8 0010D528  80 63 00 00 */ lwz r3, 0(r3)
/* 801105EC 0010D52C  80 63 00 08 */ lwz r3, 8(r3)
/* 801105F0 0010D530  80 03 00 0C */ lwz r0, 0xc(r3)
/* 801105F4 0010D534  54 00 00 3C */ rlwinm r0, r0, 0, 0, 0x1e
/* 801105F8 0010D538  90 03 00 0C */ stw r0, 0xc(r3)
/* 801105FC 0010D53C  38 00 00 05 */ li r0, 5
/* 80110600 0010D540  98 1E 2F 93 */ stb r0, 0x2f93(r30)
/* 80110604 0010D544  38 00 00 01 */ li r0, 1
/* 80110608 0010D548  B0 1E 30 1A */ sth r0, 0x301a(r30)
lbl_8011060C:
/* 8011060C 0010D54C  7F E3 FB 78 */ mr r3, r31
/* 80110610 0010D550  C0 22 93 7C */ lfs f1, lbl_80452D7C-_SDA2_BASE_(r2)
/* 80110614 0010D554  48 21 7E 19 */ bl J3DFrameCtrl_NS_checkPass
/* 80110618 0010D558  2C 03 00 00 */ cmpwi r3, 0
/* 8011061C 0010D55C  41 82 00 10 */ beq lbl_8011062C
/* 80110620 0010D560  7F C3 F3 78 */ mr r3, r30
/* 80110624 0010D564  A0 9E 2F DC */ lhz r4, 0x2fdc(r30)
/* 80110628 0010D568  48 00 A0 61 */ bl daAlink_c_NS_setGetSubBgm
lbl_8011062C:
/* 8011062C 0010D56C  38 60 00 01 */ li r3, 1
/* 80110630 0010D570  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80110634 0010D574  83 C1 00 08 */ lwz r30, 8(r1)
/* 80110638 0010D578  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8011063C 0010D57C  7C 08 03 A6 */ mtlr r0
/* 80110640 0010D580  38 21 00 10 */ addi r1, r1, 0x10
/* 80110644 0010D584  4E 80 00 20 */ blr