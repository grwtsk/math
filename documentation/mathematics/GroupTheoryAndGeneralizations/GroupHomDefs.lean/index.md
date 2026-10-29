# Group Hom Defs

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**154 observed declarations and anonymous commands**, 100 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Defs/Variantcaffc0880b3b128bb8961a21ca0b6052176da2d3e419d102d3549f56d4dfc8f2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f4c202462554044f03c0ca86b27bb455fc9ab72`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupHomDefs.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ZeroHom](declarations/zerohom.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [ZeroHomClass](declarations/zerohomclass.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [AddHom](declarations/addhom.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [AddHomClass](declarations/addhomclass.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AddMonoidHom](declarations/addmonoidhom.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `class` | [AddMonoidHomClass](declarations/addmonoidhomclass.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [OneHom](declarations/onehom.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [OneHomClass](declarations/onehomclass.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [OneHom.funLike](declarations/onehom-funlike.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [OneHom.oneHomClass](declarations/onehom-onehomclass.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [map_one](declarations/map-one.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [map_comp_one](declarations/map-comp-one.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Subsingleton.of_oneHomClass](declarations/subsingleton-of-onehomclass.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_eq_one_iff](declarations/map-eq-one-iff.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_ne_one_iff](declarations/map-ne-one-iff.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ne_one_of_map](declarations/ne-one-of-map.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [OneHomClass.toOneHom](declarations/onehomclass-toonehom.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [OneHom.coe_coe](declarations/onehom-coe-coe.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [MulHom](declarations/mulhom.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `class` | [MulHomClass](declarations/mulhomclass.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [MulHom.funLike](declarations/mulhom-funlike.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [MulHom.mulHomClass](declarations/mulhom-mulhomclass.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_mul](declarations/map-mul.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [map_comp_mul](declarations/map-comp-mul.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [MulHomClass.toMulHom](declarations/mulhomclass-tomulhom.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [MulHom.coe_coe](declarations/mulhom-coe-coe.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [MonoidHom](declarations/monoidhom.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `class` | [MonoidHomClass](declarations/monoidhomclass.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [MonoidHom.instFunLike](declarations/monoidhom-instfunlike.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [MonoidHom.instMonoidHomClass](declarations/monoidhom-instmonoidhomclass.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [MonoidHomClass.toMonoidHom](declarations/monoidhomclass-tomonoidhom.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [MonoidHom.coe_coe](declarations/monoidhom-coe-coe.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [map_mul_eq_one](declarations/map-mul-eq-one.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [map_div'](declarations/map-div-source-edition-2.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [map_comp_div'](declarations/map-comp-div.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_inv](declarations/map-inv-source-edition-2.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [map_comp_inv](declarations/map-comp-inv.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [map_mul_inv](declarations/map-mul-inv-source-edition-2.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [map_comp_mul_inv](declarations/map-comp-mul-inv.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [map_div](declarations/map-div.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [map_comp_div](declarations/map-comp-div-source-edition-2.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_pow](declarations/map-pow.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [map_comp_pow](declarations/map-comp-pow.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_zpow'](declarations/map-zpow.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [map_comp_zpow'](declarations/map-comp-zpow-source-edition-2.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [map_zpow](declarations/map-zpow-source-edition-2.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [map_comp_zpow](declarations/map-comp-zpow.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [MonoidHom.coeToOneHom](declarations/monoidhom-coetoonehom.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [MonoidHom.coeToMulHom](declarations/monoidhom-coetomulhom.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [OneHom.coe_mk](declarations/onehom-coe-mk.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [OneHom.toFun_eq_coe](declarations/onehom-tofun-eq-coe.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [MulHom.coe_mk](declarations/mulhom-coe-mk.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [MulHom.toFun_eq_coe](declarations/mulhom-tofun-eq-coe.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [MonoidHom.coe_mk](declarations/monoidhom-coe-mk.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [MonoidHom.toOneHom_coe](declarations/monoidhom-toonehom-coe.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [MonoidHom.toMulHom_coe](declarations/monoidhom-tomulhom-coe.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [MonoidHom.toFun_eq_coe](declarations/monoidhom-tofun-eq-coe.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [OneHom.ext](declarations/onehom-ext.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [MulHom.ext](declarations/mulhom-ext.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [MonoidHom.ext](declarations/monoidhom-ext.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [mk'](declarations/mk.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [OneHom.mk_coe](declarations/onehom-mk-coe.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [MulHom.mk_coe](declarations/mulhom-mk-coe.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [MonoidHom.mk_coe](declarations/monoidhom-mk-coe.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [OneHom.copy](declarations/onehom-copy.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [OneHom.coe_copy](declarations/onehom-coe-copy.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [OneHom.coe_copy_eq](declarations/onehom-coe-copy-eq.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [MulHom.copy](declarations/mulhom-copy.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [MulHom.coe_copy](declarations/mulhom-coe-copy.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [MulHom.coe_copy_eq](declarations/mulhom-coe-copy-eq.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [MonoidHom.copy](declarations/monoidhom-copy.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [MonoidHom.coe_copy](declarations/monoidhom-coe-copy.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [MonoidHom.copy_eq](declarations/monoidhom-copy-eq.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [OneHom.map_one](declarations/onehom-map-one.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [MonoidHom.map_one](declarations/monoidhom-map-one.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [MulHom.map_mul](declarations/mulhom-map-mul.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [MonoidHom.map_mul](declarations/monoidhom-map-mul.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [map_exists_right_inv](declarations/map-exists-right-inv.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [map_exists_left_inv](declarations/map-exists-left-inv.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [OneHom.id](declarations/onehom-id.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [MulHom.id](declarations/mulhom-id.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [MonoidHom.id](declarations/monoidhom-id.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [OneHom.coe_id](declarations/onehom-coe-id.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [MulHom.coe_id](declarations/mulhom-coe-id.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [MonoidHom.coe_id](declarations/monoidhom-coe-id.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [OneHom.comp](declarations/onehom-comp.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [MulHom.comp](declarations/mulhom-comp.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [MonoidHom.comp](declarations/monoidhom-comp.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [OneHom.coe_comp](declarations/onehom-coe-comp.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [MulHom.coe_comp](declarations/mulhom-coe-comp.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [MonoidHom.coe_comp](declarations/monoidhom-coe-comp.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [OneHom.comp_apply](declarations/onehom-comp-apply.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [MulHom.comp_apply](declarations/mulhom-comp-apply.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [MonoidHom.comp_apply](declarations/monoidhom-comp-apply.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [OneHom.comp_assoc](declarations/onehom-comp-assoc.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [MulHom.comp_assoc](declarations/mulhom-comp-assoc.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [MonoidHom.comp_assoc](declarations/monoidhom-comp-assoc.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [OneHom.cancel_right](declarations/onehom-cancel-right.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [MulHom.cancel_right](declarations/mulhom-cancel-right.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [MonoidHom.cancel_right](declarations/monoidhom-cancel-right.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [OneHom.cancel_left](declarations/onehom-cancel-left.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [MulHom.cancel_left](declarations/mulhom-cancel-left.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [MonoidHom.cancel_left](declarations/monoidhom-cancel-left.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [MonoidHom.toOneHom_injective](declarations/monoidhom-toonehom-injective.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [MonoidHom.toMulHom_injective](declarations/monoidhom-tomulhom-injective.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [OneHom.comp_id](declarations/onehom-comp-id.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [MulHom.comp_id](declarations/mulhom-comp-id.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [MonoidHom.comp_id](declarations/monoidhom-comp-id.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [OneHom.id_comp](declarations/onehom-id-comp.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [MulHom.id_comp](declarations/mulhom-id-comp.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [MonoidHom.id_comp](declarations/monoidhom-id-comp.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [MonoidHom.map_pow](declarations/monoidhom-map-pow.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [MonoidHom.map_zpow'](declarations/monoidhom-map-zpow.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [OneHom.inverse](declarations/onehom-inverse.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [MulHom.inverse](declarations/mulhom-inverse.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [Function.Surjective.mul_comm](declarations/function-surjective-mul-comm.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [MonoidHom.inverse](declarations/monoidhom-inverse.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [End](declarations/end.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `instance` | [instFunLike](declarations/instfunlike.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `instance` | [instMonoidHomClass](declarations/instmonoidhomclass.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [instOne](declarations/instone.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `instance` | [instMul](declarations/instmul.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `instance` | [instMonoid](declarations/instmonoid.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `lemma` | [coe_pow](declarations/coe-pow.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [coe_one](declarations/coe-one.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [coe_mul](declarations/coe-mul.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `instance` | [(anonymous)](declarations/instance.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [OneHom.one_apply](declarations/onehom-one-apply.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [MonoidHom.one_apply](declarations/monoidhom-one-apply.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [OneHom.one_comp](declarations/onehom-one-comp.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [OneHom.comp_one](declarations/onehom-comp-one.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [one_comp](declarations/one-comp.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [comp_one](declarations/comp-one.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [map_inv](declarations/map-inv.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [map_zpow](declarations/map-zpow-source-edition-3.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [map_div](declarations/map-div-source-edition-3.md) | 1016 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [map_mul_inv](declarations/map-mul-inv.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `lemma` | [iterate_map_mul](declarations/iterate-map-mul.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [iterate_map_one](declarations/iterate-map-one.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [iterate_map_inv](declarations/iterate-map-inv.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `lemma` | [iterate_map_div](declarations/iterate-map-div.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `lemma` | [iterate_map_pow](declarations/iterate-map-pow.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `lemma` | [iterate_map_zpow](declarations/iterate-map-zpow.md) | 1057 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27a2dcc0874a6394ab51de34e9f8839209218d74e7950051f375fadf99f05e7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variantcaffc0880b3b128bb8961a21ca0b6052176da2d3e419d102d3549f56d4dfc8f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
