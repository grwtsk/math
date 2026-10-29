# Fold Namespaced Public Foldl MLoop Lt

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c64e7eaf2028b2f3e044ae267d86e143f10b7ce`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FoldNamespacedPublicFoldlMLoopLt.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [foldl](declarations/foldl.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [foldr](declarations/foldr.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [foldlM](declarations/foldlm.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [foldrM](declarations/foldrm.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [foldlM_congr](declarations/foldlm-congr.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [foldlM_loop_lt](declarations/foldlm-loop-lt.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [foldlM_loop_eq](declarations/foldlm-loop-eq.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [foldlM_loop](declarations/foldlm-loop.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [foldlM_zero](declarations/foldlm-zero.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [foldlM_succ](declarations/foldlm-succ.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [foldlM_succ_last](declarations/foldlm-succ-last.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [foldlM_add](declarations/foldlm-add.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [foldrM_congr](declarations/foldrm-congr.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [foldrM_loop_zero](declarations/foldrm-loop-zero.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [foldrM_loop_succ](declarations/foldrm-loop-succ.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [foldrM_loop](declarations/foldrm-loop.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [foldrM_zero](declarations/foldrm-zero.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [foldrM_succ](declarations/foldrm-succ.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [foldrM_succ_last](declarations/foldrm-succ-last.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [foldrM_add](declarations/foldrm-add.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [foldl_congr](declarations/foldl-congr.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [foldl_loop_lt](declarations/foldl-loop-lt.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [foldl_loop_eq](declarations/foldl-loop-eq.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [foldl_loop](declarations/foldl-loop.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [foldl_zero](declarations/foldl-zero.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [foldl_succ](declarations/foldl-succ.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [foldl_succ_last](declarations/foldl-succ-last.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [foldl_add](declarations/foldl-add.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [foldl_eq_foldlM](declarations/foldl-eq-foldlm.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [foldlM_pure](declarations/foldlm-pure.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [foldr_congr](declarations/foldr-congr.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [foldr_loop_zero](declarations/foldr-loop-zero.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [foldr_loop_succ](declarations/foldr-loop-succ.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [foldr_loop](declarations/foldr-loop.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [foldr_zero](declarations/foldr-zero.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [foldr_succ](declarations/foldr-succ.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [foldr_succ_last](declarations/foldr-succ-last.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [foldr_add](declarations/foldr-add.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [foldr_eq_foldrM](declarations/foldr-eq-foldrm.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [foldl_rev](declarations/foldl-rev.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [foldr_rev](declarations/foldr-rev.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [foldrM_pure](declarations/foldrm-pure.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=829ba6f6b479dd018789dc3143f15be4517efe47a0a2efc3e4f45c14fbb51c0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
