# Real Theta Derivative

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `210055696e275ddf386836e555f3babf972dbc5f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/RealThetaDerivative.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [realThetaKernel](declarations/realthetakernel.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [differenceSamplingKernel](declarations/differencesamplingkernel.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [realThetaDifferenceKernel](declarations/realthetadifferencekernel.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [realThetaRemainder](declarations/realthetaremainder.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [samplingIndices_eq_fixed_filter](declarations/samplingindices-eq-fixed-filter.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [realThetaKernel_eq_strict_sum](declarations/realthetakernel-eq-strict-sum.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [realThetaKernel_eq_nat](declarations/realthetakernel-eq-nat.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [realThetaRemainder_eq_nat](declarations/realthetaremainder-eq-nat.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [differenceSamplingKernel_eq_mul_deriv](declarations/differencesamplingkernel-eq-mul-deriv.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [realThetaKernel_hasDerivAt](declarations/realthetakernel-hasderivat.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [realThetaKernel_deriv](declarations/realthetakernel-deriv.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [realThetaRemainder_hasDerivAt](declarations/realthetaremainder-hasderivat.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [realThetaRemainder_differentiableOn](declarations/realthetaremainder-differentiableon.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [difference_primitive_eq](declarations/difference-primitive-eq.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [differencePrimitiveSamplingKernel](declarations/differenceprimitivesamplingkernel.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [differencePrimitiveSamplingKernel_eq](declarations/differenceprimitivesamplingkernel-eq.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [differencePrimitiveSamplingKernel_add_rankOne_abs_le](declarations/differenceprimitivesamplingkernel-add-rankone-abs-le.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [differencePrimitiveSamplingKernel_eq_fixed_sum](declarations/differenceprimitivesamplingkernel-eq-fixed-sum.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [difference_tail_eq_primitive](declarations/difference-tail-eq-primitive.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rootWeight_difference_integral](declarations/rootweight-difference-integral.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [differenceInnerTerm](declarations/differenceinnerterm.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [differenceInnerTerm_eq](declarations/differenceinnerterm-eq.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [differenceInnerTerm_integrable](declarations/differenceinnerterm-integrable.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [differenceInnerTerm_integral](declarations/differenceinnerterm-integral.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [differenceKernel_eq_inner_sum](declarations/differencekernel-eq-inner-sum.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [differenceKernel_rescaled_integrable](declarations/differencekernel-rescaled-integrable.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [differenceKernel_integral_eq_primitive](declarations/differencekernel-integral-eq-primitive.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [differenceKernel_integral_add_rankOne_abs_le](declarations/differencekernel-integral-add-rankone-abs-le.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b8fea2bb4856d287ae661f1f1fc235bd79fe1ab8a5368b1f01a966bbfd2df60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivative/Variant5a9657d716d3d8fe6abb473ade4dad814989376c0479695d3cbbfc1cdf217c7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
