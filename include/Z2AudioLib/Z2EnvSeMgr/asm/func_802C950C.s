/* 802C950C 002C644C  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 802C9510 002C6450  7C 08 02 A6 */ mflr r0
/* 802C9514 002C6454  90 01 00 34 */ stw r0, 0x34(r1)
/* 802C9518 002C6458  39 61 00 30 */ addi r11, r1, 0x30
/* 802C951C 002C645C  48 09 8C B9 */ bl _savegpr_27
/* 802C9520 002C6460  7C 7B 1B 78 */ mr r27, r3
/* 802C9524 002C6464  7C 9C 23 78 */ mr r28, r4
/* 802C9528 002C6468  7C BD 2B 78 */ mr r29, r5
/* 802C952C 002C646C  7C DE 33 78 */ mr r30, r6
/* 802C9530 002C6470  7C FF 3B 78 */ mr r31, r7
/* 802C9534 002C6474  54 83 06 3E */ clrlwi r3, r4, 0x18
/* 802C9538 002C6478  38 03 FF 92 */ addi r0, r3, -110
/* 802C953C 002C647C  28 00 00 09 */ cmplwi r0, 9
/* 802C9540 002C6480  41 81 05 B0 */ bgt lbl_802C9AF0
/* 802C9544 002C6484  3C 60 80 3D */ lis r3, lbl_803CBBC8@ha
/* 802C9548 002C6488  38 63 BB C8 */ addi r3, r3, lbl_803CBBC8@l
/* 802C954C 002C648C  54 00 10 3A */ slwi r0, r0, 2
/* 802C9550 002C6490  7C 03 00 2E */ lwzx r0, r3, r0
/* 802C9554 002C6494  7C 09 03 A6 */ mtctr r0
/* 802C9558 002C6498  4E 80 04 20 */ bctr
/* 802C955C 002C649C  9B 9B 02 48 */ stb r28, 0x248(r27)
/* 802C9560 002C64A0  57 A0 06 3E */ clrlwi r0, r29, 0x18
/* 802C9564 002C64A4  28 00 00 64 */ cmplwi r0, 0x64
/* 802C9568 002C64A8  41 80 00 10 */ blt lbl_802C9578
/* 802C956C 002C64AC  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C9570 002C64B0  D0 1B 02 4C */ stfs f0, 0x24c(r27)
/* 802C9574 002C64B4  48 00 00 28 */ b lbl_802C959C
lbl_802C9578:
/* 802C9578 002C64B8  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C957C 002C64BC  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C9580 002C64C0  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C9584 002C64C4  3C 00 43 30 */ lis r0, 0x4330
/* 802C9588 002C64C8  90 01 00 08 */ stw r0, 8(r1)
/* 802C958C 002C64CC  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C9590 002C64D0  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C9594 002C64D4  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C9598 002C64D8  D0 1B 02 4C */ stfs f0, 0x24c(r27)
lbl_802C959C:
/* 802C959C 002C64DC  57 C0 06 3E */ clrlwi r0, r30, 0x18
/* 802C95A0 002C64E0  28 00 00 FF */ cmplwi r0, 0xff
/* 802C95A4 002C64E4  40 82 00 10 */ bne lbl_802C95B4
/* 802C95A8 002C64E8  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C95AC 002C64EC  D0 1B 02 50 */ stfs f0, 0x250(r27)
/* 802C95B0 002C64F0  48 00 00 28 */ b lbl_802C95D8
lbl_802C95B4:
/* 802C95B4 002C64F4  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C95B8 002C64F8  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C95BC 002C64FC  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C95C0 002C6500  3C 00 43 30 */ lis r0, 0x4330
/* 802C95C4 002C6504  90 01 00 08 */ stw r0, 8(r1)
/* 802C95C8 002C6508  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C95CC 002C650C  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C95D0 002C6510  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C95D4 002C6514  D0 1B 02 50 */ stfs f0, 0x250(r27)
lbl_802C95D8:
/* 802C95D8 002C6518  57 E0 06 3E */ clrlwi r0, r31, 0x18
/* 802C95DC 002C651C  28 00 00 FF */ cmplwi r0, 0xff
/* 802C95E0 002C6520  40 82 00 10 */ bne lbl_802C95F0
/* 802C95E4 002C6524  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C95E8 002C6528  D0 1B 02 54 */ stfs f0, 0x254(r27)
/* 802C95EC 002C652C  48 00 00 28 */ b lbl_802C9614
lbl_802C95F0:
/* 802C95F0 002C6530  C0 42 C3 50 */ lfs f2, lbl_80455D50-_SDA2_BASE_(r2)
/* 802C95F4 002C6534  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C95F8 002C6538  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C95FC 002C653C  3C 00 43 30 */ lis r0, 0x4330
/* 802C9600 002C6540  90 01 00 08 */ stw r0, 8(r1)
/* 802C9604 002C6544  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C9608 002C6548  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C960C 002C654C  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C9610 002C6550  D0 1B 02 54 */ stfs f0, 0x254(r27)
lbl_802C9614:
/* 802C9614 002C6554  C0 22 C3 70 */ lfs f1, lbl_80455D70-_SDA2_BASE_(r2)
/* 802C9618 002C6558  C0 1B 02 54 */ lfs f0, 0x254(r27)
/* 802C961C 002C655C  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C9620 002C6560  D0 1B 02 24 */ stfs f0, 0x224(r27)
/* 802C9624 002C6564  48 00 09 1C */ b lbl_802C9F40
/* 802C9628 002C6568  9B 9B 02 48 */ stb r28, 0x248(r27)
/* 802C962C 002C656C  57 A0 06 3E */ clrlwi r0, r29, 0x18
/* 802C9630 002C6570  28 00 00 64 */ cmplwi r0, 0x64
/* 802C9634 002C6574  41 80 00 10 */ blt lbl_802C9644
/* 802C9638 002C6578  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C963C 002C657C  D0 1B 02 4C */ stfs f0, 0x24c(r27)
/* 802C9640 002C6580  48 00 00 28 */ b lbl_802C9668
lbl_802C9644:
/* 802C9644 002C6584  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C9648 002C6588  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C964C 002C658C  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C9650 002C6590  3C 00 43 30 */ lis r0, 0x4330
/* 802C9654 002C6594  90 01 00 08 */ stw r0, 8(r1)
/* 802C9658 002C6598  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C965C 002C659C  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C9660 002C65A0  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C9664 002C65A4  D0 1B 02 4C */ stfs f0, 0x24c(r27)
lbl_802C9668:
/* 802C9668 002C65A8  57 C0 06 3E */ clrlwi r0, r30, 0x18
/* 802C966C 002C65AC  28 00 00 FF */ cmplwi r0, 0xff
/* 802C9670 002C65B0  40 82 00 10 */ bne lbl_802C9680
/* 802C9674 002C65B4  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C9678 002C65B8  D0 1B 02 50 */ stfs f0, 0x250(r27)
/* 802C967C 002C65BC  48 00 00 28 */ b lbl_802C96A4
lbl_802C9680:
/* 802C9680 002C65C0  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C9684 002C65C4  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C9688 002C65C8  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C968C 002C65CC  3C 00 43 30 */ lis r0, 0x4330
/* 802C9690 002C65D0  90 01 00 08 */ stw r0, 8(r1)
/* 802C9694 002C65D4  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C9698 002C65D8  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C969C 002C65DC  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C96A0 002C65E0  D0 1B 02 50 */ stfs f0, 0x250(r27)
lbl_802C96A4:
/* 802C96A4 002C65E4  57 E0 06 3E */ clrlwi r0, r31, 0x18
/* 802C96A8 002C65E8  28 00 00 FF */ cmplwi r0, 0xff
/* 802C96AC 002C65EC  40 82 00 10 */ bne lbl_802C96BC
/* 802C96B0 002C65F0  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C96B4 002C65F4  D0 1B 02 54 */ stfs f0, 0x254(r27)
/* 802C96B8 002C65F8  48 00 00 28 */ b lbl_802C96E0
lbl_802C96BC:
/* 802C96BC 002C65FC  C0 42 C3 50 */ lfs f2, lbl_80455D50-_SDA2_BASE_(r2)
/* 802C96C0 002C6600  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C96C4 002C6604  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C96C8 002C6608  3C 00 43 30 */ lis r0, 0x4330
/* 802C96CC 002C660C  90 01 00 08 */ stw r0, 8(r1)
/* 802C96D0 002C6610  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C96D4 002C6614  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C96D8 002C6618  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C96DC 002C661C  D0 1B 02 54 */ stfs f0, 0x254(r27)
lbl_802C96E0:
/* 802C96E0 002C6620  C0 22 C4 30 */ lfs f1, lbl_80455E30-_SDA2_BASE_(r2)
/* 802C96E4 002C6624  C0 1B 02 54 */ lfs f0, 0x254(r27)
/* 802C96E8 002C6628  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C96EC 002C662C  D0 1B 02 24 */ stfs f0, 0x224(r27)
/* 802C96F0 002C6630  48 00 08 50 */ b lbl_802C9F40
/* 802C96F4 002C6634  9B 9B 02 7C */ stb r28, 0x27c(r27)
/* 802C96F8 002C6638  57 A0 06 3E */ clrlwi r0, r29, 0x18
/* 802C96FC 002C663C  28 00 00 64 */ cmplwi r0, 0x64
/* 802C9700 002C6640  41 80 00 10 */ blt lbl_802C9710
/* 802C9704 002C6644  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C9708 002C6648  D0 1B 02 80 */ stfs f0, 0x280(r27)
/* 802C970C 002C664C  48 00 00 28 */ b lbl_802C9734
lbl_802C9710:
/* 802C9710 002C6650  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C9714 002C6654  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C9718 002C6658  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C971C 002C665C  3C 00 43 30 */ lis r0, 0x4330
/* 802C9720 002C6660  90 01 00 08 */ stw r0, 8(r1)
/* 802C9724 002C6664  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C9728 002C6668  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C972C 002C666C  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C9730 002C6670  D0 1B 02 80 */ stfs f0, 0x280(r27)
lbl_802C9734:
/* 802C9734 002C6674  57 C0 06 3E */ clrlwi r0, r30, 0x18
/* 802C9738 002C6678  28 00 00 FF */ cmplwi r0, 0xff
/* 802C973C 002C667C  40 82 00 10 */ bne lbl_802C974C
/* 802C9740 002C6680  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C9744 002C6684  D0 1B 02 84 */ stfs f0, 0x284(r27)
/* 802C9748 002C6688  48 00 00 28 */ b lbl_802C9770
lbl_802C974C:
/* 802C974C 002C668C  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C9750 002C6690  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C9754 002C6694  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C9758 002C6698  3C 00 43 30 */ lis r0, 0x4330
/* 802C975C 002C669C  90 01 00 08 */ stw r0, 8(r1)
/* 802C9760 002C66A0  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C9764 002C66A4  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C9768 002C66A8  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C976C 002C66AC  D0 1B 02 84 */ stfs f0, 0x284(r27)
lbl_802C9770:
/* 802C9770 002C66B0  57 E0 06 3E */ clrlwi r0, r31, 0x18
/* 802C9774 002C66B4  28 00 00 FF */ cmplwi r0, 0xff
/* 802C9778 002C66B8  40 82 00 10 */ bne lbl_802C9788
/* 802C977C 002C66BC  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C9780 002C66C0  D0 1B 02 88 */ stfs f0, 0x288(r27)
/* 802C9784 002C66C4  48 00 00 28 */ b lbl_802C97AC
lbl_802C9788:
/* 802C9788 002C66C8  C0 42 C3 50 */ lfs f2, lbl_80455D50-_SDA2_BASE_(r2)
/* 802C978C 002C66CC  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C9790 002C66D0  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C9794 002C66D4  3C 00 43 30 */ lis r0, 0x4330
/* 802C9798 002C66D8  90 01 00 08 */ stw r0, 8(r1)
/* 802C979C 002C66DC  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C97A0 002C66E0  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C97A4 002C66E4  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C97A8 002C66E8  D0 1B 02 88 */ stfs f0, 0x288(r27)
lbl_802C97AC:
/* 802C97AC 002C66EC  C0 22 C3 70 */ lfs f1, lbl_80455D70-_SDA2_BASE_(r2)
/* 802C97B0 002C66F0  C0 1B 02 88 */ lfs f0, 0x288(r27)
/* 802C97B4 002C66F4  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C97B8 002C66F8  D0 1B 02 58 */ stfs f0, 0x258(r27)
/* 802C97BC 002C66FC  48 00 07 84 */ b lbl_802C9F40
/* 802C97C0 002C6700  9B 9B 02 7C */ stb r28, 0x27c(r27)
/* 802C97C4 002C6704  57 A0 06 3E */ clrlwi r0, r29, 0x18
/* 802C97C8 002C6708  28 00 00 64 */ cmplwi r0, 0x64
/* 802C97CC 002C670C  41 80 00 10 */ blt lbl_802C97DC
/* 802C97D0 002C6710  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C97D4 002C6714  D0 1B 02 80 */ stfs f0, 0x280(r27)
/* 802C97D8 002C6718  48 00 00 28 */ b lbl_802C9800
lbl_802C97DC:
/* 802C97DC 002C671C  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C97E0 002C6720  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C97E4 002C6724  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C97E8 002C6728  3C 00 43 30 */ lis r0, 0x4330
/* 802C97EC 002C672C  90 01 00 08 */ stw r0, 8(r1)
/* 802C97F0 002C6730  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C97F4 002C6734  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C97F8 002C6738  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C97FC 002C673C  D0 1B 02 80 */ stfs f0, 0x280(r27)
lbl_802C9800:
/* 802C9800 002C6740  57 C0 06 3E */ clrlwi r0, r30, 0x18
/* 802C9804 002C6744  28 00 00 FF */ cmplwi r0, 0xff
/* 802C9808 002C6748  40 82 00 10 */ bne lbl_802C9818
/* 802C980C 002C674C  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C9810 002C6750  D0 1B 02 84 */ stfs f0, 0x284(r27)
/* 802C9814 002C6754  48 00 00 28 */ b lbl_802C983C
lbl_802C9818:
/* 802C9818 002C6758  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C981C 002C675C  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C9820 002C6760  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C9824 002C6764  3C 00 43 30 */ lis r0, 0x4330
/* 802C9828 002C6768  90 01 00 08 */ stw r0, 8(r1)
/* 802C982C 002C676C  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C9830 002C6770  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C9834 002C6774  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C9838 002C6778  D0 1B 02 84 */ stfs f0, 0x284(r27)
lbl_802C983C:
/* 802C983C 002C677C  57 E0 06 3E */ clrlwi r0, r31, 0x18
/* 802C9840 002C6780  28 00 00 FF */ cmplwi r0, 0xff
/* 802C9844 002C6784  40 82 00 10 */ bne lbl_802C9854
/* 802C9848 002C6788  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C984C 002C678C  D0 1B 02 88 */ stfs f0, 0x288(r27)
/* 802C9850 002C6790  48 00 00 28 */ b lbl_802C9878
lbl_802C9854:
/* 802C9854 002C6794  C0 42 C3 50 */ lfs f2, lbl_80455D50-_SDA2_BASE_(r2)
/* 802C9858 002C6798  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C985C 002C679C  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C9860 002C67A0  3C 00 43 30 */ lis r0, 0x4330
/* 802C9864 002C67A4  90 01 00 08 */ stw r0, 8(r1)
/* 802C9868 002C67A8  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C986C 002C67AC  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C9870 002C67B0  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C9874 002C67B4  D0 1B 02 88 */ stfs f0, 0x288(r27)
lbl_802C9878:
/* 802C9878 002C67B8  C0 22 C4 30 */ lfs f1, lbl_80455E30-_SDA2_BASE_(r2)
/* 802C987C 002C67BC  C0 1B 02 88 */ lfs f0, 0x288(r27)
/* 802C9880 002C67C0  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C9884 002C67C4  D0 1B 02 58 */ stfs f0, 0x258(r27)
/* 802C9888 002C67C8  48 00 06 B8 */ b lbl_802C9F40
/* 802C988C 002C67CC  9B 9B 02 B0 */ stb r28, 0x2b0(r27)
/* 802C9890 002C67D0  57 A0 06 3E */ clrlwi r0, r29, 0x18
/* 802C9894 002C67D4  28 00 00 64 */ cmplwi r0, 0x64
/* 802C9898 002C67D8  41 80 00 10 */ blt lbl_802C98A8
/* 802C989C 002C67DC  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C98A0 002C67E0  D0 1B 02 B4 */ stfs f0, 0x2b4(r27)
/* 802C98A4 002C67E4  48 00 00 28 */ b lbl_802C98CC
lbl_802C98A8:
/* 802C98A8 002C67E8  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C98AC 002C67EC  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C98B0 002C67F0  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C98B4 002C67F4  3C 00 43 30 */ lis r0, 0x4330
/* 802C98B8 002C67F8  90 01 00 08 */ stw r0, 8(r1)
/* 802C98BC 002C67FC  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C98C0 002C6800  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C98C4 002C6804  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C98C8 002C6808  D0 1B 02 B4 */ stfs f0, 0x2b4(r27)
lbl_802C98CC:
/* 802C98CC 002C680C  57 C0 06 3E */ clrlwi r0, r30, 0x18
/* 802C98D0 002C6810  28 00 00 FF */ cmplwi r0, 0xff
/* 802C98D4 002C6814  40 82 00 10 */ bne lbl_802C98E4
/* 802C98D8 002C6818  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C98DC 002C681C  D0 1B 02 B8 */ stfs f0, 0x2b8(r27)
/* 802C98E0 002C6820  48 00 00 28 */ b lbl_802C9908
lbl_802C98E4:
/* 802C98E4 002C6824  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C98E8 002C6828  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C98EC 002C682C  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C98F0 002C6830  3C 00 43 30 */ lis r0, 0x4330
/* 802C98F4 002C6834  90 01 00 08 */ stw r0, 8(r1)
/* 802C98F8 002C6838  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C98FC 002C683C  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C9900 002C6840  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C9904 002C6844  D0 1B 02 B8 */ stfs f0, 0x2b8(r27)
lbl_802C9908:
/* 802C9908 002C6848  57 E0 06 3E */ clrlwi r0, r31, 0x18
/* 802C990C 002C684C  28 00 00 FF */ cmplwi r0, 0xff
/* 802C9910 002C6850  40 82 00 10 */ bne lbl_802C9920
/* 802C9914 002C6854  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C9918 002C6858  D0 1B 02 BC */ stfs f0, 0x2bc(r27)
/* 802C991C 002C685C  48 00 00 28 */ b lbl_802C9944
lbl_802C9920:
/* 802C9920 002C6860  C0 42 C3 50 */ lfs f2, lbl_80455D50-_SDA2_BASE_(r2)
/* 802C9924 002C6864  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C9928 002C6868  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C992C 002C686C  3C 00 43 30 */ lis r0, 0x4330
/* 802C9930 002C6870  90 01 00 08 */ stw r0, 8(r1)
/* 802C9934 002C6874  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C9938 002C6878  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C993C 002C687C  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C9940 002C6880  D0 1B 02 BC */ stfs f0, 0x2bc(r27)
lbl_802C9944:
/* 802C9944 002C6884  C0 22 C3 70 */ lfs f1, lbl_80455D70-_SDA2_BASE_(r2)
/* 802C9948 002C6888  C0 1B 02 BC */ lfs f0, 0x2bc(r27)
/* 802C994C 002C688C  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C9950 002C6890  D0 1B 02 8C */ stfs f0, 0x28c(r27)
/* 802C9954 002C6894  48 00 05 EC */ b lbl_802C9F40
/* 802C9958 002C6898  9B 9B 02 B0 */ stb r28, 0x2b0(r27)
/* 802C995C 002C689C  57 A0 06 3E */ clrlwi r0, r29, 0x18
/* 802C9960 002C68A0  28 00 00 64 */ cmplwi r0, 0x64
/* 802C9964 002C68A4  41 80 00 10 */ blt lbl_802C9974
/* 802C9968 002C68A8  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C996C 002C68AC  D0 1B 02 B4 */ stfs f0, 0x2b4(r27)
/* 802C9970 002C68B0  48 00 00 28 */ b lbl_802C9998
lbl_802C9974:
/* 802C9974 002C68B4  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C9978 002C68B8  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C997C 002C68BC  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C9980 002C68C0  3C 00 43 30 */ lis r0, 0x4330
/* 802C9984 002C68C4  90 01 00 08 */ stw r0, 8(r1)
/* 802C9988 002C68C8  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C998C 002C68CC  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C9990 002C68D0  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C9994 002C68D4  D0 1B 02 B4 */ stfs f0, 0x2b4(r27)
lbl_802C9998:
/* 802C9998 002C68D8  57 C0 06 3E */ clrlwi r0, r30, 0x18
/* 802C999C 002C68DC  28 00 00 FF */ cmplwi r0, 0xff
/* 802C99A0 002C68E0  40 82 00 10 */ bne lbl_802C99B0
/* 802C99A4 002C68E4  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C99A8 002C68E8  D0 1B 02 B8 */ stfs f0, 0x2b8(r27)
/* 802C99AC 002C68EC  48 00 00 28 */ b lbl_802C99D4
lbl_802C99B0:
/* 802C99B0 002C68F0  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C99B4 002C68F4  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C99B8 002C68F8  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C99BC 002C68FC  3C 00 43 30 */ lis r0, 0x4330
/* 802C99C0 002C6900  90 01 00 08 */ stw r0, 8(r1)
/* 802C99C4 002C6904  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C99C8 002C6908  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C99CC 002C690C  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C99D0 002C6910  D0 1B 02 B8 */ stfs f0, 0x2b8(r27)
lbl_802C99D4:
/* 802C99D4 002C6914  57 E0 06 3E */ clrlwi r0, r31, 0x18
/* 802C99D8 002C6918  28 00 00 FF */ cmplwi r0, 0xff
/* 802C99DC 002C691C  40 82 00 10 */ bne lbl_802C99EC
/* 802C99E0 002C6920  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C99E4 002C6924  D0 1B 02 BC */ stfs f0, 0x2bc(r27)
/* 802C99E8 002C6928  48 00 00 28 */ b lbl_802C9A10
lbl_802C99EC:
/* 802C99EC 002C692C  C0 42 C3 50 */ lfs f2, lbl_80455D50-_SDA2_BASE_(r2)
/* 802C99F0 002C6930  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C99F4 002C6934  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C99F8 002C6938  3C 00 43 30 */ lis r0, 0x4330
/* 802C99FC 002C693C  90 01 00 08 */ stw r0, 8(r1)
/* 802C9A00 002C6940  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C9A04 002C6944  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C9A08 002C6948  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C9A0C 002C694C  D0 1B 02 BC */ stfs f0, 0x2bc(r27)
lbl_802C9A10:
/* 802C9A10 002C6950  C0 22 C4 30 */ lfs f1, lbl_80455E30-_SDA2_BASE_(r2)
/* 802C9A14 002C6954  C0 1B 02 BC */ lfs f0, 0x2bc(r27)
/* 802C9A18 002C6958  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C9A1C 002C695C  D0 1B 02 8C */ stfs f0, 0x28c(r27)
/* 802C9A20 002C6960  48 00 05 20 */ b lbl_802C9F40
/* 802C9A24 002C6964  9B 9B 02 B0 */ stb r28, 0x2b0(r27)
/* 802C9A28 002C6968  57 A0 06 3E */ clrlwi r0, r29, 0x18
/* 802C9A2C 002C696C  28 00 00 64 */ cmplwi r0, 0x64
/* 802C9A30 002C6970  41 80 00 10 */ blt lbl_802C9A40
/* 802C9A34 002C6974  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C9A38 002C6978  D0 1B 02 B4 */ stfs f0, 0x2b4(r27)
/* 802C9A3C 002C697C  48 00 00 28 */ b lbl_802C9A64
lbl_802C9A40:
/* 802C9A40 002C6980  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C9A44 002C6984  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C9A48 002C6988  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C9A4C 002C698C  3C 00 43 30 */ lis r0, 0x4330
/* 802C9A50 002C6990  90 01 00 08 */ stw r0, 8(r1)
/* 802C9A54 002C6994  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C9A58 002C6998  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C9A5C 002C699C  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C9A60 002C69A0  D0 1B 02 B4 */ stfs f0, 0x2b4(r27)
lbl_802C9A64:
/* 802C9A64 002C69A4  57 C0 06 3E */ clrlwi r0, r30, 0x18
/* 802C9A68 002C69A8  28 00 00 FF */ cmplwi r0, 0xff
/* 802C9A6C 002C69AC  40 82 00 10 */ bne lbl_802C9A7C
/* 802C9A70 002C69B0  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C9A74 002C69B4  D0 1B 02 B8 */ stfs f0, 0x2b8(r27)
/* 802C9A78 002C69B8  48 00 00 28 */ b lbl_802C9AA0
lbl_802C9A7C:
/* 802C9A7C 002C69BC  C0 42 C3 78 */ lfs f2, lbl_80455D78-_SDA2_BASE_(r2)
/* 802C9A80 002C69C0  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C9A84 002C69C4  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C9A88 002C69C8  3C 00 43 30 */ lis r0, 0x4330
/* 802C9A8C 002C69CC  90 01 00 08 */ stw r0, 8(r1)
/* 802C9A90 002C69D0  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C9A94 002C69D4  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C9A98 002C69D8  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C9A9C 002C69DC  D0 1B 02 B8 */ stfs f0, 0x2b8(r27)
lbl_802C9AA0:
/* 802C9AA0 002C69E0  57 E0 06 3E */ clrlwi r0, r31, 0x18
/* 802C9AA4 002C69E4  28 00 00 FF */ cmplwi r0, 0xff
/* 802C9AA8 002C69E8  40 82 00 10 */ bne lbl_802C9AB8
/* 802C9AAC 002C69EC  C0 02 C3 44 */ lfs f0, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C9AB0 002C69F0  D0 1B 02 BC */ stfs f0, 0x2bc(r27)
/* 802C9AB4 002C69F4  48 00 00 28 */ b lbl_802C9ADC
lbl_802C9AB8:
/* 802C9AB8 002C69F8  C0 42 C3 50 */ lfs f2, lbl_80455D50-_SDA2_BASE_(r2)
/* 802C9ABC 002C69FC  C8 22 C3 58 */ lfd f1, lbl_80455D58-_SDA2_BASE_(r2)
/* 802C9AC0 002C6A00  90 01 00 0C */ stw r0, 0xc(r1)
/* 802C9AC4 002C6A04  3C 00 43 30 */ lis r0, 0x4330
/* 802C9AC8 002C6A08  90 01 00 08 */ stw r0, 8(r1)
/* 802C9ACC 002C6A0C  C8 01 00 08 */ lfd f0, 8(r1)
/* 802C9AD0 002C6A10  EC 00 08 28 */ fsubs f0, f0, f1
/* 802C9AD4 002C6A14  EC 02 00 32 */ fmuls f0, f2, f0
/* 802C9AD8 002C6A18  D0 1B 02 BC */ stfs f0, 0x2bc(r27)
lbl_802C9ADC:
/* 802C9ADC 002C6A1C  C0 22 C4 34 */ lfs f1, lbl_80455E34-_SDA2_BASE_(r2)
/* 802C9AE0 002C6A20  C0 1B 02 BC */ lfs f0, 0x2bc(r27)
/* 802C9AE4 002C6A24  EC 01 00 32 */ fmuls f0, f1, f0
/* 802C9AE8 002C6A28  D0 1B 02 8C */ stfs f0, 0x28c(r27)
/* 802C9AEC 002C6A2C  48 00 04 54 */ b lbl_802C9F40
lbl_802C9AF0:
/* 802C9AF0 002C6A30  80 6D 86 00 */ lwz r3, lbl_80450B80-_SDA_BASE_(r13)
/* 802C9AF4 002C6A34  80 03 00 04 */ lwz r0, 4(r3)
/* 802C9AF8 002C6A38  2C 00 00 2E */ cmpwi r0, 0x2e
/* 802C9AFC 002C6A3C  40 82 04 44 */ bne lbl_802C9F40
/* 802C9B00 002C6A40  88 03 00 0C */ lbz r0, 0xc(r3)
/* 802C9B04 002C6A44  7C 00 07 74 */ extsb r0, r0
/* 802C9B08 002C6A48  28 00 00 0D */ cmplwi r0, 0xd
/* 802C9B0C 002C6A4C  41 81 04 34 */ bgt lbl_802C9F40
/* 802C9B10 002C6A50  3C 60 80 3D */ lis r3, lbl_803CBB90@ha
/* 802C9B14 002C6A54  38 63 BB 90 */ addi r3, r3, lbl_803CBB90@l
/* 802C9B18 002C6A58  54 00 10 3A */ slwi r0, r0, 2
/* 802C9B1C 002C6A5C  7C 03 00 2E */ lwzx r0, r3, r0
/* 802C9B20 002C6A60  7C 09 03 A6 */ mtctr r0
/* 802C9B24 002C6A64  4E 80 04 20 */ bctr
/* 802C9B28 002C6A68  57 80 06 3E */ clrlwi r0, r28, 0x18
/* 802C9B2C 002C6A6C  28 00 00 6B */ cmplwi r0, 0x6b
/* 802C9B30 002C6A70  40 82 00 1C */ bne lbl_802C9B4C
/* 802C9B34 002C6A74  7F 63 DB 78 */ mr r3, r27
/* 802C9B38 002C6A78  38 80 00 09 */ li r4, 9
/* 802C9B3C 002C6A7C  7F A5 EB 78 */ mr r5, r29
/* 802C9B40 002C6A80  38 C0 00 82 */ li r6, 0x82
/* 802C9B44 002C6A84  38 E0 00 05 */ li r7, 5
/* 802C9B48 002C6A88  4B FF EB E9 */ bl Z2EnvSeMgr_NS_initFallSe
lbl_802C9B4C:
/* 802C9B4C 002C6A8C  57 80 06 3E */ clrlwi r0, r28, 0x18
/* 802C9B50 002C6A90  28 00 00 64 */ cmplwi r0, 0x64
/* 802C9B54 002C6A94  40 82 03 EC */ bne lbl_802C9F40
/* 802C9B58 002C6A98  7F 63 DB 78 */ mr r3, r27
/* 802C9B5C 002C6A9C  38 80 00 1E */ li r4, 0x1e
/* 802C9B60 002C6AA0  7F A5 EB 78 */ mr r5, r29
/* 802C9B64 002C6AA4  7F C6 F3 78 */ mr r6, r30
/* 802C9B68 002C6AA8  7F E7 FB 78 */ mr r7, r31
/* 802C9B6C 002C6AAC  4B FF EF 25 */ bl Z2EnvSeMgr_NS_initEtcSe
/* 802C9B70 002C6AB0  48 00 03 D0 */ b lbl_802C9F40
/* 802C9B74 002C6AB4  57 83 06 3E */ clrlwi r3, r28, 0x18
/* 802C9B78 002C6AB8  28 03 00 64 */ cmplwi r3, 0x64
/* 802C9B7C 002C6ABC  40 82 00 20 */ bne lbl_802C9B9C
/* 802C9B80 002C6AC0  7F 63 DB 78 */ mr r3, r27
/* 802C9B84 002C6AC4  38 80 00 1F */ li r4, 0x1f
/* 802C9B88 002C6AC8  7F A5 EB 78 */ mr r5, r29
/* 802C9B8C 002C6ACC  7F C6 F3 78 */ mr r6, r30
/* 802C9B90 002C6AD0  38 E0 00 14 */ li r7, 0x14
/* 802C9B94 002C6AD4  4B FF EE FD */ bl Z2EnvSeMgr_NS_initEtcSe
/* 802C9B98 002C6AD8  48 00 03 A8 */ b lbl_802C9F40
lbl_802C9B9C:
/* 802C9B9C 002C6ADC  38 1C FF 99 */ addi r0, r28, -103
/* 802C9BA0 002C6AE0  54 00 06 3E */ clrlwi r0, r0, 0x18
/* 802C9BA4 002C6AE4  28 00 00 02 */ cmplwi r0, 2
/* 802C9BA8 002C6AE8  40 81 00 0C */ ble lbl_802C9BB4
/* 802C9BAC 002C6AEC  28 03 00 6A */ cmplwi r3, 0x6a
/* 802C9BB0 002C6AF0  40 82 03 90 */ bne lbl_802C9F40
lbl_802C9BB4:
/* 802C9BB4 002C6AF4  7F 63 DB 78 */ mr r3, r27
/* 802C9BB8 002C6AF8  38 80 00 73 */ li r4, 0x73
/* 802C9BBC 002C6AFC  7F A5 EB 78 */ mr r5, r29
/* 802C9BC0 002C6B00  7F C6 F3 78 */ mr r6, r30
/* 802C9BC4 002C6B04  7F E7 FB 78 */ mr r7, r31
/* 802C9BC8 002C6B08  4B FF F9 45 */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9BCC 002C6B0C  48 00 03 74 */ b lbl_802C9F40
/* 802C9BD0 002C6B10  38 1C FF 9C */ addi r0, r28, -100
/* 802C9BD4 002C6B14  54 00 06 3E */ clrlwi r0, r0, 0x18
/* 802C9BD8 002C6B18  28 00 00 01 */ cmplwi r0, 1
/* 802C9BDC 002C6B1C  40 81 00 10 */ ble lbl_802C9BEC
/* 802C9BE0 002C6B20  57 80 06 3E */ clrlwi r0, r28, 0x18
/* 802C9BE4 002C6B24  28 00 00 66 */ cmplwi r0, 0x66
/* 802C9BE8 002C6B28  40 82 00 20 */ bne lbl_802C9C08
lbl_802C9BEC:
/* 802C9BEC 002C6B2C  7F 63 DB 78 */ mr r3, r27
/* 802C9BF0 002C6B30  38 80 00 1E */ li r4, 0x1e
/* 802C9BF4 002C6B34  7F A5 EB 78 */ mr r5, r29
/* 802C9BF8 002C6B38  7F C6 F3 78 */ mr r6, r30
/* 802C9BFC 002C6B3C  7F E7 FB 78 */ mr r7, r31
/* 802C9C00 002C6B40  4B FF EE 91 */ bl Z2EnvSeMgr_NS_initEtcSe
/* 802C9C04 002C6B44  48 00 03 3C */ b lbl_802C9F40
lbl_802C9C08:
/* 802C9C08 002C6B48  28 00 00 67 */ cmplwi r0, 0x67
/* 802C9C0C 002C6B4C  41 82 00 0C */ beq lbl_802C9C18
/* 802C9C10 002C6B50  28 00 00 68 */ cmplwi r0, 0x68
/* 802C9C14 002C6B54  40 82 00 20 */ bne lbl_802C9C34
lbl_802C9C18:
/* 802C9C18 002C6B58  7F 63 DB 78 */ mr r3, r27
/* 802C9C1C 002C6B5C  38 80 00 73 */ li r4, 0x73
/* 802C9C20 002C6B60  7F A5 EB 78 */ mr r5, r29
/* 802C9C24 002C6B64  7F C6 F3 78 */ mr r6, r30
/* 802C9C28 002C6B68  7F E7 FB 78 */ mr r7, r31
/* 802C9C2C 002C6B6C  4B FF F8 E1 */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9C30 002C6B70  48 00 03 10 */ b lbl_802C9F40
lbl_802C9C34:
/* 802C9C34 002C6B74  28 00 00 69 */ cmplwi r0, 0x69
/* 802C9C38 002C6B78  41 82 00 0C */ beq lbl_802C9C44
/* 802C9C3C 002C6B7C  28 00 00 6A */ cmplwi r0, 0x6a
/* 802C9C40 002C6B80  40 82 00 20 */ bne lbl_802C9C60
lbl_802C9C44:
/* 802C9C44 002C6B84  7F 63 DB 78 */ mr r3, r27
/* 802C9C48 002C6B88  38 80 00 75 */ li r4, 0x75
/* 802C9C4C 002C6B8C  7F A5 EB 78 */ mr r5, r29
/* 802C9C50 002C6B90  7F C6 F3 78 */ mr r6, r30
/* 802C9C54 002C6B94  7F E7 FB 78 */ mr r7, r31
/* 802C9C58 002C6B98  4B FF F8 B5 */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9C5C 002C6B9C  48 00 02 E4 */ b lbl_802C9F40
lbl_802C9C60:
/* 802C9C60 002C6BA0  28 00 00 6B */ cmplwi r0, 0x6b
/* 802C9C64 002C6BA4  41 82 00 0C */ beq lbl_802C9C70
/* 802C9C68 002C6BA8  28 00 00 6C */ cmplwi r0, 0x6c
/* 802C9C6C 002C6BAC  40 82 02 D4 */ bne lbl_802C9F40
lbl_802C9C70:
/* 802C9C70 002C6BB0  7F 63 DB 78 */ mr r3, r27
/* 802C9C74 002C6BB4  38 80 00 6F */ li r4, 0x6f
/* 802C9C78 002C6BB8  7F A5 EB 78 */ mr r5, r29
/* 802C9C7C 002C6BBC  7F C6 F3 78 */ mr r6, r30
/* 802C9C80 002C6BC0  38 E0 00 0F */ li r7, 0xf
/* 802C9C84 002C6BC4  4B FF F8 89 */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9C88 002C6BC8  48 00 02 B8 */ b lbl_802C9F40
/* 802C9C8C 002C6BCC  57 80 06 3E */ clrlwi r0, r28, 0x18
/* 802C9C90 002C6BD0  28 00 00 67 */ cmplwi r0, 0x67
/* 802C9C94 002C6BD4  40 82 00 20 */ bne lbl_802C9CB4
/* 802C9C98 002C6BD8  7F 63 DB 78 */ mr r3, r27
/* 802C9C9C 002C6BDC  38 80 00 73 */ li r4, 0x73
/* 802C9CA0 002C6BE0  7F A5 EB 78 */ mr r5, r29
/* 802C9CA4 002C6BE4  7F C6 F3 78 */ mr r6, r30
/* 802C9CA8 002C6BE8  7F E7 FB 78 */ mr r7, r31
/* 802C9CAC 002C6BEC  4B FF F8 61 */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9CB0 002C6BF0  48 00 02 90 */ b lbl_802C9F40
lbl_802C9CB4:
/* 802C9CB4 002C6BF4  28 00 00 6B */ cmplwi r0, 0x6b
/* 802C9CB8 002C6BF8  40 82 02 88 */ bne lbl_802C9F40
/* 802C9CBC 002C6BFC  7F 63 DB 78 */ mr r3, r27
/* 802C9CC0 002C6C00  38 80 00 09 */ li r4, 9
/* 802C9CC4 002C6C04  7F A5 EB 78 */ mr r5, r29
/* 802C9CC8 002C6C08  38 C0 00 82 */ li r6, 0x82
/* 802C9CCC 002C6C0C  7F E7 FB 78 */ mr r7, r31
/* 802C9CD0 002C6C10  4B FF EA 61 */ bl Z2EnvSeMgr_NS_initFallSe
/* 802C9CD4 002C6C14  48 00 02 6C */ b lbl_802C9F40
/* 802C9CD8 002C6C18  57 80 06 3E */ clrlwi r0, r28, 0x18
/* 802C9CDC 002C6C1C  28 00 00 64 */ cmplwi r0, 0x64
/* 802C9CE0 002C6C20  41 82 00 0C */ beq lbl_802C9CEC
/* 802C9CE4 002C6C24  28 00 00 65 */ cmplwi r0, 0x65
/* 802C9CE8 002C6C28  40 82 00 20 */ bne lbl_802C9D08
lbl_802C9CEC:
/* 802C9CEC 002C6C2C  7F 63 DB 78 */ mr r3, r27
/* 802C9CF0 002C6C30  38 80 00 1E */ li r4, 0x1e
/* 802C9CF4 002C6C34  7F A5 EB 78 */ mr r5, r29
/* 802C9CF8 002C6C38  7F C6 F3 78 */ mr r6, r30
/* 802C9CFC 002C6C3C  7F E7 FB 78 */ mr r7, r31
/* 802C9D00 002C6C40  4B FF ED 91 */ bl Z2EnvSeMgr_NS_initEtcSe
/* 802C9D04 002C6C44  48 00 02 3C */ b lbl_802C9F40
lbl_802C9D08:
/* 802C9D08 002C6C48  28 00 00 67 */ cmplwi r0, 0x67
/* 802C9D0C 002C6C4C  40 82 00 20 */ bne lbl_802C9D2C
/* 802C9D10 002C6C50  7F 63 DB 78 */ mr r3, r27
/* 802C9D14 002C6C54  38 80 00 73 */ li r4, 0x73
/* 802C9D18 002C6C58  7F A5 EB 78 */ mr r5, r29
/* 802C9D1C 002C6C5C  7F C6 F3 78 */ mr r6, r30
/* 802C9D20 002C6C60  7F E7 FB 78 */ mr r7, r31
/* 802C9D24 002C6C64  4B FF F7 E9 */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9D28 002C6C68  48 00 02 18 */ b lbl_802C9F40
lbl_802C9D2C:
/* 802C9D2C 002C6C6C  28 00 00 6B */ cmplwi r0, 0x6b
/* 802C9D30 002C6C70  40 82 02 10 */ bne lbl_802C9F40
/* 802C9D34 002C6C74  7F 63 DB 78 */ mr r3, r27
/* 802C9D38 002C6C78  38 80 00 6F */ li r4, 0x6f
/* 802C9D3C 002C6C7C  7F A5 EB 78 */ mr r5, r29
/* 802C9D40 002C6C80  7F C6 F3 78 */ mr r6, r30
/* 802C9D44 002C6C84  7F E7 FB 78 */ mr r7, r31
/* 802C9D48 002C6C88  4B FF F7 C5 */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9D4C 002C6C8C  48 00 01 F4 */ b lbl_802C9F40
/* 802C9D50 002C6C90  57 80 06 3E */ clrlwi r0, r28, 0x18
/* 802C9D54 002C6C94  28 00 00 64 */ cmplwi r0, 0x64
/* 802C9D58 002C6C98  40 82 00 20 */ bne lbl_802C9D78
/* 802C9D5C 002C6C9C  7F 63 DB 78 */ mr r3, r27
/* 802C9D60 002C6CA0  38 80 00 1E */ li r4, 0x1e
/* 802C9D64 002C6CA4  7F A5 EB 78 */ mr r5, r29
/* 802C9D68 002C6CA8  7F C6 F3 78 */ mr r6, r30
/* 802C9D6C 002C6CAC  7F E7 FB 78 */ mr r7, r31
/* 802C9D70 002C6CB0  4B FF ED 21 */ bl Z2EnvSeMgr_NS_initEtcSe
/* 802C9D74 002C6CB4  48 00 01 CC */ b lbl_802C9F40
lbl_802C9D78:
/* 802C9D78 002C6CB8  28 00 00 67 */ cmplwi r0, 0x67
/* 802C9D7C 002C6CBC  40 82 00 20 */ bne lbl_802C9D9C
/* 802C9D80 002C6CC0  7F 63 DB 78 */ mr r3, r27
/* 802C9D84 002C6CC4  38 80 00 75 */ li r4, 0x75
/* 802C9D88 002C6CC8  7F A5 EB 78 */ mr r5, r29
/* 802C9D8C 002C6CCC  7F C6 F3 78 */ mr r6, r30
/* 802C9D90 002C6CD0  7F E7 FB 78 */ mr r7, r31
/* 802C9D94 002C6CD4  4B FF F7 79 */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9D98 002C6CD8  48 00 01 A8 */ b lbl_802C9F40
lbl_802C9D9C:
/* 802C9D9C 002C6CDC  28 00 00 68 */ cmplwi r0, 0x68
/* 802C9DA0 002C6CE0  40 82 00 20 */ bne lbl_802C9DC0
/* 802C9DA4 002C6CE4  7F 63 DB 78 */ mr r3, r27
/* 802C9DA8 002C6CE8  38 80 00 74 */ li r4, 0x74
/* 802C9DAC 002C6CEC  7F A5 EB 78 */ mr r5, r29
/* 802C9DB0 002C6CF0  7F C6 F3 78 */ mr r6, r30
/* 802C9DB4 002C6CF4  7F E7 FB 78 */ mr r7, r31
/* 802C9DB8 002C6CF8  4B FF F7 55 */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9DBC 002C6CFC  48 00 01 84 */ b lbl_802C9F40
lbl_802C9DC0:
/* 802C9DC0 002C6D00  28 00 00 6B */ cmplwi r0, 0x6b
/* 802C9DC4 002C6D04  40 82 01 7C */ bne lbl_802C9F40
/* 802C9DC8 002C6D08  7F 63 DB 78 */ mr r3, r27
/* 802C9DCC 002C6D0C  38 80 00 09 */ li r4, 9
/* 802C9DD0 002C6D10  7F A5 EB 78 */ mr r5, r29
/* 802C9DD4 002C6D14  38 C0 00 A0 */ li r6, 0xa0
/* 802C9DD8 002C6D18  7F E7 FB 78 */ mr r7, r31
/* 802C9DDC 002C6D1C  4B FF E9 55 */ bl Z2EnvSeMgr_NS_initFallSe
/* 802C9DE0 002C6D20  48 00 01 60 */ b lbl_802C9F40
/* 802C9DE4 002C6D24  57 80 06 3E */ clrlwi r0, r28, 0x18
/* 802C9DE8 002C6D28  28 00 00 64 */ cmplwi r0, 0x64
/* 802C9DEC 002C6D2C  41 82 00 0C */ beq lbl_802C9DF8
/* 802C9DF0 002C6D30  28 00 00 65 */ cmplwi r0, 0x65
/* 802C9DF4 002C6D34  40 82 00 20 */ bne lbl_802C9E14
lbl_802C9DF8:
/* 802C9DF8 002C6D38  7F 63 DB 78 */ mr r3, r27
/* 802C9DFC 002C6D3C  38 80 00 1E */ li r4, 0x1e
/* 802C9E00 002C6D40  7F A5 EB 78 */ mr r5, r29
/* 802C9E04 002C6D44  7F C6 F3 78 */ mr r6, r30
/* 802C9E08 002C6D48  7F E7 FB 78 */ mr r7, r31
/* 802C9E0C 002C6D4C  4B FF EC 85 */ bl Z2EnvSeMgr_NS_initEtcSe
/* 802C9E10 002C6D50  48 00 01 30 */ b lbl_802C9F40
lbl_802C9E14:
/* 802C9E14 002C6D54  28 00 00 67 */ cmplwi r0, 0x67
/* 802C9E18 002C6D58  40 82 00 20 */ bne lbl_802C9E38
/* 802C9E1C 002C6D5C  7F 63 DB 78 */ mr r3, r27
/* 802C9E20 002C6D60  38 80 00 73 */ li r4, 0x73
/* 802C9E24 002C6D64  7F A5 EB 78 */ mr r5, r29
/* 802C9E28 002C6D68  7F C6 F3 78 */ mr r6, r30
/* 802C9E2C 002C6D6C  7F E7 FB 78 */ mr r7, r31
/* 802C9E30 002C6D70  4B FF F6 DD */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9E34 002C6D74  48 00 01 0C */ b lbl_802C9F40
lbl_802C9E38:
/* 802C9E38 002C6D78  28 00 00 6B */ cmplwi r0, 0x6b
/* 802C9E3C 002C6D7C  40 82 01 04 */ bne lbl_802C9F40
/* 802C9E40 002C6D80  7F 63 DB 78 */ mr r3, r27
/* 802C9E44 002C6D84  38 80 00 09 */ li r4, 9
/* 802C9E48 002C6D88  7F A5 EB 78 */ mr r5, r29
/* 802C9E4C 002C6D8C  38 C0 00 82 */ li r6, 0x82
/* 802C9E50 002C6D90  7F E7 FB 78 */ mr r7, r31
/* 802C9E54 002C6D94  4B FF E8 DD */ bl Z2EnvSeMgr_NS_initFallSe
/* 802C9E58 002C6D98  48 00 00 E8 */ b lbl_802C9F40
/* 802C9E5C 002C6D9C  57 80 06 3E */ clrlwi r0, r28, 0x18
/* 802C9E60 002C6DA0  28 00 00 67 */ cmplwi r0, 0x67
/* 802C9E64 002C6DA4  40 82 00 20 */ bne lbl_802C9E84
/* 802C9E68 002C6DA8  7F 63 DB 78 */ mr r3, r27
/* 802C9E6C 002C6DAC  38 80 00 73 */ li r4, 0x73
/* 802C9E70 002C6DB0  7F A5 EB 78 */ mr r5, r29
/* 802C9E74 002C6DB4  7F C6 F3 78 */ mr r6, r30
/* 802C9E78 002C6DB8  7F E7 FB 78 */ mr r7, r31
/* 802C9E7C 002C6DBC  4B FF F6 91 */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9E80 002C6DC0  48 00 00 C0 */ b lbl_802C9F40
lbl_802C9E84:
/* 802C9E84 002C6DC4  28 00 00 6B */ cmplwi r0, 0x6b
/* 802C9E88 002C6DC8  40 82 00 B8 */ bne lbl_802C9F40
/* 802C9E8C 002C6DCC  7F 63 DB 78 */ mr r3, r27
/* 802C9E90 002C6DD0  38 80 00 6F */ li r4, 0x6f
/* 802C9E94 002C6DD4  7F A5 EB 78 */ mr r5, r29
/* 802C9E98 002C6DD8  38 C0 00 82 */ li r6, 0x82
/* 802C9E9C 002C6DDC  7F E7 FB 78 */ mr r7, r31
/* 802C9EA0 002C6DE0  4B FF F6 6D */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9EA4 002C6DE4  48 00 00 9C */ b lbl_802C9F40
/* 802C9EA8 002C6DE8  57 80 06 3E */ clrlwi r0, r28, 0x18
/* 802C9EAC 002C6DEC  28 00 00 64 */ cmplwi r0, 0x64
/* 802C9EB0 002C6DF0  41 82 00 0C */ beq lbl_802C9EBC
/* 802C9EB4 002C6DF4  28 00 00 65 */ cmplwi r0, 0x65
/* 802C9EB8 002C6DF8  40 82 00 20 */ bne lbl_802C9ED8
lbl_802C9EBC:
/* 802C9EBC 002C6DFC  7F 63 DB 78 */ mr r3, r27
/* 802C9EC0 002C6E00  38 80 00 1E */ li r4, 0x1e
/* 802C9EC4 002C6E04  7F A5 EB 78 */ mr r5, r29
/* 802C9EC8 002C6E08  7F C6 F3 78 */ mr r6, r30
/* 802C9ECC 002C6E0C  7F E7 FB 78 */ mr r7, r31
/* 802C9ED0 002C6E10  4B FF EB C1 */ bl Z2EnvSeMgr_NS_initEtcSe
/* 802C9ED4 002C6E14  48 00 00 6C */ b lbl_802C9F40
lbl_802C9ED8:
/* 802C9ED8 002C6E18  28 00 00 67 */ cmplwi r0, 0x67
/* 802C9EDC 002C6E1C  40 82 00 20 */ bne lbl_802C9EFC
/* 802C9EE0 002C6E20  7F 63 DB 78 */ mr r3, r27
/* 802C9EE4 002C6E24  38 80 00 75 */ li r4, 0x75
/* 802C9EE8 002C6E28  7F A5 EB 78 */ mr r5, r29
/* 802C9EEC 002C6E2C  7F C6 F3 78 */ mr r6, r30
/* 802C9EF0 002C6E30  7F E7 FB 78 */ mr r7, r31
/* 802C9EF4 002C6E34  4B FF F6 19 */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9EF8 002C6E38  48 00 00 48 */ b lbl_802C9F40
lbl_802C9EFC:
/* 802C9EFC 002C6E3C  28 00 00 68 */ cmplwi r0, 0x68
/* 802C9F00 002C6E40  40 82 00 20 */ bne lbl_802C9F20
/* 802C9F04 002C6E44  7F 63 DB 78 */ mr r3, r27
/* 802C9F08 002C6E48  38 80 00 74 */ li r4, 0x74
/* 802C9F0C 002C6E4C  7F A5 EB 78 */ mr r5, r29
/* 802C9F10 002C6E50  7F C6 F3 78 */ mr r6, r30
/* 802C9F14 002C6E54  7F E7 FB 78 */ mr r7, r31
/* 802C9F18 002C6E58  4B FF F5 F5 */ bl Z2EnvSeMgr_NS_initLv3WaterSe
/* 802C9F1C 002C6E5C  48 00 00 24 */ b lbl_802C9F40
lbl_802C9F20:
/* 802C9F20 002C6E60  28 00 00 6B */ cmplwi r0, 0x6b
/* 802C9F24 002C6E64  40 82 00 1C */ bne lbl_802C9F40
/* 802C9F28 002C6E68  7F 63 DB 78 */ mr r3, r27
/* 802C9F2C 002C6E6C  38 80 00 09 */ li r4, 9
/* 802C9F30 002C6E70  7F A5 EB 78 */ mr r5, r29
/* 802C9F34 002C6E74  38 C0 00 A0 */ li r6, 0xa0
/* 802C9F38 002C6E78  7F E7 FB 78 */ mr r7, r31
/* 802C9F3C 002C6E7C  4B FF E7 F5 */ bl Z2EnvSeMgr_NS_initFallSe
lbl_802C9F40:
/* 802C9F40 002C6E80  39 61 00 30 */ addi r11, r1, 0x30
/* 802C9F44 002C6E84  48 09 82 DD */ bl _restgpr_27
/* 802C9F48 002C6E88  80 01 00 34 */ lwz r0, 0x34(r1)
/* 802C9F4C 002C6E8C  7C 08 03 A6 */ mtlr r0
/* 802C9F50 002C6E90  38 21 00 30 */ addi r1, r1, 0x30
/* 802C9F54 002C6E94  4E 80 00 20 */ blr
