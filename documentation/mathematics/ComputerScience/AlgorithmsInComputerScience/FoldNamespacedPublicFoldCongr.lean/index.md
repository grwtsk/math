# Fold Namespaced Public Fold Congr

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f41eb32a721fd60c0c7cef415e36045231fe665f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/FoldNamespacedPublicFoldCongr.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fold](declarations/fold.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [foldTR](declarations/foldtr.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [foldRev](declarations/foldrev.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [any](declarations/any.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [anyTR](declarations/anytr.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [all](declarations/all.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [allTR](declarations/alltr.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fold_congr](declarations/fold-congr.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [foldRev_congr](declarations/foldrev-congr.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [foldTR_loop_congr](declarations/foldtr-loop-congr.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [fold_eq_foldTR](declarations/fold-eq-foldtr.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [any_congr](declarations/any-congr.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [anyTR_loop_congr](declarations/anytr-loop-congr.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [any_eq_anyTR](declarations/any-eq-anytr.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [all_congr](declarations/all-congr.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [allTR_loop_congr](declarations/alltr-loop-congr.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [all_eq_allTR](declarations/all-eq-alltr.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [dfoldCast](declarations/dfoldcast.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [dfoldCast_rfl](declarations/dfoldcast-rfl.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [dfoldCast_trans](declarations/dfoldcast-trans.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [dfoldCast_eq_dfoldCast_iff](declarations/dfoldcast-eq-dfoldcast-iff.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [apply_dfoldCast](declarations/apply-dfoldcast.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [dfold](declarations/dfold.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [dfoldRev](declarations/dfoldrev.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [fold_zero](declarations/fold-zero.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fold_succ](declarations/fold-succ.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [fold_eq_finRange_foldl](declarations/fold-eq-finrange-foldl.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [fold_add](declarations/fold-add.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [foldRev_zero](declarations/foldrev-zero.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [foldRev_succ](declarations/foldrev-succ.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [foldRev_eq_finRange_foldr](declarations/foldrev-eq-finrange-foldr.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [foldRev_add](declarations/foldrev-add.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [any_zero](declarations/any-zero.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [any_succ](declarations/any-succ.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [any_eq_finRange_any](declarations/any-eq-finrange-any.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [all_zero](declarations/all-zero.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [all_succ](declarations/all-succ.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [all_eq_finRange_all](declarations/all-eq-finrange-all.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dfold_zero](declarations/dfold-zero.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [dfold_loop_succ](declarations/dfold-loop-succ.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [dfold_succ](declarations/dfold-succ.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [dfold_congr](declarations/dfold-congr.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [dfold_add](declarations/dfold-add.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [dfoldRev_zero](declarations/dfoldrev-zero.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [dfoldRev_succ](declarations/dfoldrev-succ.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [dfoldRev_congr](declarations/dfoldrev-congr.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [dfoldRev_add](declarations/dfoldrev-add.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [foldI](declarations/foldi.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [anyI](declarations/anyi.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [allI](declarations/alli.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d0c237c3da871d6558fc85932478c091f29eafd5f4e4617e8bc1477514ecd8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
