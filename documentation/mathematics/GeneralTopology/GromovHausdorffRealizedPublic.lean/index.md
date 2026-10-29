# Gromov Hausdorff Realized Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79d6fc85f20103763d3f5f2db3629e393cbf6505`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/GromovHausdorffRealizedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ProdSpaceFun](declarations/prodspacefun.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Cb](declarations/cb.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [maxVar](declarations/maxvar.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [one_le_maxVar](declarations/one-le-maxvar.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [candidates](declarations/candidates.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [candidatesB](declarations/candidatesb.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [maxVar_bound](declarations/maxvar-bound.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [candidates_symm](declarations/candidates-symm.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [candidates_triangle](declarations/candidates-triangle.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [candidates_refl](declarations/candidates-refl.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [candidates_nonneg](declarations/candidates-nonneg.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [candidates_dist_inl](declarations/candidates-dist-inl.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [candidates_dist_inr](declarations/candidates-dist-inr.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [candidates_le_maxVar](declarations/candidates-le-maxvar.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [candidates_dist_bound](declarations/candidates-dist-bound.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [candidates_lipschitz_aux](declarations/candidates-lipschitz-aux.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [candidates_lipschitz](declarations/candidates-lipschitz.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [closed_candidatesB](declarations/closed-candidatesb.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [HD](declarations/hd.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [HD_below_aux1](declarations/hd-below-aux1.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [HD_bound_aux1](declarations/hd-bound-aux1.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [HD_below_aux2](declarations/hd-below-aux2.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HD_bound_aux2](declarations/hd-bound-aux2.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [HD_lipschitz_aux1](declarations/hd-lipschitz-aux1.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HD_lipschitz_aux2](declarations/hd-lipschitz-aux2.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [HD_lipschitz_aux3](declarations/hd-lipschitz-aux3.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HD_continuous](declarations/hd-continuous.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isCompact_candidatesB](declarations/iscompact-candidatesb.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [candidatesBOfCandidates](declarations/candidatesbofcandidates.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [candidatesBOfCandidates_mem](declarations/candidatesbofcandidates-mem.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [dist_mem_candidates](declarations/dist-mem-candidates.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [candidatesBDist](declarations/candidatesbdist.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [candidatesBDist_mem_candidatesB](declarations/candidatesbdist-mem-candidatesb.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [candidatesB_nonempty](declarations/candidatesb-nonempty.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [HD_candidatesBDist_le](declarations/hd-candidatesbdist-le.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_minimizer](declarations/exists-minimizer.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [optimalGHDist](declarations/optimalghdist.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [optimalGHDist_mem_candidatesB](declarations/optimalghdist-mem-candidatesb.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [HD_optimalGHDist_le](declarations/hd-optimalghdist-le.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [premetricOptimalGHDist](declarations/premetricoptimalghdist.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [OptimalGHCoupling](declarations/optimalghcoupling.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [optimalGHInjl](declarations/optimalghinjl.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [isometry_optimalGHInjl](declarations/isometry-optimalghinjl.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [optimalGHInjr](declarations/optimalghinjr.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [isometry_optimalGHInjr](declarations/isometry-optimalghinjr.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [compactSpace_optimalGHCoupling](declarations/compactspace-optimalghcoupling.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [hausdorffDist_optimal_le_HD](declarations/hausdorffdist-optimal-le-hd.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cc294cb2ef692efe96de0fca0daea940247f0c248b3d027a44d39f7712410fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantea79f6911f220c668f3417c43efb016acefec735a8bce6935280c82a3c7ae602.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
