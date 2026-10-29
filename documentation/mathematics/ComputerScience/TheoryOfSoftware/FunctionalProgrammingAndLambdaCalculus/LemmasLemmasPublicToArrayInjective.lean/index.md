# Lemmas Lemmas Public To Array Injective

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**68 observed declarations and anonymous commands**, 68 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2aa26ba624a3a98287759863ba2678ebca99a06686e2d6c0a18ad959a8a92bca.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fcaa6d7dad22e77db699b3571fdbf27ca2ca34e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasPublicToArrayInjective.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [toArray_injective](declarations/toarray-injective.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [get_mk](declarations/get-mk.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [getD_mk](declarations/getd-mk.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [uget_mk](declarations/uget-mk.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tail_eq_of_zero](declarations/tail-eq-of-zero.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [tail_eq_of_ne_zero](declarations/tail-eq-of-ne-zero.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toList_tail](declarations/tolist-tail.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [getElem_tail](declarations/getelem-tail.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [get_eq_getElem](declarations/get-eq-getelem.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [get_push_last](declarations/get-push-last.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [get_push_castSucc](declarations/get-push-castsucc.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [get_map](declarations/get-map.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [get_reverse](declarations/get-reverse.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [get_replicate](declarations/get-replicate.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [get_range](declarations/get-range.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [get_ofFn](declarations/get-offn.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [get_cast](declarations/get-cast.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [get_tail](declarations/get-tail.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [finIdxOf?_empty](declarations/finidxof-empty.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [finIdxOf?_eq_none_iff](declarations/finidxof-eq-none-iff.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [finIdxOf?_eq_some_iff](declarations/finidxof-eq-some-iff.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isSome_finIdxOf?](declarations/issome-finidxof.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isNone_finIdxOf?](declarations/isnone-finidxof.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [scanlM.loop_toArray](declarations/scanlm-loop-toarray.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toArray_scanlM](declarations/toarray-scanlm.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [scanrM.loop_toArray](declarations/scanrm-loop-toarray.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toArray_scanrM](declarations/toarray-scanrm.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toList_scanlM](declarations/tolist-scanlm.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toList_scanrM](declarations/tolist-scanrm.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [scanlM_empty](declarations/scanlm-empty.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [scanrM_empty](declarations/scanrm-empty.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [scanlM_reverse](declarations/scanlm-reverse.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [scanlM_pure](declarations/scanlm-pure.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [scanrM_pure](declarations/scanrm-pure.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [idRun_scanlM](declarations/idrun-scanlm.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [idRun_scanrM](declarations/idrun-scanrm.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [scanlM_map](declarations/scanlm-map.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [scanrM_map](declarations/scanrm-map.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [scanl_eq_scanlM](declarations/scanl-eq-scanlm.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [scanr_eq_scanrM](declarations/scanr-eq-scanrm.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toArray_scanl](declarations/toarray-scanl.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [toArray_scanr](declarations/toarray-scanr.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [toList_scanl](declarations/tolist-scanl.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [toList_scanr](declarations/tolist-scanr.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [scanl_empty](declarations/scanl-empty.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [scanr_empty](declarations/scanr-empty.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [scanl_singleton](declarations/scanl-singleton.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [getElem_scanl](declarations/getelem-scanl-source-edition-2.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [getElem_scanr](declarations/getelem-scanr.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [getElem?_scanl](declarations/getelem-scanl.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [getElem?_scanr](declarations/getelem-scanr-source-edition-2.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [getElem_scanl_zero](declarations/getelem-scanl-zero-source-edition-2.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [getElem_scanr_zero](declarations/getelem-scanr-zero.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [getElem?_scanl_zero](declarations/getelem-scanl-zero.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [getElem?_scanr_zero](declarations/getelem-scanr-zero-source-edition-2.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [getElem?_succ_scanl](declarations/getelem-succ-scanl.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [getElem_succ_scanl](declarations/getelem-succ-scanl-source-edition-2.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [scanl_push](declarations/scanl-push.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [scanr_push](declarations/scanr-push.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [scanl_map](declarations/scanl-map.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [scanr_map](declarations/scanr-map.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [scanl_reverse](declarations/scanl-reverse.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [scanr_reverse](declarations/scanr-reverse.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [scanr_eq_reverse_scanl_reverse](declarations/scanr-eq-reverse-scanl-reverse.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [back_scanl](declarations/back-scanl-source-edition-2.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [back_scanr](declarations/back-scanr-source-edition-2.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [back?_scanl](declarations/back-scanl.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [back?_scanr](declarations/back-scanr.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd196c6a6b87434a00ac6f2859a22b0680ded6e18953f54e13ec1e1c206854dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2aa26ba624a3a98287759863ba2678ebca99a06686e2d6c0a18ad959a8a92bca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
