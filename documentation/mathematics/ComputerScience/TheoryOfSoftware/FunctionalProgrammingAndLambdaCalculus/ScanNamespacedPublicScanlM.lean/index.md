# Scan Namespaced Public Scanl M

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant2ff10e48a8208180e3ab3eab81823a96f385339da07ae91c7f5bee65d87be857.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `107a0bfb7ff52c66a1c7d97175d54040c271f536`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ScanNamespacedPublicScanlM.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [scanlM.loop_toList](declarations/scanlm-loop-tolist.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [scanlM_eq_scanlM_toList](declarations/scanlm-eq-scanlm-tolist.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toList_scanlM](declarations/tolist-scanlm.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [scanrM.loop_toList](declarations/scanrm-loop-tolist.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [scanrM_eq_scanrM_toList](declarations/scanrm-eq-scanrm-tolist.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toList_scanrM](declarations/tolist-scanrm.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [scanlM_extract](declarations/scanlm-extract.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [scanrM_extract](declarations/scanrm-extract.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [scanlM_empty](declarations/scanlm-empty.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [scanrM_empty](declarations/scanrm-empty.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [scanlM_reverse](declarations/scanlm-reverse.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [scanlM_pure](declarations/scanlm-pure.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [scanrM_pure](declarations/scanrm-pure.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [idRun_scanlM](declarations/idrun-scanlm.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [idRun_scanrM](declarations/idrun-scanrm.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [scanlM_map](declarations/scanlm-map.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [scanrM_map](declarations/scanrm-map.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [scanl_eq_scanlM](declarations/scanl-eq-scanlm.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [scanl_eq_scanl_toList](declarations/scanl-eq-scanl-tolist.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toList_scanl](declarations/tolist-scanl.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [size_scanl](declarations/size-scanl.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [scanl_empty](declarations/scanl-empty.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [scanl_singleton](declarations/scanl-singleton.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [scanl_ne_empty](declarations/scanl-ne-empty.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [scanl_eq_singleton_iff](declarations/scanl-eq-singleton-iff.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [getElem_scanl](declarations/getelem-scanl.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [getElem?_scanl](declarations/getelem-scanl-source-edition-2.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [take_scanl](declarations/take-scanl.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [getElem?_scanl_zero](declarations/getelem-scanl-zero.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [getElem_scanl_zero](declarations/getelem-scanl-zero-source-edition-2.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [getElem?_succ_scanl](declarations/getelem-succ-scanl-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [getElem_succ_scanl](declarations/getelem-succ-scanl.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [scanl_push](declarations/scanl-push.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [scanl_map](declarations/scanl-map.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [back_scanl](declarations/back-scanl.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [back?_scanl](declarations/back-scanl-source-edition-2.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [scanr_eq_scanrM](declarations/scanr-eq-scanrm.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [scanr_eq_scanr_toList](declarations/scanr-eq-scanr-tolist.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toList_scanr](declarations/tolist-scanr.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [size_scanr](declarations/size-scanr.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [scanr_empty](declarations/scanr-empty.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [scanr_ne_empty](declarations/scanr-ne-empty.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [scanr_push](declarations/scanr-push.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [back_scanr](declarations/back-scanr.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [back?_scanr](declarations/back-scanr-source-edition-2.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [getElem_scanr](declarations/getelem-scanr-source-edition-2.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [getElem?_scanr](declarations/getelem-scanr.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [getElem_scanr_zero](declarations/getelem-scanr-zero-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [getElem?_scanr_zero](declarations/getelem-scanr-zero.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [scanr_map](declarations/scanr-map.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [scanl_reverse](declarations/scanl-reverse.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [scanr_reverse](declarations/scanr-reverse.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [scanl_extract](declarations/scanl-extract.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [scanr_extract](declarations/scanr-extract.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [toArray_scanlM](declarations/toarray-scanlm.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [toArray_scanrM](declarations/toarray-scanrm.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [toArray_scanl](declarations/toarray-scanl.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [toArray_scanr](declarations/toarray-scanr.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [scanlM_eq_scanlM_extract](declarations/scanlm-eq-scanlm-extract.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [scanrM_eq_scanrM_extract](declarations/scanrm-eq-scanrm-extract.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [scanl_eq_scanl_extract](declarations/scanl-eq-scanl-extract.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [scanr_eq_scanr_extract](declarations/scanr-eq-scanr-extract.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32e6753745c1cf733c90f26f056b238359cd34ba2336cf7fda8b78350fb12b63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variant2ff10e48a8208180e3ab3eab81823a96f385339da07ae91c7f5bee65d87be857.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
