/* 800CFC3C 000CCB7C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800CFC40 000CCB80  7C 08 02 A6 */ mflr r0
/* 800CFC44 000CCB84  90 01 00 14 */ stw r0, 0x14(r1)
/* 800CFC48 000CCB88  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800CFC4C 000CCB8C  7C 7F 1B 79 */ or. r31, r3, r3
/* 800CFC50 000CCB90  41 82 00 10 */ beq lbl_800CFC60
/* 800CFC54 000CCB94  7C 80 07 35 */ extsh. r0, r4
/* 800CFC58 000CCB98  40 81 00 08 */ ble lbl_800CFC60
/* 800CFC5C 000CCB9C  48 1F F0 E1 */ bl __dl__FPv
lbl_800CFC60:
/* 800CFC60 000CCBA0  7F E3 FB 78 */ mr r3, r31
/* 800CFC64 000CCBA4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800CFC68 000CCBA8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800CFC6C 000CCBAC  7C 08 03 A6 */ mtlr r0
/* 800CFC70 000CCBB0  38 21 00 10 */ addi r1, r1, 0x10
/* 800CFC74 000CCBB4  4E 80 00 20 */ blr