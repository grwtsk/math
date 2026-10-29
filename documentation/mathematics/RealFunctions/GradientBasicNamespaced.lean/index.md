# Gradient Basic Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**59 observed declarations and anonymous commands**, 54 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantcd12d546b220974f009b1be560295a09cf54a1a0269ee3687671e4ba2b3d5e82.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d0fdb9ff59d2d2ff747cc85bea5d57087867f4a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/GradientBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasGradientAtFilter](declarations/hasgradientatfilter.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasGradientWithinAt](declarations/hasgradientwithinat.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HasGradientAt](declarations/hasgradientat.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [gradientWithin](declarations/gradientwithin.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [gradient](declarations/gradient.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [hasGradientWithinAt_iff_hasFDerivWithinAt](declarations/hasgradientwithinat-iff-hasfderivwithinat.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [hasFDerivWithinAt_iff_hasGradientWithinAt](declarations/hasfderivwithinat-iff-hasgradientwithinat.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [hasGradientAt_iff_hasFDerivAt](declarations/hasgradientat-iff-hasfderivat.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [hasFDerivAt_iff_hasGradientAt](declarations/hasfderivat-iff-hasgradientat.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gradient_eq_zero_of_not_differentiableAt](declarations/gradient-eq-zero-of-not-differentiableat.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasGradientAt.unique](declarations/hasgradientat-unique.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [DifferentiableAt.hasGradientAt](declarations/differentiableat-hasgradientat.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [HasGradientAt.differentiableAt](declarations/hasgradientat-differentiableat.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [DifferentiableWithinAt.hasGradientWithinAt](declarations/differentiablewithinat-hasgradientwithinat.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [HasGradientWithinAt.differentiableWithinAt](declarations/hasgradientwithinat-differentiablewithinat.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [hasGradientWithinAt_univ](declarations/hasgradientwithinat-univ.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [DifferentiableOn.hasGradientAt](declarations/differentiableon-hasgradientat.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [HasGradientAt.gradient](declarations/hasgradientat-gradient.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [gradient_eq](declarations/gradient-eq.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [HasGradientAtFilter.hasDerivAtFilter](declarations/hasgradientatfilter-hasderivatfilter-source-edition-2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [HasDerivAtFilter.hasGradientAtFilter](declarations/hasderivatfilter-hasgradientatfilter.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [HasGradientAt.hasDerivAt](declarations/hasgradientat-hasderivat.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HasDerivAt.hasGradientAt](declarations/hasderivat-hasgradientat.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [gradient_eq_deriv](declarations/gradient-eq-deriv-source-edition-2.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HasGradientAtFilter.hasDerivAtFilter'](declarations/hasgradientatfilter-hasderivatfilter.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [HasDerivAtFilter.hasGradientAtFilter'](declarations/hasderivatfilter-hasgradientatfilter-source-edition-2.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HasGradientAt.hasDerivAt'](declarations/hasgradientat-hasderivat-source-edition-2.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HasDerivAt.hasGradientAt'](declarations/hasderivat-hasgradientat-source-edition-2.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gradient_eq_deriv'](declarations/gradient-eq-deriv.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hasGradientAtFilter_iff_isLittleO](declarations/hasgradientatfilter-iff-islittleo.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hasGradientWithinAt_iff_isLittleO](declarations/hasgradientwithinat-iff-islittleo.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hasGradientWithinAt_iff_tendsto](declarations/hasgradientwithinat-iff-tendsto.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [hasGradientAt_iff_isLittleO](declarations/hasgradientat-iff-islittleo.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [hasGradientAt_iff_tendsto](declarations/hasgradientat-iff-tendsto.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [HasGradientAtFilter.isBigO_sub](declarations/hasgradientatfilter-isbigo-sub.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hasGradientWithinAt_congr_set'](declarations/hasgradientwithinat-congr-set-source-edition-2.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hasGradientWithinAt_congr_set](declarations/hasgradientwithinat-congr-set.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [hasGradientAt_iff_isLittleO_nhds_zero](declarations/hasgradientat-iff-islittleo-nhds-zero.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Filter.EventuallyEq.hasGradientAtFilter_iff](declarations/filter-eventuallyeq-hasgradientatfilter-iff.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [HasGradientAtFilter.congr_of_eventuallyEq](declarations/hasgradientatfilter-congr-of-eventuallyeq.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [HasGradientWithinAt.congr_mono](declarations/hasgradientwithinat-congr-mono.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [HasGradientWithinAt.congr](declarations/hasgradientwithinat-congr.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [HasGradientWithinAt.congr_of_mem](declarations/hasgradientwithinat-congr-of-mem.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [HasGradientWithinAt.congr_of_eventuallyEq](declarations/hasgradientwithinat-congr-of-eventuallyeq.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [HasGradientWithinAt.congr_of_eventuallyEq_of_mem](declarations/hasgradientwithinat-congr-of-eventuallyeq-of-mem.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [HasGradientAt.congr_of_eventuallyEq](declarations/hasgradientat-congr-of-eventuallyeq.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Filter.EventuallyEq.gradient_eq](declarations/filter-eventuallyeq-gradient-eq.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Filter.EventuallyEq.gradient](declarations/filter-eventuallyeq-gradient.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [hasGradientAtFilter_const](declarations/hasgradientatfilter-const.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [hasGradientWithinAt_const](declarations/hasgradientwithinat-const.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [hasGradientAt_const](declarations/hasgradientat-const.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [gradient_fun_const](declarations/gradient-fun-const-source-edition-2.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [gradient_const](declarations/gradient-const-source-edition-2.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [gradient_fun_const'](declarations/gradient-fun-const.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [gradient_const'](declarations/gradient-const.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [HasGradientAtFilter.tendsto_nhds](declarations/hasgradientatfilter-tendsto-nhds.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [HasGradientWithinAt.continuousWithinAt](declarations/hasgradientwithinat-continuouswithinat.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [HasGradientAt.continuousAt](declarations/hasgradientat-continuousat.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [HasGradientAt.continuousOn](declarations/hasgradientat-continuouson.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4884de7b3b6e9af2edba847621e90a07a224399a06920982d8d03cf73b5ab1cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantcd12d546b220974f009b1be560295a09cf54a1a0269ee3687671e4ba2b3d5e82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
