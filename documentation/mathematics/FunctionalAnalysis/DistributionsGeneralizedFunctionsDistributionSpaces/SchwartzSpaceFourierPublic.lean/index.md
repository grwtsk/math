# Schwartz Space Fourier Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e626c83f68490fd8146d057a8ecca1f6863dfbc6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/SchwartzSpaceFourierPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fourierTransformCLM](declarations/fouriertransformclm.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instFourierTransform](declarations/instfouriertransform.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instFourierAdd](declarations/instfourieradd.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instFourierSMul](declarations/instfouriersmul.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instContinuousFourier](declarations/instcontinuousfourier.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [fourier_coe](declarations/fourier-coe.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [fourierTransformCLM_apply](declarations/fouriertransformclm-apply.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instFourierTransformInv](declarations/instfouriertransforminv.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [instFourierInvAdd](declarations/instfourierinvadd.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [instFourierInvSMul](declarations/instfourierinvsmul.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instContinuousFourierInv](declarations/instcontinuousfourierinv.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [fourierInv_coe](declarations/fourierinv-coe.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [fourierInv_apply_eq](declarations/fourierinv-apply-eq.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instFourierPair](declarations/instfourierpair.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instFourierInvPair](declarations/instfourierinvpair.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [fourier_evalCLM_eq](declarations/fourier-evalclm-eq.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fderivCLM_fourier_eq](declarations/fderivclm-fourier-eq.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [fourier_fderivCLM_eq](declarations/fourier-fderivclm-eq.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lineDerivOp_fourier_eq](declarations/linederivop-fourier-eq.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fourier_lineDerivOp_eq](declarations/fourier-linederivop-eq.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lineDerivOp_fourierInv_eq](declarations/linederivop-fourierinv-eq.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [fourierInv_lineDerivOp_eq](declarations/fourierinv-linederivop-eq.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integral_bilin_fourier_eq](declarations/integral-bilin-fourier-eq.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [integral_fourier_smul_eq](declarations/integral-fourier-smul-eq.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [integral_fourier_mul_eq](declarations/integral-fourier-mul-eq.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [integral_bilin_fourierInv_eq](declarations/integral-bilin-fourierinv-eq.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [integral_fourierInv_smul_eq](declarations/integral-fourierinv-smul-eq.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [integral_fourierInv_mul_eq](declarations/integral-fourierinv-mul-eq.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [integral_sesq_fourier_eq](declarations/integral-sesq-fourier-eq.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [integral_sesq_fourier_fourier](declarations/integral-sesq-fourier-fourier.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [norm_fourier_apply_le_toLp_one](declarations/norm-fourier-apply-le-tolp-one.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [norm_fourier_toBoundedContinuousFunction_le_toLp_one](declarations/norm-fourier-toboundedcontinuousfunction-le-tolp-one.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [norm_fourier_Lp_top_leq_toLp_one](declarations/norm-fourier-lp-top-leq-tolp-one.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [integral_inner_fourier_fourier](declarations/integral-inner-fourier-fourier.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [integral_norm_sq_fourier](declarations/integral-norm-sq-fourier.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [inner_fourier_toL2_eq](declarations/inner-fourier-tol2-eq.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [norm_fourier_toL2_eq](declarations/norm-fourier-tol2-eq.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de6ea9f5033dc74244045b04494af81cc990e6a5795899e6528588a94ad5bc24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
