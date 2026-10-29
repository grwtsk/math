# Group Hom Defs Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**154 observed declarations and anonymous commands**, 100 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Defs/Variantfb61e196035c867aa7094e669388dd253fa68985b306aed055b164a207e1e65d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a68ceddfbce3c61d0647ec6a830a5639066ca61a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupHomDefsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ZeroHom](declarations/zerohom.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [ZeroHomClass](declarations/zerohomclass.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [AddHom](declarations/addhom.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [AddHomClass](declarations/addhomclass.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AddMonoidHom](declarations/addmonoidhom.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `class` | [AddMonoidHomClass](declarations/addmonoidhomclass.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [OneHom](declarations/onehom.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [OneHomClass](declarations/onehomclass.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [OneHom.funLike](declarations/onehom-funlike.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [OneHom.oneHomClass](declarations/onehom-onehomclass.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [map_one](declarations/map-one.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [map_comp_one](declarations/map-comp-one.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Subsingleton.of_oneHomClass](declarations/subsingleton-of-onehomclass.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_eq_one_iff](declarations/map-eq-one-iff.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_ne_one_iff](declarations/map-ne-one-iff.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ne_one_of_map](declarations/ne-one-of-map.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [OneHomClass.toOneHom](declarations/onehomclass-toonehom.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [OneHom.coe_coe](declarations/onehom-coe-coe.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [MulHom](declarations/mulhom.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `class` | [MulHomClass](declarations/mulhomclass.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [MulHom.funLike](declarations/mulhom-funlike.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [MulHom.mulHomClass](declarations/mulhom-mulhomclass.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_mul](declarations/map-mul.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [map_comp_mul](declarations/map-comp-mul.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [MulHomClass.toMulHom](declarations/mulhomclass-tomulhom.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [MulHom.coe_coe](declarations/mulhom-coe-coe.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [MonoidHom](declarations/monoidhom.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `class` | [MonoidHomClass](declarations/monoidhomclass.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [MonoidHom.instFunLike](declarations/monoidhom-instfunlike.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [MonoidHom.instMonoidHomClass](declarations/monoidhom-instmonoidhomclass.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [MonoidHomClass.toMonoidHom](declarations/monoidhomclass-tomonoidhom.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [MonoidHom.coe_coe](declarations/monoidhom-coe-coe.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [map_mul_eq_one](declarations/map-mul-eq-one.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [map_div'](declarations/map-div-source-edition-3.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [map_comp_div'](declarations/map-comp-div.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_inv](declarations/map-inv.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [map_comp_inv](declarations/map-comp-inv.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [map_mul_inv](declarations/map-mul-inv-source-edition-2.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [map_comp_mul_inv](declarations/map-comp-mul-inv.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [map_div](declarations/map-div.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [map_comp_div](declarations/map-comp-div-source-edition-2.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_pow](declarations/map-pow.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [map_comp_pow](declarations/map-comp-pow.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_zpow'](declarations/map-zpow.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [map_comp_zpow'](declarations/map-comp-zpow.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [map_zpow](declarations/map-zpow-source-edition-3.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [map_comp_zpow](declarations/map-comp-zpow-source-edition-2.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [MonoidHom.coeToOneHom](declarations/monoidhom-coetoonehom.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [MonoidHom.coeToMulHom](declarations/monoidhom-coetomulhom.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [OneHom.coe_mk](declarations/onehom-coe-mk.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [OneHom.toFun_eq_coe](declarations/onehom-tofun-eq-coe.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [MulHom.coe_mk](declarations/mulhom-coe-mk.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [MulHom.toFun_eq_coe](declarations/mulhom-tofun-eq-coe.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [MonoidHom.coe_mk](declarations/monoidhom-coe-mk.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [MonoidHom.toOneHom_coe](declarations/monoidhom-toonehom-coe.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [MonoidHom.toMulHom_coe](declarations/monoidhom-tomulhom-coe.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [MonoidHom.toFun_eq_coe](declarations/monoidhom-tofun-eq-coe.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [OneHom.ext](declarations/onehom-ext.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [MulHom.ext](declarations/mulhom-ext.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [MonoidHom.ext](declarations/monoidhom-ext.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [mk'](declarations/mk.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [OneHom.mk_coe](declarations/onehom-mk-coe.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [MulHom.mk_coe](declarations/mulhom-mk-coe.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [MonoidHom.mk_coe](declarations/monoidhom-mk-coe.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [OneHom.copy](declarations/onehom-copy.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [OneHom.coe_copy](declarations/onehom-coe-copy.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [OneHom.coe_copy_eq](declarations/onehom-coe-copy-eq.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [MulHom.copy](declarations/mulhom-copy.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [MulHom.coe_copy](declarations/mulhom-coe-copy.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [MulHom.coe_copy_eq](declarations/mulhom-coe-copy-eq.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [MonoidHom.copy](declarations/monoidhom-copy.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [MonoidHom.coe_copy](declarations/monoidhom-coe-copy.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [MonoidHom.copy_eq](declarations/monoidhom-copy-eq.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [OneHom.map_one](declarations/onehom-map-one.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [MonoidHom.map_one](declarations/monoidhom-map-one.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [MulHom.map_mul](declarations/mulhom-map-mul.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [MonoidHom.map_mul](declarations/monoidhom-map-mul.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [map_exists_right_inv](declarations/map-exists-right-inv.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [map_exists_left_inv](declarations/map-exists-left-inv.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [OneHom.id](declarations/onehom-id.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [MulHom.id](declarations/mulhom-id.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [MonoidHom.id](declarations/monoidhom-id.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [OneHom.coe_id](declarations/onehom-coe-id.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [MulHom.coe_id](declarations/mulhom-coe-id.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [MonoidHom.coe_id](declarations/monoidhom-coe-id.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [OneHom.comp](declarations/onehom-comp.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [MulHom.comp](declarations/mulhom-comp.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [MonoidHom.comp](declarations/monoidhom-comp.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [OneHom.coe_comp](declarations/onehom-coe-comp.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [MulHom.coe_comp](declarations/mulhom-coe-comp.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [MonoidHom.coe_comp](declarations/monoidhom-coe-comp.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [OneHom.comp_apply](declarations/onehom-comp-apply.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [MulHom.comp_apply](declarations/mulhom-comp-apply.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [MonoidHom.comp_apply](declarations/monoidhom-comp-apply.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [OneHom.comp_assoc](declarations/onehom-comp-assoc.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [MulHom.comp_assoc](declarations/mulhom-comp-assoc.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [MonoidHom.comp_assoc](declarations/monoidhom-comp-assoc.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [OneHom.cancel_right](declarations/onehom-cancel-right.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [MulHom.cancel_right](declarations/mulhom-cancel-right.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [MonoidHom.cancel_right](declarations/monoidhom-cancel-right.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [OneHom.cancel_left](declarations/onehom-cancel-left.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [MulHom.cancel_left](declarations/mulhom-cancel-left.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [MonoidHom.cancel_left](declarations/monoidhom-cancel-left.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [MonoidHom.toOneHom_injective](declarations/monoidhom-toonehom-injective.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [MonoidHom.toMulHom_injective](declarations/monoidhom-tomulhom-injective.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [OneHom.comp_id](declarations/onehom-comp-id.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [MulHom.comp_id](declarations/mulhom-comp-id.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [MonoidHom.comp_id](declarations/monoidhom-comp-id.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [OneHom.id_comp](declarations/onehom-id-comp.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [MulHom.id_comp](declarations/mulhom-id-comp.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [MonoidHom.id_comp](declarations/monoidhom-id-comp.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [MonoidHom.map_pow](declarations/monoidhom-map-pow.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [MonoidHom.map_zpow'](declarations/monoidhom-map-zpow.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [OneHom.inverse](declarations/onehom-inverse.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [MulHom.inverse](declarations/mulhom-inverse.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [Function.Surjective.mul_comm](declarations/function-surjective-mul-comm.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [MonoidHom.inverse](declarations/monoidhom-inverse.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [End](declarations/end.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `instance` | [instFunLike](declarations/instfunlike.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `instance` | [instMonoidHomClass](declarations/instmonoidhomclass.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [instOne](declarations/instone.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `instance` | [instMul](declarations/instmul.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `instance` | [instMonoid](declarations/instmonoid.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `lemma` | [coe_pow](declarations/coe-pow.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [coe_one](declarations/coe-one.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [coe_mul](declarations/coe-mul.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [OneHom.one_apply](declarations/onehom-one-apply.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [MonoidHom.one_apply](declarations/monoidhom-one-apply.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [OneHom.one_comp](declarations/onehom-one-comp.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [OneHom.comp_one](declarations/onehom-comp-one.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [one_comp](declarations/one-comp.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [comp_one](declarations/comp-one.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [map_inv](declarations/map-inv-source-edition-2.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [map_zpow](declarations/map-zpow-source-edition-2.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [map_div](declarations/map-div-source-edition-2.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [map_mul_inv](declarations/map-mul-inv.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `lemma` | [iterate_map_mul](declarations/iterate-map-mul.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [iterate_map_one](declarations/iterate-map-one.md) | 1041 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [iterate_map_inv](declarations/iterate-map-inv.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `lemma` | [iterate_map_div](declarations/iterate-map-div.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `lemma` | [iterate_map_pow](declarations/iterate-map-pow.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `lemma` | [iterate_map_zpow](declarations/iterate-map-zpow.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6dd853f2b9dd92b8838231edd064880099c6ce4aa8a4a1b5a92fe83ea4e52c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variantfb61e196035c867aa7094e669388dd253fa68985b306aed055b164a207e1e65d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
