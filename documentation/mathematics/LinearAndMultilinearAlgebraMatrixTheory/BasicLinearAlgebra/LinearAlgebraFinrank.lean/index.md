# Linear Algebra Finrank

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Finrank/Variantca8f769f4fa2297b07e3842ace54e2851caf7c1d36ccb67fdb71dce102b4fb0e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43b68309e3ffe2db82bafedbc4fe5671574243bf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraFinrank.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [finrank](declarations/finrank.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [finrank_eq_of_rank_eq](declarations/finrank-eq-of-rank-eq.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [rank_eq_one_iff_finrank_eq_one](declarations/rank-eq-one-iff-finrank-eq-one.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [rank_eq_ofNat_iff_finrank_eq_ofNat](declarations/rank-eq-ofnat-iff-finrank-eq-ofnat.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [finrank_le_of_rank_le](declarations/finrank-le-of-rank-le.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [finrank_lt_of_rank_lt](declarations/finrank-lt-of-rank-lt.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lt_rank_of_lt_finrank](declarations/lt-rank-of-lt-finrank.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [one_lt_rank_of_one_lt_finrank](declarations/one-lt-rank-of-one-lt-finrank.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [finrank_le_finrank_of_rank_le_rank](declarations/finrank-le-finrank-of-rank-le-rank.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nontrivial_of_finrank_pos](declarations/nontrivial-of-finrank-pos.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nontrivial_of_finrank_eq_succ](declarations/nontrivial-of-finrank-eq-succ.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [finrank_zero_of_subsingleton](declarations/finrank-zero-of-subsingleton.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [finrank_eq_card_basis](declarations/finrank-eq-card-basis.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [finrank_eq_card_finset_basis](declarations/finrank-eq-card-finset-basis.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [finrank_self](declarations/finrank-self.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [finrank_fintype_fun_eq_card](declarations/finrank-fintype-fun-eq-card.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [finrank_fin_fun](declarations/finrank-fin-fun.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Basis.subset_extend](declarations/basis-subset-extend.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [finrank_eq_zero_of_basis_imp_not_finite](declarations/finrank-eq-zero-of-basis-imp-not-finite.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [finrank_eq_zero_of_basis_imp_false](declarations/finrank-eq-zero-of-basis-imp-false.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [finrank_eq_zero_of_not_exists_basis](declarations/finrank-eq-zero-of-not-exists-basis.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [finrank_eq_zero_of_not_exists_basis_finite](declarations/finrank-eq-zero-of-not-exists-basis-finite.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [finrank_eq_zero_of_not_exists_basis_finset](declarations/finrank-eq-zero-of-not-exists-basis-finset.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [finrank_eq](declarations/finrank-eq.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [finrank_map_eq](declarations/finrank-map-eq.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [finrank_range_of_inj](declarations/finrank-range-of-inj.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [finrank_bot](declarations/finrank-bot.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [finrank_top](declarations/finrank-top.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lt_of_le_of_finrank_lt_finrank](declarations/lt-of-le-of-finrank-lt-finrank.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lt_top_of_finrank_lt_finrank](declarations/lt-top-of-finrank-lt-finrank.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Set.finrank](declarations/set-finrank.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [finrank_span_le_card](declarations/finrank-span-le-card.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finrank_span_finset_le_card](declarations/finrank-span-finset-le-card.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [finrank_range_le_card](declarations/finrank-range-le-card.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [finrank_span_eq_card](declarations/finrank-span-eq-card.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [finrank_span_set_eq_card](declarations/finrank-span-set-eq-card.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [finrank_span_finset_eq_card](declarations/finrank-span-finset-eq-card.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [span_lt_of_subset_of_card_lt_finrank](declarations/span-lt-of-subset-of-card-lt-finrank.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [span_lt_top_of_card_lt_finrank](declarations/span-lt-top-of-card-lt-finrank.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [exists_linear_independent_snoc_of_lt_finrank](declarations/exists-linear-independent-snoc-of-lt-finrank.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [exists_linear_independent_cons_of_lt_finrank](declarations/exists-linear-independent-cons-of-lt-finrank.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [exists_linear_independent_pair_of_one_lt_finrank](declarations/exists-linear-independent-pair-of-one-lt-finrank.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [linearIndependent_of_top_le_span_of_card_eq_finrank](declarations/linearindependent-of-top-le-span-of-card-eq-finrank.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [linearIndependent_iff_card_eq_finrank_span](declarations/linearindependent-iff-card-eq-finrank-span.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [linearIndependent_iff_card_le_finrank_span](declarations/linearindependent-iff-card-le-finrank-span.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [basisOfTopLeSpanOfCardEqFinrank](declarations/basisoftoplespanofcardeqfinrank.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coe_basisOfTopLeSpanOfCardEqFinrank](declarations/coe-basisoftoplespanofcardeqfinrank.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [finsetBasisOfTopLeSpanOfCardEqFinrank](declarations/finsetbasisoftoplespanofcardeqfinrank.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [setBasisOfTopLeSpanOfCardEqFinrank](declarations/setbasisoftoplespanofcardeqfinrank.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [finrank_eq_one](declarations/finrank-eq-one.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [finrank_le_one](declarations/finrank-le-one.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Subalgebra.rank_toSubmodule](declarations/subalgebra-rank-tosubmodule.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Subalgebra.finrank_toSubmodule](declarations/subalgebra-finrank-tosubmodule.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [subalgebra_top_rank_eq_submodule_top_rank](declarations/subalgebra-top-rank-eq-submodule-top-rank.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [subalgebra_top_finrank_eq_submodule_top_finrank](declarations/subalgebra-top-finrank-eq-submodule-top-finrank.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Subalgebra.rank_top](declarations/subalgebra-rank-top.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Subalgebra.rank_bot](declarations/subalgebra-rank-bot.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Subalgebra.finrank_bot](declarations/subalgebra-finrank-bot.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=860e3f1f613251303c17e1b33d08aa41f5ad22e54c3254a43a82702d82750f84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Finrank/Variantca8f769f4fa2297b07e3842ace54e2851caf7c1d36ccb67fdb71dce102b4fb0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
