# Gluing Namespaced Dense IUnion Range To Inductive Limit

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8df2793c74dfe8c10bfddab6d9d775ee303e5ee2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/GluingNamespacedDenseIUnionRangeToInductiveLimit.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [glueDist](declarations/gluedist.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [glueDist_self](declarations/gluedist-self.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [glueDist_glued_points](declarations/gluedist-glued-points.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [glueDist_comm](declarations/gluedist-comm.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [glueDist_swap](declarations/gluedist-swap.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [le_glueDist_inl_inr](declarations/le-gluedist-inl-inr.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [le_glueDist_inr_inl](declarations/le-gluedist-inr-inl.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [glueDist_triangle_inl_inr_inr](declarations/gluedist-triangle-inl-inr-inr.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [glueDist_triangle_inl_inr_inl](declarations/gluedist-triangle-inl-inr-inl.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [glueDist_triangle](declarations/gluedist-triangle.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eq_of_glueDist_eq_zero](declarations/eq-of-gluedist-eq-zero.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Sum.mem_uniformity_iff_glueDist](declarations/sum-mem-uniformity-iff-gluedist.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [glueMetricApprox](declarations/gluemetricapprox.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Sum.dist](declarations/sum-dist.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Sum.dist_eq_glueDist](declarations/sum-dist-eq-gluedist.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Sum.dist_comm](declarations/sum-dist-comm.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Sum.one_le_dist_inl_inr](declarations/sum-one-le-dist-inl-inr.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Sum.one_le_dist_inr_inl](declarations/sum-one-le-dist-inr-inl.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Sum.mem_uniformity](declarations/sum-mem-uniformity.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [metricSpaceSum](declarations/metricspacesum.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Sum.dist_eq](declarations/sum-dist-eq.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isometry_inl](declarations/isometry-inl.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isometry_inr](declarations/isometry-inr.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [dist](declarations/dist.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [instDist](declarations/instdist.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [dist_same](declarations/dist-same.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dist_ne](declarations/dist-ne.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [one_le_dist_of_ne](declarations/one-le-dist-of-ne.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [fst_eq_of_dist_lt_one](declarations/fst-eq-of-dist-lt-one.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [dist_triangle](declarations/dist-triangle.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isOpen_iff](declarations/isopen-iff.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [metricSpace](declarations/metricspace.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isometry_mk](declarations/isometry-mk.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [completeSpace](declarations/completespace.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [gluePremetric](declarations/gluepremetric.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [GlueSpace](declarations/gluespace.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [toGlueL](declarations/togluel.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [toGlueR](declarations/togluer.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [inhabitedLeft](declarations/inhabitedleft.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [inhabitedRight](declarations/inhabitedright.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [toGlue_commute](declarations/toglue-commute.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [toGlueL_isometry](declarations/togluel-isometry.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [toGlueR_isometry](declarations/togluer-isometry.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [inductiveLimitDist](declarations/inductivelimitdist.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [inductiveLimitDist_eq_dist](declarations/inductivelimitdist-eq-dist.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [inductivePremetric](declarations/inductivepremetric.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [InductiveLimit](declarations/inductivelimit.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [toInductiveLimit](declarations/toinductivelimit.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toInductiveLimit_isometry](declarations/toinductivelimit-isometry.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toInductiveLimit_commute](declarations/toinductivelimit-commute.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [dense_iUnion_range_toInductiveLimit](declarations/dense-iunion-range-toinductivelimit.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [separableSpaceInductiveLimit_of_separableSpace](declarations/separablespaceinductivelimit-of-separablespace.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6519c6486e443497c7e4f6fd12704e05c88acba55e14702a9725ba3f6f7726b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
