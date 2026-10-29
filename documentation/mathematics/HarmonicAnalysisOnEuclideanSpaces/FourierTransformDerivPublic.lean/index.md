# Fourier Transform Deriv Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54260b884936c9479ca6a212d8b1c2bb8f4db37f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasDerivAt_fourierChar](declarations/hasderivat-fourierchar.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [differentiable_fourierChar](declarations/differentiable-fourierchar.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [deriv_fourierChar](declarations/deriv-fourierchar.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [hasFDerivAt_fourierChar_neg_bilinear_right](declarations/hasfderivat-fourierchar-neg-bilinear-right.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [fderiv_fourierChar_neg_bilinear_right_apply](declarations/fderiv-fourierchar-neg-bilinear-right-apply.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [differentiable_fourierChar_neg_bilinear_right](declarations/differentiable-fourierchar-neg-bilinear-right.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [hasFDerivAt_fourierChar_neg_bilinear_left](declarations/hasfderivat-fourierchar-neg-bilinear-left.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [fderiv_fourierChar_neg_bilinear_left_apply](declarations/fderiv-fourierchar-neg-bilinear-left-apply.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [differentiable_fourierChar_neg_bilinear_left](declarations/differentiable-fourierchar-neg-bilinear-left.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [fourierSMulRight](declarations/fouriersmulright.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [fourierSMulRight_apply](declarations/fouriersmulright-apply.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [hasFDerivAt_fourierChar_smul](declarations/hasfderivat-fourierchar-smul.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [norm_fourierSMulRight](declarations/norm-fouriersmulright.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [norm_fourierSMulRight_le](declarations/norm-fouriersmulright-le.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [_root_.MeasureTheory.AEStronglyMeasurable.fourierSMulRight](declarations/root-measuretheory-aestronglymeasurable-fouriersmulright.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [hasFDerivAt_fourierIntegral](declarations/hasfderivat-fourierintegral.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [fderiv_fourierIntegral](declarations/fderiv-fourierintegral.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [differentiable_fourierIntegral](declarations/differentiable-fourierintegral.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fourierIntegral_fderiv](declarations/fourierintegral-fderiv.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fourierPowSMulRight](declarations/fourierpowsmulright.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [fourierPowSMulRight_apply](declarations/fourierpowsmulright-apply.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [fourierPowSMulRight_eq_comp](declarations/fourierpowsmulright-eq-comp.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [_root_.Continuous.fourierPowSMulRight](declarations/root-continuous-fourierpowsmulright.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [_root_.ContDiff.fourierPowSMulRight](declarations/root-contdiff-fourierpowsmulright.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [norm_fourierPowSMulRight_le](declarations/norm-fourierpowsmulright-le.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [norm_iteratedFDeriv_fourierPowSMulRight](declarations/norm-iteratedfderiv-fourierpowsmulright.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [_root_.MeasureTheory.AEStronglyMeasurable.fourierPowSMulRight](declarations/root-measuretheory-aestronglymeasurable-fourierpowsmulright.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [integrable_fourierPowSMulRight](declarations/integrable-fourierpowsmulright.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [hasFTaylorSeriesUpTo_fourierIntegral](declarations/hasftaylorseriesupto-fourierintegral-source-edition-2.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [hasFTaylorSeriesUpTo_fourierIntegral'](declarations/hasftaylorseriesupto-fourierintegral.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [contDiff_fourierIntegral](declarations/contdiff-fourierintegral.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [iteratedFDeriv_fourierIntegral](declarations/iteratedfderiv-fourierintegral.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [fourierIntegral_iteratedFDeriv](declarations/fourierintegral-iteratedfderiv.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [fourierPowSMulRight_iteratedFDeriv_fourierIntegral](declarations/fourierpowsmulright-iteratedfderiv-fourierintegral.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [norm_fourierPowSMulRight_iteratedFDeriv_fourierIntegral_le](declarations/norm-fourierpowsmulright-iteratedfderiv-fourierintegral-le.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [pow_mul_norm_iteratedFDeriv_fourierIntegral_le](declarations/pow-mul-norm-iteratedfderiv-fourierintegral-le.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hasFDerivAt_fourier](declarations/hasfderivat-fourier.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [fderiv_fourier](declarations/fderiv-fourier.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [differentiable_fourier](declarations/differentiable-fourier.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [fourier_fderiv](declarations/fourier-fderiv.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [contDiff_fourier](declarations/contdiff-fourier.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [iteratedFDeriv_fourier](declarations/iteratedfderiv-fourier.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [fourier_iteratedFDeriv](declarations/fourier-iteratedfderiv.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [pow_mul_norm_iteratedFDeriv_fourier_le](declarations/pow-mul-norm-iteratedfderiv-fourier-le.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [hasDerivAt_fourier](declarations/hasderivat-fourier.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [deriv_fourier](declarations/deriv-fourier.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [fourier_deriv](declarations/fourier-deriv.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [iteratedDeriv_fourier](declarations/iteratedderiv-fourier.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [fourier_iteratedDeriv](declarations/fourier-iteratedderiv.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a4a6c9c4a6ecbc03a22bf9be9ba55ab497fe7e0df7fa4610ff320856bf9d741 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant8ce247add59aff506e067022af63529e946f7b981fed89a0fa29c73a91a19449.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
