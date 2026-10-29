# Model Theory Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**141 observed declarations and anonymous commands**, 85 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant34cfefd88fa1f51e7ae15d0f3d50a758e9d5910a37a4396a1a13fd4dcb6b624d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f885549835f714a60c7b4794235bc68bfebe561`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Language](declarations/language.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [IsRelational](declarations/isrelational.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [IsAlgebraic](declarations/isalgebraic.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [empty](declarations/empty.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [sum](declarations/sum.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [Constants](declarations/constants.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [Symbols](declarations/symbols.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [card](declarations/card.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [card_eq_card_functions_add_card_relations](declarations/card-eq-card-functions-add-card-relations.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [isRelational_sum](declarations/isrelational-sum.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [isAlgebraic_sum](declarations/isalgebraic-sum.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [card_empty](declarations/card-empty.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [Countable.countable_functions](declarations/countable-countable-functions.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [card_functions_sum](declarations/card-functions-sum.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [card_relations_sum](declarations/card-relations-sum.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [card_sum](declarations/card-sum.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instDecidableEqFunctions](declarations/instdecidableeqfunctions.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instDecidableEqRelations](declarations/instdecidableeqrelations.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `class` | [Structure](declarations/structure.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Inhabited.trivialStructure](declarations/inhabited-trivialstructure.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [Hom](declarations/hom.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [Embedding](declarations/embedding.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [Equiv](declarations/equiv.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [constantMap](declarations/constantmap.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [funMap_eq_coe_constants](declarations/funmap-eq-coe-constants.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nonempty_of_nonempty_constants](declarations/nonempty-of-nonempty-constants.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `class` | [HomClass](declarations/homclass-source-edition-2.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `class` | [StrongHomClass](declarations/stronghomclass.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HomClass.strongHomClassOfIsAlgebraic](declarations/homclass-stronghomclassofisalgebraic.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HomClass.map_constants](declarations/homclass-map-constants.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instFunLike](declarations/instfunlike.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [homClass](declarations/homclass.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [map_fun](declarations/map-fun-source-edition-2.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [map_constants](declarations/map-constants.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_rel](declarations/map-rel-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [id](declarations/id.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [id_apply](declarations/id-apply.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [comp](declarations/comp.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [comp_apply](declarations/comp-apply-source-edition-3.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [comp_assoc](declarations/comp-assoc-source-edition-3.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [comp_id](declarations/comp-id.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [id_comp](declarations/id-comp.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [HomClass.toHom](declarations/homclass-tohom.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [funLike](declarations/funlike.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [embeddingLike](declarations/embeddinglike.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [strongHomClass](declarations/stronghomclass-source-edition-2.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [map_fun](declarations/map-fun-source-edition-3.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [map_constants](declarations/map-constants-source-edition-2.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [map_rel](declarations/map-rel.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [toHom](declarations/tohom-source-edition-2.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coe_toHom](declarations/coe-tohom-source-edition-2.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_injective](declarations/coe-injective-source-edition-2.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [ext](declarations/ext-source-edition-3.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [toHom_injective](declarations/tohom-injective.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [toHom_inj](declarations/tohom-inj.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [injective](declarations/injective.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [ofInjective](declarations/ofinjective.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [coeFn_ofInjective](declarations/coefn-ofinjective.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [ofInjective_toHom](declarations/ofinjective-tohom.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [refl](declarations/refl-source-edition-2.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [refl_apply](declarations/refl-apply-source-edition-2.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [comp](declarations/comp-source-edition-2.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [comp_apply](declarations/comp-apply.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [comp_assoc](declarations/comp-assoc-source-edition-2.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [comp_injective](declarations/comp-injective.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [comp_inj](declarations/comp-inj.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [toHom_comp_injective](declarations/tohom-comp-injective.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [toHom_comp_inj](declarations/tohom-comp-inj.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [comp_toHom](declarations/comp-tohom.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [comp_refl](declarations/comp-refl.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [refl_comp](declarations/refl-comp-source-edition-2.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [refl_toHom](declarations/refl-tohom-source-edition-2.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [StrongHomClass.toEmbedding](declarations/stronghomclass-toembedding.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [(anonymous)](declarations/instance.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [symm](declarations/symm.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [symm_symm](declarations/symm-symm.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [symm_bijective](declarations/symm-bijective.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [map_fun](declarations/map-fun.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [map_constants](declarations/map-constants-source-edition-3.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [map_rel](declarations/map-rel-source-edition-3.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [toEmbedding](declarations/toembedding.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [toHom](declarations/tohom.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [toEmbedding_toHom](declarations/toembedding-tohom.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [coe_toHom](declarations/coe-tohom.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [coe_toEmbedding](declarations/coe-toembedding.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [injective_toEmbedding](declarations/injective-toembedding.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [coe_injective](declarations/coe-injective.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [ext](declarations/ext.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [bijective](declarations/bijective.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [injective](declarations/injective-source-edition-2.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [surjective](declarations/surjective.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [refl](declarations/refl.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [refl_apply](declarations/refl-apply.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [comp](declarations/comp-source-edition-3.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [comp_apply](declarations/comp-apply-source-edition-2.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [comp_refl](declarations/comp-refl-source-edition-2.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [refl_comp](declarations/refl-comp.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [refl_toEmbedding](declarations/refl-toembedding.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [refl_toHom](declarations/refl-tohom.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [injective_comp](declarations/injective-comp.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [comp_toHom](declarations/comp-tohom-source-edition-2.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [comp_toEmbedding](declarations/comp-toembedding.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [self_comp_symm](declarations/self-comp-symm.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [symm_comp_self](declarations/symm-comp-self.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [symm_comp_self_toEmbedding](declarations/symm-comp-self-toembedding.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [self_comp_symm_toEmbedding](declarations/self-comp-symm-toembedding.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [symm_comp_self_toHom](declarations/symm-comp-self-tohom.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [self_comp_symm_toHom](declarations/self-comp-symm-tohom.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [comp_symm](declarations/comp-symm.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [comp_right_injective](declarations/comp-right-injective.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [comp_right_inj](declarations/comp-right-inj.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [StrongHomClass.toEquiv](declarations/stronghomclass-toequiv.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [sumStructure](declarations/sumstructure.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [funMap_sumInl](declarations/funmap-suminl.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [funMap_sumInr](declarations/funmap-suminr.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [relMap_sumInl](declarations/relmap-suminl.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [relMap_sumInr](declarations/relmap-suminr.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [emptyStructure](declarations/emptystructure.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [empty.nonempty_embedding_iff](declarations/empty-nonempty-embedding-iff.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [empty.nonempty_equiv_iff](declarations/empty-nonempty-equiv-iff.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `def` | [_root_.Function.emptyHom](declarations/root-function-emptyhom.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [inducedStructure](declarations/inducedstructure.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [inducedStructureEquiv](declarations/inducedstructureequiv.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [toEquiv_inducedStructureEquiv](declarations/toequiv-inducedstructureequiv.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [toFun_inducedStructureEquiv](declarations/tofun-inducedstructureequiv.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [toFun_inducedStructureEquiv_Symm](declarations/tofun-inducedstructureequiv-symm.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d4e1962df322af5ba797771610819c1203378e4effb23759eefa4494dbfb446 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant34cfefd88fa1f51e7ae15d0f3d50a758e9d5910a37a4396a1a13fd4dcb6b624d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
