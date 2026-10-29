# Category Theory Morphism Property

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**113 observed declarations and anonymous commands**, 80 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantd42a284ebaecc1c7d86a4dfeb38f6b62c042907859336e81f62d72df21e2acbe.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31a34d7116ce5a7e60b857bcb68d3af29c717203`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryMorphismProperty.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [MorphismProperty](declarations/morphismproperty.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [MorphismProperty.top_eq](declarations/morphismproperty-top-eq.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [top_apply](declarations/top-apply.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [op](declarations/op.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [unop](declarations/unop-source-edition-4.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [unop_op](declarations/unop-op.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [op_unop](declarations/op-unop.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [inverseImage](declarations/inverseimage.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [RespectsIso](declarations/respectsiso.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [RespectsIso.op](declarations/respectsiso-op.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [RespectsIso.unop](declarations/respectsiso-unop.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [isoClosure](declarations/isoclosure.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [subset_isoClosure](declarations/subset-isoclosure.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [isoClosure_respectsIso](declarations/isoclosure-respectsiso.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [StableUnderComposition](declarations/stableundercomposition-source-edition-2.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [StableUnderComposition.op](declarations/stableundercomposition-op.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [StableUnderComposition.unop](declarations/stableundercomposition-unop.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [StableUnderInverse](declarations/stableunderinverse-source-edition-2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [StableUnderInverse.op](declarations/stableunderinverse-op.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [StableUnderInverse.unop](declarations/stableunderinverse-unop.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [StableUnderBaseChange](declarations/stableunderbasechange.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [StableUnderCobaseChange](declarations/stableundercobasechange.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [StableUnderComposition.respectsIso](declarations/stableundercomposition-respectsiso.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [RespectsIso.cancel_left_isIso](declarations/respectsiso-cancel-left-isiso.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [RespectsIso.cancel_right_isIso](declarations/respectsiso-cancel-right-isiso.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [RespectsIso.arrow_iso_iff](declarations/respectsiso-arrow-iso-iff.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [RespectsIso.arrow_mk_iso_iff](declarations/respectsiso-arrow-mk-iso-iff.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [RespectsIso.of_respects_arrow_iso](declarations/respectsiso-of-respects-arrow-iso.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [StableUnderBaseChange.mk](declarations/stableunderbasechange-mk.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [StableUnderBaseChange.respectsIso](declarations/stableunderbasechange-respectsiso.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [StableUnderBaseChange.fst](declarations/stableunderbasechange-fst.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [StableUnderBaseChange.snd](declarations/stableunderbasechange-snd.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [StableUnderBaseChange.baseChange_obj](declarations/stableunderbasechange-basechange-obj.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [StableUnderBaseChange.baseChange_map](declarations/stableunderbasechange-basechange-map.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [StableUnderBaseChange.pullback_map](declarations/stableunderbasechange-pullback-map.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [StableUnderCobaseChange.mk](declarations/stableundercobasechange-mk.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [StableUnderCobaseChange.respectsIso](declarations/stableundercobasechange-respectsiso.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [StableUnderCobaseChange.inl](declarations/stableundercobasechange-inl.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [StableUnderCobaseChange.inr](declarations/stableundercobasechange-inr.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [StableUnderCobaseChange.op](declarations/stableundercobasechange-op.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [StableUnderCobaseChange.unop](declarations/stableundercobasechange-unop.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [StableUnderBaseChange.op](declarations/stableunderbasechange-op.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [StableUnderBaseChange.unop](declarations/stableunderbasechange-unop.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [IsInvertedBy](declarations/isinvertedby.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [of_comp](declarations/of-comp.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [op](declarations/op-source-edition-3.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [rightOp](declarations/rightop.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [leftOp](declarations/leftop.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [unop](declarations/unop-source-edition-2.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [naturalityProperty](declarations/naturalityproperty.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [stableUnderComposition](declarations/stableundercomposition.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [stableUnderInverse](declarations/stableunderinverse.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [RespectsIso.inverseImage](declarations/respectsiso-inverseimage.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [StableUnderComposition.inverseImage](declarations/stableundercomposition-inverseimage.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [isomorphisms](declarations/isomorphisms.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [monomorphisms](declarations/monomorphisms.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [epimorphisms](declarations/epimorphisms.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [isomorphisms.iff](declarations/isomorphisms-iff.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [monomorphisms.iff](declarations/monomorphisms-iff.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [epimorphisms.iff](declarations/epimorphisms-iff.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [isomorphisms.infer_property](declarations/isomorphisms-infer-property.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [monomorphisms.infer_property](declarations/monomorphisms-infer-property.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [epimorphisms.infer_property](declarations/epimorphisms-infer-property.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [RespectsIso.monomorphisms](declarations/respectsiso-monomorphisms.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [RespectsIso.epimorphisms](declarations/respectsiso-epimorphisms.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [RespectsIso.isomorphisms](declarations/respectsiso-isomorphisms.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [StableUnderComposition.isomorphisms](declarations/stableundercomposition-isomorphisms.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [StableUnderComposition.monomorphisms](declarations/stableundercomposition-monomorphisms.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [StableUnderComposition.epimorphisms](declarations/stableundercomposition-epimorphisms.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [FunctorsInverting](declarations/functorsinverting.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [FunctorsInverting.ext](declarations/functorsinverting-ext.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [FunctorsInverting.hom_ext](declarations/functorsinverting-hom-ext.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [FunctorsInverting.mk](declarations/functorsinverting-mk.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [IsInvertedBy.iff_of_iso](declarations/isinvertedby-iff-of-iso.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [diagonal](declarations/diagonal.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [diagonal_iff](declarations/diagonal-iff.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [RespectsIso.diagonal](declarations/respectsiso-diagonal.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [StableUnderComposition.diagonal](declarations/stableundercomposition-diagonal.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [StableUnderBaseChange.diagonal](declarations/stableunderbasechange-diagonal.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [universally](declarations/universally.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [universally_respectsIso](declarations/universally-respectsiso.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [universally_stableUnderBaseChange](declarations/universally-stableunderbasechange.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [StableUnderComposition.universally](declarations/stableundercomposition-universally.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [universally_le](declarations/universally-le.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [StableUnderBaseChange.universally_eq](declarations/stableunderbasechange-universally-eq.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [universally_mono](declarations/universally-mono.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [injective](declarations/injective.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [surjective](declarations/surjective.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [bijective](declarations/bijective.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [bijective_eq_sup](declarations/bijective-eq-sup.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [injective_stableUnderComposition](declarations/injective-stableundercomposition.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [surjective_stableUnderComposition](declarations/surjective-stableundercomposition.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [bijective_stableUnderComposition](declarations/bijective-stableundercomposition.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [injective_respectsIso](declarations/injective-respectsiso.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [surjective_respectsIso](declarations/surjective-respectsiso.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [bijective_respectsIso](declarations/bijective-respectsiso.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `class` | [ContainsIdentities](declarations/containsidentities.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [id_mem](declarations/id-mem.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `instance` | [op](declarations/op-source-edition-2.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [unop](declarations/unop-source-edition-3.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [of_op](declarations/of-op-source-edition-2.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [of_unop](declarations/of-unop-source-edition-2.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `class` | [IsMultiplicative](declarations/ismultiplicative.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [comp_mem](declarations/comp-mem.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [op](declarations/op-source-edition-4.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [unop](declarations/unop.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [of_op](declarations/of-op.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [of_unop](declarations/of-unop.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b2021091c675f8367130760c373065807fa7c996fa90815616fbdf6ecc344c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantd42a284ebaecc1c7d86a4dfeb38f6b62c042907859336e81f62d72df21e2acbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
