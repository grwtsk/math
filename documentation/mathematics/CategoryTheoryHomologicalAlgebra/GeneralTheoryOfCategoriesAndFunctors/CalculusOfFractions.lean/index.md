# Calculus Of Fractions

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**98 observed declarations and anonymous commands**, 60 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82f48f0932e52b11636563a6762ce19dac610edf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CalculusOfFractions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LeftFraction](declarations/leftfraction.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofHom](declarations/ofhom-source-edition-2.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofInv](declarations/ofinv.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [map](declarations/map.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [map_comp_map_s](declarations/map-comp-map-s.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [map_ofHom](declarations/map-ofhom-source-edition-2.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [map_ofInv_hom_id](declarations/map-ofinv-hom-id-source-edition-2.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [map_hom_ofInv_id](declarations/map-hom-ofinv-id-source-edition-2.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [cases](declarations/cases.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [RightFraction](declarations/rightfraction.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [ofHom](declarations/ofhom.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [ofInv](declarations/ofinv-source-edition-2.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [map](declarations/map-source-edition-2.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [map_s_comp_map](declarations/map-s-comp-map.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [map_ofHom](declarations/map-ofhom.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [map_ofInv_hom_id](declarations/map-ofinv-hom-id.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [map_hom_ofInv_id](declarations/map-hom-ofinv-id.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [cases](declarations/cases-source-edition-2.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `class` | [HasLeftCalculusOfFractions](declarations/hasleftcalculusoffractions.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `class` | [HasRightCalculusOfFractions](declarations/hasrightcalculusoffractions.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [RightFraction.exists_leftFraction](declarations/rightfraction-exists-leftfraction.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [RightFraction.leftFraction](declarations/rightfraction-leftfraction.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [RightFraction.leftFraction_fac](declarations/rightfraction-leftfraction-fac.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [LeftFraction.exists_rightFraction](declarations/leftfraction-exists-rightfraction.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [LeftFraction.rightFraction](declarations/leftfraction-rightfraction.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [LeftFraction.rightFraction_fac](declarations/leftfraction-rightfraction-fac.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [LeftFractionRel](declarations/leftfractionrel.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [refl](declarations/refl-source-edition-2.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [symm](declarations/symm-source-edition-2.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [trans](declarations/trans-source-edition-2.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [equivalenceLeftFractionRel](declarations/equivalenceleftfractionrel.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [comp₀](declarations/comp-source-edition-2.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [comp₀_rel](declarations/comp-rel.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Localization.Hom](declarations/localization-hom.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Localization.Hom.mk](declarations/localization-hom-mk.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [Localization.Hom.mk_surjective](declarations/localization-hom-mk-surjective.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [comp](declarations/comp.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [comp_eq](declarations/comp-eq.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [Hom.comp](declarations/hom-comp.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [Hom.comp_eq](declarations/hom-comp-eq.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [Localization](declarations/localization.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [Q](declarations/q.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `abbrev` | [homMk](declarations/hommk.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [homMk_eq_hom_mk](declarations/hommk-eq-hom-mk.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [Q_map](declarations/q-map.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [homMk_comp_homMk](declarations/hommk-comp-hommk.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [homMk_eq_of_leftFractionRel](declarations/hommk-eq-of-leftfractionrel.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [homMk_eq_iff_leftFractionRel](declarations/hommk-eq-iff-leftfractionrel.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [Qinv](declarations/qinv.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Q_map_comp_Qinv](declarations/q-map-comp-qinv.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [Qiso](declarations/qiso.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Qiso_hom_inv_id](declarations/qiso-hom-inv-id.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [Qiso_inv_hom_id](declarations/qiso-inv-hom-id.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [Hom.map](declarations/hom-map.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [Hom.map_mk](declarations/hom-map-mk.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [inverts](declarations/inverts.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [lift](declarations/lift.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [fac](declarations/fac.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [uniq](declarations/uniq.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [strictUniversalPropertyFixedTarget](declarations/strictuniversalpropertyfixedtarget.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [homMk_eq](declarations/hommk-eq.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [map_eq_iff](declarations/map-eq-iff.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [map_eq](declarations/map-eq.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [map_compatibility](declarations/map-compatibility.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [map_eq_of_map_eq](declarations/map-eq-of-map-eq.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [map_comp_map_eq_map](declarations/map-comp-map-eq-map.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [Localization.exists_leftFraction](declarations/localization-exists-leftfraction.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [MorphismProperty.LeftFraction.map_eq_iff](declarations/morphismproperty-leftfraction-map-eq-iff.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [MorphismProperty.map_eq_iff_postcomp](declarations/morphismproperty-map-eq-iff-postcomp.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [Localization.essSurj_mapArrow](declarations/localization-esssurj-maparrow.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [LeftFraction.op](declarations/leftfraction-op.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [RightFraction.op](declarations/rightfraction-op.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [LeftFraction.unop](declarations/leftfraction-unop.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [RightFraction.unop](declarations/rightfraction-unop.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [RightFraction.op_map](declarations/rightfraction-op-map.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [LeftFraction.op_map](declarations/leftfraction-op-map.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [RightFractionRel](declarations/rightfractionrel.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [RightFractionRel.op](declarations/rightfractionrel-op.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [RightFractionRel.unop](declarations/rightfractionrel-unop.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [LeftFractionRel.op](declarations/leftfractionrel-op.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [LeftFractionRel.unop](declarations/leftfractionrel-unop.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [leftFractionRel_op_iff](declarations/leftfractionrel-op-iff.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [rightFractionRel_op_iff](declarations/rightfractionrel-op-iff.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [refl](declarations/refl.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [symm](declarations/symm.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [trans](declarations/trans.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [equivalenceRightFractionRel](declarations/equivalencerightfractionrel.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [Localization.exists_rightFraction](declarations/localization-exists-rightfraction.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [MorphismProperty.RightFraction.map_eq_iff](declarations/morphismproperty-rightfraction-map-eq-iff.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [MorphismProperty.map_eq_iff_precomp](declarations/morphismproperty-map-eq-iff-precomp.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [Localization.essSurj_mapArrow_of_hasRightCalculusOfFractions](declarations/localization-esssurj-maparrow-of-hasrightcalculusoffractions.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf28e3398e28ed51c7857934b862f0d55352b63b35676b14519d38e768a31e0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant9a9c85223d70cdfe458e7235f446ec9367d4c8e9970875d98825335603ac289a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
