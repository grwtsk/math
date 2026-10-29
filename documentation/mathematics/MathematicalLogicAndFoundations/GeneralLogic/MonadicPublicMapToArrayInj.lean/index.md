# Monadic Public Map To Array Inj

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b8233fbd0d0c9a9943a158a19a09e3527125f6e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/MonadicPublicMapToArrayInj.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_toArray_inj](declarations/map-toarray-inj.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mapM_pure](declarations/mapm-pure.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mapM_map](declarations/mapm-map.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mapM_congr](declarations/mapm-congr.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mapM_mk_empty](declarations/mapm-mk-empty.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mapM_append](declarations/mapm-append.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [foldlM_map](declarations/foldlm-map.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [foldrM_map](declarations/foldrm-map.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [foldlM_attachWith](declarations/foldlm-attachwith.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [foldrM_attachWith](declarations/foldrm-attachwith.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [forM_congr](declarations/form-congr.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [forM_append](declarations/form-append.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [forM_map](declarations/form-map.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [forIn'_congr](declarations/forin-congr.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [forIn'_eq_foldlM](declarations/forin-eq-foldlm.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [forIn'_yield_eq_foldlM](declarations/forin-yield-eq-foldlm.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [forIn'_pure_yield_eq_foldl](declarations/forin-pure-yield-eq-foldl-source-edition-2.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [idRun_forIn'_yield_eq_foldl](declarations/idrun-forin-yield-eq-foldl.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [forIn'_map](declarations/forin-map-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [forIn_eq_foldlM](declarations/forin-eq-foldlm-source-edition-2.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forIn_yield_eq_foldlM](declarations/forin-yield-eq-foldlm-source-edition-2.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [forIn_pure_yield_eq_foldl](declarations/forin-pure-yield-eq-foldl.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [idRun_forIn_yield_eq_foldl](declarations/idrun-forin-yield-eq-foldl-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [forIn_map](declarations/forin-map.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [anyM_pure](declarations/anym-pure.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [allM_pure](declarations/allm-pure.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [findM?_pure](declarations/findm-pure.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [findSomeM?_pure](declarations/findsomem-pure.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a75d162846018240d191e3ee0f21217f8a4354098b2cbc3c301691c761403227 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
