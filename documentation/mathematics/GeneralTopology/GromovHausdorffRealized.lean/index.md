# Gromov Hausdorff Realized

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82f907a1e1323a2487d6bab6c1fa2cf06a775609`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/GromovHausdorffRealized.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ProdSpaceFun](declarations/prodspacefun.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Cb](declarations/cb.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [maxVar](declarations/maxvar.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [one_le_maxVar](declarations/one-le-maxvar.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [candidates](declarations/candidates.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [candidatesB](declarations/candidatesb.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [maxVar_bound](declarations/maxvar-bound.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [candidates_symm](declarations/candidates-symm.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [candidates_triangle](declarations/candidates-triangle.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [candidates_refl](declarations/candidates-refl.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [candidates_nonneg](declarations/candidates-nonneg.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [candidates_dist_inl](declarations/candidates-dist-inl.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [candidates_dist_inr](declarations/candidates-dist-inr.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [candidates_le_maxVar](declarations/candidates-le-maxvar.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [candidates_dist_bound](declarations/candidates-dist-bound.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [candidates_lipschitz_aux](declarations/candidates-lipschitz-aux.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [candidates_lipschitz](declarations/candidates-lipschitz.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [closed_candidatesB](declarations/closed-candidatesb.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [HD](declarations/hd.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [HD_below_aux1](declarations/hd-below-aux1.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [HD_bound_aux1](declarations/hd-bound-aux1.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [HD_below_aux2](declarations/hd-below-aux2.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HD_bound_aux2](declarations/hd-bound-aux2.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [HD_lipschitz_aux1](declarations/hd-lipschitz-aux1.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HD_lipschitz_aux2](declarations/hd-lipschitz-aux2.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [HD_lipschitz_aux3](declarations/hd-lipschitz-aux3.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HD_continuous](declarations/hd-continuous.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isCompact_candidatesB](declarations/iscompact-candidatesb.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [candidatesBOfCandidates](declarations/candidatesbofcandidates.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [candidatesBOfCandidates_mem](declarations/candidatesbofcandidates-mem.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [dist_mem_candidates](declarations/dist-mem-candidates.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [candidatesBDist](declarations/candidatesbdist.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [candidatesBDist_mem_candidatesB](declarations/candidatesbdist-mem-candidatesb.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [candidatesB_nonempty](declarations/candidatesb-nonempty.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [HD_candidatesBDist_le](declarations/hd-candidatesbdist-le.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_minimizer](declarations/exists-minimizer.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [optimalGHDist](declarations/optimalghdist.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [optimalGHDist_mem_candidatesB](declarations/optimalghdist-mem-candidatesb.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [HD_optimalGHDist_le](declarations/hd-optimalghdist-le.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [premetricOptimalGHDist](declarations/premetricoptimalghdist.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [OptimalGHCoupling](declarations/optimalghcoupling.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [optimalGHInjl](declarations/optimalghinjl.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isometry_optimalGHInjl](declarations/isometry-optimalghinjl.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [optimalGHInjr](declarations/optimalghinjr.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isometry_optimalGHInjr](declarations/isometry-optimalghinjr.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [compactSpace_optimalGHCoupling](declarations/compactspace-optimalghcoupling.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [hausdorffDist_optimal_le_HD](declarations/hausdorffdist-optimal-le-hd.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4768a28b0f812fc0dbafefe9957cd0d35514dbdf58c82539749f9fd1f457bbe9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variantfc2ea3ed54ce1403647efab0cf5b5e363b9d1851b451407ba96d6e7d80062666.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
