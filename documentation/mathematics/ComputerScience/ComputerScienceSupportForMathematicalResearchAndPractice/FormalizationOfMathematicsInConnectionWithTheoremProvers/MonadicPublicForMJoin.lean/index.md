# Monadic Public For MJoin

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monadic/Variant5bf7ce8f1c5d8de2488a851d42b28866c7feefe11f0aba451f53fa37eeb7bd2f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fccafe5507f839e5a0bf308244a4ade948541b08`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MonadicPublicForMJoin.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [bindM_none](declarations/bindm-none.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [bindM_some](declarations/bindm-some.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [forM_eq_forM](declarations/form-eq-form.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [forM_none](declarations/form-none.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [forM_some](declarations/form-some.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [forM_map](declarations/form-map.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [forM_join](declarations/form-join.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [forIn'_none](declarations/forin-none-source-edition-2.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [forIn'_some](declarations/forin-some-source-edition-2.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [forIn_none](declarations/forin-none.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [forIn_some](declarations/forin-some.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [forIn'_congr](declarations/forin-congr.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [forIn'_eq_pelim](declarations/forin-eq-pelim.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [forIn'_yield_eq_pelim](declarations/forin-yield-eq-pelim.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [forIn'_pure_yield_eq_pelim](declarations/forin-pure-yield-eq-pelim.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [idRun_forIn'_yield_eq_pelim](declarations/idrun-forin-yield-eq-pelim.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [forIn'_map](declarations/forin-map.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [forIn'_join](declarations/forin-join.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [forIn_eq_elim](declarations/forin-eq-elim.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [forIn_yield_eq_elim](declarations/forin-yield-eq-elim.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forIn_pure_yield_eq_elim](declarations/forin-pure-yield-eq-elim.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [idRun_forIn_yield_eq_elim](declarations/idrun-forin-yield-eq-elim.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [forIn_map](declarations/forin-map-source-edition-2.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [forIn_join](declarations/forin-join-source-edition-2.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [elimM_pure](declarations/elimm-pure.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [elimM_bind](declarations/elimm-bind.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [elimM_map](declarations/elimm-map.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tryCatch_eq_or](declarations/trycatch-eq-or.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [throw_eq_none](declarations/throw-eq-none.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [filterM_none](declarations/filterm-none.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [filterM_some](declarations/filterm-some.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sequence_join](declarations/sequence-join.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [bindM_join](declarations/bindm-join.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mapM_join](declarations/mapm-join.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mapM_guard](declarations/mapm-guard.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7945c8bbeeaf3ea7464330b906111b41a0237cb007b0c500849ed9c5c62c2cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monadic/Variant5bf7ce8f1c5d8de2488a851d42b28866c7feefe11f0aba451f53fa37eeb7bd2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
