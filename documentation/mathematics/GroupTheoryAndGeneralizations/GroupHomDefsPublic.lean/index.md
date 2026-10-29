# Group Hom Defs Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**160 observed declarations and anonymous commands**, 103 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Defs/Variantd52664f316c2cc3b8323f05b428ddfb4df5b48dc50b0d5e318f70c385255deeb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08ea8a26e80a36ecc853991ae0119013566ebdb1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupHomDefsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ZeroHom](declarations/zerohom.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [ZeroHomClass](declarations/zerohomclass.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [AddHom](declarations/addhom.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [AddHomClass](declarations/addhomclass.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AddMonoidHom](declarations/addmonoidhom.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `class` | [AddMonoidHomClass](declarations/addmonoidhomclass.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [OneHom](declarations/onehom.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [OneHomClass](declarations/onehomclass.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [OneHom.funLike](declarations/onehom-funlike.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [OneHom.oneHomClass](declarations/onehom-onehomclass.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [map_one](declarations/map-one.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [map_comp_one](declarations/map-comp-one.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Subsingleton.of_oneHomClass](declarations/subsingleton-of-onehomclass.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_eq_one_iff](declarations/map-eq-one-iff.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_ne_one_iff](declarations/map-ne-one-iff.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ne_one_of_map](declarations/ne-one-of-map.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [OneHomClass.toOneHom](declarations/onehomclass-toonehom.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [OneHom.coe_coe](declarations/onehom-coe-coe.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [MulHom](declarations/mulhom.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `class` | [MulHomClass](declarations/mulhomclass.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [MulHom.funLike](declarations/mulhom-funlike.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [MulHom.mulHomClass](declarations/mulhom-mulhomclass.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_mul](declarations/map-mul.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [map_comp_mul](declarations/map-comp-mul.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [MulHomClass.toMulHom](declarations/mulhomclass-tomulhom.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [MulHom.coe_coe](declarations/mulhom-coe-coe.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [MonoidHom](declarations/monoidhom.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `class` | [MonoidHomClass](declarations/monoidhomclass.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [MonoidHom.instFunLike](declarations/monoidhom-instfunlike.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [MonoidHom.instMonoidHomClass](declarations/monoidhom-instmonoidhomclass.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [MonoidHomClass.toMonoidHom](declarations/monoidhomclass-tomonoidhom.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [MonoidHom.coe_coe](declarations/monoidhom-coe-coe.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [map_mul_eq_one](declarations/map-mul-eq-one.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [map_div'](declarations/map-div-source-edition-2.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [map_comp_div'](declarations/map-comp-div-source-edition-2.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_inv](declarations/map-inv-source-edition-2.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [map_comp_inv](declarations/map-comp-inv.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [map_mul_inv](declarations/map-mul-inv.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [map_comp_mul_inv](declarations/map-comp-mul-inv.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [map_div](declarations/map-div.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [map_comp_div](declarations/map-comp-div.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_pow](declarations/map-pow.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [map_comp_pow](declarations/map-comp-pow.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_zpow'](declarations/map-zpow.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [map_comp_zpow'](declarations/map-comp-zpow.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [map_zpow](declarations/map-zpow-source-edition-3.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [map_comp_zpow](declarations/map-comp-zpow-source-edition-2.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Function.Injective.isMulTorsionFree](declarations/function-injective-ismultorsionfree.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [MonoidHom.coeToOneHom](declarations/monoidhom-coetoonehom.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [MonoidHom.coeToMulHom](declarations/monoidhom-coetomulhom.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [OneHom.coe_mk](declarations/onehom-coe-mk.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [OneHom.toFun_eq_coe](declarations/onehom-tofun-eq-coe.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [MulHom.coe_mk](declarations/mulhom-coe-mk.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [MulHom.toFun_eq_coe](declarations/mulhom-tofun-eq-coe.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [MonoidHom.coe_mk](declarations/monoidhom-coe-mk.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [MonoidHom.toOneHom_coe](declarations/monoidhom-toonehom-coe.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [MonoidHom.toMulHom_coe](declarations/monoidhom-tomulhom-coe.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [MonoidHom.toFun_eq_coe](declarations/monoidhom-tofun-eq-coe.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [OneHom.ext](declarations/onehom-ext.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [MulHom.ext](declarations/mulhom-ext.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [MonoidHom.ext](declarations/monoidhom-ext.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [mk'](declarations/mk.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [OneHom.mk_coe](declarations/onehom-mk-coe.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [MulHom.mk_coe](declarations/mulhom-mk-coe.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [MonoidHom.mk_coe](declarations/monoidhom-mk-coe.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [OneHom.copy](declarations/onehom-copy.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [OneHom.coe_copy](declarations/onehom-coe-copy.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [OneHom.coe_copy_eq](declarations/onehom-coe-copy-eq.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [MulHom.copy](declarations/mulhom-copy.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [MulHom.coe_copy](declarations/mulhom-coe-copy.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [MulHom.coe_copy_eq](declarations/mulhom-coe-copy-eq.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [MonoidHom.copy](declarations/monoidhom-copy.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [MonoidHom.coe_copy](declarations/monoidhom-coe-copy.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [MonoidHom.copy_eq](declarations/monoidhom-copy-eq.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [OneHom.map_one](declarations/onehom-map-one.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [MonoidHom.map_one](declarations/monoidhom-map-one.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [MulHom.map_mul](declarations/mulhom-map-mul.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [MonoidHom.map_mul](declarations/monoidhom-map-mul.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [map_exists_right_inv](declarations/map-exists-right-inv.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [map_exists_left_inv](declarations/map-exists-left-inv.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [_root_.IsDedekindFiniteMonoid.of_injective](declarations/root-isdedekindfinitemonoid-of-injective.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [OneHom.id](declarations/onehom-id.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [MulHom.id](declarations/mulhom-id.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [MonoidHom.id](declarations/monoidhom-id.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [OneHom.coe_id](declarations/onehom-coe-id.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [MulHom.coe_id](declarations/mulhom-coe-id.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [MonoidHom.coe_id](declarations/monoidhom-coe-id.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [OneHom.comp](declarations/onehom-comp.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [MulHom.comp](declarations/mulhom-comp.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [MonoidHom.comp](declarations/monoidhom-comp.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [OneHom.coe_comp](declarations/onehom-coe-comp.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [MulHom.coe_comp](declarations/mulhom-coe-comp.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [MonoidHom.coe_comp](declarations/monoidhom-coe-comp.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [OneHom.comp_apply](declarations/onehom-comp-apply.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [MulHom.comp_apply](declarations/mulhom-comp-apply.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [MonoidHom.comp_apply](declarations/monoidhom-comp-apply.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [OneHom.comp_assoc](declarations/onehom-comp-assoc.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [MulHom.comp_assoc](declarations/mulhom-comp-assoc.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [MonoidHom.comp_assoc](declarations/monoidhom-comp-assoc.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [OneHom.cancel_right](declarations/onehom-cancel-right.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [MulHom.cancel_right](declarations/mulhom-cancel-right.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [MonoidHom.cancel_right](declarations/monoidhom-cancel-right.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [OneHom.cancel_left](declarations/onehom-cancel-left.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [MulHom.cancel_left](declarations/mulhom-cancel-left.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [MonoidHom.cancel_left](declarations/monoidhom-cancel-left.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [MonoidHom.toOneHom_injective](declarations/monoidhom-toonehom-injective.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [MonoidHom.toMulHom_injective](declarations/monoidhom-tomulhom-injective.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [OneHom.comp_id](declarations/onehom-comp-id.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [MulHom.comp_id](declarations/mulhom-comp-id.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [MonoidHom.comp_id](declarations/monoidhom-comp-id.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [OneHom.id_comp](declarations/onehom-id-comp.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [MulHom.id_comp](declarations/mulhom-id-comp.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [MonoidHom.id_comp](declarations/monoidhom-id-comp.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [MonoidHom.map_pow](declarations/monoidhom-map-pow.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [MonoidHom.map_zpow'](declarations/monoidhom-map-zpow.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [OneHom.inverse](declarations/onehom-inverse.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [MulHom.inverse](declarations/mulhom-inverse.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Function.Surjective.isMulCommutative](declarations/function-surjective-ismulcommutative.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [MonoidHom.inverse](declarations/monoidhom-inverse.md) | 947 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [End](declarations/end.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [instFunLike](declarations/instfunlike.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [ext](declarations/ext.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `instance` | [instMonoidHomClass](declarations/instmonoidhomclass.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [instOne](declarations/instone.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [instMul](declarations/instmul.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `instance` | [instMonoid](declarations/instmonoid.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [coe_pow](declarations/coe-pow.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [coe_one](declarations/coe-one.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [coe_mul](declarations/coe-mul.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [OneHom.one_apply](declarations/onehom-one-apply.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [MonoidHom.one_apply](declarations/monoidhom-one-apply.md) | 1026 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [OneHom.one_comp](declarations/onehom-one-comp.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [OneHom.comp_one](declarations/onehom-comp-one.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 1041 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [one_comp](declarations/one-comp.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [comp_one](declarations/comp-one.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [map_inv](declarations/map-inv.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [map_zpow](declarations/map-zpow-source-edition-2.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [map_div](declarations/map-div-source-edition-3.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [map_mul_inv](declarations/map-mul-inv-source-edition-2.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `lemma` | [iterate_map_mul](declarations/iterate-map-mul.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `lemma` | [iterate_map_one](declarations/iterate-map-one.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `lemma` | [iterate_map_inv](declarations/iterate-map-inv.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `lemma` | [iterate_map_div](declarations/iterate-map-div.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `lemma` | [iterate_map_pow](declarations/iterate-map-pow.md) | 1105 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `lemma` | [iterate_map_zpow](declarations/iterate-map-zpow.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75d57fea8b9c448ec31a763f8a1047ebb639d20ec62301f2edd22ab67d6be3fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variantd52664f316c2cc3b8323f05b428ddfb4df5b48dc50b0d5e318f70c385255deeb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
