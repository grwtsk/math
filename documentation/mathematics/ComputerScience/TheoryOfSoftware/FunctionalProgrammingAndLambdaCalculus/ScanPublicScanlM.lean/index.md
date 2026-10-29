# Scan Public Scanl M

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant761bee95d688945dd7288065aee06bfa1e0a3b91852fdcb6e17adf62322ff871.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4509d5d2cc9a6e96c20019a17dcf552f7c5f97a2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanPublicScanlM.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [scanlM.loop_toList](declarations/scanlm-loop-tolist.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [scanlM_eq_scanlM_toList](declarations/scanlm-eq-scanlm-tolist.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toList_scanlM](declarations/tolist-scanlm.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [scanrM.loop_toList](declarations/scanrm-loop-tolist.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [scanrM_eq_scanrM_toList](declarations/scanrm-eq-scanrm-tolist.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toList_scanrM](declarations/tolist-scanrm.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [scanlM_extract](declarations/scanlm-extract.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [scanrM_extract](declarations/scanrm-extract.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [scanlM_empty](declarations/scanlm-empty.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [scanrM_empty](declarations/scanrm-empty.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [scanlM_reverse](declarations/scanlm-reverse.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [scanlM_pure](declarations/scanlm-pure.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [scanrM_pure](declarations/scanrm-pure.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [idRun_scanlM](declarations/idrun-scanlm.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [idRun_scanrM](declarations/idrun-scanrm.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [scanlM_map](declarations/scanlm-map.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [scanrM_map](declarations/scanrm-map.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [scanl_eq_scanlM](declarations/scanl-eq-scanlm.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [scanl_eq_scanl_toList](declarations/scanl-eq-scanl-tolist.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toList_scanl](declarations/tolist-scanl.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [size_scanl](declarations/size-scanl.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [scanl_empty](declarations/scanl-empty.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [scanl_singleton](declarations/scanl-singleton.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [scanl_ne_empty](declarations/scanl-ne-empty.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [scanl_eq_singleton_iff](declarations/scanl-eq-singleton-iff.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [getElem_scanl](declarations/getelem-scanl-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [getElem?_scanl](declarations/getelem-scanl.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [take_scanl](declarations/take-scanl.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [getElem?_scanl_zero](declarations/getelem-scanl-zero-source-edition-2.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [getElem_scanl_zero](declarations/getelem-scanl-zero.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [getElem?_succ_scanl](declarations/getelem-succ-scanl-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [getElem_succ_scanl](declarations/getelem-succ-scanl.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [scanl_push](declarations/scanl-push.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [scanl_map](declarations/scanl-map.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [back_scanl](declarations/back-scanl-source-edition-2.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [back?_scanl](declarations/back-scanl.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [scanr_eq_scanrM](declarations/scanr-eq-scanrm.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [scanr_eq_scanr_toList](declarations/scanr-eq-scanr-tolist.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toList_scanr](declarations/tolist-scanr.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [size_scanr](declarations/size-scanr.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [scanr_empty](declarations/scanr-empty.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [scanr_ne_empty](declarations/scanr-ne-empty.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [scanr_push](declarations/scanr-push.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [back_scanr](declarations/back-scanr-source-edition-2.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [back?_scanr](declarations/back-scanr.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [getElem_scanr](declarations/getelem-scanr.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [getElem?_scanr](declarations/getelem-scanr-source-edition-2.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [getElem_scanr_zero](declarations/getelem-scanr-zero-source-edition-2.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [getElem?_scanr_zero](declarations/getelem-scanr-zero.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [scanr_map](declarations/scanr-map.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [scanl_reverse](declarations/scanl-reverse.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [scanr_reverse](declarations/scanr-reverse.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [scanl_extract](declarations/scanl-extract.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [scanr_extract](declarations/scanr-extract.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [toArray_scanlM](declarations/toarray-scanlm.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [toArray_scanrM](declarations/toarray-scanrm.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [toArray_scanl](declarations/toarray-scanl.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [toArray_scanr](declarations/toarray-scanr.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [scanlM_eq_scanlM_extract](declarations/scanlm-eq-scanlm-extract.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [scanrM_eq_scanrM_extract](declarations/scanrm-eq-scanrm-extract.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [scanl_eq_scanl_extract](declarations/scanl-eq-scanl-extract.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [scanr_eq_scanr_extract](declarations/scanr-eq-scanr-extract.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83f0affb3e276c51df6e5ac9e23e3003191bee89ca2578ab1c6424a560c0c92d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant761bee95d688945dd7288065aee06bfa1e0a3b91852fdcb6e17adf62322ff871.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
