# Algebra Group Defs Namespaced HVAdd

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**117 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Defs/Variant44bb869a67aa76b8f5b9500e8c2381a65c3c89ff5c60041e32685ea3f109d1f3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94f1c538b336da8cbfce2a2ff534e145fbae559c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/AlgebraGroupDefsNamespacedHVAdd.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [HVAdd](declarations/hvadd.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [HSMul](declarations/hsmul.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [VAdd](declarations/vadd.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [VSub](declarations/vsub.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [SMul](declarations/smul.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instHSMul](declarations/insthsmul.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `class` | [Inv](declarations/inv.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [leftMul](declarations/leftmul.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [rightMul](declarations/rightmul.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `class` | [IsLeftCancelMul](declarations/isleftcancelmul.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `class` | [IsRightCancelMul](declarations/isrightcancelmul.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `class` | [IsCancelMul](declarations/iscancelmul.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `class` | [IsLeftCancelAdd](declarations/isleftcanceladd.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `class` | [IsRightCancelAdd](declarations/isrightcanceladd.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [IsCancelAdd](declarations/iscanceladd.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mul_left_cancel](declarations/mul-left-cancel.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mul_left_cancel_iff](declarations/mul-left-cancel-iff.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mul_right_injective](declarations/mul-right-injective.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mul_right_inj](declarations/mul-right-inj.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mul_ne_mul_right](declarations/mul-ne-mul-right.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mul_right_cancel](declarations/mul-right-cancel.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mul_right_cancel_iff](declarations/mul-right-cancel-iff.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mul_left_injective](declarations/mul-left-injective.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mul_left_inj](declarations/mul-left-inj.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mul_ne_mul_left](declarations/mul-ne-mul-left.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `class` | [Semigroup](declarations/semigroup.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `class` | [AddSemigroup](declarations/addsemigroup.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [Semigroup.to_isAssociative](declarations/semigroup-to-isassociative.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `class` | [CommSemigroup](declarations/commsemigroup.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `class` | [AddCommSemigroup](declarations/addcommsemigroup.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mul_comm](declarations/mul-comm.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [CommSemigroup.to_isCommutative](declarations/commsemigroup-to-iscommutative.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [CommSemigroup.IsRightCancelMul.toIsLeftCancelMul](declarations/commsemigroup-isrightcancelmul-toisleftcancelmul.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [CommSemigroup.IsLeftCancelMul.toIsRightCancelMul](declarations/commsemigroup-isleftcancelmul-toisrightcancelmul.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [CommSemigroup.IsLeftCancelMul.toIsCancelMul](declarations/commsemigroup-isleftcancelmul-toiscancelmul.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [CommSemigroup.IsRightCancelMul.toIsCancelMul](declarations/commsemigroup-isrightcancelmul-toiscancelmul.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `class` | [LeftCancelSemigroup](declarations/leftcancelsemigroup.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `class` | [AddLeftCancelSemigroup](declarations/addleftcancelsemigroup.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `class` | [RightCancelSemigroup](declarations/rightcancelsemigroup.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `class` | [AddRightCancelSemigroup](declarations/addrightcancelsemigroup.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `class` | [MulOneClass](declarations/muloneclass.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `class` | [AddZeroClass](declarations/addzeroclass.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [MulOneClass.ext](declarations/muloneclass-ext.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [one_mul](declarations/one-mul.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mul_one](declarations/mul-one.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [npowRec](declarations/npowrec.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [nsmulRec](declarations/nsmulrec.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `class` | [AddMonoid](declarations/addmonoid.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `class` | [Monoid](declarations/monoid.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [Monoid.Pow](declarations/monoid-pow.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [AddMonoid.SMul](declarations/addmonoid-smul.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [npow_eq_pow](declarations/npow-eq-pow.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [pow_zero](declarations/pow-zero.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [pow_succ](declarations/pow-succ.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [left_inv_eq_right_inv](declarations/left-inv-eq-right-inv.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `class` | [AddCommMonoid](declarations/addcommmonoid.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `class` | [CommMonoid](declarations/commmonoid.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `class` | [AddLeftCancelMonoid](declarations/addleftcancelmonoid.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `class` | [LeftCancelMonoid](declarations/leftcancelmonoid.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `class` | [AddRightCancelMonoid](declarations/addrightcancelmonoid.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `class` | [RightCancelMonoid](declarations/rightcancelmonoid.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `class` | [AddCancelMonoid](declarations/addcancelmonoid.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `class` | [CancelMonoid](declarations/cancelmonoid.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `class` | [AddCancelCommMonoid](declarations/addcancelcommmonoid.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `class` | [CancelCommMonoid](declarations/cancelcommmonoid.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [zpowRec](declarations/zpowrec.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [zsmulRec](declarations/zsmulrec.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `class` | [InvolutiveNeg](declarations/involutiveneg.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `class` | [InvolutiveInv](declarations/involutiveinv.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [inv_inv](declarations/inv-inv.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [DivInvMonoid.div'](declarations/divinvmonoid-div.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `class` | [DivInvMonoid](declarations/divinvmonoid.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [SubNegMonoid.sub'](declarations/subnegmonoid-sub.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `class` | [SubNegMonoid](declarations/subnegmonoid.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [DivInvMonoid.Pow](declarations/divinvmonoid-pow.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [SubNegMonoid.SMulInt](declarations/subnegmonoid-smulint.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [zpow_eq_pow](declarations/zpow-eq-pow.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [zpow_zero](declarations/zpow-zero.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [zpow_ofNat](declarations/zpow-ofnat.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [zpow_negSucc](declarations/zpow-negsucc.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [negSucc_zsmul](declarations/negsucc-zsmul.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [div_eq_mul_inv](declarations/div-eq-mul-inv.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `class` | [NegZeroClass](declarations/negzeroclass.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `class` | [SubNegZeroMonoid](declarations/subnegzeromonoid.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `class` | [InvOneClass](declarations/invoneclass.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `class` | [DivInvOneMonoid](declarations/divinvonemonoid.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [inv_one](declarations/inv-one.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `class` | [SubtractionMonoid](declarations/subtractionmonoid.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `class` | [DivisionMonoid](declarations/divisionmonoid.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [mul_inv_rev](declarations/mul-inv-rev.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [inv_eq_of_mul_eq_one_right](declarations/inv-eq-of-mul-eq-one-right.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `class` | [SubtractionCommMonoid](declarations/subtractioncommmonoid.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `class` | [DivisionCommMonoid](declarations/divisioncommmonoid.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `class` | [Group](declarations/group.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `class` | [AddGroup](declarations/addgroup.md) | 1105 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [mul_left_inv](declarations/mul-left-inv.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [inv_mul_self](declarations/inv-mul-self.md) | 1122 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [inv_eq_of_mul](declarations/inv-eq-of-mul.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [mul_right_inv](declarations/mul-right-inv.md) | 1132 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [mul_inv_self](declarations/mul-inv-self.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [inv_mul_cancel_left](declarations/inv-mul-cancel-left.md) | 1144 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [mul_inv_cancel_left](declarations/mul-inv-cancel-left.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [mul_inv_cancel_right](declarations/mul-inv-cancel-right.md) | 1156 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [inv_mul_cancel_right](declarations/inv-mul-cancel-right.md) | 1162 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 1168 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [(anonymous)](declarations/instance.md) | 1176 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Group.toDivInvMonoid_injective](declarations/group-todivinvmonoid-injective.md) | 1184 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `class` | [AddCommGroup](declarations/addcommgroup.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `class` | [CommGroup](declarations/commgroup.md) | 1195 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [CommGroup.toGroup_injective](declarations/commgroup-togroup-injective.md) | 1201 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 1212 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1217 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdbf900157f399a562de2623fa170c7442d8f9288dfa4d3e450dedf53d09cc3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant44bb869a67aa76b8f5b9500e8c2381a65c3c89ff5c60041e32685ea3f109d1f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
