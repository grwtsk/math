# Integral Dominated Convergence

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44cee00211d413e61250a77d2d7beb5a82a518f1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/IntegralDominatedConvergence.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_integral_of_dominated_convergence](declarations/tendsto-integral-of-dominated-convergence.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [tendsto_integral_filter_of_dominated_convergence](declarations/tendsto-integral-filter-of-dominated-convergence-source-edition-2.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [hasSum_integral_of_dominated_convergence](declarations/hassum-integral-of-dominated-convergence-source-edition-2.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [integral_tsum](declarations/integral-tsum.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [hasSum_integral_of_summable_integral_norm](declarations/hassum-integral-of-summable-integral-norm.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [integral_tsum_of_summable_integral_norm](declarations/integral-tsum-of-summable-integral-norm.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [tendsto_integral_filter_of_norm_le_const](declarations/tendsto-integral-filter-of-norm-le-const.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [_root_.Antitone.tendsto_setIntegral](declarations/root-antitone-tendsto-setintegral.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tendsto_integral_filter_of_dominated_convergence](declarations/tendsto-integral-filter-of-dominated-convergence.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [hasSum_integral_of_dominated_convergence](declarations/hassum-integral-of-dominated-convergence.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hasSum_intervalIntegral_of_summable_norm](declarations/hassum-intervalintegral-of-summable-norm.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [tsum_intervalIntegral_eq_of_summable_norm](declarations/tsum-intervalintegral-eq-of-summable-norm.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [continuousWithinAt_of_dominated_interval](declarations/continuouswithinat-of-dominated-interval.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [continuousAt_of_dominated_interval](declarations/continuousat-of-dominated-interval.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [continuous_of_dominated_interval](declarations/continuous-of-dominated-interval.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [continuousWithinAt_primitive](declarations/continuouswithinat-primitive.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [continuousAt_parametric_primitive_of_dominated](declarations/continuousat-parametric-primitive-of-dominated.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [continuousOn_primitive](declarations/continuouson-primitive.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [continuousOn_primitive_Icc](declarations/continuouson-primitive-icc.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [continuousOn_primitive_interval'](declarations/continuouson-primitive-interval.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [continuousOn_primitive_interval](declarations/continuouson-primitive-interval-source-edition-2.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [continuousOn_primitive_interval_left](declarations/continuouson-primitive-interval-left.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [continuous_primitive](declarations/continuous-primitive.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [_root_.MeasureTheory.Integrable.continuous_primitive](declarations/root-measuretheory-integrable-continuous-primitive.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [continuous_parametric_primitive_of_continuous](declarations/continuous-parametric-primitive-of-continuous.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [continuous_parametric_intervalIntegral_of_continuous](declarations/continuous-parametric-intervalintegral-of-continuous.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [continuous_parametric_intervalIntegral_of_continuous'](declarations/continuous-parametric-intervalintegral-of-continuous-source-edition-2.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d0c351771de85b5574ebf82ed5a910d8061951ffd5a3ec9833bad99b3e47fb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant25af4a27887a4f241ac133fa2dc89ae69ba344c4752a9a4005605588f8956fe9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
