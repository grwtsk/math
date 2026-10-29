# Local Extr Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba440227664f5658fece039b8f5b5edf866e6a17`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/LocalExtrBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [posTangentConeAt](declarations/postangentconeat.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [posTangentConeAt_mono](declarations/postangentconeat-mono.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_posTangentConeAt_of_frequently_mem](declarations/mem-postangentconeat-of-frequently-mem.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_posTangentConeAt_of_segment_subset](declarations/mem-postangentconeat-of-segment-subset.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sub_mem_posTangentConeAt_of_segment_subset](declarations/sub-mem-postangentconeat-of-segment-subset.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [posTangentConeAt_univ](declarations/postangentconeat-univ.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsLocalMaxOn.hasFDerivWithinAt_nonpos](declarations/islocalmaxon-hasfderivwithinat-nonpos.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsLocalMaxOn.fderivWithin_nonpos](declarations/islocalmaxon-fderivwithin-nonpos.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsLocalMaxOn.hasFDerivWithinAt_eq_zero](declarations/islocalmaxon-hasfderivwithinat-eq-zero.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsLocalMaxOn.fderivWithin_eq_zero](declarations/islocalmaxon-fderivwithin-eq-zero.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsLocalMinOn.hasFDerivWithinAt_nonneg](declarations/islocalminon-hasfderivwithinat-nonneg.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsLocalMinOn.fderivWithin_nonneg](declarations/islocalminon-fderivwithin-nonneg.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsLocalMinOn.hasFDerivWithinAt_eq_zero](declarations/islocalminon-hasfderivwithinat-eq-zero.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsLocalMinOn.fderivWithin_eq_zero](declarations/islocalminon-fderivwithin-eq-zero.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsLocalMin.hasFDerivAt_eq_zero](declarations/islocalmin-hasfderivat-eq-zero.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsLocalMin.fderiv_eq_zero](declarations/islocalmin-fderiv-eq-zero.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsLocalMax.hasFDerivAt_eq_zero](declarations/islocalmax-hasfderivat-eq-zero.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsLocalMax.fderiv_eq_zero](declarations/islocalmax-fderiv-eq-zero.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsLocalExtr.hasFDerivAt_eq_zero](declarations/islocalextr-hasfderivat-eq-zero.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsLocalExtr.fderiv_eq_zero](declarations/islocalextr-fderiv-eq-zero.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [one_mem_posTangentConeAt_iff_mem_closure](declarations/one-mem-postangentconeat-iff-mem-closure.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [one_mem_posTangentConeAt_iff_frequently](declarations/one-mem-postangentconeat-iff-frequently.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsLocalMin.hasDerivAt_eq_zero](declarations/islocalmin-hasderivat-eq-zero.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsLocalMin.deriv_eq_zero](declarations/islocalmin-deriv-eq-zero.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsLocalMax.hasDerivAt_eq_zero](declarations/islocalmax-hasderivat-eq-zero.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsLocalMax.deriv_eq_zero](declarations/islocalmax-deriv-eq-zero.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsLocalExtr.hasDerivAt_eq_zero](declarations/islocalextr-hasderivat-eq-zero.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsLocalExtr.deriv_eq_zero](declarations/islocalextr-deriv-eq-zero.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ba2d3d49a445ac36777044e5e8995d6eb7aa16a944b744eb0a549c5329c04bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant64e97b0bc809631c3aee1ce7b9d86fc6f94a0303ccdb85543e665aa0f5ea1e4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
