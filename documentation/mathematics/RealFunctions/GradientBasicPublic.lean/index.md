# Gradient Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**70 observed declarations and anonymous commands**, 65 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantc0bd05493a39ddd81c0e757818299ed3e2b3c89e3b034c1cf904c064d6a026fd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c0b722e088923e84946a7c4ebaeec992f2bdb41`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/GradientBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasGradientAtFilter](declarations/hasgradientatfilter.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasGradientWithinAt](declarations/hasgradientwithinat.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HasGradientAt](declarations/hasgradientat.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [gradientWithin](declarations/gradientwithin.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [gradient](declarations/gradient.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [hasGradientWithinAt_iff_hasFDerivWithinAt](declarations/hasgradientwithinat-iff-hasfderivwithinat.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [hasFDerivWithinAt_iff_hasGradientWithinAt](declarations/hasfderivwithinat-iff-hasgradientwithinat.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [hasGradientAt_iff_hasFDerivAt](declarations/hasgradientat-iff-hasfderivat.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [hasFDerivAt_iff_hasGradientAt](declarations/hasfderivat-iff-hasgradientat.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gradient_eq_zero_of_not_differentiableAt](declarations/gradient-eq-zero-of-not-differentiableat.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [toDual_gradientWithin](declarations/todual-gradientwithin.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [toDual_gradient](declarations/todual-gradient.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [toDual_comp_gradientWithin](declarations/todual-comp-gradientwithin.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [toDual_comp_gradient](declarations/todual-comp-gradient.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [HasGradientAt.unique](declarations/hasgradientat-unique.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [DifferentiableAt.hasGradientAt](declarations/differentiableat-hasgradientat.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [HasGradientAt.differentiableAt](declarations/hasgradientat-differentiableat.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [DifferentiableWithinAt.hasGradientWithinAt](declarations/differentiablewithinat-hasgradientwithinat.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [HasGradientWithinAt.differentiableWithinAt](declarations/hasgradientwithinat-differentiablewithinat.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hasGradientWithinAt_univ](declarations/hasgradientwithinat-univ.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [gradientWithin_univ](declarations/gradientwithin-univ.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [DifferentiableOn.hasGradientAt](declarations/differentiableon-hasgradientat.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HasGradientAt.gradient](declarations/hasgradientat-gradient.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [gradient_eq](declarations/gradient-eq.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HasGradientAtFilter.hasDerivAtFilter](declarations/hasgradientatfilter-hasderivatfilter.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [HasDerivAtFilter.hasGradientAtFilter](declarations/hasderivatfilter-hasgradientatfilter-source-edition-2.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HasGradientAt.hasDerivAt](declarations/hasgradientat-hasderivat-source-edition-2.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HasDerivAt.hasGradientAt](declarations/hasderivat-hasgradientat.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gradient_eq_deriv](declarations/gradient-eq-deriv.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [HasGradientAtFilter.hasDerivAtFilter'](declarations/hasgradientatfilter-hasderivatfilter-source-edition-2.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [HasDerivAtFilter.hasGradientAtFilter'](declarations/hasderivatfilter-hasgradientatfilter.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HasGradientAt.hasDerivAt'](declarations/hasgradientat-hasderivat.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HasDerivAt.hasGradientAt'](declarations/hasderivat-hasgradientat-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [gradient_eq_deriv'](declarations/gradient-eq-deriv-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [hasGradientAtFilter_iff_isLittleO](declarations/hasgradientatfilter-iff-islittleo.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hasGradientWithinAt_iff_isLittleO](declarations/hasgradientwithinat-iff-islittleo.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hasGradientWithinAt_iff_tendsto](declarations/hasgradientwithinat-iff-tendsto.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [hasGradientAt_iff_isLittleO](declarations/hasgradientat-iff-islittleo.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [hasGradientAt_iff_tendsto](declarations/hasgradientat-iff-tendsto.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [HasGradientAtFilter.isBigO_sub](declarations/hasgradientatfilter-isbigo-sub.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [hasGradientWithinAt_congr_set'](declarations/hasgradientwithinat-congr-set.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [hasGradientWithinAt_congr_set](declarations/hasgradientwithinat-congr-set-source-edition-2.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hasGradientAt_iff_isLittleO_nhds_zero](declarations/hasgradientat-iff-islittleo-nhds-zero.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [HasGradientWithinAt.fderivWithin_apply](declarations/hasgradientwithinat-fderivwithin-apply.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [HasGradientAt.fderiv_apply](declarations/hasgradientat-fderiv-apply.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [inner_gradientWithin_left](declarations/inner-gradientwithin-left.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [inner_gradient_left](declarations/inner-gradient-left.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [inner_gradientWithin_right](declarations/inner-gradientwithin-right.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [inner_gradient_right](declarations/inner-gradient-right.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Filter.EventuallyEq.hasGradientAtFilter_iff](declarations/filter-eventuallyeq-hasgradientatfilter-iff.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [HasGradientAtFilter.congr_of_eventuallyEq](declarations/hasgradientatfilter-congr-of-eventuallyeq.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [HasGradientWithinAt.congr_mono](declarations/hasgradientwithinat-congr-mono.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [HasGradientWithinAt.congr](declarations/hasgradientwithinat-congr.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [HasGradientWithinAt.congr_of_mem](declarations/hasgradientwithinat-congr-of-mem.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [HasGradientWithinAt.congr_of_eventuallyEq](declarations/hasgradientwithinat-congr-of-eventuallyeq.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [HasGradientWithinAt.congr_of_eventuallyEq_of_mem](declarations/hasgradientwithinat-congr-of-eventuallyeq-of-mem.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [HasGradientAt.congr_of_eventuallyEq](declarations/hasgradientat-congr-of-eventuallyeq.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Filter.EventuallyEq.gradient_eq](declarations/filter-eventuallyeq-gradient-eq.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Filter.EventuallyEq.gradient](declarations/filter-eventuallyeq-gradient.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [hasGradientAtFilter_const](declarations/hasgradientatfilter-const.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [hasGradientWithinAt_const](declarations/hasgradientwithinat-const.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [hasGradientAt_const](declarations/hasgradientat-const.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [gradient_fun_const](declarations/gradient-fun-const-source-edition-2.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [gradient_const](declarations/gradient-const.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [gradient_fun_const'](declarations/gradient-fun-const.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [gradient_const'](declarations/gradient-const-source-edition-2.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [HasGradientAtFilter.tendsto_nhds](declarations/hasgradientatfilter-tendsto-nhds.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [HasGradientWithinAt.continuousWithinAt](declarations/hasgradientwithinat-continuouswithinat.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [HasGradientAt.continuousAt](declarations/hasgradientat-continuousat.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [HasGradientAt.continuousOn](declarations/hasgradientat-continuouson.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34d53ef8d595e8c9bbbe7e5b4a5b00b1307b3fab75eb307c79c02db39e1ca623 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantc0bd05493a39ddd81c0e757818299ed3e2b3c89e3b034c1cf904c064d6a026fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
