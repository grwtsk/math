# Has Limits Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**106 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantd6020e48c1b21bc94a570c2243c4d73d2f1743d51f3f90d1163836292d0ef1a0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d170ba85d5915c678b9364ed5ee86a2690e92383`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LimitCone](declarations/limitcone.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ColimitCocone](declarations/colimitcocone.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [HasLimit](declarations/haslimit.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [HasColimit](declarations/hascolimit.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [HasLimit.mk](declarations/haslimit-mk.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [getLimitCone](declarations/getlimitcone.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `class` | [HasLimitsOfShape](declarations/haslimitsofshape.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [HasColimitsOfShape](declarations/hascolimitsofshape.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `class` | [HasLimitsOfSize](declarations/haslimitsofsize.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `class` | [HasColimitsOfSize](declarations/hascolimitsofsize.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [HasLimits](declarations/haslimits.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [HasLimits.has_limits_of_shape](declarations/haslimits-has-limits-of-shape.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [limit.cone](declarations/limit-cone.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [limit](declarations/limit.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [limit.π](declarations/limit-source-edition-2.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [limit.π_comp_eqToHom](declarations/limit-comp-eqtohom.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [colimit.eqToHom_comp_ι](declarations/colimit-eqtohom-comp.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [limit.cone_x](declarations/limit-cone-x.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [limit.cone_π](declarations/limit-cone-source-edition-2.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [limit.w](declarations/limit-w.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [limit.isLimit](declarations/limit-islimit.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [limit.lift](declarations/limit-lift-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [limit.isLimit_lift](declarations/limit-islimit-lift.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [limit.lift_π](declarations/limit-lift.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [limMap](declarations/limmap.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [limMap_π](declarations/limmap-source-edition-2.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [limit.coneMorphism](declarations/limit-conemorphism-source-edition-2.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [limit.coneMorphism_hom](declarations/limit-conemorphism-hom.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [limit.coneMorphism_π](declarations/limit-conemorphism.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [limit.conePointUniqueUpToIso_hom_comp](declarations/limit-conepointuniqueuptoiso-hom-comp.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [limit.conePointUniqueUpToIso_inv_comp](declarations/limit-conepointuniqueuptoiso-inv-comp.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [limit.existsUnique](declarations/limit-existsunique.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [limit.isoLimitCone](declarations/limit-isolimitcone.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [limit.isoLimitCone_hom_π](declarations/limit-isolimitcone-hom.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [limit.isoLimitCone_inv_π](declarations/limit-isolimitcone-inv.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [limit.hom_ext](declarations/limit-hom-ext.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [isIso_limMap](declarations/isiso-limmap.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [limit.lift_map](declarations/limit-lift-map.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [limit.lift_cone](declarations/limit-lift-cone.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [limit.homIso](declarations/limit-homiso.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [limit.homIso_hom](declarations/limit-homiso-hom.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [limit.homIso'](declarations/limit-homiso-source-edition-2.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [limit.lift_extend](declarations/limit-lift-extend.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [hasLimit_of_iso](declarations/haslimit-of-iso.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [hasLimit_iff_of_iso](declarations/haslimit-iff-of-iso.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [HasLimit.ofConesIso](declarations/haslimit-ofconesiso.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [HasLimit.isoOfNatIso](declarations/haslimit-isoofnatiso.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [HasLimit.isoOfNatIso_hom_π](declarations/haslimit-isoofnatiso-hom.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [HasLimit.isoOfNatIso_inv_π](declarations/haslimit-isoofnatiso-inv.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [HasLimit.lift_isoOfNatIso_hom](declarations/haslimit-lift-isoofnatiso-hom.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [HasLimit.lift_isoOfNatIso_inv](declarations/haslimit-lift-isoofnatiso-inv.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [HasLimit.isoOfEquivalence](declarations/haslimit-isoofequivalence.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [HasLimit.isoOfEquivalence_hom_π](declarations/haslimit-isoofequivalence-hom.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [HasLimit.isoOfEquivalence_inv_π](declarations/haslimit-isoofequivalence-inv.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [limit.pre](declarations/limit-pre-source-edition-2.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [limit.pre_π](declarations/limit-pre.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [limit.inv_pre_π](declarations/limit-inv-pre.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [limit.lift_pre](declarations/limit-lift-pre.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [limit.pre_pre](declarations/limit-pre-pre.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [limit.pre_eq](declarations/limit-pre-eq.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [limit.post](declarations/limit-post-source-edition-2.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [limit.post_π](declarations/limit-post.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [limit.lift_post](declarations/limit-lift-post.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [limit.post_post](declarations/limit-post-post.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [limit.pre_post](declarations/limit-pre-post.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [hasLimit_equivalence_comp](declarations/haslimit-equivalence-comp.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [hasLimit_of_equivalence_comp](declarations/haslimit-of-equivalence-comp.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [hasLimit_equivalence_comp_iff](declarations/haslimit-equivalence-comp-iff.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [hasLimit_inverse_equivalence_comp_iff](declarations/haslimit-inverse-equivalence-comp-iff.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [lim](declarations/lim-source-edition-2.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [lim.π](declarations/lim.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [limMap_eq](declarations/limmap-eq.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [limit.map_π](declarations/limit-map.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [limit.map_pre](declarations/limit-map-pre.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [limit.map_pre'](declarations/limit-map-pre-source-edition-2.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [limit.pre_id](declarations/limit-pre-id.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [limit.map_post](declarations/limit-map-post.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [limYoneda](declarations/limyoneda.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [constLimAdj](declarations/constlimadj.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [limMap_mono'](declarations/limmap-mono-source-edition-2.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [limMap_mono](declarations/limmap-mono.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [coneOfAdj](declarations/coneofadj.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [isLimitConeOfAdj](declarations/islimitconeofadj.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [hasLimitsOfShape_of_equivalence](declarations/haslimitsofshape-of-equivalence.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [HasLimitsOfShape.of_small](declarations/haslimitsofshape-of-small.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [HasLimitsOfShape.of_essentiallySmall](declarations/haslimitsofshape-of-essentiallysmall.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [hasLimitsOfSizeOfUnivLE](declarations/haslimitsofsizeofunivle.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [hasLimitsOfSizeShrink](declarations/haslimitsofsizeshrink.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [colimit.homIso](declarations/colimit-homiso.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [colimit.homIso_hom](declarations/colimit-homiso-hom.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [colimit.homIso'](declarations/colimit-homiso-source-edition-2.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [hasColimit_of_iso](declarations/hascolimit-of-iso.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [HasColimit.ofCoconesIso](declarations/hascolimit-ofcoconesiso.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [colimCoyoneda](declarations/colimcoyoneda.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [colimConstAdj](declarations/colimconstadj.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [colimMap_epi'](declarations/colimmap-epi.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [IsLimit.op](declarations/islimit-op.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [IsLimit.unop](declarations/islimit-unop.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [isLimitOfOp](declarations/islimitofop.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [isLimitOfUnop](declarations/islimitofunop.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [isLimitEquivIsColimitOp](declarations/islimitequiviscolimitop.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1819ad9fc90e34506e082006afb3d03b467f58f4fcf4a8827e2a5a57b153ecbf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantd6020e48c1b21bc94a570c2243c4d73d2f1743d51f3f90d1163836292d0ef1a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
