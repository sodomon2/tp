/* 801A16C0 0019E600  94 21 FF 00 */ stwu r1, -0x100(r1)
/* 801A16C4 0019E604  7C 08 02 A6 */ mflr r0
/* 801A16C8 0019E608  90 01 01 04 */ stw r0, 0x104(r1)
/* 801A16CC 0019E60C  39 61 01 00 */ addi r11, r1, 0x100
/* 801A16D0 0019E610  48 1C 0A D9 */ bl _savegpr_16
/* 801A16D4 0019E614  7C 76 1B 78 */ mr r22, r3
/* 801A16D8 0019E618  7C 97 23 78 */ mr r23, r4
/* 801A16DC 0019E61C  7C B8 2B 78 */ mr r24, r5
/* 801A16E0 0019E620  7C D9 33 78 */ mr r25, r6
/* 801A16E4 0019E624  7C FA 3B 78 */ mr r26, r7
/* 801A16E8 0019E628  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801A16EC 0019E62C  38 83 CA 54 */ addi r4, r3, lbl_8042CA54@l
/* 801A16F0 0019E630  88 04 12 C2 */ lbz r0, 0x12c2(r4)
/* 801A16F4 0019E634  98 17 03 7F */ stb r0, 0x37f(r23)
/* 801A16F8 0019E638  88 04 12 C3 */ lbz r0, 0x12c3(r4)
/* 801A16FC 0019E63C  98 17 03 7E */ stb r0, 0x37e(r23)
/* 801A1700 0019E640  88 77 03 7F */ lbz r3, 0x37f(r23)
/* 801A1704 0019E644  88 17 03 7E */ lbz r0, 0x37e(r23)
/* 801A1708 0019E648  7C 03 00 40 */ cmplw r3, r0
/* 801A170C 0019E64C  41 82 00 10 */ beq lbl_801A171C
/* 801A1710 0019E650  C0 04 11 DC */ lfs f0, 0x11dc(r4)
/* 801A1714 0019E654  D0 17 03 70 */ stfs f0, 0x370(r23)
/* 801A1718 0019E658  48 00 00 1C */ b lbl_801A1734
lbl_801A171C:
/* 801A171C 0019E65C  88 77 03 7D */ lbz r3, 0x37d(r23)
/* 801A1720 0019E660  88 17 03 7C */ lbz r0, 0x37c(r23)
/* 801A1724 0019E664  7C 03 00 40 */ cmplw r3, r0
/* 801A1728 0019E668  40 82 00 0C */ bne lbl_801A1734
/* 801A172C 0019E66C  C0 02 A2 0C */ lfs f0, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801A1730 0019E670  D0 17 03 70 */ stfs f0, 0x370(r23)
lbl_801A1734:
/* 801A1734 0019E674  38 01 00 20 */ addi r0, r1, 0x20
/* 801A1738 0019E678  90 01 00 08 */ stw r0, 8(r1)
/* 801A173C 0019E67C  38 01 00 3C */ addi r0, r1, 0x3c
/* 801A1740 0019E680  90 01 00 0C */ stw r0, 0xc(r1)
/* 801A1744 0019E684  38 01 00 38 */ addi r0, r1, 0x38
/* 801A1748 0019E688  90 01 00 10 */ stw r0, 0x10(r1)
/* 801A174C 0019E68C  38 01 00 34 */ addi r0, r1, 0x34
/* 801A1750 0019E690  90 01 00 14 */ stw r0, 0x14(r1)
/* 801A1754 0019E694  38 17 03 70 */ addi r0, r23, 0x370
/* 801A1758 0019E698  90 01 00 18 */ stw r0, 0x18(r1)
/* 801A175C 0019E69C  38 17 03 7B */ addi r0, r23, 0x37b
/* 801A1760 0019E6A0  90 01 00 1C */ stw r0, 0x1c(r1)
/* 801A1764 0019E6A4  7E C3 B3 78 */ mr r3, r22
/* 801A1768 0019E6A8  38 97 03 7D */ addi r4, r23, 0x37d
/* 801A176C 0019E6AC  38 B7 03 7C */ addi r5, r23, 0x37c
/* 801A1770 0019E6B0  38 D7 03 7F */ addi r6, r23, 0x37f
/* 801A1774 0019E6B4  38 F7 03 7E */ addi r7, r23, 0x37e
/* 801A1778 0019E6B8  39 01 00 23 */ addi r8, r1, 0x23
/* 801A177C 0019E6BC  39 21 00 21 */ addi r9, r1, 0x21
/* 801A1780 0019E6C0  39 41 00 22 */ addi r10, r1, 0x22
/* 801A1784 0019E6C4  4B FF E4 51 */ bl dScnKy_env_light_c_NS_setLight_palno_get
/* 801A1788 0019E6C8  88 01 00 23 */ lbz r0, 0x23(r1)
/* 801A178C 0019E6CC  28 00 00 FF */ cmplwi r0, 0xff
/* 801A1790 0019E6D0  40 82 00 28 */ bne lbl_801A17B8
/* 801A1794 0019E6D4  38 80 00 FF */ li r4, 0xff
/* 801A1798 0019E6D8  38 60 00 00 */ li r3, 0
/* 801A179C 0019E6DC  38 00 00 04 */ li r0, 4
/* 801A17A0 0019E6E0  7C 09 03 A6 */ mtctr r0
lbl_801A17A4:
/* 801A17A4 0019E6E4  B0 97 03 48 */ sth r4, 0x348(r23)
/* 801A17A8 0019E6E8  B0 77 03 4A */ sth r3, 0x34a(r23)
/* 801A17AC 0019E6EC  B0 77 03 4C */ sth r3, 0x34c(r23)
/* 801A17B0 0019E6F0  42 00 FF F4 */ bdnz lbl_801A17A4
/* 801A17B4 0019E6F4  48 00 05 98 */ b lbl_801A1D4C
lbl_801A17B8:
/* 801A17B8 0019E6F8  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801A17BC 0019E6FC  39 23 CA 54 */ addi r9, r3, lbl_8042CA54@l
/* 801A17C0 0019E700  80 69 00 04 */ lwz r3, 4(r9)
/* 801A17C4 0019E704  1C 00 00 34 */ mulli r0, r0, 0x34
/* 801A17C8 0019E708  7F C3 02 14 */ add r30, r3, r0
/* 801A17CC 0019E70C  88 01 00 21 */ lbz r0, 0x21(r1)
/* 801A17D0 0019E710  1C 00 00 34 */ mulli r0, r0, 0x34
/* 801A17D4 0019E714  7F A3 02 14 */ add r29, r3, r0
/* 801A17D8 0019E718  88 01 00 22 */ lbz r0, 0x22(r1)
/* 801A17DC 0019E71C  1C 00 00 34 */ mulli r0, r0, 0x34
/* 801A17E0 0019E720  7F 83 02 14 */ add r28, r3, r0
/* 801A17E4 0019E724  88 01 00 20 */ lbz r0, 0x20(r1)
/* 801A17E8 0019E728  1C 00 00 34 */ mulli r0, r0, 0x34
/* 801A17EC 0019E72C  7F 63 02 14 */ add r27, r3, r0
/* 801A17F0 0019E730  88 17 03 7A */ lbz r0, 0x37a(r23)
/* 801A17F4 0019E734  28 00 00 0A */ cmplwi r0, 0xa
/* 801A17F8 0019E738  41 82 00 18 */ beq lbl_801A1810
/* 801A17FC 0019E73C  28 00 00 09 */ cmplwi r0, 9
/* 801A1800 0019E740  41 82 00 10 */ beq lbl_801A1810
/* 801A1804 0019E744  A0 17 03 78 */ lhz r0, 0x378(r23)
/* 801A1808 0019E748  28 00 00 00 */ cmplwi r0, 0
/* 801A180C 0019E74C  41 82 00 54 */ beq lbl_801A1860
lbl_801A1810:
/* 801A1810 0019E750  80 76 11 60 */ lwz r3, 0x1160(r22)
/* 801A1814 0019E754  80 16 11 64 */ lwz r0, 0x1164(r22)
/* 801A1818 0019E758  90 61 00 80 */ stw r3, 0x80(r1)
/* 801A181C 0019E75C  90 01 00 84 */ stw r0, 0x84(r1)
/* 801A1820 0019E760  38 77 03 48 */ addi r3, r23, 0x348
/* 801A1824 0019E764  7F C4 F3 78 */ mr r4, r30
/* 801A1828 0019E768  7F 85 E3 78 */ mr r5, r28
/* 801A182C 0019E76C  7F A6 EB 78 */ mr r6, r29
/* 801A1830 0019E770  7F 67 DB 78 */ mr r7, r27
/* 801A1834 0019E774  C0 21 00 3C */ lfs f1, 0x3c(r1)
/* 801A1838 0019E778  C0 57 03 70 */ lfs f2, 0x370(r23)
/* 801A183C 0019E77C  39 01 00 80 */ addi r8, r1, 0x80
/* 801A1840 0019E780  C0 77 03 74 */ lfs f3, 0x374(r23)
/* 801A1844 0019E784  3D 20 80 43 */ lis r9, lbl_8042CA54@ha
/* 801A1848 0019E788  39 29 CA 54 */ addi r9, r9, lbl_8042CA54@l
/* 801A184C 0019E78C  C0 09 11 FC */ lfs f0, 0x11fc(r9)
/* 801A1850 0019E790  EC 00 00 32 */ fmuls f0, f0, f0
/* 801A1854 0019E794  EC 63 00 32 */ fmuls f3, f3, f0
/* 801A1858 0019E798  4B FF EA E9 */ bl dKy_calc_color_set
/* 801A185C 0019E79C  48 00 00 50 */ b lbl_801A18AC
lbl_801A1860:
/* 801A1860 0019E7A0  80 76 11 60 */ lwz r3, 0x1160(r22)
/* 801A1864 0019E7A4  80 16 11 64 */ lwz r0, 0x1164(r22)
/* 801A1868 0019E7A8  90 61 00 78 */ stw r3, 0x78(r1)
/* 801A186C 0019E7AC  90 01 00 7C */ stw r0, 0x7c(r1)
/* 801A1870 0019E7B0  38 77 03 48 */ addi r3, r23, 0x348
/* 801A1874 0019E7B4  7F C4 F3 78 */ mr r4, r30
/* 801A1878 0019E7B8  7F 85 E3 78 */ mr r5, r28
/* 801A187C 0019E7BC  7F A6 EB 78 */ mr r6, r29
/* 801A1880 0019E7C0  7F 67 DB 78 */ mr r7, r27
/* 801A1884 0019E7C4  C0 21 00 3C */ lfs f1, 0x3c(r1)
/* 801A1888 0019E7C8  C0 57 03 70 */ lfs f2, 0x370(r23)
/* 801A188C 0019E7CC  39 01 00 78 */ addi r8, r1, 0x78
/* 801A1890 0019E7D0  C0 97 03 74 */ lfs f4, 0x374(r23)
/* 801A1894 0019E7D4  C0 69 12 10 */ lfs f3, 0x1210(r9)
/* 801A1898 0019E7D8  C0 09 11 FC */ lfs f0, 0x11fc(r9)
/* 801A189C 0019E7DC  EC 00 00 32 */ fmuls f0, f0, f0
/* 801A18A0 0019E7E0  EC 03 00 32 */ fmuls f0, f3, f0
/* 801A18A4 0019E7E4  EC 64 00 32 */ fmuls f3, f4, f0
/* 801A18A8 0019E7E8  4B FF EA 99 */ bl dKy_calc_color_set
lbl_801A18AC:
/* 801A18AC 0019E7EC  4B FB DB 79 */ bl daPy_py_c_NS_checkNowWolfEyeUp
/* 801A18B0 0019E7F0  2C 03 00 00 */ cmpwi r3, 0
/* 801A18B4 0019E7F4  41 82 00 0C */ beq lbl_801A18C0
/* 801A18B8 0019E7F8  38 77 03 48 */ addi r3, r23, 0x348
/* 801A18BC 0019E7FC  4B FF AA CD */ bl dKy_WolfPowerup_AmbCol
lbl_801A18C0:
/* 801A18C0 0019E800  3B E0 00 00 */ li r31, 0
/* 801A18C4 0019E804  3A A0 00 00 */ li r21, 0
/* 801A18C8 0019E808  3A 80 00 00 */ li r20, 0
/* 801A18CC 0019E80C  7F F3 FB 78 */ mr r19, r31
/* 801A18D0 0019E810  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801A18D4 0019E814  3A 43 CA 54 */ addi r18, r3, lbl_8042CA54@l
lbl_801A18D8:
/* 801A18D8 0019E818  3A 13 00 74 */ addi r16, r19, 0x74
/* 801A18DC 0019E81C  7E 17 82 14 */ add r16, r23, r16
/* 801A18E0 0019E820  2C 1F 00 00 */ cmpwi r31, 0
/* 801A18E4 0019E824  40 82 01 7C */ bne lbl_801A1A60
/* 801A18E8 0019E828  88 17 03 7A */ lbz r0, 0x37a(r23)
/* 801A18EC 0019E82C  28 00 00 0A */ cmplwi r0, 0xa
/* 801A18F0 0019E830  41 82 00 18 */ beq lbl_801A1908
/* 801A18F4 0019E834  28 00 00 09 */ cmplwi r0, 9
/* 801A18F8 0019E838  41 82 00 10 */ beq lbl_801A1908
/* 801A18FC 0019E83C  A0 17 03 78 */ lhz r0, 0x378(r23)
/* 801A1900 0019E840  28 00 00 00 */ cmplwi r0, 0
/* 801A1904 0019E844  41 82 00 C4 */ beq lbl_801A19C8
lbl_801A1908:
/* 801A1908 0019E848  80 76 11 60 */ lwz r3, 0x1160(r22)
/* 801A190C 0019E84C  80 16 11 64 */ lwz r0, 0x1164(r22)
/* 801A1910 0019E850  90 61 00 70 */ stw r3, 0x70(r1)
/* 801A1914 0019E854  90 01 00 74 */ stw r0, 0x74(r1)
/* 801A1918 0019E858  3A 21 00 88 */ addi r17, r1, 0x88
/* 801A191C 0019E85C  7E 31 AA 14 */ add r17, r17, r21
/* 801A1920 0019E860  7E 23 8B 78 */ mr r3, r17
/* 801A1924 0019E864  38 94 00 0F */ addi r4, r20, 0xf
/* 801A1928 0019E868  7C 9E 22 14 */ add r4, r30, r4
/* 801A192C 0019E86C  38 B4 00 0F */ addi r5, r20, 0xf
/* 801A1930 0019E870  7C BC 2A 14 */ add r5, r28, r5
/* 801A1934 0019E874  38 D4 00 0F */ addi r6, r20, 0xf
/* 801A1938 0019E878  7C DD 32 14 */ add r6, r29, r6
/* 801A193C 0019E87C  38 F4 00 0F */ addi r7, r20, 0xf
/* 801A1940 0019E880  7C FB 3A 14 */ add r7, r27, r7
/* 801A1944 0019E884  C0 21 00 3C */ lfs f1, 0x3c(r1)
/* 801A1948 0019E888  C0 57 03 70 */ lfs f2, 0x370(r23)
/* 801A194C 0019E88C  39 01 00 70 */ addi r8, r1, 0x70
/* 801A1950 0019E890  C0 62 A2 48 */ lfs f3, lbl_80453C48-_SDA2_BASE_(r2)
/* 801A1954 0019E894  4B FF E9 ED */ bl dKy_calc_color_set
/* 801A1958 0019E898  4B FB DA CD */ bl daPy_py_c_NS_checkNowWolfEyeUp
/* 801A195C 0019E89C  2C 03 00 00 */ cmpwi r3, 0
/* 801A1960 0019E8A0  41 82 00 14 */ beq lbl_801A1974
/* 801A1964 0019E8A4  38 00 00 00 */ li r0, 0
/* 801A1968 0019E8A8  B0 11 00 00 */ sth r0, 0(r17)
/* 801A196C 0019E8AC  B0 11 00 02 */ sth r0, 2(r17)
/* 801A1970 0019E8B0  B0 11 00 04 */ sth r0, 4(r17)
lbl_801A1974:
/* 801A1974 0019E8B4  A8 11 00 00 */ lha r0, 0(r17)
/* 801A1978 0019E8B8  98 01 00 30 */ stb r0, 0x30(r1)
/* 801A197C 0019E8BC  A8 11 00 02 */ lha r0, 2(r17)
/* 801A1980 0019E8C0  98 01 00 31 */ stb r0, 0x31(r1)
/* 801A1984 0019E8C4  A8 11 00 04 */ lha r0, 4(r17)
/* 801A1988 0019E8C8  98 01 00 32 */ stb r0, 0x32(r1)
/* 801A198C 0019E8CC  A8 11 00 06 */ lha r0, 6(r17)
/* 801A1990 0019E8D0  98 01 00 33 */ stb r0, 0x33(r1)
/* 801A1994 0019E8D4  38 61 00 30 */ addi r3, r1, 0x30
/* 801A1998 0019E8D8  C0 37 03 74 */ lfs f1, 0x374(r23)
/* 801A199C 0019E8DC  4B FF CA 95 */ bl dKy_light_influence_col_X1_
/* 801A19A0 0019E8E0  90 61 00 28 */ stw r3, 0x28(r1)
/* 801A19A4 0019E8E4  88 01 00 28 */ lbz r0, 0x28(r1)
/* 801A19A8 0019E8E8  98 10 00 18 */ stb r0, 0x18(r16)
/* 801A19AC 0019E8EC  88 01 00 29 */ lbz r0, 0x29(r1)
/* 801A19B0 0019E8F0  98 10 00 19 */ stb r0, 0x19(r16)
/* 801A19B4 0019E8F4  88 01 00 2A */ lbz r0, 0x2a(r1)
/* 801A19B8 0019E8F8  98 10 00 1A */ stb r0, 0x1a(r16)
/* 801A19BC 0019E8FC  88 01 00 2B */ lbz r0, 0x2b(r1)
/* 801A19C0 0019E900  98 10 00 1B */ stb r0, 0x1b(r16)
/* 801A19C4 0019E904  48 00 02 20 */ b lbl_801A1BE4
lbl_801A19C8:
/* 801A19C8 0019E908  80 76 11 60 */ lwz r3, 0x1160(r22)
/* 801A19CC 0019E90C  80 16 11 64 */ lwz r0, 0x1164(r22)
/* 801A19D0 0019E910  90 61 00 68 */ stw r3, 0x68(r1)
/* 801A19D4 0019E914  90 01 00 6C */ stw r0, 0x6c(r1)
/* 801A19D8 0019E918  3A 21 00 88 */ addi r17, r1, 0x88
/* 801A19DC 0019E91C  7E 31 AA 14 */ add r17, r17, r21
/* 801A19E0 0019E920  7E 23 8B 78 */ mr r3, r17
/* 801A19E4 0019E924  38 94 00 0F */ addi r4, r20, 0xf
/* 801A19E8 0019E928  7C 9E 22 14 */ add r4, r30, r4
/* 801A19EC 0019E92C  38 B4 00 0F */ addi r5, r20, 0xf
/* 801A19F0 0019E930  7C BC 2A 14 */ add r5, r28, r5
/* 801A19F4 0019E934  38 D4 00 0F */ addi r6, r20, 0xf
/* 801A19F8 0019E938  7C DD 32 14 */ add r6, r29, r6
/* 801A19FC 0019E93C  38 F4 00 0F */ addi r7, r20, 0xf
/* 801A1A00 0019E940  7C FB 3A 14 */ add r7, r27, r7
/* 801A1A04 0019E944  C0 21 00 3C */ lfs f1, 0x3c(r1)
/* 801A1A08 0019E948  C0 57 03 70 */ lfs f2, 0x370(r23)
/* 801A1A0C 0019E94C  39 01 00 68 */ addi r8, r1, 0x68
/* 801A1A10 0019E950  C0 72 12 10 */ lfs f3, 0x1210(r18)
/* 801A1A14 0019E954  4B FF E9 2D */ bl dKy_calc_color_set
/* 801A1A18 0019E958  4B FB DA 0D */ bl daPy_py_c_NS_checkNowWolfEyeUp
/* 801A1A1C 0019E95C  2C 03 00 00 */ cmpwi r3, 0
/* 801A1A20 0019E960  41 82 00 14 */ beq lbl_801A1A34
/* 801A1A24 0019E964  38 00 00 00 */ li r0, 0
/* 801A1A28 0019E968  B0 11 00 00 */ sth r0, 0(r17)
/* 801A1A2C 0019E96C  B0 11 00 02 */ sth r0, 2(r17)
/* 801A1A30 0019E970  B0 11 00 04 */ sth r0, 4(r17)
lbl_801A1A34:
/* 801A1A34 0019E974  80 71 00 00 */ lwz r3, 0(r17)
/* 801A1A38 0019E978  80 11 00 04 */ lwz r0, 4(r17)
/* 801A1A3C 0019E97C  90 61 00 60 */ stw r3, 0x60(r1)
/* 801A1A40 0019E980  90 01 00 64 */ stw r0, 0x64(r1)
/* 801A1A44 0019E984  38 70 00 18 */ addi r3, r16, 0x18
/* 801A1A48 0019E988  38 81 00 60 */ addi r4, r1, 0x60
/* 801A1A4C 0019E98C  C0 36 12 10 */ lfs f1, 0x1210(r22)
/* 801A1A50 0019E990  C0 17 03 74 */ lfs f0, 0x374(r23)
/* 801A1A54 0019E994  EC 21 00 32 */ fmuls f1, f1, f0
/* 801A1A58 0019E998  4B FF BB C5 */ bl kankyo_color_ratio_calc
/* 801A1A5C 0019E99C  48 00 01 88 */ b lbl_801A1BE4
lbl_801A1A60:
/* 801A1A60 0019E9A0  88 17 03 7A */ lbz r0, 0x37a(r23)
/* 801A1A64 0019E9A4  28 00 00 0A */ cmplwi r0, 0xa
/* 801A1A68 0019E9A8  41 82 00 18 */ beq lbl_801A1A80
/* 801A1A6C 0019E9AC  28 00 00 09 */ cmplwi r0, 9
/* 801A1A70 0019E9B0  41 82 00 10 */ beq lbl_801A1A80
/* 801A1A74 0019E9B4  A0 17 03 78 */ lhz r0, 0x378(r23)
/* 801A1A78 0019E9B8  28 00 00 00 */ cmplwi r0, 0
/* 801A1A7C 0019E9BC  41 82 00 C8 */ beq lbl_801A1B44
lbl_801A1A80:
/* 801A1A80 0019E9C0  80 76 11 60 */ lwz r3, 0x1160(r22)
/* 801A1A84 0019E9C4  80 16 11 64 */ lwz r0, 0x1164(r22)
/* 801A1A88 0019E9C8  90 61 00 58 */ stw r3, 0x58(r1)
/* 801A1A8C 0019E9CC  90 01 00 5C */ stw r0, 0x5c(r1)
/* 801A1A90 0019E9D0  3A 21 00 88 */ addi r17, r1, 0x88
/* 801A1A94 0019E9D4  7E 31 AA 14 */ add r17, r17, r21
/* 801A1A98 0019E9D8  7E 23 8B 78 */ mr r3, r17
/* 801A1A9C 0019E9DC  38 94 00 0F */ addi r4, r20, 0xf
/* 801A1AA0 0019E9E0  7C 9E 22 14 */ add r4, r30, r4
/* 801A1AA4 0019E9E4  38 B4 00 0F */ addi r5, r20, 0xf
/* 801A1AA8 0019E9E8  7C BC 2A 14 */ add r5, r28, r5
/* 801A1AAC 0019E9EC  38 D4 00 0F */ addi r6, r20, 0xf
/* 801A1AB0 0019E9F0  7C DD 32 14 */ add r6, r29, r6
/* 801A1AB4 0019E9F4  38 F4 00 0F */ addi r7, r20, 0xf
/* 801A1AB8 0019E9F8  7C FB 3A 14 */ add r7, r27, r7
/* 801A1ABC 0019E9FC  C0 21 00 3C */ lfs f1, 0x3c(r1)
/* 801A1AC0 0019EA00  C0 57 03 70 */ lfs f2, 0x370(r23)
/* 801A1AC4 0019EA04  39 01 00 58 */ addi r8, r1, 0x58
/* 801A1AC8 0019EA08  C0 12 11 FC */ lfs f0, 0x11fc(r18)
/* 801A1ACC 0019EA0C  EC 60 00 32 */ fmuls f3, f0, f0
/* 801A1AD0 0019EA10  4B FF E8 71 */ bl dKy_calc_color_set
/* 801A1AD4 0019EA14  4B FB D9 51 */ bl daPy_py_c_NS_checkNowWolfEyeUp
/* 801A1AD8 0019EA18  2C 03 00 00 */ cmpwi r3, 0
/* 801A1ADC 0019EA1C  41 82 00 14 */ beq lbl_801A1AF0
/* 801A1AE0 0019EA20  38 00 00 00 */ li r0, 0
/* 801A1AE4 0019EA24  B0 11 00 00 */ sth r0, 0(r17)
/* 801A1AE8 0019EA28  B0 11 00 02 */ sth r0, 2(r17)
/* 801A1AEC 0019EA2C  B0 11 00 04 */ sth r0, 4(r17)
lbl_801A1AF0:
/* 801A1AF0 0019EA30  A8 11 00 00 */ lha r0, 0(r17)
/* 801A1AF4 0019EA34  98 01 00 2C */ stb r0, 0x2c(r1)
/* 801A1AF8 0019EA38  A8 11 00 02 */ lha r0, 2(r17)
/* 801A1AFC 0019EA3C  98 01 00 2D */ stb r0, 0x2d(r1)
/* 801A1B00 0019EA40  A8 11 00 04 */ lha r0, 4(r17)
/* 801A1B04 0019EA44  98 01 00 2E */ stb r0, 0x2e(r1)
/* 801A1B08 0019EA48  A8 11 00 06 */ lha r0, 6(r17)
/* 801A1B0C 0019EA4C  98 01 00 2F */ stb r0, 0x2f(r1)
/* 801A1B10 0019EA50  38 61 00 2C */ addi r3, r1, 0x2c
/* 801A1B14 0019EA54  C0 37 03 74 */ lfs f1, 0x374(r23)
/* 801A1B18 0019EA58  4B FF C9 19 */ bl dKy_light_influence_col_X1_
/* 801A1B1C 0019EA5C  90 61 00 24 */ stw r3, 0x24(r1)
/* 801A1B20 0019EA60  88 01 00 24 */ lbz r0, 0x24(r1)
/* 801A1B24 0019EA64  98 10 00 18 */ stb r0, 0x18(r16)
/* 801A1B28 0019EA68  88 01 00 25 */ lbz r0, 0x25(r1)
/* 801A1B2C 0019EA6C  98 10 00 19 */ stb r0, 0x19(r16)
/* 801A1B30 0019EA70  88 01 00 26 */ lbz r0, 0x26(r1)
/* 801A1B34 0019EA74  98 10 00 1A */ stb r0, 0x1a(r16)
/* 801A1B38 0019EA78  88 01 00 27 */ lbz r0, 0x27(r1)
/* 801A1B3C 0019EA7C  98 10 00 1B */ stb r0, 0x1b(r16)
/* 801A1B40 0019EA80  48 00 00 A4 */ b lbl_801A1BE4
lbl_801A1B44:
/* 801A1B44 0019EA84  80 76 11 60 */ lwz r3, 0x1160(r22)
/* 801A1B48 0019EA88  80 16 11 64 */ lwz r0, 0x1164(r22)
/* 801A1B4C 0019EA8C  90 61 00 50 */ stw r3, 0x50(r1)
/* 801A1B50 0019EA90  90 01 00 54 */ stw r0, 0x54(r1)
/* 801A1B54 0019EA94  3A 21 00 88 */ addi r17, r1, 0x88
/* 801A1B58 0019EA98  7E 31 AA 14 */ add r17, r17, r21
/* 801A1B5C 0019EA9C  7E 23 8B 78 */ mr r3, r17
/* 801A1B60 0019EAA0  38 94 00 0F */ addi r4, r20, 0xf
/* 801A1B64 0019EAA4  7C 9E 22 14 */ add r4, r30, r4
/* 801A1B68 0019EAA8  38 B4 00 0F */ addi r5, r20, 0xf
/* 801A1B6C 0019EAAC  7C BC 2A 14 */ add r5, r28, r5
/* 801A1B70 0019EAB0  38 D4 00 0F */ addi r6, r20, 0xf
/* 801A1B74 0019EAB4  7C DD 32 14 */ add r6, r29, r6
/* 801A1B78 0019EAB8  38 F4 00 0F */ addi r7, r20, 0xf
/* 801A1B7C 0019EABC  7C FB 3A 14 */ add r7, r27, r7
/* 801A1B80 0019EAC0  C0 21 00 3C */ lfs f1, 0x3c(r1)
/* 801A1B84 0019EAC4  C0 57 03 70 */ lfs f2, 0x370(r23)
/* 801A1B88 0019EAC8  39 01 00 50 */ addi r8, r1, 0x50
/* 801A1B8C 0019EACC  C0 72 12 10 */ lfs f3, 0x1210(r18)
/* 801A1B90 0019EAD0  C0 12 11 FC */ lfs f0, 0x11fc(r18)
/* 801A1B94 0019EAD4  EC 00 00 32 */ fmuls f0, f0, f0
/* 801A1B98 0019EAD8  EC 63 00 32 */ fmuls f3, f3, f0
/* 801A1B9C 0019EADC  4B FF E7 A5 */ bl dKy_calc_color_set
/* 801A1BA0 0019EAE0  4B FB D8 85 */ bl daPy_py_c_NS_checkNowWolfEyeUp
/* 801A1BA4 0019EAE4  2C 03 00 00 */ cmpwi r3, 0
/* 801A1BA8 0019EAE8  41 82 00 14 */ beq lbl_801A1BBC
/* 801A1BAC 0019EAEC  38 00 00 00 */ li r0, 0
/* 801A1BB0 0019EAF0  B0 11 00 00 */ sth r0, 0(r17)
/* 801A1BB4 0019EAF4  B0 11 00 02 */ sth r0, 2(r17)
/* 801A1BB8 0019EAF8  B0 11 00 04 */ sth r0, 4(r17)
lbl_801A1BBC:
/* 801A1BBC 0019EAFC  80 71 00 00 */ lwz r3, 0(r17)
/* 801A1BC0 0019EB00  80 11 00 04 */ lwz r0, 4(r17)
/* 801A1BC4 0019EB04  90 61 00 48 */ stw r3, 0x48(r1)
/* 801A1BC8 0019EB08  90 01 00 4C */ stw r0, 0x4c(r1)
/* 801A1BCC 0019EB0C  38 70 00 18 */ addi r3, r16, 0x18
/* 801A1BD0 0019EB10  38 81 00 48 */ addi r4, r1, 0x48
/* 801A1BD4 0019EB14  C0 36 12 10 */ lfs f1, 0x1210(r22)
/* 801A1BD8 0019EB18  C0 17 03 74 */ lfs f0, 0x374(r23)
/* 801A1BDC 0019EB1C  EC 21 00 32 */ fmuls f1, f1, f0
/* 801A1BE0 0019EB20  4B FF BA 3D */ bl kankyo_color_ratio_calc
lbl_801A1BE4:
/* 801A1BE4 0019EB24  3B FF 00 01 */ addi r31, r31, 1
/* 801A1BE8 0019EB28  2C 1F 00 06 */ cmpwi r31, 6
/* 801A1BEC 0019EB2C  3A B5 00 08 */ addi r21, r21, 8
/* 801A1BF0 0019EB30  3A 94 00 03 */ addi r20, r20, 3
/* 801A1BF4 0019EB34  3A 73 00 74 */ addi r19, r19, 0x74
/* 801A1BF8 0019EB38  41 80 FC E0 */ blt lbl_801A18D8
/* 801A1BFC 0019EB3C  80 76 11 B0 */ lwz r3, 0x11b0(r22)
/* 801A1C00 0019EB40  80 16 11 B4 */ lwz r0, 0x11b4(r22)
/* 801A1C04 0019EB44  90 61 00 40 */ stw r3, 0x40(r1)
/* 801A1C08 0019EB48  90 01 00 44 */ stw r0, 0x44(r1)
/* 801A1C0C 0019EB4C  7F 03 C3 78 */ mr r3, r24
/* 801A1C10 0019EB50  38 9E 00 21 */ addi r4, r30, 0x21
/* 801A1C14 0019EB54  38 BC 00 21 */ addi r5, r28, 0x21
/* 801A1C18 0019EB58  38 DD 00 21 */ addi r6, r29, 0x21
/* 801A1C1C 0019EB5C  38 FB 00 21 */ addi r7, r27, 0x21
/* 801A1C20 0019EB60  C0 21 00 3C */ lfs f1, 0x3c(r1)
/* 801A1C24 0019EB64  C0 57 03 70 */ lfs f2, 0x370(r23)
/* 801A1C28 0019EB68  39 01 00 40 */ addi r8, r1, 0x40
/* 801A1C2C 0019EB6C  3D 20 80 43 */ lis r9, lbl_8042CA54@ha
/* 801A1C30 0019EB70  39 29 CA 54 */ addi r9, r9, lbl_8042CA54@l
/* 801A1C34 0019EB74  C0 69 12 04 */ lfs f3, 0x1204(r9)
/* 801A1C38 0019EB78  4B FF E7 09 */ bl dKy_calc_color_set
/* 801A1C3C 0019EB7C  88 17 03 7A */ lbz r0, 0x37a(r23)
/* 801A1C40 0019EB80  28 00 00 0A */ cmplwi r0, 0xa
/* 801A1C44 0019EB84  41 82 00 0C */ beq lbl_801A1C50
/* 801A1C48 0019EB88  28 00 00 09 */ cmplwi r0, 9
/* 801A1C4C 0019EB8C  40 82 00 14 */ bne lbl_801A1C60
lbl_801A1C50:
/* 801A1C50 0019EB90  C0 22 A2 48 */ lfs f1, lbl_80453C48-_SDA2_BASE_(r2)
/* 801A1C54 0019EB94  C0 12 12 10 */ lfs f0, 0x1210(r18)
/* 801A1C58 0019EB98  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 801A1C5C 0019EB9C  40 82 00 68 */ bne lbl_801A1CC4
lbl_801A1C60:
/* 801A1C60 0019EBA0  C0 3E 00 24 */ lfs f1, 0x24(r30)
/* 801A1C64 0019EBA4  C0 5D 00 24 */ lfs f2, 0x24(r29)
/* 801A1C68 0019EBA8  C0 61 00 3C */ lfs f3, 0x3c(r1)
/* 801A1C6C 0019EBAC  C0 9C 00 24 */ lfs f4, 0x24(r28)
/* 801A1C70 0019EBB0  C0 BB 00 24 */ lfs f5, 0x24(r27)
/* 801A1C74 0019EBB4  C0 D7 03 70 */ lfs f6, 0x370(r23)
/* 801A1C78 0019EBB8  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801A1C7C 0019EBBC  3A 03 CA 54 */ addi r16, r3, lbl_8042CA54@l
/* 801A1C80 0019EBC0  C0 F0 11 EC */ lfs f7, 0x11ec(r16)
/* 801A1C84 0019EBC4  C1 10 11 F4 */ lfs f8, 0x11f4(r16)
/* 801A1C88 0019EBC8  4B FF BB 19 */ bl float_kankyo_color_ratio_set
/* 801A1C8C 0019EBCC  D0 39 00 00 */ stfs f1, 0(r25)
/* 801A1C90 0019EBD0  C0 3E 00 28 */ lfs f1, 0x28(r30)
/* 801A1C94 0019EBD4  C0 5D 00 28 */ lfs f2, 0x28(r29)
/* 801A1C98 0019EBD8  C0 61 00 3C */ lfs f3, 0x3c(r1)
/* 801A1C9C 0019EBDC  C0 9C 00 28 */ lfs f4, 0x28(r28)
/* 801A1CA0 0019EBE0  C0 BB 00 28 */ lfs f5, 0x28(r27)
/* 801A1CA4 0019EBE4  C0 D7 03 70 */ lfs f6, 0x370(r23)
/* 801A1CA8 0019EBE8  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801A1CAC 0019EBEC  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 801A1CB0 0019EBF0  C0 E3 11 F0 */ lfs f7, 0x11f0(r3)
/* 801A1CB4 0019EBF4  C1 10 11 F4 */ lfs f8, 0x11f4(r16)
/* 801A1CB8 0019EBF8  4B FF BA E9 */ bl float_kankyo_color_ratio_set
/* 801A1CBC 0019EBFC  D0 3A 00 00 */ stfs f1, 0(r26)
/* 801A1CC0 0019EC00  48 00 00 64 */ b lbl_801A1D24
lbl_801A1CC4:
/* 801A1CC4 0019EC04  C0 3E 00 24 */ lfs f1, 0x24(r30)
/* 801A1CC8 0019EC08  C0 5D 00 24 */ lfs f2, 0x24(r29)
/* 801A1CCC 0019EC0C  C0 61 00 3C */ lfs f3, 0x3c(r1)
/* 801A1CD0 0019EC10  C0 9C 00 24 */ lfs f4, 0x24(r28)
/* 801A1CD4 0019EC14  C0 BB 00 24 */ lfs f5, 0x24(r27)
/* 801A1CD8 0019EC18  C0 D7 03 70 */ lfs f6, 0x370(r23)
/* 801A1CDC 0019EC1C  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801A1CE0 0019EC20  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 801A1CE4 0019EC24  C0 E3 11 EC */ lfs f7, 0x11ec(r3)
/* 801A1CE8 0019EC28  C1 02 A2 0C */ lfs f8, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801A1CEC 0019EC2C  4B FF BA B5 */ bl float_kankyo_color_ratio_set
/* 801A1CF0 0019EC30  D0 39 00 00 */ stfs f1, 0(r25)
/* 801A1CF4 0019EC34  C0 3E 00 28 */ lfs f1, 0x28(r30)
/* 801A1CF8 0019EC38  C0 5D 00 28 */ lfs f2, 0x28(r29)
/* 801A1CFC 0019EC3C  C0 61 00 3C */ lfs f3, 0x3c(r1)
/* 801A1D00 0019EC40  C0 9C 00 28 */ lfs f4, 0x28(r28)
/* 801A1D04 0019EC44  C0 BB 00 28 */ lfs f5, 0x28(r27)
/* 801A1D08 0019EC48  C0 D7 03 70 */ lfs f6, 0x370(r23)
/* 801A1D0C 0019EC4C  3C 60 80 43 */ lis r3, lbl_8042CA54@ha
/* 801A1D10 0019EC50  38 63 CA 54 */ addi r3, r3, lbl_8042CA54@l
/* 801A1D14 0019EC54  C0 E3 11 F0 */ lfs f7, 0x11f0(r3)
/* 801A1D18 0019EC58  C1 02 A2 0C */ lfs f8, lbl_80453C0C-_SDA2_BASE_(r2)
/* 801A1D1C 0019EC5C  4B FF BA 85 */ bl float_kankyo_color_ratio_set
/* 801A1D20 0019EC60  D0 3A 00 00 */ stfs f1, 0(r26)
lbl_801A1D24:
/* 801A1D24 0019EC64  4B FB D7 01 */ bl daPy_py_c_NS_checkNowWolfEyeUp
/* 801A1D28 0019EC68  2C 03 00 00 */ cmpwi r3, 0
/* 801A1D2C 0019EC6C  41 82 00 20 */ beq lbl_801A1D4C
/* 801A1D30 0019EC70  38 00 00 00 */ li r0, 0
/* 801A1D34 0019EC74  B0 18 00 00 */ sth r0, 0(r24)
/* 801A1D38 0019EC78  B0 18 00 02 */ sth r0, 2(r24)
/* 801A1D3C 0019EC7C  B0 18 00 04 */ sth r0, 4(r24)
/* 801A1D40 0019EC80  7F 23 CB 78 */ mr r3, r25
/* 801A1D44 0019EC84  7F 44 D3 78 */ mr r4, r26
/* 801A1D48 0019EC88  4B FF AF 95 */ bl dKy_WolfPowerup_FogNearFar
lbl_801A1D4C:
/* 801A1D4C 0019EC8C  39 61 01 00 */ addi r11, r1, 0x100
/* 801A1D50 0019EC90  48 1C 04 A5 */ bl _restgpr_16
/* 801A1D54 0019EC94  80 01 01 04 */ lwz r0, 0x104(r1)
/* 801A1D58 0019EC98  7C 08 03 A6 */ mtlr r0
/* 801A1D5C 0019EC9C  38 21 01 00 */ addi r1, r1, 0x100
/* 801A1D60 0019ECA0  4E 80 00 20 */ blr
