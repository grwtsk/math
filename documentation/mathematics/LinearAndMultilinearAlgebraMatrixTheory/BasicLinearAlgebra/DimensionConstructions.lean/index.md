# Dimension Constructions

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**69 observed declarations and anonymous commands**, 67 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Constructions/Variante0dd07b46c214c5098de9767526349a5eff80d864619c774d0a3962a4147eb13.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4356ac7963502d732cd41f5f77d20f93fc3f396b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DimensionConstructions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [LinearIndependent.sumElim_of_quotient](declarations/linearindependent-sumelim-of-quotient.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [LinearIndepOn.union_of_quotient](declarations/linearindepon-union-of-quotient.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [LinearIndepOn.union_id_of_quotient](declarations/linearindepon-union-id-of-quotient.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [linearIndepOn_union_iff_quotient](declarations/linearindepon-union-iff-quotient.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [LinearIndepOn.quotient_iff_union](declarations/linearindepon-quotient-iff-union.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rank_quotient_add_rank_le](declarations/rank-quotient-add-rank-le.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [rank_quotient_le](declarations/rank-quotient-le.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Submodule.finrank_quotient_le](declarations/submodule-finrank-quotient-le.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rank_ulift](declarations/rank-ulift.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [finrank_ulift](declarations/finrank-ulift.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rank_add_rank_le_rank_prod](declarations/rank-add-rank-le-rank-prod.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lift_rank_add_lift_rank_le_rank_prod](declarations/lift-rank-add-lift-rank-le-rank-prod.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rank_prod](declarations/rank-prod.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rank_prod'](declarations/rank-prod-source-edition-2.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Module.finrank_prod](declarations/module-finrank-prod.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rank_finsupp](declarations/rank-finsupp.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rank_finsupp'](declarations/rank-finsupp-source-edition-2.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rank_finsupp_self](declarations/rank-finsupp-self-source-edition-2.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rank_finsupp_self'](declarations/rank-finsupp-self.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rank_directSum](declarations/rank-directsum.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rank_matrix_module](declarations/rank-matrix-module.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rank_matrix_module'](declarations/rank-matrix-module-source-edition-2.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rank_matrix](declarations/rank-matrix-source-edition-3.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_matrix'](declarations/rank-matrix.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rank_matrix''](declarations/rank-matrix-source-edition-2.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [finrank_finsupp](declarations/finrank-finsupp.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [finrank_finsupp_self](declarations/finrank-finsupp-self.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [finrank_directSum](declarations/finrank-directsum.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [finrank_matrix](declarations/finrank-matrix.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rank_pi](declarations/rank-pi.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Module.finrank_pi](declarations/module-finrank-pi.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Module.finrank_pi_fintype](declarations/module-finrank-pi-fintype.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rank_fun](declarations/rank-fun.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rank_fun_eq_lift_mul](declarations/rank-fun-eq-lift-mul.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [rank_fun'](declarations/rank-fun-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [rank_fin_fun](declarations/rank-fin-fun.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Module.finrank_fintype_fun_eq_card](declarations/module-finrank-fintype-fun-eq-card.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Module.finrank_fin_fun](declarations/module-finrank-fin-fun.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [finDimVectorspaceEquiv](declarations/findimvectorspaceequiv.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [rank_tensorProduct](declarations/rank-tensorproduct.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rank_tensorProduct'](declarations/rank-tensorproduct-source-edition-2.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Module.rank_baseChange](declarations/module-rank-basechange.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Module.finrank_tensorProduct](declarations/module-finrank-tensorproduct.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Module.finrank_baseChange](declarations/module-finrank-basechange.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [lt_of_le_of_finrank_lt_finrank](declarations/lt-of-le-of-finrank-lt-finrank.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [lt_top_of_finrank_lt_finrank](declarations/lt-top-of-finrank-lt-finrank.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Submodule.finrank_le](declarations/submodule-finrank-le.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Submodule.finrank_map_le](declarations/submodule-finrank-map-le.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Submodule.finrank_mono](declarations/submodule-finrank-mono.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [rank_span_le](declarations/rank-span-le.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [rank_span_finset_le](declarations/rank-span-finset-le.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [rank_span_of_finset](declarations/rank-span-of-finset.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [Set.finrank](declarations/set-finrank.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [finrank_span_le_card](declarations/finrank-span-le-card.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [finrank_span_finset_le_card](declarations/finrank-span-finset-le-card.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [finrank_range_le_card](declarations/finrank-range-le-card.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [finrank_span_eq_card](declarations/finrank-span-eq-card.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [finrank_span_set_eq_card](declarations/finrank-span-set-eq-card.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [finrank_span_finset_eq_card](declarations/finrank-span-finset-eq-card.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [span_lt_of_subset_of_card_lt_finrank](declarations/span-lt-of-subset-of-card-lt-finrank.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [span_lt_top_of_card_lt_finrank](declarations/span-lt-top-of-card-lt-finrank.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [finrank_le_of_span_eq_top](declarations/finrank-le-of-span-eq-top.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Subalgebra.rank_toSubmodule](declarations/subalgebra-rank-tosubmodule.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Subalgebra.finrank_toSubmodule](declarations/subalgebra-finrank-tosubmodule.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [subalgebra_top_rank_eq_submodule_top_rank](declarations/subalgebra-top-rank-eq-submodule-top-rank.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [subalgebra_top_finrank_eq_submodule_top_finrank](declarations/subalgebra-top-finrank-eq-submodule-top-finrank.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Subalgebra.rank_top](declarations/subalgebra-rank-top.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Subalgebra.rank_bot](declarations/subalgebra-rank-bot.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Subalgebra.finrank_bot](declarations/subalgebra-finrank-bot.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1174bcfc44967c237933bf3771d2a6bb358562099981ff2e0c5f074d43f8370 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Constructions/Variante0dd07b46c214c5098de9767526349a5eff80d864619c774d0a3962a4147eb13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
