# Holomorphic Area Projection

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/HolomorphicAreaProjection.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccfe1a0754e4306ebdd40e97b69fd71cb1f99352`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/HolomorphicAreaProjection.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AmbientL2](declarations/ambientl2.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [l2Inclusion](declarations/l2inclusion.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [l2Inclusion_apply](declarations/l2inclusion-apply.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [l2Inclusion_inner](declarations/l2inclusion-inner.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [l2Inclusion_norm_le](declarations/l2inclusion-norm-le.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [bergmanLift](declarations/bergmanlift.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [bergmanLift_inner](declarations/bergmanlift-inner.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [bergmanLift_embedding](declarations/bergmanlift-embedding.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [bergmanProjection](declarations/bergmanprojection.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [bergmanProjection_apply](declarations/bergmanprojection-apply.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [bergmanProjection_embedding](declarations/bergmanprojection-embedding.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [bergmanProjection_mem](declarations/bergmanprojection-mem.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bergmanProjection_eq_self_iff](declarations/bergmanprojection-eq-self-iff.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [bergmanProjection_range](declarations/bergmanprojection-range.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [bergmanProjection_idempotent](declarations/bergmanprojection-idempotent.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [bergmanProjection_adjoint](declarations/bergmanprojection-adjoint.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bergmanLift_norm_le](declarations/bergmanlift-norm-le.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [bergmanProjection_norm_le](declarations/bergmanprojection-norm-le.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [projection_residual_inner](declarations/projection-residual-inner.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [bergmanLift_residual](declarations/bergmanlift-residual.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [bergmanProjection_eq_zero_iff](declarations/bergmanprojection-eq-zero-iff.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [bergmanProjection_bestApprox](declarations/bergmanprojection-bestapprox.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [bergmanProjection_unique](declarations/bergmanprojection-unique.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [existsUnique_bestApprox](declarations/existsunique-bestapprox.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [projectedFunction](declarations/projectedfunction.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [projectedFunction_finite](declarations/projectedfunction-finite.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [bergmanProjection_ae](declarations/bergmanprojection-ae.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [projectedFunction_embedding](declarations/projectedfunction-embedding.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [kernel_cross_ae](declarations/kernel-cross-ae.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [projection_kernel_integrable](declarations/projection-kernel-integrable.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [integral_projection](declarations/integral-projection.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [integral_projection_toLp](declarations/integral-projection-tolp.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [projectedFunction_zero](declarations/projectedfunction-zero.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [projection_not_zero](declarations/projection-not-zero.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [disk_projection_not_zero](declarations/disk-projection-not-zero.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [spike_not_recovered](declarations/spike-not-recovered.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9f8ad9b54e6b7b74bacd4e2f360d78ddf7cfd3d23f792a64cbad666fd63e806 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/HolomorphicAreaProjection.lean","GRWTSK/Analysis/ComplexAnalysis/HolomorphicAreaProjection.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
