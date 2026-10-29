# Gromov Hausdorff Realized Namespaced Aligned

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82db927467f984768136129aec9fe25b31eb2a38`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/GromovHausdorffRealizedNamespacedAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ProdSpaceFun](declarations/prodspacefun.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Cb](declarations/cb.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [maxVar](declarations/maxvar.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [one_le_maxVar](declarations/one-le-maxvar.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [candidates](declarations/candidates.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [candidatesB](declarations/candidatesb.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [maxVar_bound](declarations/maxvar-bound.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [candidates_symm](declarations/candidates-symm.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [candidates_triangle](declarations/candidates-triangle.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [candidates_refl](declarations/candidates-refl.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [candidates_nonneg](declarations/candidates-nonneg.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [candidates_dist_inl](declarations/candidates-dist-inl.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [candidates_dist_inr](declarations/candidates-dist-inr.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [candidates_le_maxVar](declarations/candidates-le-maxvar.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [candidates_dist_bound](declarations/candidates-dist-bound.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [candidates_lipschitz_aux](declarations/candidates-lipschitz-aux.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [candidates_lipschitz](declarations/candidates-lipschitz.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [candidatesBOfCandidates](declarations/candidatesbofcandidates.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [candidatesBOfCandidates_mem](declarations/candidatesbofcandidates-mem.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [dist_mem_candidates](declarations/dist-mem-candidates.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [candidatesBDist](declarations/candidatesbdist.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [candidatesBDist_mem_candidatesB](declarations/candidatesbdist-mem-candidatesb.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [candidatesB_nonempty](declarations/candidatesb-nonempty.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [closed_candidatesB](declarations/closed-candidatesb.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isCompact_candidatesB](declarations/iscompact-candidatesb.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [HD](declarations/hd.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HD_below_aux1](declarations/hd-below-aux1.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HD_bound_aux1](declarations/hd-bound-aux1.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [HD_below_aux2](declarations/hd-below-aux2.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [HD_bound_aux2](declarations/hd-bound-aux2.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [HD_candidatesBDist_le](declarations/hd-candidatesbdist-le.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HD_lipschitz_aux1](declarations/hd-lipschitz-aux1.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HD_lipschitz_aux2](declarations/hd-lipschitz-aux2.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [HD_lipschitz_aux3](declarations/hd-lipschitz-aux3.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [HD_continuous](declarations/hd-continuous.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_minimizer](declarations/exists-minimizer.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [optimalGHDist](declarations/optimalghdist.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [optimalGHDist_mem_candidatesB](declarations/optimalghdist-mem-candidatesb.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [HD_optimalGHDist_le](declarations/hd-optimalghdist-le.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [premetricOptimalGHDist](declarations/premetricoptimalghdist.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [OptimalGHCoupling](declarations/optimalghcoupling.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [optimalGHInjl](declarations/optimalghinjl.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isometry_optimalGHInjl](declarations/isometry-optimalghinjl.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [optimalGHInjr](declarations/optimalghinjr.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isometry_optimalGHInjr](declarations/isometry-optimalghinjr.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [compactSpace_optimalGHCoupling](declarations/compactspace-optimalghcoupling.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [hausdorffDist_optimal_le_HD](declarations/hausdorffdist-optimal-le-hd.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e8dcf2b9ad19f2cc161afd0467e3db6a7fc2cbe3c21ac1f56aa4ab4c5c9d4e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
