# Monadic Namespaced Public For MJoin

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monadic/Variantabb5d731cbc089bfdb7127de205b8cd46c9a8509e3d6a2107102fbb0752c46b4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cffce317f0a407647b174271ee3af4276a23c641`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MonadicNamespacedPublicForMJoin.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [bindM_none](declarations/bindm-none.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [bindM_some](declarations/bindm-some.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [forM_eq_forM](declarations/form-eq-form.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [forM_none](declarations/form-none.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [forM_some](declarations/form-some.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [forM_map](declarations/form-map.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [forM_join](declarations/form-join.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [forIn'_none](declarations/forin-none.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [forIn'_some](declarations/forin-some-source-edition-2.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [forIn_none](declarations/forin-none-source-edition-2.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [forIn_some](declarations/forin-some.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [forIn'_congr](declarations/forin-congr.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [forIn'_eq_pelim](declarations/forin-eq-pelim.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [forIn'_yield_eq_pelim](declarations/forin-yield-eq-pelim.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [forIn'_pure_yield_eq_pelim](declarations/forin-pure-yield-eq-pelim.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [idRun_forIn'_yield_eq_pelim](declarations/idrun-forin-yield-eq-pelim.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [forIn'_map](declarations/forin-map-source-edition-2.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [forIn'_join](declarations/forin-join-source-edition-2.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [forIn_eq_elim](declarations/forin-eq-elim.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [forIn_yield_eq_elim](declarations/forin-yield-eq-elim.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forIn_pure_yield_eq_elim](declarations/forin-pure-yield-eq-elim.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [idRun_forIn_yield_eq_elim](declarations/idrun-forin-yield-eq-elim.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [forIn_map](declarations/forin-map.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [forIn_join](declarations/forin-join.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [elimM_pure](declarations/elimm-pure.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [elimM_bind](declarations/elimm-bind.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [elimM_map](declarations/elimm-map.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tryCatch_eq_or](declarations/trycatch-eq-or.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [throw_eq_none](declarations/throw-eq-none.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [filterM_none](declarations/filterm-none.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [filterM_some](declarations/filterm-some.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sequence_join](declarations/sequence-join.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [bindM_join](declarations/bindm-join.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mapM_join](declarations/mapm-join.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mapM_guard](declarations/mapm-guard.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34b3a508bd478994609b7fb6345df58aea8a95a58ce6920a655de0ed885e450b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monadic/Variantabb5d731cbc089bfdb7127de205b8cd46c9a8509e3d6a2107102fbb0752c46b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
