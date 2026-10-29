# Has Limits Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**106 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant84df666d0ff0ac385db71e5c71a9646853a09c8c8e36676236edb26001df3db6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e660253d98b1ff988ef969d2a3f6a96995292573`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LimitCone](declarations/limitcone.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ColimitCocone](declarations/colimitcocone.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [HasLimit](declarations/haslimit.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [HasColimit](declarations/hascolimit.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [HasLimit.mk](declarations/haslimit-mk.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [getLimitCone](declarations/getlimitcone.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `class` | [HasLimitsOfShape](declarations/haslimitsofshape.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [HasColimitsOfShape](declarations/hascolimitsofshape.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `class` | [HasLimitsOfSize](declarations/haslimitsofsize.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `class` | [HasColimitsOfSize](declarations/hascolimitsofsize.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [HasLimits](declarations/haslimits.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [HasLimits.has_limits_of_shape](declarations/haslimits-has-limits-of-shape.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [limit.cone](declarations/limit-cone.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [limit](declarations/limit.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [limit.π](declarations/limit-source-edition-2.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [limit.π_comp_eqToHom](declarations/limit-comp-eqtohom.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [colimit.eqToHom_comp_ι](declarations/colimit-eqtohom-comp.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [limit.cone_x](declarations/limit-cone-x.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [limit.cone_π](declarations/limit-cone-source-edition-2.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [limit.w](declarations/limit-w.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [limit.isLimit](declarations/limit-islimit.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [limit.lift](declarations/limit-lift.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [limit.isLimit_lift](declarations/limit-islimit-lift.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [limit.lift_π](declarations/limit-lift-source-edition-2.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [limMap](declarations/limmap-source-edition-2.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [limMap_π](declarations/limmap.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [limit.coneMorphism](declarations/limit-conemorphism.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [limit.coneMorphism_hom](declarations/limit-conemorphism-hom.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [limit.coneMorphism_π](declarations/limit-conemorphism-source-edition-2.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [limit.conePointUniqueUpToIso_hom_comp](declarations/limit-conepointuniqueuptoiso-hom-comp.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [limit.conePointUniqueUpToIso_inv_comp](declarations/limit-conepointuniqueuptoiso-inv-comp.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [limit.existsUnique](declarations/limit-existsunique.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [limit.isoLimitCone](declarations/limit-isolimitcone.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [limit.isoLimitCone_hom_π](declarations/limit-isolimitcone-hom.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [limit.isoLimitCone_inv_π](declarations/limit-isolimitcone-inv.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [limit.hom_ext](declarations/limit-hom-ext.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [isIso_limMap](declarations/isiso-limmap.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [limit.lift_map](declarations/limit-lift-map.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [limit.lift_cone](declarations/limit-lift-cone.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [limit.homIso](declarations/limit-homiso-source-edition-2.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [limit.homIso_hom](declarations/limit-homiso-hom.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [limit.homIso'](declarations/limit-homiso.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [limit.lift_extend](declarations/limit-lift-extend.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [hasLimit_of_iso](declarations/haslimit-of-iso.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [hasLimit_iff_of_iso](declarations/haslimit-iff-of-iso.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [HasLimit.ofConesIso](declarations/haslimit-ofconesiso.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [HasLimit.isoOfNatIso](declarations/haslimit-isoofnatiso.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [HasLimit.isoOfNatIso_hom_π](declarations/haslimit-isoofnatiso-hom.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [HasLimit.isoOfNatIso_inv_π](declarations/haslimit-isoofnatiso-inv.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [HasLimit.lift_isoOfNatIso_hom](declarations/haslimit-lift-isoofnatiso-hom.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [HasLimit.lift_isoOfNatIso_inv](declarations/haslimit-lift-isoofnatiso-inv.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [HasLimit.isoOfEquivalence](declarations/haslimit-isoofequivalence.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [HasLimit.isoOfEquivalence_hom_π](declarations/haslimit-isoofequivalence-hom.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [HasLimit.isoOfEquivalence_inv_π](declarations/haslimit-isoofequivalence-inv.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [limit.pre](declarations/limit-pre-source-edition-2.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [limit.pre_π](declarations/limit-pre.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [limit.inv_pre_π](declarations/limit-inv-pre.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [limit.lift_pre](declarations/limit-lift-pre.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [limit.pre_pre](declarations/limit-pre-pre.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [limit.pre_eq](declarations/limit-pre-eq.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [limit.post](declarations/limit-post-source-edition-2.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [limit.post_π](declarations/limit-post.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [limit.lift_post](declarations/limit-lift-post.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [limit.post_post](declarations/limit-post-post.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [limit.pre_post](declarations/limit-pre-post.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [hasLimit_equivalence_comp](declarations/haslimit-equivalence-comp.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [hasLimit_of_equivalence_comp](declarations/haslimit-of-equivalence-comp.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [hasLimit_equivalence_comp_iff](declarations/haslimit-equivalence-comp-iff.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [hasLimit_inverse_equivalence_comp_iff](declarations/haslimit-inverse-equivalence-comp-iff.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [lim](declarations/lim-source-edition-2.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [lim.π](declarations/lim.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [limMap_eq](declarations/limmap-eq.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [limit.map_π](declarations/limit-map.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [limit.map_pre](declarations/limit-map-pre.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [limit.map_pre'](declarations/limit-map-pre-source-edition-2.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [limit.pre_id](declarations/limit-pre-id.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [limit.map_post](declarations/limit-map-post.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [limYoneda](declarations/limyoneda.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [constLimAdj](declarations/constlimadj.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [limMap_mono'](declarations/limmap-mono-source-edition-2.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [limMap_mono](declarations/limmap-mono.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [coneOfAdj](declarations/coneofadj.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [isLimitConeOfAdj](declarations/islimitconeofadj.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [hasLimitsOfShape_of_equivalence](declarations/haslimitsofshape-of-equivalence.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [HasLimitsOfShape.of_small](declarations/haslimitsofshape-of-small.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [HasLimitsOfShape.of_essentiallySmall](declarations/haslimitsofshape-of-essentiallysmall.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [hasLimitsOfSizeOfUnivLE](declarations/haslimitsofsizeofunivle.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [hasLimitsOfSizeShrink](declarations/haslimitsofsizeshrink.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [colimit.homIso](declarations/colimit-homiso.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [colimit.homIso_hom](declarations/colimit-homiso-hom.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [colimit.homIso'](declarations/colimit-homiso-source-edition-2.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [hasColimit_of_iso](declarations/hascolimit-of-iso.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [HasColimit.ofCoconesIso](declarations/hascolimit-ofcoconesiso.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [colimCoyoneda](declarations/colimcoyoneda.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [colimConstAdj](declarations/colimconstadj.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [colimMap_epi'](declarations/colimmap-epi.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [IsLimit.op](declarations/islimit-op.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [IsLimit.unop](declarations/islimit-unop.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [isLimitOfOp](declarations/islimitofop.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [isLimitOfUnop](declarations/islimitofunop.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [isLimitEquivIsColimitOp](declarations/islimitequiviscolimitop.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e96d00c655b0e5b95defb9405498945f2a060848a46db8a9632dcff6e71c9444 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant84df666d0ff0ac385db71e5c71a9646853a09c8c8e36676236edb26001df3db6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
