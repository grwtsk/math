# Iterated Deriv Defs

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66fe7dd088c3064d4a3dcc63ddece73e55b7180e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/IteratedDerivDefs.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [iteratedDeriv](declarations/iteratedderiv.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [iteratedDerivWithin](declarations/iteratedderivwithin.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [iteratedDerivWithin_univ](declarations/iteratedderivwithin-univ.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [iteratedDerivWithin_eq_iteratedFDerivWithin](declarations/iteratedderivwithin-eq-iteratedfderivwithin.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [iteratedDerivWithin_eq_equiv_comp](declarations/iteratedderivwithin-eq-equiv-comp.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [iteratedFDerivWithin_eq_equiv_comp](declarations/iteratedfderivwithin-eq-equiv-comp.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [iteratedFDerivWithin_apply_eq_iteratedDerivWithin_mul_prod](declarations/iteratedfderivwithin-apply-eq-iteratedderivwithin-mul-prod.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [norm_iteratedFDerivWithin_eq_norm_iteratedDerivWithin](declarations/norm-iteratedfderivwithin-eq-norm-iteratedderivwithin.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [iteratedDerivWithin_zero](declarations/iteratedderivwithin-zero.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [iteratedDerivWithin_one](declarations/iteratedderivwithin-one.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [contDiffOn_of_continuousOn_differentiableOn_deriv](declarations/contdiffon-of-continuouson-differentiableon-deriv.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [contDiffOn_of_differentiableOn_deriv](declarations/contdiffon-of-differentiableon-deriv.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ContDiffOn.continuousOn_iteratedDerivWithin](declarations/contdiffon-continuouson-iteratedderivwithin.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ContDiffWithinAt.differentiableWithinAt_iteratedDerivWithin](declarations/contdiffwithinat-differentiablewithinat-iteratedderivwithin.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ContDiffOn.differentiableOn_iteratedDerivWithin](declarations/contdiffon-differentiableon-iteratedderivwithin.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [contDiffOn_iff_continuousOn_differentiableOn_deriv](declarations/contdiffon-iff-continuouson-differentiableon-deriv.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [contDiffOn_nat_iff_continuousOn_differentiableOn_deriv](declarations/contdiffon-nat-iff-continuouson-differentiableon-deriv.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [iteratedDerivWithin_succ](declarations/iteratedderivwithin-succ-source-edition-2.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [iteratedDerivWithin_eq_iterate](declarations/iteratedderivwithin-eq-iterate.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [iteratedDerivWithin_succ'](declarations/iteratedderivwithin-succ.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [iteratedDeriv_eq_iteratedFDeriv](declarations/iteratedderiv-eq-iteratedfderiv.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [iteratedDeriv_eq_equiv_comp](declarations/iteratedderiv-eq-equiv-comp.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [iteratedFDeriv_eq_equiv_comp](declarations/iteratedfderiv-eq-equiv-comp.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [iteratedFDeriv_apply_eq_iteratedDeriv_mul_prod](declarations/iteratedfderiv-apply-eq-iteratedderiv-mul-prod.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [norm_iteratedFDeriv_eq_norm_iteratedDeriv](declarations/norm-iteratedfderiv-eq-norm-iteratedderiv.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [iteratedDeriv_zero](declarations/iteratedderiv-zero.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [iteratedDeriv_one](declarations/iteratedderiv-one.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [contDiff_iff_iteratedDeriv](declarations/contdiff-iff-iteratedderiv.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [contDiff_nat_iff_iteratedDeriv](declarations/contdiff-nat-iff-iteratedderiv.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [contDiff_of_differentiable_iteratedDeriv](declarations/contdiff-of-differentiable-iteratedderiv.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ContDiff.continuous_iteratedDeriv](declarations/contdiff-continuous-iteratedderiv.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ContDiff.continuous_iteratedDeriv'](declarations/contdiff-continuous-iteratedderiv-source-edition-2.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ContDiff.differentiable_iteratedDeriv](declarations/contdiff-differentiable-iteratedderiv-source-edition-2.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ContDiff.differentiable_iteratedDeriv'](declarations/contdiff-differentiable-iteratedderiv.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [iteratedDeriv_succ](declarations/iteratedderiv-succ.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [iteratedDeriv_eq_iterate](declarations/iteratedderiv-eq-iterate.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [iteratedDeriv_succ'](declarations/iteratedderiv-succ-source-edition-2.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [AnalyticAt.hasFPowerSeriesAt](declarations/analyticat-hasfpowerseriesat.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94cbc60486f421c632908d0ac36303e33d30ea5a939d22c05c27e4d8cc9f32ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantc0011c3b0a95fc3f78585268d94f5b7567b7790566ad5d42fcfbbeff5460c8ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
