# Algebra Group Defs Add Comm Magma

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**156 observed declarations and anonymous commands**, 79 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9616cb3e7e2a09560f7e41c0b5ac43aef8caf9af`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/AlgebraGroupDefsAddCommMagma.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leftMul](declarations/leftmul.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rightMul](declarations/rightmul.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [IsLeftCancelMul](declarations/isleftcancelmul.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [IsRightCancelMul](declarations/isrightcancelmul.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [IsCancelMul](declarations/iscancelmul.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `class` | [IsLeftCancelAdd](declarations/isleftcanceladd.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `class` | [IsRightCancelAdd](declarations/isrightcanceladd.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [IsCancelAdd](declarations/iscanceladd.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mul_left_cancel](declarations/mul-left-cancel.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mul_left_cancel_iff](declarations/mul-left-cancel-iff.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul_right_injective](declarations/mul-right-injective.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mul_right_inj](declarations/mul-right-inj.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mul_ne_mul_right](declarations/mul-ne-mul-right.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mul_right_cancel](declarations/mul-right-cancel.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mul_right_cancel_iff](declarations/mul-right-cancel-iff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mul_left_injective](declarations/mul-left-injective.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mul_left_inj](declarations/mul-left-inj.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mul_ne_mul_left](declarations/mul-ne-mul-left.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `class` | [Semigroup](declarations/semigroup.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `class` | [AddSemigroup](declarations/addsemigroup.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `class` | [AddCommMagma](declarations/addcommmagma.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `class` | [CommMagma](declarations/commmagma.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `class` | [CommSemigroup](declarations/commsemigroup.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `class` | [AddCommSemigroup](declarations/addcommsemigroup.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mul_comm](declarations/mul-comm.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [CommMagma.IsRightCancelMul.toIsLeftCancelMul](declarations/commmagma-isrightcancelmul-toisleftcancelmul.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [CommMagma.IsLeftCancelMul.toIsRightCancelMul](declarations/commmagma-isleftcancelmul-toisrightcancelmul.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [CommMagma.IsLeftCancelMul.toIsCancelMul](declarations/commmagma-isleftcancelmul-toiscancelmul.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [CommMagma.IsRightCancelMul.toIsCancelMul](declarations/commmagma-isrightcancelmul-toiscancelmul.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `class` | [LeftCancelSemigroup](declarations/leftcancelsemigroup.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `class` | [AddLeftCancelSemigroup](declarations/addleftcancelsemigroup.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `class` | [RightCancelSemigroup](declarations/rightcancelsemigroup.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `class` | [AddRightCancelSemigroup](declarations/addrightcancelsemigroup.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `class` | [MulOneClass](declarations/muloneclass.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `class` | [AddZeroClass](declarations/addzeroclass.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [MulOneClass.ext](declarations/muloneclass-ext.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [one_mul](declarations/one-mul.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mul_one](declarations/mul-one.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [npowRec](declarations/npowrec.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [nsmulRec](declarations/nsmulrec-source-edition-2.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [npowRec_add](declarations/npowrec-add.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [npowRec_succ](declarations/npowrec-succ-source-edition-2.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [npowBinRec](declarations/npowbinrec.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [npowRec'](declarations/npowrec-source-edition-2.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [nsmulRec'](declarations/nsmulrec.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [npowRec'_succ](declarations/npowrec-succ.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [npowRec'_two_mul](declarations/npowrec-two-mul.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [npowRec'_mul_comm](declarations/npowrec-mul-comm.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [npowRec_eq](declarations/npowrec-eq.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [npowBinRec.go_spec](declarations/npowbinrec-go-spec.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `abbrev` | [npowRecAuto](declarations/npowrecauto.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `abbrev` | [npowBinRecAuto](declarations/npowbinrecauto.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [npowRec_eq_npowBinRec](declarations/npowrec-eq-npowbinrec.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `class` | [AddMonoid](declarations/addmonoid.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `class` | [Monoid](declarations/monoid.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [Monoid.toNatPow](declarations/monoid-tonatpow.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [AddMonoid.toNatSMul](declarations/addmonoid-tonatsmul.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [npow_eq_pow](declarations/npow-eq-pow.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [left_inv_eq_right_inv](declarations/left-inv-eq-right-inv.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [pow_zero](declarations/pow-zero.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [pow_succ](declarations/pow-succ-source-edition-2.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [pow_one](declarations/pow-one.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [pow_succ'](declarations/pow-succ.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [mul_pow_mul](declarations/mul-pow-mul.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [pow_mul_comm'](declarations/pow-mul-comm-source-edition-2.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [pow_two](declarations/pow-two.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [pow_three'](declarations/pow-three.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [pow_three](declarations/pow-three-source-edition-2.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [one_pow](declarations/one-pow.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [pow_add](declarations/pow-add.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [pow_mul_comm](declarations/pow-mul-comm.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [pow_mul](declarations/pow-mul.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [pow_mul'](declarations/pow-mul-source-edition-2.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [pow_right_comm](declarations/pow-right-comm.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `class` | [AddCommMonoid](declarations/addcommmonoid.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `class` | [CommMonoid](declarations/commmonoid.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `class` | [AddLeftCancelMonoid](declarations/addleftcancelmonoid.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `class` | [LeftCancelMonoid](declarations/leftcancelmonoid.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `class` | [AddRightCancelMonoid](declarations/addrightcancelmonoid.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `class` | [RightCancelMonoid](declarations/rightcancelmonoid.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `class` | [AddCancelMonoid](declarations/addcancelmonoid.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `class` | [CancelMonoid](declarations/cancelmonoid.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `class` | [AddCancelCommMonoid](declarations/addcancelcommmonoid.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `class` | [CancelCommMonoid](declarations/cancelcommmonoid.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [zpowRec](declarations/zpowrec.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [zsmulRec](declarations/zsmulrec.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `class` | [InvolutiveNeg](declarations/involutiveneg.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `class` | [InvolutiveInv](declarations/involutiveinv.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [inv_inv](declarations/inv-inv.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [DivInvMonoid.div'](declarations/divinvmonoid-div.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `class` | [DivInvMonoid](declarations/divinvmonoid.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [SubNegMonoid.sub'](declarations/subnegmonoid-sub.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `class` | [SubNegMonoid](declarations/subnegmonoid.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [DivInvMonoid.toZPow](declarations/divinvmonoid-tozpow.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [SubNegMonoid.toZSMul](declarations/subnegmonoid-tozsmul.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `class` | [IsAddCyclic](declarations/isaddcyclic.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `class` | [IsCyclic](declarations/iscyclic.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [exists_zpow_surjective](declarations/exists-zpow-surjective.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [zpow_eq_pow](declarations/zpow-eq-pow.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [zpow_zero](declarations/zpow-zero.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [zpow_natCast](declarations/zpow-natcast.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [zpow_ofNat](declarations/zpow-ofnat.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [zpow_negSucc](declarations/zpow-negsucc.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [negSucc_zsmul](declarations/negsucc-zsmul.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [div_eq_mul_inv](declarations/div-eq-mul-inv.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [inv_eq_one_div](declarations/inv-eq-one-div.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [mul_div_assoc](declarations/mul-div-assoc.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [one_div](declarations/one-div.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [zpow_one](declarations/zpow-one.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [zpow_two](declarations/zpow-two.md) | 961 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [zpow_neg_one](declarations/zpow-neg-one.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [zpow_neg_coe_of_pos](declarations/zpow-neg-coe-of-pos.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `class` | [NegZeroClass](declarations/negzeroclass.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `class` | [SubNegZeroMonoid](declarations/subnegzeromonoid.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `class` | [InvOneClass](declarations/invoneclass.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `class` | [DivInvOneMonoid](declarations/divinvonemonoid.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [inv_one](declarations/inv-one.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `class` | [SubtractionMonoid](declarations/subtractionmonoid.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `class` | [DivisionMonoid](declarations/divisionmonoid.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [mul_inv_rev](declarations/mul-inv-rev.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [inv_eq_of_mul_eq_one_right](declarations/inv-eq-of-mul-eq-one-right.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [inv_eq_of_mul_eq_one_left](declarations/inv-eq-of-mul-eq-one-left.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [eq_inv_of_mul_eq_one_left](declarations/eq-inv-of-mul-eq-one-left.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `class` | [SubtractionCommMonoid](declarations/subtractioncommmonoid.md) | 1041 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `class` | [DivisionCommMonoid](declarations/divisioncommmonoid.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `class` | [Group](declarations/group.md) | 1057 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `class` | [AddGroup](declarations/addgroup.md) | 1068 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [inv_mul_cancel](declarations/inv-mul-cancel.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [inv_eq_of_mul](declarations/inv-eq-of-mul.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [mul_inv_cancel](declarations/mul-inv-cancel.md) | 1086 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [div_self'](declarations/div-self.md) | 1090 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [inv_mul_cancel_left](declarations/inv-mul-cancel-left.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [mul_inv_cancel_left](declarations/mul-inv-cancel-left.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [mul_inv_cancel_right](declarations/mul-inv-cancel-right.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [mul_div_cancel_right](declarations/mul-div-cancel-right.md) | 1105 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [inv_mul_cancel_right](declarations/inv-mul-cancel-right.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [div_mul_cancel](declarations/div-mul-cancel.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 1117 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 1125 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `class` | [AddCommGroup](declarations/addcommgroup.md) | 1133 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `class` | [CommGroup](declarations/commgroup.md) | 1137 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 1145 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `instance` | [(anonymous)](declarations/instance.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `lemma` | [inv_mul_cancel_comm](declarations/inv-mul-cancel-comm.md) | 1153 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [mul_inv_cancel_comm](declarations/mul-inv-cancel-comm.md) | 1157 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [inv_mul_cancel_comm_assoc](declarations/inv-mul-cancel-comm-assoc.md) | 1159 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `lemma` | [mul_inv_cancel_comm_assoc](declarations/mul-inv-cancel-comm-assoc.md) | 1162 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `class` | [IsAddCommutative](declarations/isaddcommutative.md) | 1170 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `class` | [IsMulCommutative](declarations/ismulcommutative.md) | 1175 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 1179 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0df01a867eab9c1082c533c57f3f4a3c9e91001a1eaaa5a67f9014056ca9f585 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
