# Iterated Deriv Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b49cb2f6eace3a21f0236f53bbe57cdf91c60b76`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/IteratedDerivNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [iteratedDeriv](declarations/iteratedderiv.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [iteratedDerivWithin](declarations/iteratedderivwithin.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [iteratedDerivWithin_univ](declarations/iteratedderivwithin-univ.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [iteratedDerivWithin_eq_iteratedFDerivWithin](declarations/iteratedderivwithin-eq-iteratedfderivwithin.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [iteratedDerivWithin_eq_equiv_comp](declarations/iteratedderivwithin-eq-equiv-comp.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [iteratedFDerivWithin_eq_equiv_comp](declarations/iteratedfderivwithin-eq-equiv-comp.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [iteratedFDerivWithin_apply_eq_iteratedDerivWithin_mul_prod](declarations/iteratedfderivwithin-apply-eq-iteratedderivwithin-mul-prod.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [norm_iteratedFDerivWithin_eq_norm_iteratedDerivWithin](declarations/norm-iteratedfderivwithin-eq-norm-iteratedderivwithin.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [iteratedDerivWithin_zero](declarations/iteratedderivwithin-zero.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [iteratedDerivWithin_one](declarations/iteratedderivwithin-one.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [contDiffOn_of_continuousOn_differentiableOn_deriv](declarations/contdiffon-of-continuouson-differentiableon-deriv.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [contDiffOn_of_differentiableOn_deriv](declarations/contdiffon-of-differentiableon-deriv.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ContDiffOn.continuousOn_iteratedDerivWithin](declarations/contdiffon-continuouson-iteratedderivwithin.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ContDiffWithinAt.differentiableWithinAt_iteratedDerivWithin](declarations/contdiffwithinat-differentiablewithinat-iteratedderivwithin.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ContDiffOn.differentiableOn_iteratedDerivWithin](declarations/contdiffon-differentiableon-iteratedderivwithin.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [contDiffOn_iff_continuousOn_differentiableOn_deriv](declarations/contdiffon-iff-continuouson-differentiableon-deriv.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [iteratedDerivWithin_succ](declarations/iteratedderivwithin-succ.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [iteratedDerivWithin_eq_iterate](declarations/iteratedderivwithin-eq-iterate.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [iteratedDerivWithin_succ'](declarations/iteratedderivwithin-succ-source-edition-2.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [iteratedDeriv_eq_iteratedFDeriv](declarations/iteratedderiv-eq-iteratedfderiv.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [iteratedDeriv_eq_equiv_comp](declarations/iteratedderiv-eq-equiv-comp.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [iteratedFDeriv_eq_equiv_comp](declarations/iteratedfderiv-eq-equiv-comp.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [iteratedFDeriv_apply_eq_iteratedDeriv_mul_prod](declarations/iteratedfderiv-apply-eq-iteratedderiv-mul-prod.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [norm_iteratedFDeriv_eq_norm_iteratedDeriv](declarations/norm-iteratedfderiv-eq-norm-iteratedderiv.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [iteratedDeriv_zero](declarations/iteratedderiv-zero.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [iteratedDeriv_one](declarations/iteratedderiv-one.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [contDiff_iff_iteratedDeriv](declarations/contdiff-iff-iteratedderiv.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [contDiff_of_differentiable_iteratedDeriv](declarations/contdiff-of-differentiable-iteratedderiv.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ContDiff.continuous_iteratedDeriv](declarations/contdiff-continuous-iteratedderiv.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ContDiff.differentiable_iteratedDeriv](declarations/contdiff-differentiable-iteratedderiv.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [iteratedDeriv_succ](declarations/iteratedderiv-succ.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [iteratedDeriv_eq_iterate](declarations/iteratedderiv-eq-iterate.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [iteratedDeriv_succ'](declarations/iteratedderiv-succ-source-edition-2.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e616a7cb910fa65ef7b5d98559f7c67b7df109add0b874f19e7df9480c534572 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedDeriv/Variant292d70bcf734da158f9587f6e83c3756dbc6ff7b2610781b275d9bebd477426e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
