from preprocessing.src.code_tokenizer import get_llvm_tokens_and_types
import pyllvm
import re
def strings():
    return set([pyllvm.lltok.StringConstant,
                pyllvm.lltok.DwarfTag,
                pyllvm.lltok.DwarfAttEncoding,
                pyllvm.lltok.DwarfVirtuality,
                pyllvm.lltok.DwarfLang,
                pyllvm.lltok.DwarfCC,
                pyllvm.lltok.EmissionKind,
                pyllvm.lltok.NameTableKind,
                pyllvm.lltok.DwarfOp,
                pyllvm.lltok.DIFlag,
                pyllvm.lltok.DISPFlag,
                pyllvm.lltok.DwarfMacinfo,
                pyllvm.lltok.ChecksumKind])
def detokenize_llvm(s):
    assert isinstance(s, str) or isinstance(s, list)
    if isinstance(s, list):
        s = ' '.join(s)
    # the ▁ character created bugs in the cpp tokenizer
    s = s.replace('ENDCOM', '\n').replace('▁', 'SPACETOKEN')
    tokens, toktypes = get_llvm_tokens_and_types(s, detok=True)
    new_tokens = []
    for i in range(len(tokens)):
        if toktypes[i] == pyllvm.lltok.kw_declare or toktypes[i] == pyllvm.lltok.kw_define:
            new_tokens.append("NEW_LINE" + str(tokens[i]))
        elif toktypes[i-1] == pyllvm.lltok.kw_align: 
            new_tokens.append(str(tokens[i])+ "NEW_LINE") 
        elif toktypes[i] == pyllvm.lltok.LabelID: 
            new_tokens.append("NEW_LINE"+ str(tokens[i])+ "NEW_LINE") 
        elif toktypes[i] in strings() or toktypes[i] == pyllvm.lltok.GlobalVar or toktypes[i] == pyllvm.lltok.LocalVar: 
            new_tokens.append(tokens[i].replace(" SPACETOKEN ", " "))
        else:
            new_tokens.append(tokens[i])
    lines = re.split('NEW_LINE', ' '.join(new_tokens))
    untok_s = "\n".join(lines)
    # untok_s = indent_lines(lines)
    return untok_s

if __name__ == '__main__':
    # fn = open("/home/carl/TransCoder/input.ll", 'r').read()
    fn = """

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@g_4 = internal global [10 x i32] zeroinitializer

 store i16** %42, i16*** %631, align 8
  %632 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %613, i64 1
  %633 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %632, i64 0, i64 0
  %634 = getelementptr inbounds [1 x i16**], [1 x i16**]* %633, i64 0, i64 0
  store i16** %48, i16*** %634, align 8
  %635 = getelementptr inbounds [1 x i16**], [1 x i16**]* %633, i64 1
  %636 = getelementptr inbounds [1 x i16**], [1 x i16**]* %635, i64 0, i64 0
  store i16** null, i16*** %636, align 8
  %637 = getelementptr inbounds [1 x i16**], [1 x i16**]* %635, i64 1
  %638 = getelementptr inbounds [1 x i16**], [1 x i16**]* %637, i64 0, i64 0
  store i16** %48, i16*** %638, align 8
  %639 = getelementptr inbounds [1 x i16**], [1 x i16**]* %637, i64 1
  %640 = getelementptr inbounds [1 x i16**], [1 x i16**]* %639, i64 0, i64 0
  store i16** null, i16*** %640, align 8
  %641 = getelementptr inbounds [1 x i16**], [1 x i16**]* %639, i64 1
  %642 = getelementptr inbounds [1 x i16**], [1 x i16**]* %641, i64 0, i64 0
  store i16** %42, i16*** %642, align 8
  %643 = getelementptr inbounds [1 x i16**], [1 x i16**]* %641, i64 1
  %644 = getelementptr inbounds [1 x i16**], [1 x i16**]* %643, i64 0, i64 0
  store i16** %42, i16*** %644, align 8
  %645 = getelementptr inbounds [1 x i16**], [1 x i16**]* %643, i64 1
  %646 = getelementptr inbounds [1 x i16**], [1 x i16**]* %645, i64 0, i64 0
  store i16** %48, i16*** %646, align 8
  %647 = getelementptr inbounds [1 x i16**], [1 x i16**]* %645, i64 1
  %648 = getelementptr inbounds [1 x i16**], [1 x i16**]* %647, i64 0, i64 0
  store i16** %42, i16*** %648, align 8
  %649 = getelementptr inbounds [1 x i16**], [1 x i16**]* %647, i64 1
  %650 = getelementptr inbounds [1 x i16**], [1 x i16**]* %649, i64 0, i64 0
  store i16** %42, i16*** %650, align 8
  %651 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %632, i64 1
  %652 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %651, i64 0, i64 0
  %653 = getelementptr inbounds [1 x i16**], [1 x i16**]* %652, i64 0, i64 0
  store i16** null, i16*** %653, align 8
  %654 = getelementptr inbounds [1 x i16**], [1 x i16**]* %652, i64 1
  %655 = getelementptr inbounds [1 x i16**], [1 x i16**]* %654, i64 0, i64 0
  store i16** %48, i16*** %655, align 8
  %656 = getelementptr inbounds [1 x i16**], [1 x i16**]* %654, i64 1
  %657 = getelementptr inbounds [1 x i16**], [1 x i16**]* %656, i64 0, i64 0
  store i16** null, i16*** %657, align 8
  %658 = getelementptr inbounds [1 x i16**], [1 x i16**]* %656, i64 1
  %659 = getelementptr inbounds [1 x i16**], [1 x i16**]* %658, i64 0, i64 0
  store i16** %48, i16*** %659, align 8
  %660 = getelementptr inbounds [1 x i16**], [1 x i16**]* %658, i64 1
  %661 = getelementptr inbounds [1 x i16**], [1 x i16**]* %660, i64 0, i64 0
  store i16** %42, i16*** %661, align 8
  %662 = getelementptr inbounds [1 x i16**], [1 x i16**]* %660, i64 1
  %663 = getelementptr inbounds [1 x i16**], [1 x i16**]* %662, i64 0, i64 0
  store i16** %48, i16*** %663, align 8
  %664 = getelementptr inbounds [1 x i16**], [1 x i16**]* %662, i64 1
  %665 = getelementptr inbounds [1 x i16**], [1 x i16**]* %664, i64 0, i64 0
  store i16** null, i16*** %665, align 8
  %666 = getelementptr inbounds [1 x i16**], [1 x i16**]* %664, i64 1
  %667 = getelementptr inbounds [1 x i16**], [1 x i16**]* %666, i64 0, i64 0
  store i16** %48, i16*** %667, align 8
  %668 = getelementptr inbounds [1 x i16**], [1 x i16**]* %666, i64 1
  %669 = getelementptr inbounds [1 x i16**], [1 x i16**]* %668, i64 0, i64 0
  store i16** %42, i16*** %669, align 8
  %670 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %651, i64 1
  %671 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %670, i64 0, i64 0
  %672 = getelementptr inbounds [1 x i16**], [1 x i16**]* %671, i64 0, i64 0
  store i16** %48, i16*** %672, align 8
  %673 = getelementptr inbounds [1 x i16**], [1 x i16**]* %671, i64 1
  %674 = getelementptr inbounds [1 x i16**], [1 x i16**]* %673, i64 0, i64 0
  store i16** null, i16*** %674, align 8
  %675 = getelementptr inbounds [1 x i16**], [1 x i16**]* %673, i64 1
  %676 = getelementptr inbounds [1 x i16**], [1 x i16**]* %675, i64 0, i64 0
  store i16** %48, i16*** %676, align 8
  %677 = getelementptr inbounds [1 x i16**], [1 x i16**]* %675, i64 1
  %678 = getelementptr inbounds [1 x i16**], [1 x i16**]* %677, i64 0, i64 0
  store i16** null, i16*** %678, align 8
  %679 = getelementptr inbounds [1 x i16**], [1 x i16**]* %677, i64 1
  %680 = getelementptr inbounds [1 x i16**], [1 x i16**]* %679, i64 0, i64 0
  store i16** %42, i16*** %680, align 8
  %681 = getelementptr inbounds [1 x i16**], [1 x i16**]* %679, i64 1
  %682 = getelementptr inbounds [1 x i16**], [1 x i16**]* %681, i64 0, i64 0
  store i16** %42, i16*** %682, align 8
  %683 = getelementptr inbounds [1 x i16**], [1 x i16**]* %681, i64 1
  %684 = getelementptr inbounds [1 x i16**], [1 x i16**]* %683, i64 0, i64 0
  store i16** %48, i16*** %684, align 8
  %685 = getelementptr inbounds [1 x i16**], [1 x i16**]* %683, i64 1
  %686 = getelementptr inbounds [1 x i16**], [1 x i16**]* %685, i64 0, i64 0
  store i16** %42, i16*** %686, align 8
  %687 = getelementptr inbounds [1 x i16**], [1 x i16**]* %685, i64 1
  %688 = getelementptr inbounds [1 x i16**], [1 x i16**]* %687, i64 0, i64 0
  store i16** %42, i16*** %688, align 8
  %689 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %670, i64 1
  %690 = getelementptr inbounds [9 x [1 x i16**]], [9 x [1 x i16**]]* %689, i64 0, i64 0
  %691 = getelementptr inbounds [1 x i16**], [1 x i16**]* %690, i64 0, i64 0
  store i16** null, i16*** %691, align 8
  %692 = getelementptr inbounds [1 x i16**], [1 x i16**]* %690, i64 1
  %693 = getelementptr inbounds [1 x i16**], [1 x i16**]* %692, i64 0, i64 0
  store i16** %48, i16*** %693, align 8
  %694 = getelementptr inbounds [1 x i16**], [1 x i16**]* %692, i64 1
  %695 = getelementptr inbounds [1 x i16**], [1 x i16**]* %694, i64 0, i64 0
  store i16** null, i16*** %695, align 8
  %696 = getelementptr inbounds [1 x i16**], [1 x i16**]* %694, i64 1
  %697 = getelementptr inbounds [1 x i16**], [1 x i16**]* %696, i64 0, i64 0
  store i16** %48, i16*** %697, align 8
  %698 = getelementptr inbounds [1 x i16**], [1 x i16**]* %696, i64 1
  %699 = getelementptr inbounds [1 x i16**], [1 x i16**]* %698, i64 0, i64 0
  store i16** %42, i16*** %699, align 8
  %700 = getelementptr inbounds [1 x i16**], [1 x i16**]* %698, i64 1
  %701 = getelementptr inbounds [1 x i16**], [1 x i16**]* %700, i64 0, i64 0
  store i16** %48, i16*** %701, align 8
  %702 = getelementptr inbounds [1 x i16**], [1 x i16**]* %700, i64 1
  %703 = getelementptr inbounds [1 x i16**], [1 x i16**]* %702, i64 0, i64 0
  store i16** null, i16*** %703, align 8
  %704 = getelementptr inbounds [1 x i16**], [1 x i16**]* %702, i64 1
  %705 = getelementptr inbounds [1 x i16**], [1 x i16**]* %704, i64 0, i64 0
  store i16** %48, i16*** %705, align 8
  %706 = getelementptr inbounds [1 x i16**], [1 x i16**]* %704, i64 1
  %707 = getelementptr inbounds [1 x i16**], [1 x i16**]* %706, i64 0, i64 0
  store i16** %42, i16*** %707, align 8
  store i32 191971218, i32* %50, align 4
  store i32* @g_129, i32** %51, align 8
  %708 = load i16*, i16** @g_731, align 8
  %709 = load i16, i16* %708, align 2
  %710 = sext i16 %709 to i32
  store i32 %710, i32* %47, align 4
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %780

712:                                              ; preds = %574
  %713 = load i32, i32* %4, align 4
  %714 = load i32, i32* %4, align 4
  %715 = load i8, i8* getelementptr inbounds ([8 x [4 x [8 x i8]]], [8 x [4 x [8 x i8]]]* @g_161, i64 0, i64 2, i64 0, i64 2), align 2
  %716 = sext i8 %715 to i32
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %735, label %718

718:                                              ; preds = %712
  %719 = load i16*, i16** %42, align 8
  %720 = load i16*, i16** %48, align 8
  store i16* %720, i16** %11, align 8
  %721 = icmp ne i16* %719, %720
  %722 = zext i1 %721 to i32
  %723 = load i32, i32* %4, align 4
  %724 = load i32, i32* %47, align 4
  %725 = getelementptr inbounds [2 x [6 x [4 x i32]]], [2 x [6 x [4 x i32]]]* %20, i64 0, i64 0
  %726 = getelementptr inbounds [6 x [4 x i32]], [6 x [4 x i32]]* %725, i64 0, i64 5
  %727 = getelementptr inbounds [4 x i32], [4 x i32]* %726, i64 0, i64 0
  %728 = load i32, i32* %727, align 16
  %729 = icmp ne i32 %724, %728
  %730 = zext i1 %729 to i32
  store i32 %730, i32* %43, align 4
  %731 = icmp ugt i32 %723, %730
  %732 = zext i1 %731 to i32
  %733 = trunc i32 %732 to i16
  %734 = call signext i16 @safe_mul_func_int16_t_s_s(i16 signext %733, i16 signext 0)
  br label %735

735:                                              ; preds = %718, %712
  %736 = phi i1 [ true, %712 ], [ false, %718 ]
  %737 = zext i1 %736 to i32
  %738 = sext i32 %737 to i64
  %739 = load i32, i32* %5, align 4
  %740 = sext i32 %739 to i64
  %741 = call i64 @safe_div_func_uint64_t_u_u(i64 %738, i64 %740)
  %742 = trunc i64 %741 to i8
  %743 = load i32, i32* %4, align 4
  %744 = trunc i32 %743 to i8
  %745 = call signext i8 @safe_add_func_int8_t_s_s(i8 signext %742, i8 signext %744)
  %746 = sext i8 %745 to i64
  %747 = icmp ule i64 %746, -1
  %748 = zext i1 %747 to i32
  %749 = sext i32 %748 to i64
  %750 = call i64 @safe_add_func_uint64_t_u_u(i64 2656456663283063401, i64 %749)
  %751 = trunc i64 %750 to i32
  %752 = load i32*, i32** @g_1244, align 8
  store i32 %751, i32* %752, align 4
  %753 = call i32 @safe_mod_func_uint32_t_u_u(i32 %714, i32 %751)
  %754 = load i32, i32* %5, align 4
  %755 = sext i32 %754 to i64
  %756 = icmp uge i64 4, %755
  %757 = zext i1 %756 to i32
  %758 = icmp eq i32 %757, 236344616
  %759 = zext i1 %758 to i32
  %760 = sext i32 %759 to i64
  %761 = call i64 @safe_div_func_int64_t_s_s(i64 %760, i64 236344616)
  %762 = icmp ne i64 %761, 0
  br i1 %762, label %766, label %763

763:                                              ; preds = %735
  %764 = load i32, i32* %47, align 4
  %765 = icmp ne i32 %764, 0
  br label %766

766:                                              ; preds = %763, %735
  %767 = phi i1 [ true, %735 ], [ %765, %763 ]
  %768 = zext i1 %767 to i32
  store i32 %768, i32* %50, align 4
  %769 = icmp ule i32 %713, %768
  %770 = zext i1 %769 to i32
  %771 = load i32, i32* %4, align 4
  %772 = icmp ult i32 %770, %771
  %773 = zext i1 %772 to i32
  %774 = load i16, i16* @g_45, align 2
  %775 = zext i16 %774 to i32
  %776 = xor i32 %775, %773
  %777 = trunc i32 %776 to i16
  store i16 %777, i16* @g_45, align 2
  %778 = zext i16 %777 to i32
  %779 = icmp ne i32 %778, 0
  br label %780

780:                                              ; preds = %766, %574
  %781 = phi i1 [ false, %574 ], [ %779, %766 ]
  %782 = zext i1 %781 to i32
  %783 = trunc i32 %782 to i8
  %784 = call zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %783, i8 zeroext 1)
  %785 = icmp ne i8 %784, 0
  br i1 %785, label %786, label %800

786:                                              ; preds = %780
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %55, align 8
  store i16 0, i16* @g_242, align 2
  br label %787

787:                                              ; preds = %793, %786
  %788 = load i16, i16* @g_242, align 2
  %789 = zext i16 %788 to i32
  %790 = icmp sle i32 %789, 2
  br i1 %790, label %791, label %798

791:                                              ; preds = %787
  %792 = load i32*, i32** %55, align 8
  store i32* %792, i32** %51, align 8
  br label %793

793:                                              ; preds = %791
  %794 = load i16, i16* @g_242, align 2
  %795 = zext i16 %794 to i32
  %796 = add nsw i32 %795, 1
  %797 = trunc i32 %796 to i16
  store i16 %797, i16* @g_242, align 2
  br label %787

798:                                              ; preds = %787
  %799 = load i32*, i32** %55, align 8
  store i32* %799, i32** %3, align 8
  br label %937

800:                                              ; preds = %780
  store i8* %23, i8** %56, align 8
  %801 = load i32, i32* %5, align 4
  %802 = load i16**, i16*** %45, align 8
  %803 = icmp eq i16** %802, @g_1641
  %804 = zext i1 %803 to i32
  %805 = xor i32 %801, %804
  %806 = load i16, i16* getelementptr inbounds ([5 x [2 x i16]], [5 x [2 x i16]]* @g_1196, i64 0, i64 0, i64 1), align 2
  %807 = sext i16 %806 to i32
  %808 = load i8, i8* @g_1131, align 1
  %809 = add i8 %808, -1
  store i8 %809, i8* @g_1131, align 1
  %810 = zext i8 %808 to i32
  %811 = load i64*, i64** @g_1700, align 8
  %812 = load i64, i64* %811, align 8
  %813 = load i32, i32* %4, align 4
  %814 = load i32, i32* %43, align 4
  %815 = load i8*, i8** %56, align 8
  store i8 33, i8* %815, align 1
  %816 = load i32, i32* %5, align 4
  %817 = sext i32 %816 to i64
  %818 = xor i64 %817, -2
  %819 = icmp ne i64 33, %818
  %820 = zext i1 %819 to i32
  %821 = icmp sle i32 %814, %820
  %822 = zext i1 %821 to i32
  %823 = sext i32 %822 to i64
  %824 = load i64***, i64**** @g_1029, align 8
  %825 = load i64**, i64*** %824, align 8
  %826 = load i64*, i64** %825, align 8
  %827 = load i64, i64* %826, align 8
  %828 = and i64 %823, %827
  %829 = load i32, i32* %5, align 4
  %830 = trunc i32 %829 to i8
  %831 = load i32, i32* %4, align 4
  %832 = trunc i32 %831 to i8
  %833 = call signext i8 @safe_sub_func_int8_t_s_s(i8 signext %830, i8 signext %832)
  %834 = sext i8 %833 to i32
  %835 = load i32, i32* %5, align 4
  %836 = icmp sgt i32 %834, %835
  %837 = zext i1 %836 to i32
  %838 = icmp eq i32 %813, %837
  br i1 %838, label %843, label %839

839:                                              ; preds = %800
  %840 = load i64*, i64** @g_1700, align 8
  %841 = load i64, i64* %840, align 8
  %842 = icmp ne i64 %841, 0
  br label %843

843:                                              ; preds = %839, %800
  %844 = phi i1 [ true, %800 ], [ %842, %839 ]
  %845 = zext i1 %844 to i32
  %846 = load i32, i32* %5, align 4
  %847 = or i32 %845, %846
  %848 = trunc i32 %847 to i8
  %849 = call zeroext i8 @safe_lshift_func_uint8_t_u_u(i8 zeroext %848, i32 7)
  %850 = zext i8 %849 to i32
  %851 = icmp ne i32 %850, 0
  br i1 %851, label %852, label %853

852:                                              ; preds = %843
  br label %853

853:                                              ; preds = %852, %843
  %854 = phi i1 [ false, %843 ], [ true, %852 ]
  %855 = zext i1 %854 to i32
  %856 = load i32, i32* %43, align 4
  %857 = xor i32 %855, %856
  %858 = load i64*, i64** %46, align 8
  %859 = icmp eq i64* %858, null
  %860 = zext i1 %859 to i32
  %861 = load i16, i16* %24, align 2
  %862 = sext i16 %861 to i32
  %863 = and i32 %860, %862
  %864 = sext i32 %863 to i64
  %865 = xor i64 %812, %864
  %866 = load i32, i32* %5, align 4
  %867 = sext i32 %866 to i64
  %868 = icmp ule i64 %865, %867
  %869 = zext i1 %868 to i32
  %870 = and i32 %810, %869
  br i1 false, label %871, label %874

871:                                              ; preds = %853
  %872 = load i32, i32* %5, align 4
  %873 = icmp ne i32 %872, 0
  br label %874

874:                                              ; preds = %871, %853
  %875 = phi i1 [ false, %853 ], [ %873, %871 ]
  %876 = zext i1 %875 to i32
  %877 = load i16*, i16** @g_731, align 8
  %878 = load i16, i16* %877, align 2
  %879 = sext i16 %878 to i32
  %880 = icmp sgt i32 %807, %879
  %881 = zext i1 %880 to i32
  %882 = icmp sgt i32 %805, %881
  %883 = zext i1 %882 to i32
  %884 = load i32*, i32** %51, align 8
  store i32 %883, i32* %884, align 4
  br i1 %882, label %885, label %893

885:                                              ; preds = %874
  %886 = getelementptr inbounds [5 x [5 x i32*****]], [5 x [5 x i32*****]]* %27, i64 0, i64 2
  %887 = getelementptr inbounds [5 x i32*****], [5 x i32*****]* %886, i64 0, i64 1
  store i32***** null, i32****** %887, align 8
  %888 = load i32*, i32** %7, align 8
  store i32 1, i32* %888, align 4
  %889 = load i16, i16* %24, align 2
  %890 = icmp ne i16 %889, 0
  br i1 %890, label %891, label %892

891:                                              ; preds = %885
  br label %922

892:                                              ; preds = %885
  br label %906

893:                                              ; preds = %874
  %894 = load i32*****, i32****** %6, align 8
  %895 = load i32****, i32***** %894, align 8
  %896 = load i32***, i32**** %895, align 8
  %897 = load i32**, i32*** %896, align 8
  store i32* %50, i32** %897, align 8
  %898 = load i32****, i32***** @g_1516, align 8
  %899 = load i32***, i32**** %898, align 8
  %900 = load i32**, i32*** %899, align 8
  %901 = load i32*, i32** %900, align 8
  %902 = load i32, i32* %901, align 4
  %903 = icmp ne i32 %902, 0
  br i1 %903, label %904, label %905

904:                                              ; preds = %893
  br label %913

905:                                              ; preds = %893
  br label %906

906:                                              ; preds = %905, %892
  br label %907

907:                                              ; preds = %906
  br label %908

908:                                              ; preds = %907
  %909 = load i8, i8* %22, align 1
  %910 = sext i8 %909 to i32
  %911 = add nsw i32 %910, 1
  %912 = trunc i32 %911 to i8
  store i8 %912, i8* %22, align 1
  br label %570

913:                                              ; preds = %904, %570
  br label %914

914:                                              ; preds = %913
  %915 = load i8, i8* @g_265, align 1
  %916 = call zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %915, i8 zeroext 7)
  store i8 %916, i8* @g_265, align 1
  br label %565

917:                                              ; preds = %565
  br label %918

918:                                              ; preds = %917
  %919 = load i64, i64* @g_1399, align 8
  %920 = call i64 @safe_add_func_uint64_t_u_u(i64 %919, i64 8)
  store i64 %920, i64* @g_1399, align 8
  br label %69

921:                                              ; preds = %69
  br label %922

922:                                              ; preds = %921, %891
  store i32 0, i32* @g_115, align 4
  br label %923

923:                                              ; preds = %928, %922
  %924 = load i32, i32* @g_115, align 4
  %925 = icmp uge i32 %924, 41
  br i1 %925, label %926, label %933

926:                                              ; preds = %923
  store i32* getelementptr inbounds ([7 x i32], [7 x i32]* @g_112, i64 0, i64 6), i32** %57, align 8
  %927 = load i32*, i32** %57, align 8
  store i32* %927, i32** %3, align 8
  br label %937

928:                                              ; No predecessors!
  %929 = load i32, i32* @g_115, align 4
  %930 = zext i32 %929 to i64
  %931 = call i64 @safe_add_func_uint64_t_u_u(i64 %930, i64 7)
  %932 = trunc i64 %931 to i32
  store i32 %932, i32* @g_115, align 4
  br label %923

933:                                              ; preds = %923
  %934 = load i8, i8* %17, align 1
  %935 = add i8 %934, 1
  store i8 %935, i8* %17, align 1
  %936 = load i32*, i32** getelementptr inbounds ([1 x [2 x [6 x i32*]]], [1 x [2 x [6 x i32*]]]* @g_1864, i64 0, i64 0, i64 1, i64 0), align 16
  store i32* %936, i32** %3, align 8
  br label %937

937:                                              ; preds = %933, %926, %798, %131
  %938 = load i32*, i32** %3, align 8
  ret i32* %938
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @safe_mod_func_uint8_t_u_u(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  br label %17

11:                                               ; preds = %2
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = srem i32 %13, %15
  br label %17

17:                                               ; preds = %11, %8
  %18 = phi i32 [ %10, %8 ], [ %16, %11 ]
  %19 = trunc i32 %18 to i8
  ret i8 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @safe_lshift_func_uint8_t_u_s(i8 zeroext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 32
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 255, %13
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %7, %2
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  br label %24

19:                                               ; preds = %10
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 %21, %22
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i32 [ %18, %16 ], [ %23, %19 ]
  %26 = trunc i32 %25 to i8
  ret i8 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safe_sub_func_int64_t_s_s(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = xor i64 %5, %6
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = xor i64 %9, %10
  %12 = and i64 %11, -9223372036854775808
  %13 = xor i64 %8, %12
  %14 = load i64, i64* %4, align 8
  %15 = sub nsw i64 %13, %14
  %16 = load i64, i64* %4, align 8
  %17 = xor i64 %15, %16
  %18 = and i64 %7, %17
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* %3, align 8
  br label %26

22:                                               ; preds = %2
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = sub nsw i64 %23, %24
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i64 [ %21, %20 ], [ %25, %22 ]
  ret i64 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @safe_mul_func_int16_t_s_s(i16 signext %0, i16 signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i32
  %9 = mul nsw i32 %6, %8
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @safe_mod_func_int16_t_s_s(i16 signext %0, i16 signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = sext i16 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i16, i16* %3, align 2
  %10 = sext i16 %9 to i32
  %11 = icmp eq i32 %10, -32768
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i16, i16* %4, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i16, i16* %3, align 2
  %18 = sext i16 %17 to i32
  br label %25

19:                                               ; preds = %12, %8
  %20 = load i16, i16* %3, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* %4, align 2
  %23 = sext i16 %22 to i32
  %24 = srem i32 %21, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %18, %16 ], [ %24, %19 ]
  %27 = trunc i32 %26 to i16
  ret i16 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @safe_add_func_int16_t_s_s(i16 signext %0, i16 signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = load i16, i16* %4, align 2
  %8 = sext i16 %7 to i32
  %9 = add nsw i32 %6, %8
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @safe_div_func_int8_t_s_s(i8 signext %0, i8 signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i8, i8* %3, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, -128
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i8, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %2
  %17 = load i8, i8* %3, align 1
  %18 = sext i8 %17 to i32
  br label %25

19:                                               ; preds = %12, %8
  %20 = load i8, i8* %3, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* %4, align 1
  %23 = sext i8 %22 to i32
  %24 = sdiv i32 %21, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %18, %16 ], [ %24, %19 ]
  %27 = trunc i32 %26 to i8
  ret i8 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @safe_sub_func_uint16_t_u_u(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = zext i16 %5 to i32
  %7 = load i16, i16* %4, align 2
  %8 = zext i16 %7 to i32
  %9 = sub nsw i32 %6, %8
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @safe_rshift_func_int16_t_s_s(i16 signext %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 32
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %8, %2
  %15 = load i16, i16* %3, align 2
  %16 = sext i16 %15 to i32
  br label %22

17:                                               ; preds = %11
  %18 = load i16, i16* %3, align 2
  %19 = sext i16 %18 to i32
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %19, %20
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i32 [ %16, %14 ], [ %21, %17 ]
  %24 = trunc i32 %23 to i16
  ret i16 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @safe_mul_func_uint8_t_u_u(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = mul i32 %6, %8
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @safe_add_func_uint8_t_u_u(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = add nsw i32 %6, %8
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @safe_lshift_func_int16_t_s_u(i16 signext %0, i32 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %5 = load i16, i16* %3, align 2

""" 
    #test tokenizer
    tokenized, types = get_llvm_tokens_and_types(fn)
    print(f"len{len(tokenized)}")

    detokenized = detokenize_llvm(tokenized)

    

