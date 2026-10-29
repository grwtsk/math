# Real Theta Derivative Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1de6a374a69f3c211369b1169e02f4337c4af3c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/RealThetaDerivativeNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [realThetaKernel](declarations/realthetakernel.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [differenceSamplingKernel](declarations/differencesamplingkernel.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [realThetaDifferenceKernel](declarations/realthetadifferencekernel.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [realThetaRemainder](declarations/realthetaremainder.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [samplingIndices_eq_fixed_filter](declarations/samplingindices-eq-fixed-filter.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [realThetaKernel_eq_strict_sum](declarations/realthetakernel-eq-strict-sum.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [realThetaKernel_eq_nat](declarations/realthetakernel-eq-nat.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [realThetaRemainder_eq_nat](declarations/realthetaremainder-eq-nat.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [differenceSamplingKernel_eq_mul_deriv](declarations/differencesamplingkernel-eq-mul-deriv.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [realThetaKernel_hasDerivAt](declarations/realthetakernel-hasderivat.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [realThetaKernel_deriv](declarations/realthetakernel-deriv.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [realThetaRemainder_hasDerivAt](declarations/realthetaremainder-hasderivat.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [realThetaRemainder_differentiableOn](declarations/realthetaremainder-differentiableon.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [difference_primitive_eq](declarations/difference-primitive-eq.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [differencePrimitiveSamplingKernel](declarations/differenceprimitivesamplingkernel.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [differencePrimitiveSamplingKernel_eq](declarations/differenceprimitivesamplingkernel-eq.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [differencePrimitiveSamplingKernel_add_rankOne_abs_le](declarations/differenceprimitivesamplingkernel-add-rankone-abs-le.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [differencePrimitiveSamplingKernel_eq_fixed_sum](declarations/differenceprimitivesamplingkernel-eq-fixed-sum.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [difference_tail_eq_primitive](declarations/difference-tail-eq-primitive.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rootWeight_difference_integral](declarations/rootweight-difference-integral.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [differenceInnerTerm](declarations/differenceinnerterm.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [differenceInnerTerm_eq](declarations/differenceinnerterm-eq.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [differenceInnerTerm_integrable](declarations/differenceinnerterm-integrable.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [differenceInnerTerm_integral](declarations/differenceinnerterm-integral.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [differenceKernel_eq_inner_sum](declarations/differencekernel-eq-inner-sum.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [differenceKernel_rescaled_integrable](declarations/differencekernel-rescaled-integrable.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [differenceKernel_integral_eq_primitive](declarations/differencekernel-integral-eq-primitive.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [differenceKernel_integral_add_rankOne_abs_le](declarations/differencekernel-integral-add-rankone-abs-le.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe6921b91a42a4fab34bd9fc250c24a1f2605ec2aaf3b3b3506e646e7a2c5efd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variantb5be67112dee5dd0600ad46777e6966146acea801119023dd91b1cbd028286df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
