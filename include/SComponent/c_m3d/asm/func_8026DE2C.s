/* 8026DE2C 0026AD6C  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 8026DE30 0026AD70  7C 08 02 A6 */ mflr r0
/* 8026DE34 0026AD74  90 01 00 64 */ stw r0, 0x64(r1)
/* 8026DE38 0026AD78  DB E1 00 50 */ stfd f31, 0x50(r1)
/* 8026DE3C 0026AD7C  F3 E1 00 58 */ psq_st f31, 88(r1), 0, 0
/* 8026DE40 0026AD80  DB C1 00 40 */ stfd f30, 0x40(r1)
/* 8026DE44 0026AD84  F3 C1 00 48 */ psq_st f30, 72(r1), 0, 0
/* 8026DE48 0026AD88  39 61 00 40 */ addi r11, r1, 0x40
/* 8026DE4C 0026AD8C  48 0F 43 91 */ bl _savegpr_29
/* 8026DE50 0026AD90  7C 7D 1B 78 */ mr r29, r3
/* 8026DE54 0026AD94  7C 9E 23 78 */ mr r30, r4
/* 8026DE58 0026AD98  7C BF 2B 78 */ mr r31, r5
/* 8026DE5C 0026AD9C  38 9E 00 14 */ addi r4, r30, 0x14
/* 8026DE60 0026ADA0  48 0D 93 35 */ bl PSVECDotProduct
/* 8026DE64 0026ADA4  C0 1D 00 0C */ lfs f0, 0xc(r29)
/* 8026DE68 0026ADA8  EF E0 08 2A */ fadds f31, f0, f1
/* 8026DE6C 0026ADAC  7F A3 EB 78 */ mr r3, r29
/* 8026DE70 0026ADB0  38 9E 00 20 */ addi r4, r30, 0x20
/* 8026DE74 0026ADB4  48 0D 93 21 */ bl PSVECDotProduct
/* 8026DE78 0026ADB8  C0 1D 00 0C */ lfs f0, 0xc(r29)
/* 8026DE7C 0026ADBC  EF C0 08 2A */ fadds f30, f0, f1
/* 8026DE80 0026ADC0  7F A3 EB 78 */ mr r3, r29
/* 8026DE84 0026ADC4  38 9E 00 2C */ addi r4, r30, 0x2c
/* 8026DE88 0026ADC8  48 0D 93 0D */ bl PSVECDotProduct
/* 8026DE8C 0026ADCC  C0 1D 00 0C */ lfs f0, 0xc(r29)
/* 8026DE90 0026ADD0  EC 20 08 2A */ fadds f1, f0, f1
/* 8026DE94 0026ADD4  C0 02 B7 18 */ lfs f0, lbl_80455118-_SDA2_BASE_(r2)
/* 8026DE98 0026ADD8  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 8026DE9C 0026ADDC  40 81 00 14 */ ble lbl_8026DEB0
/* 8026DEA0 0026ADE0  FC 1E 00 40 */ fcmpo cr0, f30, f0
/* 8026DEA4 0026ADE4  40 81 00 0C */ ble lbl_8026DEB0
/* 8026DEA8 0026ADE8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026DEAC 0026ADEC  41 81 00 20 */ bgt lbl_8026DECC
lbl_8026DEB0:
/* 8026DEB0 0026ADF0  C0 02 B7 18 */ lfs f0, lbl_80455118-_SDA2_BASE_(r2)
/* 8026DEB4 0026ADF4  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 8026DEB8 0026ADF8  40 80 00 1C */ bge lbl_8026DED4
/* 8026DEBC 0026ADFC  FC 1E 00 40 */ fcmpo cr0, f30, f0
/* 8026DEC0 0026AE00  40 80 00 14 */ bge lbl_8026DED4
/* 8026DEC4 0026AE04  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026DEC8 0026AE08  40 80 00 0C */ bge lbl_8026DED4
lbl_8026DECC:
/* 8026DECC 0026AE0C  38 60 00 00 */ li r3, 0
/* 8026DED0 0026AE10  48 00 02 34 */ b lbl_8026E104
lbl_8026DED4:
/* 8026DED4 0026AE14  7F C3 F3 78 */ mr r3, r30
/* 8026DED8 0026AE18  38 9D 00 14 */ addi r4, r29, 0x14
/* 8026DEDC 0026AE1C  48 0D 92 B9 */ bl PSVECDotProduct
/* 8026DEE0 0026AE20  C0 1E 00 0C */ lfs f0, 0xc(r30)
/* 8026DEE4 0026AE24  EF C0 08 2A */ fadds f30, f0, f1
/* 8026DEE8 0026AE28  7F C3 F3 78 */ mr r3, r30
/* 8026DEEC 0026AE2C  38 9D 00 20 */ addi r4, r29, 0x20
/* 8026DEF0 0026AE30  48 0D 92 A5 */ bl PSVECDotProduct
/* 8026DEF4 0026AE34  C0 1E 00 0C */ lfs f0, 0xc(r30)
/* 8026DEF8 0026AE38  EF E0 08 2A */ fadds f31, f0, f1
/* 8026DEFC 0026AE3C  7F C3 F3 78 */ mr r3, r30
/* 8026DF00 0026AE40  38 9D 00 2C */ addi r4, r29, 0x2c
/* 8026DF04 0026AE44  48 0D 92 91 */ bl PSVECDotProduct
/* 8026DF08 0026AE48  C0 1E 00 0C */ lfs f0, 0xc(r30)
/* 8026DF0C 0026AE4C  EC 20 08 2A */ fadds f1, f0, f1
/* 8026DF10 0026AE50  C0 02 B7 18 */ lfs f0, lbl_80455118-_SDA2_BASE_(r2)
/* 8026DF14 0026AE54  FC 1E 00 40 */ fcmpo cr0, f30, f0
/* 8026DF18 0026AE58  40 81 00 14 */ ble lbl_8026DF2C
/* 8026DF1C 0026AE5C  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 8026DF20 0026AE60  40 81 00 0C */ ble lbl_8026DF2C
/* 8026DF24 0026AE64  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026DF28 0026AE68  41 81 00 20 */ bgt lbl_8026DF48
lbl_8026DF2C:
/* 8026DF2C 0026AE6C  C0 02 B7 18 */ lfs f0, lbl_80455118-_SDA2_BASE_(r2)
/* 8026DF30 0026AE70  FC 1E 00 40 */ fcmpo cr0, f30, f0
/* 8026DF34 0026AE74  40 80 00 1C */ bge lbl_8026DF50
/* 8026DF38 0026AE78  FC 1F 00 40 */ fcmpo cr0, f31, f0
/* 8026DF3C 0026AE7C  40 80 00 14 */ bge lbl_8026DF50
/* 8026DF40 0026AE80  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026DF44 0026AE84  40 80 00 0C */ bge lbl_8026DF50
lbl_8026DF48:
/* 8026DF48 0026AE88  38 60 00 00 */ li r3, 0
/* 8026DF4C 0026AE8C  48 00 01 B8 */ b lbl_8026E104
lbl_8026DF50:
/* 8026DF50 0026AE90  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026DF54 0026AE94  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026DF58 0026AE98  90 01 00 20 */ stw r0, 0x20(r1)
/* 8026DF5C 0026AE9C  38 61 00 08 */ addi r3, r1, 8
/* 8026DF60 0026AEA0  38 9E 00 14 */ addi r4, r30, 0x14
/* 8026DF64 0026AEA4  38 BE 00 20 */ addi r5, r30, 0x20
/* 8026DF68 0026AEA8  48 00 13 B5 */ bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026DF6C 0026AEAC  38 61 00 08 */ addi r3, r1, 8
/* 8026DF70 0026AEB0  7F A4 EB 78 */ mr r4, r29
/* 8026DF74 0026AEB4  7F E5 FB 78 */ mr r5, r31
/* 8026DF78 0026AEB8  38 C0 00 00 */ li r6, 0
/* 8026DF7C 0026AEBC  38 E0 00 00 */ li r7, 0
/* 8026DF80 0026AEC0  4B FF D1 25 */ bl cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
/* 8026DF84 0026AEC4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8026DF88 0026AEC8  41 82 00 18 */ beq lbl_8026DFA0
/* 8026DF8C 0026AECC  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026DF90 0026AED0  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026DF94 0026AED4  90 01 00 20 */ stw r0, 0x20(r1)
/* 8026DF98 0026AED8  38 60 00 01 */ li r3, 1
/* 8026DF9C 0026AEDC  48 00 01 68 */ b lbl_8026E104
lbl_8026DFA0:
/* 8026DFA0 0026AEE0  38 61 00 08 */ addi r3, r1, 8
/* 8026DFA4 0026AEE4  38 9E 00 20 */ addi r4, r30, 0x20
/* 8026DFA8 0026AEE8  38 BE 00 2C */ addi r5, r30, 0x2c
/* 8026DFAC 0026AEEC  48 00 13 71 */ bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026DFB0 0026AEF0  38 61 00 08 */ addi r3, r1, 8
/* 8026DFB4 0026AEF4  7F A4 EB 78 */ mr r4, r29
/* 8026DFB8 0026AEF8  7F E5 FB 78 */ mr r5, r31
/* 8026DFBC 0026AEFC  38 C0 00 00 */ li r6, 0
/* 8026DFC0 0026AF00  38 E0 00 00 */ li r7, 0
/* 8026DFC4 0026AF04  4B FF D0 E1 */ bl cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
/* 8026DFC8 0026AF08  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8026DFCC 0026AF0C  41 82 00 18 */ beq lbl_8026DFE4
/* 8026DFD0 0026AF10  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026DFD4 0026AF14  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026DFD8 0026AF18  90 01 00 20 */ stw r0, 0x20(r1)
/* 8026DFDC 0026AF1C  38 60 00 01 */ li r3, 1
/* 8026DFE0 0026AF20  48 00 01 24 */ b lbl_8026E104
lbl_8026DFE4:
/* 8026DFE4 0026AF24  38 61 00 08 */ addi r3, r1, 8
/* 8026DFE8 0026AF28  38 9E 00 14 */ addi r4, r30, 0x14
/* 8026DFEC 0026AF2C  38 BE 00 20 */ addi r5, r30, 0x20
/* 8026DFF0 0026AF30  48 00 13 2D */ bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026DFF4 0026AF34  38 61 00 08 */ addi r3, r1, 8
/* 8026DFF8 0026AF38  7F A4 EB 78 */ mr r4, r29
/* 8026DFFC 0026AF3C  7F E5 FB 78 */ mr r5, r31
/* 8026E000 0026AF40  38 C0 00 00 */ li r6, 0
/* 8026E004 0026AF44  38 E0 00 00 */ li r7, 0
/* 8026E008 0026AF48  4B FF D0 9D */ bl cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
/* 8026E00C 0026AF4C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8026E010 0026AF50  41 82 00 18 */ beq lbl_8026E028
/* 8026E014 0026AF54  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026E018 0026AF58  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026E01C 0026AF5C  90 01 00 20 */ stw r0, 0x20(r1)
/* 8026E020 0026AF60  38 60 00 01 */ li r3, 1
/* 8026E024 0026AF64  48 00 00 E0 */ b lbl_8026E104
lbl_8026E028:
/* 8026E028 0026AF68  38 61 00 08 */ addi r3, r1, 8
/* 8026E02C 0026AF6C  38 9D 00 14 */ addi r4, r29, 0x14
/* 8026E030 0026AF70  38 BD 00 20 */ addi r5, r29, 0x20
/* 8026E034 0026AF74  48 00 12 E9 */ bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026E038 0026AF78  38 61 00 08 */ addi r3, r1, 8
/* 8026E03C 0026AF7C  7F C4 F3 78 */ mr r4, r30
/* 8026E040 0026AF80  7F E5 FB 78 */ mr r5, r31
/* 8026E044 0026AF84  38 C0 00 00 */ li r6, 0
/* 8026E048 0026AF88  38 E0 00 00 */ li r7, 0
/* 8026E04C 0026AF8C  4B FF D0 59 */ bl cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
/* 8026E050 0026AF90  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8026E054 0026AF94  41 82 00 18 */ beq lbl_8026E06C
/* 8026E058 0026AF98  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026E05C 0026AF9C  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026E060 0026AFA0  90 01 00 20 */ stw r0, 0x20(r1)
/* 8026E064 0026AFA4  38 60 00 01 */ li r3, 1
/* 8026E068 0026AFA8  48 00 00 9C */ b lbl_8026E104
lbl_8026E06C:
/* 8026E06C 0026AFAC  38 61 00 08 */ addi r3, r1, 8
/* 8026E070 0026AFB0  38 9D 00 20 */ addi r4, r29, 0x20
/* 8026E074 0026AFB4  38 BD 00 2C */ addi r5, r29, 0x2c
/* 8026E078 0026AFB8  48 00 12 A5 */ bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026E07C 0026AFBC  38 61 00 08 */ addi r3, r1, 8
/* 8026E080 0026AFC0  7F C4 F3 78 */ mr r4, r30
/* 8026E084 0026AFC4  7F E5 FB 78 */ mr r5, r31
/* 8026E088 0026AFC8  38 C0 00 00 */ li r6, 0
/* 8026E08C 0026AFCC  38 E0 00 00 */ li r7, 0
/* 8026E090 0026AFD0  4B FF D0 15 */ bl cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
/* 8026E094 0026AFD4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8026E098 0026AFD8  41 82 00 18 */ beq lbl_8026E0B0
/* 8026E09C 0026AFDC  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026E0A0 0026AFE0  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026E0A4 0026AFE4  90 01 00 20 */ stw r0, 0x20(r1)
/* 8026E0A8 0026AFE8  38 60 00 01 */ li r3, 1
/* 8026E0AC 0026AFEC  48 00 00 58 */ b lbl_8026E104
lbl_8026E0B0:
/* 8026E0B0 0026AFF0  38 61 00 08 */ addi r3, r1, 8
/* 8026E0B4 0026AFF4  38 9D 00 14 */ addi r4, r29, 0x14
/* 8026E0B8 0026AFF8  38 BD 00 20 */ addi r5, r29, 0x20
/* 8026E0BC 0026AFFC  48 00 12 61 */ bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 8026E0C0 0026B000  38 61 00 08 */ addi r3, r1, 8
/* 8026E0C4 0026B004  7F C4 F3 78 */ mr r4, r30
/* 8026E0C8 0026B008  7F E5 FB 78 */ mr r5, r31
/* 8026E0CC 0026B00C  38 C0 00 00 */ li r6, 0
/* 8026E0D0 0026B010  38 E0 00 00 */ li r7, 0
/* 8026E0D4 0026B014  4B FF CF D1 */ bl cM3d_Cross_LinTri__FPC8cM3dGLinPC8cM3dGTriP3Vecbb
/* 8026E0D8 0026B018  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8026E0DC 0026B01C  41 82 00 18 */ beq lbl_8026E0F4
/* 8026E0E0 0026B020  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026E0E4 0026B024  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026E0E8 0026B028  90 01 00 20 */ stw r0, 0x20(r1)
/* 8026E0EC 0026B02C  38 60 00 01 */ li r3, 1
/* 8026E0F0 0026B030  48 00 00 14 */ b lbl_8026E104
lbl_8026E0F4:
/* 8026E0F4 0026B034  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026E0F8 0026B038  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026E0FC 0026B03C  90 01 00 20 */ stw r0, 0x20(r1)
/* 8026E100 0026B040  38 60 00 00 */ li r3, 0
lbl_8026E104:
/* 8026E104 0026B044  E3 E1 00 58 */ psq_l f31, 88(r1), 0, 0
/* 8026E108 0026B048  CB E1 00 50 */ lfd f31, 0x50(r1)
/* 8026E10C 0026B04C  E3 C1 00 48 */ psq_l f30, 72(r1), 0, 0
/* 8026E110 0026B050  CB C1 00 40 */ lfd f30, 0x40(r1)
/* 8026E114 0026B054  39 61 00 40 */ addi r11, r1, 0x40
/* 8026E118 0026B058  48 0F 41 11 */ bl _restgpr_29
/* 8026E11C 0026B05C  80 01 00 64 */ lwz r0, 0x64(r1)
/* 8026E120 0026B060  7C 08 03 A6 */ mtlr r0
/* 8026E124 0026B064  38 21 00 60 */ addi r1, r1, 0x60
/* 8026E128 0026B068  4E 80 00 20 */ blr
