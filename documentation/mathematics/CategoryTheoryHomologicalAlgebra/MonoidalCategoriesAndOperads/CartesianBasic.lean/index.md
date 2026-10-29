# Cartesian Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**140 observed declarations and anonymous commands**, 99 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf3611980477456f8018b08edb59ed5a4c3493652282094835cd42979787a81d5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4685874b6eb674fb7b13dcbb8a0da7052d1be69c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [CartesianMonoidalCategory](declarations/cartesianmonoidalcategory.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [tensorObj](declarations/tensorobj.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [tensorHom](declarations/tensorhom.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [tensor_id](declarations/tensor-id.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [tensor_comp](declarations/tensor-comp.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [pentagon](declarations/pentagon.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [triangle](declarations/triangle.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [leftUnitor_naturality](declarations/leftunitor-naturality.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [rightUnitor_naturality](declarations/rightunitor-naturality.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [associator_naturality](declarations/associator-naturality.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [ofChosenFiniteProducts](declarations/ofchosenfiniteproducts-source-edition-3.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [ofHasFiniteProducts](declarations/ofhasfiniteproducts.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toUnit](declarations/tounit.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [default_eq_toUnit](declarations/default-eq-tounit.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [toUnit_unique](declarations/tounit-unique.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [comp_toUnit](declarations/comp-tounit.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [lift](declarations/lift-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [lift_fst](declarations/lift-fst.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [lift_snd](declarations/lift-snd.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [mono_lift_of_mono_left](declarations/mono-lift-of-mono-left.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [mono_lift_of_mono_right](declarations/mono-lift-of-mono-right.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [hom_ext](declarations/hom-ext.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [comp_lift](declarations/comp-lift.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [lift_fst_snd](declarations/lift-fst-snd.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [lift_comp_fst_snd](declarations/lift-comp-fst-snd.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [whiskerLeft_fst](declarations/whiskerleft-fst.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [whiskerLeft_snd](declarations/whiskerleft-snd.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [whiskerRight_fst](declarations/whiskerright-fst.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [whiskerRight_snd](declarations/whiskerright-snd.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [tensorHom_fst](declarations/tensorhom-fst.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [tensorHom_snd](declarations/tensorhom-snd.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [lift_map](declarations/lift-map.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [lift_fst_comp_snd_comp](declarations/lift-fst-comp-snd-comp.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [lift_whiskerRight](declarations/lift-whiskerright.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [lift_whiskerLeft](declarations/lift-whiskerleft.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [associator_hom_fst](declarations/associator-hom-fst.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [associator_hom_snd_fst](declarations/associator-hom-snd-fst.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [associator_hom_snd_snd](declarations/associator-hom-snd-snd.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [associator_inv_fst_fst](declarations/associator-inv-fst-fst.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [associator_inv_fst_snd](declarations/associator-inv-fst-snd.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [associator_inv_snd](declarations/associator-inv-snd.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [lift_lift_associator_hom](declarations/lift-lift-associator-hom.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [lift_lift_associator_inv](declarations/lift-lift-associator-inv.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [leftUnitor_hom](declarations/leftunitor-hom.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [rightUnitor_hom](declarations/rightunitor-hom.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [leftUnitor_inv_fst](declarations/leftunitor-inv-fst.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [leftUnitor_inv_snd](declarations/leftunitor-inv-snd.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [rightUnitor_inv_fst](declarations/rightunitor-inv-fst.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [rightUnitor_inv_snd](declarations/rightunitor-inv-snd.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [whiskerLeft_toUnit_comp_rightUnitor_hom](declarations/whiskerleft-tounit-comp-rightunitor-hom.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [whiskerRight_toUnit_comp_leftUnitor_hom](declarations/whiskerright-tounit-comp-leftunitor-hom.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [lift_leftUnitor_hom](declarations/lift-leftunitor-hom.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [lift_rightUnitor_hom](declarations/lift-rightunitor-hom.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [braiding_hom_fst](declarations/braiding-hom-fst.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [braiding_hom_snd](declarations/braiding-hom-snd.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [braiding_inv_fst](declarations/braiding-inv-fst.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [braiding_inv_snd](declarations/braiding-inv-snd.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [lift_snd_fst](declarations/lift-snd-fst.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [lift_snd_comp_fst_comp](declarations/lift-snd-comp-fst-comp.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [lift_braiding_hom](declarations/lift-braiding-hom.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [lift_braiding_inv](declarations/lift-braiding-inv.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [_root_.CategoryTheory.BraidedCategory.ofCartesianMonoidalCategory](declarations/root-categorytheory-braidedcategory-ofcartesianmonoidalcategory.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `abbrev` | [terminalComparison](declarations/terminalcomparison.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [map_toUnit_comp_terminalComparison](declarations/map-tounit-comp-terminalcomparison.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [preservesLimit_empty_of_isIso_terminalComparison](declarations/preserveslimit-empty-of-isiso-terminalcomparison.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [preservesTerminalIso](declarations/preservesterminaliso.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [preservesTerminalIso_hom](declarations/preservesterminaliso-hom.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [terminalComparison_isIso_of_preservesLimits](declarations/terminalcomparison-isiso-of-preserveslimits.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [preservesTerminalIso_id](declarations/preservesterminaliso-id.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [preservesTerminalIso_comp](declarations/preservesterminaliso-comp.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [prodComparison](declarations/prodcomparison.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [prodComparison_fst](declarations/prodcomparison-fst.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [prodComparison_snd](declarations/prodcomparison-snd.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [inv_prodComparison_map_fst](declarations/inv-prodcomparison-map-fst.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [inv_prodComparison_map_snd](declarations/inv-prodcomparison-map-snd.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [prodComparison_natural](declarations/prodcomparison-natural.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [prodComparison_natural_whiskerLeft](declarations/prodcomparison-natural-whiskerleft.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [prodComparison_natural_whiskerRight](declarations/prodcomparison-natural-whiskerright.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [prodComparison_inv_natural](declarations/prodcomparison-inv-natural.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [prodComparison_inv_natural_whiskerLeft](declarations/prodcomparison-inv-natural-whiskerleft.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [prodComparison_inv_natural_whiskerRight](declarations/prodcomparison-inv-natural-whiskerright.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [prodComparison_comp](declarations/prodcomparison-comp.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [prodComparison_id](declarations/prodcomparison-id.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [prodComparisonNatTrans](declarations/prodcomparisonnattrans.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [prodComparisonNatTrans_comp](declarations/prodcomparisonnattrans-comp.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [prodComparisonNatTrans_id](declarations/prodcomparisonnattrans-id.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [prodComparisonBifunctorNatTrans](declarations/prodcomparisonbifunctornattrans.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [prodComparisonBifunctorNatTrans_comp](declarations/prodcomparisonbifunctornattrans-comp.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [isLimitCartesianMonoidalCategoryOfPreservesLimits](declarations/islimitcartesianmonoidalcategoryofpreserveslimits.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [prodComparisonIso](declarations/prodcomparisoniso.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [prodComparisonIso_hom](declarations/prodcomparisoniso-hom.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [isIso_prodComparison_of_preservesLimit_pair](declarations/isiso-prodcomparison-of-preserveslimit-pair.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [prodComparisonIso_id](declarations/prodcomparisoniso-id.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [prodComparisonIso_comp](declarations/prodcomparisoniso-comp.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [prodComparisonNatIso](declarations/prodcomparisonnatiso.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [prodComparisonBifunctorNatIso](declarations/prodcomparisonbifunctornatiso.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [preservesLimit_pair_of_isIso_prodComparison](declarations/preserveslimit-pair-of-isiso-prodcomparison.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [preservesLimitsOfShape_discrete_walkingPair_of_isIso_prodComparison](declarations/preserveslimitsofshape-discrete-walkingpair-of-isiso-prodcomparison.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [fullSubcategory](declarations/fullsubcategory.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [η_of_cartesianMonoidalCategory](declarations/of-cartesianmonoidalcategory-source-edition-4.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [δ_fst](declarations/fst-source-edition-2.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [δ_snd](declarations/snd.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [lift_δ](declarations/lift.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [δ_of_cartesianMonoidalCategory](declarations/of-cartesianmonoidalcategory.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [ofChosenFiniteProducts](declarations/ofchosenfiniteproducts-source-edition-4.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [toUnit_ε](declarations/tounit-source-edition-2.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [lift_μ](declarations/lift-source-edition-3.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [μ_fst](declarations/fst.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `lemma` | [μ_snd](declarations/snd-source-edition-2.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [μ_comp](declarations/comp.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [ε_of_cartesianMonoidalCategory](declarations/of-cartesianmonoidalcategory-source-edition-2.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [μ_of_cartesianMonoidalCategory](declarations/of-cartesianmonoidalcategory-source-edition-3.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [ofChosenFiniteProducts](declarations/ofchosenfiniteproducts.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [nonempty_monoidal_iff_preservesFiniteProducts](declarations/nonempty-monoidal-iff-preservesfiniteproducts.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [ofChosenFiniteProducts](declarations/ofchosenfiniteproducts-source-edition-2.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `instance` | [instCartesianMonoidalCategory](declarations/instcartesianmonoidalcategory.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `lemma` | [tensor_obj](declarations/tensor-obj.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `lemma` | [fst_def](declarations/fst-def.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [snd_def](declarations/snd-def.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [lift_def](declarations/lift-def.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `lemma` | [whiskerLeft_def](declarations/whiskerleft-def.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [whiskerRight_def](declarations/whiskerright-def.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [associator_hom_def](declarations/associator-hom-def.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `lemma` | [associator_inv_def](declarations/associator-inv-def.md) | 947 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `lemma` | [toUnit_def](declarations/tounit-def.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `instance` | [IsMonoidal.of_cartesianMonoidalCategory](declarations/ismonoidal-of-cartesianmonoidalcategory.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de9d9c93e40eb63dd693c95c3e08eca4e9e30b272e24792bfd8ad0d04e606b94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf3611980477456f8018b08edb59ed5a4c3493652282094835cd42979787a81d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
