/* 800DE64C 000DB58C  A0 03 2F DC */ lhz r0, 0x2fdc(r3)
/* 800DE650 000DB590  28 00 00 4B */ cmplwi r0, 0x4b
/* 800DE654 000DB594  40 82 00 20 */ bne lbl_800DE674
/* 800DE658 000DB598  3C 60 80 39 */ lis r3, lbl_8038E658@ha
/* 800DE65C 000DB59C  38 63 E6 58 */ addi r3, r3, lbl_8038E658@l
/* 800DE660 000DB5A0  C0 03 00 6C */ lfs f0, 0x6c(r3)
/* 800DE664 000DB5A4  D0 04 00 00 */ stfs f0, 0(r4)
/* 800DE668 000DB5A8  C0 03 00 68 */ lfs f0, 0x68(r3)
/* 800DE66C 000DB5AC  D0 05 00 00 */ stfs f0, 0(r5)
/* 800DE670 000DB5B0  4E 80 00 20 */ blr
lbl_800DE674:
/* 800DE674 000DB5B4  3C E0 80 40 */ lis r7, g_dComIfG_gameInfo@ha
/* 800DE678 000DB5B8  38 E7 61 C0 */ addi r7, r7, g_dComIfG_gameInfo@l
/* 800DE67C 000DB5BC  80 07 5F 18 */ lwz r0, 0x5f18(r7)
/* 800DE680 000DB5C0  54 00 02 95 */ rlwinm. r0, r0, 0, 0xa, 0xa
/* 800DE684 000DB5C4  41 82 00 20 */ beq lbl_800DE6A4
/* 800DE688 000DB5C8  3C 60 80 39 */ lis r3, lbl_8038E658@ha
/* 800DE68C 000DB5CC  38 63 E6 58 */ addi r3, r3, lbl_8038E658@l
/* 800DE690 000DB5D0  C0 03 00 5C */ lfs f0, 0x5c(r3)
/* 800DE694 000DB5D4  D0 04 00 00 */ stfs f0, 0(r4)
/* 800DE698 000DB5D8  C0 03 00 58 */ lfs f0, 0x58(r3)
/* 800DE69C 000DB5DC  D0 05 00 00 */ stfs f0, 0(r5)
/* 800DE6A0 000DB5E0  4E 80 00 20 */ blr
lbl_800DE6A4:
/* 800DE6A4 000DB5E4  A8 03 30 1C */ lha r0, 0x301c(r3)
/* 800DE6A8 000DB5E8  2C 00 00 00 */ cmpwi r0, 0
/* 800DE6AC 000DB5EC  41 82 00 0C */ beq lbl_800DE6B8
/* 800DE6B0 000DB5F0  2C 06 00 00 */ cmpwi r6, 0
/* 800DE6B4 000DB5F4  41 82 00 48 */ beq lbl_800DE6FC
lbl_800DE6B8:
/* 800DE6B8 000DB5F8  A8 03 30 1E */ lha r0, 0x301e(r3)
/* 800DE6BC 000DB5FC  2C 00 00 01 */ cmpwi r0, 1
/* 800DE6C0 000DB600  40 82 00 20 */ bne lbl_800DE6E0
/* 800DE6C4 000DB604  3C 60 80 39 */ lis r3, lbl_8038E658@ha
/* 800DE6C8 000DB608  38 63 E6 58 */ addi r3, r3, lbl_8038E658@l
/* 800DE6CC 000DB60C  C0 03 00 54 */ lfs f0, 0x54(r3)
/* 800DE6D0 000DB610  D0 04 00 00 */ stfs f0, 0(r4)
/* 800DE6D4 000DB614  C0 03 00 50 */ lfs f0, 0x50(r3)
/* 800DE6D8 000DB618  D0 05 00 00 */ stfs f0, 0(r5)
/* 800DE6DC 000DB61C  4E 80 00 20 */ blr
lbl_800DE6E0:
/* 800DE6E0 000DB620  3C 60 80 39 */ lis r3, lbl_8038E658@ha
/* 800DE6E4 000DB624  38 63 E6 58 */ addi r3, r3, lbl_8038E658@l
/* 800DE6E8 000DB628  C0 03 00 40 */ lfs f0, 0x40(r3)
/* 800DE6EC 000DB62C  D0 04 00 00 */ stfs f0, 0(r4)
/* 800DE6F0 000DB630  C0 03 00 3C */ lfs f0, 0x3c(r3)
/* 800DE6F4 000DB634  D0 05 00 00 */ stfs f0, 0(r5)
/* 800DE6F8 000DB638  4E 80 00 20 */ blr
lbl_800DE6FC:
/* 800DE6FC 000DB63C  A8 03 30 1E */ lha r0, 0x301e(r3)
/* 800DE700 000DB640  2C 00 00 01 */ cmpwi r0, 1
/* 800DE704 000DB644  40 82 00 20 */ bne lbl_800DE724
/* 800DE708 000DB648  3C 60 80 39 */ lis r3, lbl_8038E658@ha
/* 800DE70C 000DB64C  38 63 E6 58 */ addi r3, r3, lbl_8038E658@l
/* 800DE710 000DB650  C0 03 00 4C */ lfs f0, 0x4c(r3)
/* 800DE714 000DB654  D0 04 00 00 */ stfs f0, 0(r4)
/* 800DE718 000DB658  C0 03 00 48 */ lfs f0, 0x48(r3)
/* 800DE71C 000DB65C  D0 05 00 00 */ stfs f0, 0(r5)
/* 800DE720 000DB660  4E 80 00 20 */ blr
lbl_800DE724:
/* 800DE724 000DB664  3C 60 80 39 */ lis r3, lbl_8038E658@ha
/* 800DE728 000DB668  38 63 E6 58 */ addi r3, r3, lbl_8038E658@l
/* 800DE72C 000DB66C  C0 03 00 38 */ lfs f0, 0x38(r3)
/* 800DE730 000DB670  D0 04 00 00 */ stfs f0, 0(r4)
/* 800DE734 000DB674  C0 03 00 34 */ lfs f0, 0x34(r3)
/* 800DE738 000DB678  D0 05 00 00 */ stfs f0, 0(r5)
/* 800DE73C 000DB67C  4E 80 00 20 */ blr