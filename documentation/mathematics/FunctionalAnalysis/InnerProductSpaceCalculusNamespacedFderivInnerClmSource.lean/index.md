# Inner Product Space Calculus Namespaced Fderiv Inner Clm Source

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**68 observed declarations and anonymous commands**, 66 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant5471e7063aed0b3864f59d7f32e8592cdda0b7c9a121bf0b67a7e4e83cc29e47.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a99336faa5fbbe2832fd98d5d6fe605a23e1a25`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/InnerProductSpaceCalculusNamespacedFderivInnerClmSource.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [fderivInnerClm](declarations/fderivinnerclm.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [fderivInnerClm_apply](declarations/fderivinnerclm-apply.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [contDiff_inner](declarations/contdiff-inner.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [contDiffAt_inner](declarations/contdiffat-inner.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [differentiable_inner](declarations/differentiable-inner-source-edition-2.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ContDiffWithinAt.inner](declarations/contdiffwithinat-inner.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ContDiffAt.inner](declarations/contdiffat-inner-source-edition-2.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ContDiffOn.inner](declarations/contdiffon-inner.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ContDiff.inner](declarations/contdiff-inner-source-edition-2.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasFDerivWithinAt.inner](declarations/hasfderivwithinat-inner.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [HasStrictFDerivAt.inner](declarations/hasstrictfderivat-inner.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [HasFDerivAt.inner](declarations/hasfderivat-inner.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [HasDerivWithinAt.inner](declarations/hasderivwithinat-inner.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [HasDerivAt.inner](declarations/hasderivat-inner.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [DifferentiableWithinAt.inner](declarations/differentiablewithinat-inner.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [DifferentiableAt.inner](declarations/differentiableat-inner.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [DifferentiableOn.inner](declarations/differentiableon-inner.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Differentiable.inner](declarations/differentiable-inner.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fderiv_inner_apply](declarations/fderiv-inner-apply.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [deriv_inner_apply](declarations/deriv-inner-apply.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [contDiff_norm_sq](declarations/contdiff-norm-sq.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ContDiff.norm_sq](declarations/contdiff-norm-sq-source-edition-2.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ContDiffWithinAt.norm_sq](declarations/contdiffwithinat-norm-sq.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ContDiffAt.norm_sq](declarations/contdiffat-norm-sq.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [contDiffAt_norm](declarations/contdiffat-norm-source-edition-2.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ContDiffAt.norm](declarations/contdiffat-norm.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ContDiffAt.dist](declarations/contdiffat-dist.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ContDiffWithinAt.norm](declarations/contdiffwithinat-norm.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ContDiffWithinAt.dist](declarations/contdiffwithinat-dist.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ContDiffOn.norm_sq](declarations/contdiffon-norm-sq.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ContDiffOn.norm](declarations/contdiffon-norm.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ContDiffOn.dist](declarations/contdiffon-dist.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ContDiff.norm](declarations/contdiff-norm.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ContDiff.dist](declarations/contdiff-dist.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hasStrictFDerivAt_norm_sq](declarations/hasstrictfderivat-norm-sq.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [HasFDerivAt.norm_sq](declarations/hasfderivat-norm-sq.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [HasFDerivWithinAt.norm_sq](declarations/hasfderivwithinat-norm-sq.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [DifferentiableAt.norm_sq](declarations/differentiableat-norm-sq.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [DifferentiableAt.norm](declarations/differentiableat-norm.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [DifferentiableAt.dist](declarations/differentiableat-dist.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Differentiable.norm_sq](declarations/differentiable-norm-sq.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Differentiable.norm](declarations/differentiable-norm.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Differentiable.dist](declarations/differentiable-dist.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [DifferentiableWithinAt.norm_sq](declarations/differentiablewithinat-norm-sq.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [DifferentiableWithinAt.norm](declarations/differentiablewithinat-norm.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [DifferentiableWithinAt.dist](declarations/differentiablewithinat-dist.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [DifferentiableOn.norm_sq](declarations/differentiableon-norm-sq.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [DifferentiableOn.norm](declarations/differentiableon-norm.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [DifferentiableOn.dist](declarations/differentiableon-dist.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [differentiableWithinAt_euclidean](declarations/differentiablewithinat-euclidean.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [differentiableAt_euclidean](declarations/differentiableat-euclidean.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [differentiableOn_euclidean](declarations/differentiableon-euclidean.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [differentiable_euclidean](declarations/differentiable-euclidean.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [hasStrictFDerivAt_euclidean](declarations/hasstrictfderivat-euclidean.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [hasFDerivWithinAt_euclidean](declarations/hasfderivwithinat-euclidean.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [contDiffWithinAt_euclidean](declarations/contdiffwithinat-euclidean.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [contDiffAt_euclidean](declarations/contdiffat-euclidean.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [contDiffOn_euclidean](declarations/contdiffon-euclidean.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [contDiff_euclidean](declarations/contdiff-euclidean.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [LocalHomeomorph.contDiff_univUnitBall](declarations/localhomeomorph-contdiff-univunitball.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [LocalHomeomorph.contDiffOn_univUnitBall_symm](declarations/localhomeomorph-contdiffon-univunitball-symm.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Homeomorph.contDiff_unitBall](declarations/homeomorph-contdiff-unitball.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Homeomorph.contDiffOn_unitBall_symm](declarations/homeomorph-contdiffon-unitball-symm.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [contDiff_unitBallBall](declarations/contdiff-unitballball.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [contDiff_unitBallBall_symm](declarations/contdiff-unitballball-symm.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [contDiff_univBall](declarations/contdiff-univball.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [contDiffOn_univBall_symm](declarations/contdiffon-univball-symm.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5900e2ed534bac996973a327c9a98753a55f7768653cbdce6074db1fab92224c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant5471e7063aed0b3864f59d7f32e8592cdda0b7c9a121bf0b67a7e4e83cc29e47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
