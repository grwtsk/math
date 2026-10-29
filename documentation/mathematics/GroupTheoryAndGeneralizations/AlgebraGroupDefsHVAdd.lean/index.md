# Algebra Group Defs HVAdd

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**117 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Defs/Variant7de786661c069e803153b675773683d2cf9eca1cc74ee25ff6660519463d23bd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f003d088fa05a121539a5354348460eebb30bd5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/AlgebraGroupDefsHVAdd.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [HVAdd](declarations/hvadd.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [HSMul](declarations/hsmul.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [VAdd](declarations/vadd.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [VSub](declarations/vsub.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [SMul](declarations/smul.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instHSMul](declarations/insthsmul.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `class` | [Inv](declarations/inv.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [leftMul](declarations/leftmul.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [rightMul](declarations/rightmul.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `class` | [IsLeftCancelMul](declarations/isleftcancelmul.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `class` | [IsRightCancelMul](declarations/isrightcancelmul.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `class` | [IsCancelMul](declarations/iscancelmul.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `class` | [IsLeftCancelAdd](declarations/isleftcanceladd.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `class` | [IsRightCancelAdd](declarations/isrightcanceladd.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [IsCancelAdd](declarations/iscanceladd.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mul_left_cancel](declarations/mul-left-cancel.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mul_left_cancel_iff](declarations/mul-left-cancel-iff.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mul_right_injective](declarations/mul-right-injective.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mul_right_inj](declarations/mul-right-inj.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mul_ne_mul_right](declarations/mul-ne-mul-right.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mul_right_cancel](declarations/mul-right-cancel.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mul_right_cancel_iff](declarations/mul-right-cancel-iff.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mul_left_injective](declarations/mul-left-injective.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mul_left_inj](declarations/mul-left-inj.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mul_ne_mul_left](declarations/mul-ne-mul-left.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `class` | [Semigroup](declarations/semigroup.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `class` | [AddSemigroup](declarations/addsemigroup.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [Semigroup.to_isAssociative](declarations/semigroup-to-isassociative.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `class` | [CommSemigroup](declarations/commsemigroup.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `class` | [AddCommSemigroup](declarations/addcommsemigroup.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mul_comm](declarations/mul-comm.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [CommSemigroup.to_isCommutative](declarations/commsemigroup-to-iscommutative.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [CommSemigroup.IsRightCancelMul.toIsLeftCancelMul](declarations/commsemigroup-isrightcancelmul-toisleftcancelmul.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [CommSemigroup.IsLeftCancelMul.toIsRightCancelMul](declarations/commsemigroup-isleftcancelmul-toisrightcancelmul.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [CommSemigroup.IsLeftCancelMul.toIsCancelMul](declarations/commsemigroup-isleftcancelmul-toiscancelmul.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [CommSemigroup.IsRightCancelMul.toIsCancelMul](declarations/commsemigroup-isrightcancelmul-toiscancelmul.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `class` | [LeftCancelSemigroup](declarations/leftcancelsemigroup.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `class` | [AddLeftCancelSemigroup](declarations/addleftcancelsemigroup.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `class` | [RightCancelSemigroup](declarations/rightcancelsemigroup.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `class` | [AddRightCancelSemigroup](declarations/addrightcancelsemigroup.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `class` | [MulOneClass](declarations/muloneclass.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `class` | [AddZeroClass](declarations/addzeroclass.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [MulOneClass.ext](declarations/muloneclass-ext.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [one_mul](declarations/one-mul.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mul_one](declarations/mul-one.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [npowRec](declarations/npowrec.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [nsmulRec](declarations/nsmulrec.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `class` | [AddMonoid](declarations/addmonoid.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `class` | [Monoid](declarations/monoid.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [Monoid.Pow](declarations/monoid-pow.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [AddMonoid.SMul](declarations/addmonoid-smul.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [npow_eq_pow](declarations/npow-eq-pow.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [pow_zero](declarations/pow-zero.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [pow_succ](declarations/pow-succ.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [left_inv_eq_right_inv](declarations/left-inv-eq-right-inv.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `class` | [AddCommMonoid](declarations/addcommmonoid.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `class` | [CommMonoid](declarations/commmonoid.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `class` | [AddLeftCancelMonoid](declarations/addleftcancelmonoid.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `class` | [LeftCancelMonoid](declarations/leftcancelmonoid.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `class` | [AddRightCancelMonoid](declarations/addrightcancelmonoid.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `class` | [RightCancelMonoid](declarations/rightcancelmonoid.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `class` | [AddCancelMonoid](declarations/addcancelmonoid.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `class` | [CancelMonoid](declarations/cancelmonoid.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `class` | [AddCancelCommMonoid](declarations/addcancelcommmonoid.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `class` | [CancelCommMonoid](declarations/cancelcommmonoid.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [zpowRec](declarations/zpowrec.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [zsmulRec](declarations/zsmulrec.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `class` | [InvolutiveNeg](declarations/involutiveneg.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `class` | [InvolutiveInv](declarations/involutiveinv.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [inv_inv](declarations/inv-inv.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [DivInvMonoid.div'](declarations/divinvmonoid-div.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `class` | [DivInvMonoid](declarations/divinvmonoid.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [SubNegMonoid.sub'](declarations/subnegmonoid-sub.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `class` | [SubNegMonoid](declarations/subnegmonoid.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [DivInvMonoid.Pow](declarations/divinvmonoid-pow.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [SubNegMonoid.SMulInt](declarations/subnegmonoid-smulint.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [zpow_eq_pow](declarations/zpow-eq-pow.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [zpow_zero](declarations/zpow-zero.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [zpow_ofNat](declarations/zpow-ofnat.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [zpow_negSucc](declarations/zpow-negsucc.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [negSucc_zsmul](declarations/negsucc-zsmul.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [div_eq_mul_inv](declarations/div-eq-mul-inv.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `class` | [NegZeroClass](declarations/negzeroclass.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `class` | [SubNegZeroMonoid](declarations/subnegzeromonoid.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `class` | [InvOneClass](declarations/invoneclass.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `class` | [DivInvOneMonoid](declarations/divinvonemonoid.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [inv_one](declarations/inv-one.md) | 1016 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `class` | [SubtractionMonoid](declarations/subtractionmonoid.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `class` | [DivisionMonoid](declarations/divisionmonoid.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [mul_inv_rev](declarations/mul-inv-rev.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [inv_eq_of_mul_eq_one_right](declarations/inv-eq-of-mul-eq-one-right.md) | 1057 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `class` | [SubtractionCommMonoid](declarations/subtractioncommmonoid.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `class` | [DivisionCommMonoid](declarations/divisioncommmonoid.md) | 1072 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `class` | [Group](declarations/group.md) | 1085 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `class` | [AddGroup](declarations/addgroup.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [mul_left_inv](declarations/mul-left-inv.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [inv_mul_self](declarations/inv-mul-self.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [inv_eq_of_mul](declarations/inv-eq-of-mul.md) | 1120 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [mul_right_inv](declarations/mul-right-inv.md) | 1124 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [mul_inv_self](declarations/mul-inv-self.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [inv_mul_cancel_left](declarations/inv-mul-cancel-left.md) | 1136 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [mul_inv_cancel_left](declarations/mul-inv-cancel-left.md) | 1142 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [mul_inv_cancel_right](declarations/mul-inv-cancel-right.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [inv_mul_cancel_right](declarations/inv-mul-cancel-right.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1168 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Group.toDivInvMonoid_injective](declarations/group-todivinvmonoid-injective.md) | 1176 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `class` | [AddCommGroup](declarations/addcommgroup.md) | 1182 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `class` | [CommGroup](declarations/commgroup.md) | 1187 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [CommGroup.toGroup_injective](declarations/commgroup-togroup-injective.md) | 1193 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 1209 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b69c163a5e7240cf550ff85e7b3bbaa1d3fb34850fc9b312ed56e1888f318f3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant7de786661c069e803153b675773683d2cf9eca1cc74ee25ff6660519463d23bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
