/* 8011D82C 0011A76C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8011D830 0011A770  7C 08 02 A6 */ mflr r0
/* 8011D834 0011A774  90 01 00 14 */ stw r0, 0x14(r1)
/* 8011D838 0011A778  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8011D83C 0011A77C  7C 7F 1B 78 */ mr r31, r3
/* 8011D840 0011A780  38 80 01 3B */ li r4, 0x13b
/* 8011D844 0011A784  4B FA 55 61 */ bl daAlink_c_NS_commonProcInitNotSameProc
/* 8011D848 0011A788  2C 03 00 00 */ cmpwi r3, 0
/* 8011D84C 0011A78C  40 82 00 0C */ bne lbl_8011D858
/* 8011D850 0011A790  38 60 00 01 */ li r3, 1
/* 8011D854 0011A794  48 00 00 90 */ b lbl_8011D8E4
lbl_8011D858:
/* 8011D858 0011A798  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 8011D85C 0011A79C  3C 63 00 01 */ addis r3, r3, 1
/* 8011D860 0011A7A0  38 03 80 00 */ addi r0, r3, -32768
/* 8011D864 0011A7A4  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 8011D868 0011A7A8  7F E3 FB 78 */ mr r3, r31
/* 8011D86C 0011A7AC  38 80 00 1B */ li r4, 0x1b
/* 8011D870 0011A7B0  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8011D874 0011A7B4  C0 42 93 3C */ lfs f2, lbl_80452D3C-_SDA2_BASE_(r2)
/* 8011D878 0011A7B8  38 A0 00 0B */ li r5, 0xb
/* 8011D87C 0011A7BC  C0 62 92 C4 */ lfs f3, lbl_80452CC4-_SDA2_BASE_(r2)
/* 8011D880 0011A7C0  48 00 BE 85 */ bl daAlink_c_NS_setSingleAnimeWolf
/* 8011D884 0011A7C4  7F E3 FB 78 */ mr r3, r31
/* 8011D888 0011A7C8  3C 80 00 01 */ lis r4, 0x00010033@ha
/* 8011D88C 0011A7CC  38 84 00 33 */ addi r4, r4, 0x00010033@l
/* 8011D890 0011A7D0  81 9F 06 28 */ lwz r12, 0x628(r31)
/* 8011D894 0011A7D4  81 8C 01 14 */ lwz r12, 0x114(r12)
/* 8011D898 0011A7D8  7D 89 03 A6 */ mtctr r12
/* 8011D89C 0011A7DC  4E 80 04 21 */ bctrl
/* 8011D8A0 0011A7E0  38 00 00 0D */ li r0, 0xd
/* 8011D8A4 0011A7E4  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 8011D8A8 0011A7E8  3C 60 80 42 */ lis r3, lbl_8042561C@ha
/* 8011D8AC 0011A7EC  C4 03 56 1C */ lfsu f0, lbl_8042561C@l(r3)
/* 8011D8B0 0011A7F0  D0 1F 35 88 */ stfs f0, 0x3588(r31)
/* 8011D8B4 0011A7F4  C0 03 00 04 */ lfs f0, 4(r3)
/* 8011D8B8 0011A7F8  D0 1F 35 8C */ stfs f0, 0x358c(r31)
/* 8011D8BC 0011A7FC  C0 03 00 08 */ lfs f0, 8(r3)
/* 8011D8C0 0011A800  D0 1F 35 90 */ stfs f0, 0x3590(r31)
/* 8011D8C4 0011A804  C0 02 96 68 */ lfs f0, lbl_80453068-_SDA2_BASE_(r2)
/* 8011D8C8 0011A808  D0 1F 34 78 */ stfs f0, 0x3478(r31)
/* 8011D8CC 0011A80C  38 00 00 00 */ li r0, 0
/* 8011D8D0 0011A810  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8011D8D4 0011A814  B0 1F 30 0E */ sth r0, 0x300e(r31)
/* 8011D8D8 0011A818  C0 02 92 E0 */ lfs f0, lbl_80452CE0-_SDA2_BASE_(r2)
/* 8011D8DC 0011A81C  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 8011D8E0 0011A820  38 60 00 01 */ li r3, 1
lbl_8011D8E4:
/* 8011D8E4 0011A824  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8011D8E8 0011A828  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8011D8EC 0011A82C  7C 08 03 A6 */ mtlr r0
/* 8011D8F0 0011A830  38 21 00 10 */ addi r1, r1, 0x10
/* 8011D8F4 0011A834  4E 80 00 20 */ blr