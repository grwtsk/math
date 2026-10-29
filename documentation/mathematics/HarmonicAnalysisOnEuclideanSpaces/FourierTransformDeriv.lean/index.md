# Fourier Transform Deriv

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantcbadc5251ba7f9c68d968389b2d0de45aff65284dcb12fcd17194e052a182da1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35e48eb80086356065c8ed7390f06c85122f7ad4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/HarmonicAnalysisOnEuclideanSpaces/FourierTransformDeriv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasDerivAt_fourierChar](declarations/hasderivat-fourierchar.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [differentiable_fourierChar](declarations/differentiable-fourierchar.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [deriv_fourierChar](declarations/deriv-fourierchar.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [hasFDerivAt_fourierChar_neg_bilinear_right](declarations/hasfderivat-fourierchar-neg-bilinear-right.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [fderiv_fourierChar_neg_bilinear_right_apply](declarations/fderiv-fourierchar-neg-bilinear-right-apply.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [differentiable_fourierChar_neg_bilinear_right](declarations/differentiable-fourierchar-neg-bilinear-right.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [hasFDerivAt_fourierChar_neg_bilinear_left](declarations/hasfderivat-fourierchar-neg-bilinear-left.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [fderiv_fourierChar_neg_bilinear_left_apply](declarations/fderiv-fourierchar-neg-bilinear-left-apply.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [differentiable_fourierChar_neg_bilinear_left](declarations/differentiable-fourierchar-neg-bilinear-left.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [fourierSMulRight](declarations/fouriersmulright.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [fourierSMulRight_apply](declarations/fouriersmulright-apply.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [hasFDerivAt_fourierChar_smul](declarations/hasfderivat-fourierchar-smul.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [norm_fourierSMulRight](declarations/norm-fouriersmulright.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [norm_fourierSMulRight_le](declarations/norm-fouriersmulright-le.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [_root_.MeasureTheory.AEStronglyMeasurable.fourierSMulRight](declarations/root-measuretheory-aestronglymeasurable-fouriersmulright.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [hasFDerivAt_fourierIntegral](declarations/hasfderivat-fourierintegral.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [fderiv_fourierIntegral](declarations/fderiv-fourierintegral-source-edition-2.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [differentiable_fourierIntegral](declarations/differentiable-fourierintegral.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fourierIntegral_fderiv](declarations/fourierintegral-fderiv.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fourierPowSMulRight](declarations/fourierpowsmulright.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [fourierPowSMulRight_apply](declarations/fourierpowsmulright-apply.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [fourierPowSMulRight_eq_comp](declarations/fourierpowsmulright-eq-comp.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [_root_.Continuous.fourierPowSMulRight](declarations/root-continuous-fourierpowsmulright.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [_root_.ContDiff.fourierPowSMulRight](declarations/root-contdiff-fourierpowsmulright.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [norm_fourierPowSMulRight_le](declarations/norm-fourierpowsmulright-le.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [norm_iteratedFDeriv_fourierPowSMulRight](declarations/norm-iteratedfderiv-fourierpowsmulright.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [_root_.MeasureTheory.AEStronglyMeasurable.fourierPowSMulRight](declarations/root-measuretheory-aestronglymeasurable-fourierpowsmulright.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [integrable_fourierPowSMulRight](declarations/integrable-fourierpowsmulright.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [hasFTaylorSeriesUpTo_fourierIntegral](declarations/hasftaylorseriesupto-fourierintegral-source-edition-2.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [hasFTaylorSeriesUpTo_fourierIntegral'](declarations/hasftaylorseriesupto-fourierintegral.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [contDiff_fourierIntegral](declarations/contdiff-fourierintegral-source-edition-2.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [iteratedFDeriv_fourierIntegral](declarations/iteratedfderiv-fourierintegral-source-edition-2.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [fourierIntegral_iteratedFDeriv](declarations/fourierintegral-iteratedfderiv.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [fourierPowSMulRight_iteratedFDeriv_fourierIntegral](declarations/fourierpowsmulright-iteratedfderiv-fourierintegral.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [norm_fourierPowSMulRight_iteratedFDeriv_fourierIntegral_le](declarations/norm-fourierpowsmulright-iteratedfderiv-fourierintegral-le.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [pow_mul_norm_iteratedFDeriv_fourierIntegral_le](declarations/pow-mul-norm-iteratedfderiv-fourierintegral-le.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hasFDerivAt_fourierIntegral](declarations/hasfderivat-fourierintegral-source-edition-2.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [fderiv_fourierIntegral](declarations/fderiv-fourierintegral.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [differentiable_fourierIntegral](declarations/differentiable-fourierintegral-source-edition-2.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [fourierIntegral_fderiv](declarations/fourierintegral-fderiv-source-edition-2.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [contDiff_fourierIntegral](declarations/contdiff-fourierintegral.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [iteratedFDeriv_fourierIntegral](declarations/iteratedfderiv-fourierintegral.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [fourierIntegral_iteratedFDeriv](declarations/fourierintegral-iteratedfderiv-source-edition-2.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [pow_mul_norm_iteratedFDeriv_fourierIntegral_le](declarations/pow-mul-norm-iteratedfderiv-fourierintegral-le-source-edition-2.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [hasDerivAt_fourierIntegral](declarations/hasderivat-fourierintegral.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [deriv_fourierIntegral](declarations/deriv-fourierintegral.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [fourierIntegral_deriv](declarations/fourierintegral-deriv.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [iteratedDeriv_fourierIntegral](declarations/iteratedderiv-fourierintegral.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [fourierIntegral_iteratedDeriv](declarations/fourierintegral-iteratedderiv.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b131a59d23139d368d75ed7ae00c23d1bdc45d6ca4f3c650e86a606880bda13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variantcbadc5251ba7f9c68d968389b2d0de45aff65284dcb12fcd17194e052a182da1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
