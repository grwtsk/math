# Source Green Kernel

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a4e2cabd042331661a8dd760998c488deddde98`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/SourceGreenKernel.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [greenKernel](declarations/greenkernel.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sourceGreenPairing](declarations/sourcegreenpairing.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [sourceGreenConvolution](declarations/sourcegreenconvolution.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [greenKernel_continuous](declarations/greenkernel-continuous.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [greenKernel_even](declarations/greenkernel-even.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sourceGreenPairing_integrable](declarations/sourcegreenpairing-integrable.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sourceGreenConvolution_integrable](declarations/sourcegreenconvolution-integrable.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sourceGreenPairing_eq_twice_negativeSmoothMoment](declarations/sourcegreenpairing-eq-twice-negativesmoothmoment.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sourceGreenPairing_eq_causal_energy](declarations/sourcegreenpairing-eq-causal-energy.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [criticalContinuousMoment_eq_neg_half_green](declarations/criticalcontinuousmoment-eq-neg-half-green.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [normalizedPrimitiveBump_even](declarations/normalizedprimitivebump-even.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [normalizedPrimitiveBump_deriv_odd](declarations/normalizedprimitivebump-deriv-odd.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [causalSourceTail_add_reflection](declarations/causalsourcetail-add-reflection.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sourceGreenConvolution_upper_half](declarations/sourcegreenconvolution-upper-half.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sourceGreenConvolution_lower_half](declarations/sourcegreenconvolution-lower-half.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sourceGreenConvolution_eq_tails](declarations/sourcegreenconvolution-eq-tails.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sourceGreenConvolution_eq_neg_bump](declarations/sourcegreenconvolution-eq-neg-bump.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sourceGreenConvolution_continuous](declarations/sourcegreenconvolution-continuous.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sourceGreenConvolution_hasCompactSupport](declarations/sourcegreenconvolution-hascompactsupport.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sourceGreenConvolution_zero_of_not_mem](declarations/sourcegreenconvolution-zero-of-not-mem.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [sourceGreenDoubleKernel](declarations/sourcegreendoublekernel.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sourceGreenDoubleKernel_continuous](declarations/sourcegreendoublekernel-continuous.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sourceGreenDoubleKernel_hasCompactSupport](declarations/sourcegreendoublekernel-hascompactsupport.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sourceGreenDoubleKernel_integrable](declarations/sourcegreendoublekernel-integrable.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [source_mul_sourceGreenConvolution_integrable](declarations/source-mul-sourcegreenconvolution-integrable.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [source_mul_reflected_tail_integral](declarations/source-mul-reflected-tail-integral.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [source_mul_sourceGreenConvolution_integral](declarations/source-mul-sourcegreenconvolution-integral.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sourceGreenPairing_eq_convolution_pairing](declarations/sourcegreenpairing-eq-convolution-pairing.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sourceGreenPairing_eq_double_integral](declarations/sourcegreenpairing-eq-double-integral.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sourceGreenPairing_eq_neg_source_bump](declarations/sourcegreenpairing-eq-neg-source-bump.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sourceGreenPairing_eq_normalized_energy](declarations/sourcegreenpairing-eq-normalized-energy.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sourceGreenPairing_eq_rational](declarations/sourcegreenpairing-eq-rational.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sourceGreenPairing_pos](declarations/sourcegreenpairing-pos.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [criticalContinuousMoment_eq_half_source_bump](declarations/criticalcontinuousmoment-eq-half-source-bump.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [greenKernel_pos](declarations/greenkernel-pos.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [unit_source_convolution_zero_kernel_positive](declarations/unit-source-convolution-zero-kernel-positive.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sourceGreenPairing_ne_half_causal_energy](declarations/sourcegreenpairing-ne-half-causal-energy.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [sourceGreenPairing_eq_bump_energy](declarations/sourcegreenpairing-eq-bump-energy.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05ece4cfb7934486fe2a5a69d7558675b28776be1e3a457e86d4b95c9f7628d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceGreenKernel/Variant635f5d3b61909cff67c40ef4c36e8497c4b42e6c029e8991a41c28338a285f31.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
