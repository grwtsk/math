# Gradient Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**70 observed declarations and anonymous commands**, 65 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant90eadebdd329fe0eecc40f97ab4924981c584a4e799440fffe0f8f66a71e17ee.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c6bd287fbdc4988f8d71fa1f39f8d0b7cad0f39`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/GradientBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasGradientAtFilter](declarations/hasgradientatfilter.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasGradientWithinAt](declarations/hasgradientwithinat.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HasGradientAt](declarations/hasgradientat.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [gradientWithin](declarations/gradientwithin.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [gradient](declarations/gradient.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [hasGradientWithinAt_iff_hasFDerivWithinAt](declarations/hasgradientwithinat-iff-hasfderivwithinat.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [hasFDerivWithinAt_iff_hasGradientWithinAt](declarations/hasfderivwithinat-iff-hasgradientwithinat.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [hasGradientAt_iff_hasFDerivAt](declarations/hasgradientat-iff-hasfderivat.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [hasFDerivAt_iff_hasGradientAt](declarations/hasfderivat-iff-hasgradientat.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gradient_eq_zero_of_not_differentiableAt](declarations/gradient-eq-zero-of-not-differentiableat.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [toDual_gradientWithin](declarations/todual-gradientwithin.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [toDual_gradient](declarations/todual-gradient.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [toDual_comp_gradientWithin](declarations/todual-comp-gradientwithin.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [toDual_comp_gradient](declarations/todual-comp-gradient.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [HasGradientAt.unique](declarations/hasgradientat-unique.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [DifferentiableAt.hasGradientAt](declarations/differentiableat-hasgradientat.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [HasGradientAt.differentiableAt](declarations/hasgradientat-differentiableat.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [DifferentiableWithinAt.hasGradientWithinAt](declarations/differentiablewithinat-hasgradientwithinat.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [HasGradientWithinAt.differentiableWithinAt](declarations/hasgradientwithinat-differentiablewithinat.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hasGradientWithinAt_univ](declarations/hasgradientwithinat-univ.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [gradientWithin_univ](declarations/gradientwithin-univ.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [DifferentiableOn.hasGradientAt](declarations/differentiableon-hasgradientat.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HasGradientAt.gradient](declarations/hasgradientat-gradient.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [gradient_eq](declarations/gradient-eq.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HasGradientAtFilter.hasDerivAtFilter](declarations/hasgradientatfilter-hasderivatfilter-source-edition-2.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [HasDerivAtFilter.hasGradientAtFilter](declarations/hasderivatfilter-hasgradientatfilter-source-edition-2.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HasGradientAt.hasDerivAt](declarations/hasgradientat-hasderivat.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HasDerivAt.hasGradientAt](declarations/hasderivat-hasgradientat-source-edition-2.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gradient_eq_deriv](declarations/gradient-eq-deriv-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [HasGradientAtFilter.hasDerivAtFilter'](declarations/hasgradientatfilter-hasderivatfilter.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [HasDerivAtFilter.hasGradientAtFilter'](declarations/hasderivatfilter-hasgradientatfilter.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HasGradientAt.hasDerivAt'](declarations/hasgradientat-hasderivat-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HasDerivAt.hasGradientAt'](declarations/hasderivat-hasgradientat.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [gradient_eq_deriv'](declarations/gradient-eq-deriv.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [hasGradientAtFilter_iff_isLittleO](declarations/hasgradientatfilter-iff-islittleo.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hasGradientWithinAt_iff_isLittleO](declarations/hasgradientwithinat-iff-islittleo.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hasGradientWithinAt_iff_tendsto](declarations/hasgradientwithinat-iff-tendsto.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [hasGradientAt_iff_isLittleO](declarations/hasgradientat-iff-islittleo.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [hasGradientAt_iff_tendsto](declarations/hasgradientat-iff-tendsto.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [HasGradientAtFilter.isBigO_sub](declarations/hasgradientatfilter-isbigo-sub.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [hasGradientWithinAt_congr_set'](declarations/hasgradientwithinat-congr-set-source-edition-2.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [hasGradientWithinAt_congr_set](declarations/hasgradientwithinat-congr-set.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hasGradientAt_iff_isLittleO_nhds_zero](declarations/hasgradientat-iff-islittleo-nhds-zero.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [HasGradientWithinAt.fderivWithin_apply](declarations/hasgradientwithinat-fderivwithin-apply.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [HasGradientAt.fderiv_apply](declarations/hasgradientat-fderiv-apply.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [inner_gradientWithin_left](declarations/inner-gradientwithin-left.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [inner_gradient_left](declarations/inner-gradient-left.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [inner_gradientWithin_right](declarations/inner-gradientwithin-right.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [inner_gradient_right](declarations/inner-gradient-right.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Filter.EventuallyEq.hasGradientAtFilter_iff](declarations/filter-eventuallyeq-hasgradientatfilter-iff.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [HasGradientAtFilter.congr_of_eventuallyEq](declarations/hasgradientatfilter-congr-of-eventuallyeq.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [HasGradientWithinAt.congr_mono](declarations/hasgradientwithinat-congr-mono.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [HasGradientWithinAt.congr](declarations/hasgradientwithinat-congr.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [HasGradientWithinAt.congr_of_mem](declarations/hasgradientwithinat-congr-of-mem.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [HasGradientWithinAt.congr_of_eventuallyEq](declarations/hasgradientwithinat-congr-of-eventuallyeq.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [HasGradientWithinAt.congr_of_eventuallyEq_of_mem](declarations/hasgradientwithinat-congr-of-eventuallyeq-of-mem.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [HasGradientAt.congr_of_eventuallyEq](declarations/hasgradientat-congr-of-eventuallyeq.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Filter.EventuallyEq.gradient_eq](declarations/filter-eventuallyeq-gradient-eq.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Filter.EventuallyEq.gradient](declarations/filter-eventuallyeq-gradient.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [hasGradientAtFilter_const](declarations/hasgradientatfilter-const.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [hasGradientWithinAt_const](declarations/hasgradientwithinat-const.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [hasGradientAt_const](declarations/hasgradientat-const.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [gradient_fun_const](declarations/gradient-fun-const-source-edition-2.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [gradient_const](declarations/gradient-const.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [gradient_fun_const'](declarations/gradient-fun-const.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [gradient_const'](declarations/gradient-const-source-edition-2.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [HasGradientAtFilter.tendsto_nhds](declarations/hasgradientatfilter-tendsto-nhds.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [HasGradientWithinAt.continuousWithinAt](declarations/hasgradientwithinat-continuouswithinat.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [HasGradientAt.continuousAt](declarations/hasgradientat-continuousat.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [HasGradientAt.continuousOn](declarations/hasgradientat-continuouson.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7081f88a6c8107c850dc81f13ff7addb11f1fb15a89aef7db8e96bd4bd125f50 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant90eadebdd329fe0eecc40f97ab4924981c584a4e799440fffe0f8f66a71e17ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
