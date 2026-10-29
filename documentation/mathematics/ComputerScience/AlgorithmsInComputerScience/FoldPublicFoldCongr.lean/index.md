# Fold Public Fold Congr

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantcb0980a671b7b5e628492290a13e86581c620afca29e4e7fe75ff9ce5913d80c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `579a2bab97965b27d212eeeecd9cc2000695ad9f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fold](declarations/fold.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [foldTR](declarations/foldtr.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [foldRev](declarations/foldrev.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [any](declarations/any.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [anyTR](declarations/anytr.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [all](declarations/all.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [allTR](declarations/alltr.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fold_congr](declarations/fold-congr.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [foldRev_congr](declarations/foldrev-congr.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [foldTR_loop_congr](declarations/foldtr-loop-congr.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [fold_eq_foldTR](declarations/fold-eq-foldtr.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [any_congr](declarations/any-congr.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [anyTR_loop_congr](declarations/anytr-loop-congr.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [any_eq_anyTR](declarations/any-eq-anytr.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [all_congr](declarations/all-congr.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [allTR_loop_congr](declarations/alltr-loop-congr.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [all_eq_allTR](declarations/all-eq-alltr.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [dfoldCast](declarations/dfoldcast.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [dfoldCast_rfl](declarations/dfoldcast-rfl.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [dfoldCast_trans](declarations/dfoldcast-trans.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [dfoldCast_eq_dfoldCast_iff](declarations/dfoldcast-eq-dfoldcast-iff.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [apply_dfoldCast](declarations/apply-dfoldcast.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [dfold](declarations/dfold.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [dfoldRev](declarations/dfoldrev.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [fold_zero](declarations/fold-zero.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fold_succ](declarations/fold-succ.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [fold_eq_finRange_foldl](declarations/fold-eq-finrange-foldl.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [fold_add](declarations/fold-add.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [foldRev_zero](declarations/foldrev-zero.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [foldRev_succ](declarations/foldrev-succ.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [foldRev_eq_finRange_foldr](declarations/foldrev-eq-finrange-foldr.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [foldRev_add](declarations/foldrev-add.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [any_zero](declarations/any-zero.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [any_succ](declarations/any-succ.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [any_eq_finRange_any](declarations/any-eq-finrange-any.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [all_zero](declarations/all-zero.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [all_succ](declarations/all-succ.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [all_eq_finRange_all](declarations/all-eq-finrange-all.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dfold_zero](declarations/dfold-zero.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [dfold_loop_succ](declarations/dfold-loop-succ.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [dfold_succ](declarations/dfold-succ.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [dfold_congr](declarations/dfold-congr.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [dfold_add](declarations/dfold-add.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [dfoldRev_zero](declarations/dfoldrev-zero.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [dfoldRev_succ](declarations/dfoldrev-succ.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [dfoldRev_congr](declarations/dfoldrev-congr.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [dfoldRev_add](declarations/dfoldrev-add.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [foldI](declarations/foldi.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [anyI](declarations/anyi.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [allI](declarations/alli.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=53ab2334f65c415f2c16d94e8e07081dd53bb19af9d75f3259142c424fc6d52a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantcb0980a671b7b5e628492290a13e86581c620afca29e4e7fe75ff9ce5913d80c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
