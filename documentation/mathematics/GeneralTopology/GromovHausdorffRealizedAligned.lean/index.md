# Gromov Hausdorff Realized Aligned

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f554c13e90b90b506b2b80187f766c837c76fa45`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/GromovHausdorffRealizedAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ProdSpaceFun](declarations/prodspacefun.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Cb](declarations/cb.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [maxVar](declarations/maxvar.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [one_le_maxVar](declarations/one-le-maxvar.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [candidates](declarations/candidates.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [candidatesB](declarations/candidatesb.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [maxVar_bound](declarations/maxvar-bound.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [candidates_symm](declarations/candidates-symm.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [candidates_triangle](declarations/candidates-triangle.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [candidates_refl](declarations/candidates-refl.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [candidates_nonneg](declarations/candidates-nonneg.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [candidates_dist_inl](declarations/candidates-dist-inl.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [candidates_dist_inr](declarations/candidates-dist-inr.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [candidates_le_maxVar](declarations/candidates-le-maxvar.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [candidates_dist_bound](declarations/candidates-dist-bound.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [candidates_lipschitz_aux](declarations/candidates-lipschitz-aux.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [candidates_lipschitz](declarations/candidates-lipschitz.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [candidatesBOfCandidates](declarations/candidatesbofcandidates.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [candidatesBOfCandidates_mem](declarations/candidatesbofcandidates-mem.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [dist_mem_candidates](declarations/dist-mem-candidates.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [candidatesBDist](declarations/candidatesbdist.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [candidatesBDist_mem_candidatesB](declarations/candidatesbdist-mem-candidatesb.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [candidatesB_nonempty](declarations/candidatesb-nonempty.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [closed_candidatesB](declarations/closed-candidatesb.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isCompact_candidatesB](declarations/iscompact-candidatesb.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [HD](declarations/hd.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HD_below_aux1](declarations/hd-below-aux1.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HD_bound_aux1](declarations/hd-bound-aux1.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [HD_below_aux2](declarations/hd-below-aux2.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [HD_bound_aux2](declarations/hd-bound-aux2.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [HD_candidatesBDist_le](declarations/hd-candidatesbdist-le.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HD_lipschitz_aux1](declarations/hd-lipschitz-aux1.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HD_lipschitz_aux2](declarations/hd-lipschitz-aux2.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [HD_lipschitz_aux3](declarations/hd-lipschitz-aux3.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [HD_continuous](declarations/hd-continuous.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_minimizer](declarations/exists-minimizer.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [optimalGHDist](declarations/optimalghdist.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [optimalGHDist_mem_candidatesB](declarations/optimalghdist-mem-candidatesb.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [HD_optimalGHDist_le](declarations/hd-optimalghdist-le.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [premetricOptimalGHDist](declarations/premetricoptimalghdist.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [OptimalGHCoupling](declarations/optimalghcoupling.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [optimalGHInjl](declarations/optimalghinjl.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isometry_optimalGHInjl](declarations/isometry-optimalghinjl.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [optimalGHInjr](declarations/optimalghinjr.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isometry_optimalGHInjr](declarations/isometry-optimalghinjr.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [compactSpace_optimalGHCoupling](declarations/compactspace-optimalghcoupling.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [hausdorffDist_optimal_le_HD](declarations/hausdorffdist-optimal-le-hd.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5fbd53573084038222a0230f5509dfce8e1b1deec6ce57a34944eaf2cef1592 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4a4c8a4e78eba411165d0662d1590049baa5082b46158b921cb784d054b1b41e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
