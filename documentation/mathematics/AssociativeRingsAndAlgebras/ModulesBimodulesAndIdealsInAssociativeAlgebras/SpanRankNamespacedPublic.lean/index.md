# Span Rank Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**59 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `712209238faaaa1f7a4e5a77cc3ef70b9cf2d6f9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SpanRankNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [spanRank](declarations/spanrank.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [spanFinrank](declarations/spanfinrank.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [spanRank_toENat_eq_iInf_encard](declarations/spanrank-toenat-eq-iinf-encard.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [spanRank_toENat_eq_iInf_finset_card](declarations/spanrank-toenat-eq-iinf-finset-card.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [spanFinrank_eq_iInf](declarations/spanfinrank-eq-iinf.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [spanRank_finite_iff_fg](declarations/spanrank-finite-iff-fg.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [spanFinrank_of_not_fg](declarations/spanfinrank-of-not-fg.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [fg_iff_spanRank_eq_spanFinrank](declarations/fg-iff-spanrank-eq-spanfinrank.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [FG.spanRank_eq_spanFinrank](declarations/fg-spanrank-eq-spanfinrank.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [FG.spanRank_le_iff](declarations/fg-spanrank-le-iff.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [FG.spanRank_eq_iff](declarations/fg-spanrank-eq-iff.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [spanRank_span_le_card](declarations/spanrank-span-le-card.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [spanRank_span_range_of_linearIndependent](declarations/spanrank-span-range-of-linearindependent.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [spanRank_span_of_linearIndepOn](declarations/spanrank-span-of-linearindepon.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [spanFinrank_span_le_encard](declarations/spanfinrank-span-le-encard.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [spanFinrank_span_le_ncard_of_finite](declarations/spanfinrank-span-le-ncard-of-finite.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exists_span_set_card_eq_spanRank](declarations/exists-span-set-card-eq-spanrank.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [FG.exists_span_set_encard_eq_spanFinrank](declarations/fg-exists-span-set-encard-eq-spanfinrank.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [FG.exists_span_finset_card_eq_spanFinrank](declarations/fg-exists-span-finset-card-eq-spanfinrank.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [lift_spanRank_le_iff_exists_span_set_card_le](declarations/lift-spanrank-le-iff-exists-span-set-card-le.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [FG.spanRank_le_iff_exists_span_set_card_le](declarations/fg-spanrank-le-iff-exists-span-set-card-le.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [spanRank_eq_zero_iff_eq_bot](declarations/spanrank-eq-zero-iff-eq-bot.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [spanRank_bot](declarations/spanrank-bot.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [spanFinrank_bot](declarations/spanfinrank-bot.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [spanRank_subsingleton](declarations/spanrank-subsingleton.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [spanFinrank_subsingleton](declarations/spanfinrank-subsingleton.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [generators](declarations/generators.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [generators_card](declarations/generators-card.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [FG.generators_ncard](declarations/fg-generators-ncard.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [FG.finite_generators](declarations/fg-finite-generators.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [span_generators](declarations/span-generators.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [FG.generators_mem](declarations/fg-generators-mem.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [spanRank_sup_le_sum_spanRank](declarations/spanrank-sup-le-sum-spanrank.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [spanFinrank_eq_zero_iff_eq_bot](declarations/spanfinrank-eq-zero-iff-eq-bot.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [spanFinrank_singleton](declarations/spanfinrank-singleton.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [spanFinrank_eq_one_iff](declarations/spanfinrank-eq-one-iff.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [lift_spanRank_map_le](declarations/lift-spanrank-map-le.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [spanRank_map_le](declarations/spanrank-map-le.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [spanFinrank_map_le_of_fg](declarations/spanfinrank-map-le-of-fg.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [lift_spanRank_map_eq_of_injective](declarations/lift-spanrank-map-eq-of-injective.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [spanRank_map_eq_of_injective](declarations/spanrank-map-eq-of-injective.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [spanFinrank_map_eq_of_injective](declarations/spanfinrank-map-eq-of-injective.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [spanRank_range_le](declarations/spanrank-range-le.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [spanRank_top](declarations/spanrank-top.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [spanFinrank_top](declarations/spanfinrank-top.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [spanRank_eq_of_equiv](declarations/spanrank-eq-of-equiv.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [le_spanRank_restrictScalars](declarations/le-spanrank-restrictscalars.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [spanRank_restrictScalars_eq](declarations/spanrank-restrictscalars-eq.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [Ideal.lift_spanRank_map_le](declarations/ideal-lift-spanrank-map-le.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Ideal.lift_spanRank_map_eq_of_ringEquiv](declarations/ideal-lift-spanrank-map-eq-of-ringequiv.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [Ideal.spanRank_map_le](declarations/ideal-spanrank-map-le.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Ideal.spanRank_map_eq_of_ringEquiv](declarations/ideal-spanrank-map-eq-of-ringequiv.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [Ideal.spanFinrank_map_le_of_fg](declarations/ideal-spanfinrank-map-le-of-fg.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [Ideal.spanFinrank_map_eq_of_ringEquiv](declarations/ideal-spanfinrank-map-eq-of-ringequiv.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [Module.Basis.mk_eq_spanRank](declarations/module-basis-mk-eq-spanrank.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Submodule.rank_eq_spanRank_of_free](declarations/submodule-rank-eq-spanrank-of-free.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [Module.finrank_eq_spanFinrank_of_free](declarations/module-finrank-eq-spanfinrank-of-free.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Submodule.rank_le_spanRank](declarations/submodule-rank-le-spanrank.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a186c59486467ea48765693905332e77f1d0131acfb08b822a0b561c7bb51ed6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SpanRank/Variantf58e1e2b93d9afc21e0ae6069c887be17c93383e993ec2806fe66bed6eebb169.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
