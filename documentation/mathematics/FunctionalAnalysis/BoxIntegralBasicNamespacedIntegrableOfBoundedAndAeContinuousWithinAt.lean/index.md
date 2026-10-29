# Box Integral Basic Namespaced Integrable Of Bounded And Ae Continuous Within At

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**69 observed declarations and anonymous commands**, 63 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e6b725797250d205876f963301327eb6bbc04ea`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/BoxIntegralBasicNamespacedIntegrableOfBoundedAndAeContinuousWithinAt.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [integralSum](declarations/integralsum.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [integralSum_biUnionTagged](declarations/integralsum-biuniontagged.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [integralSum_biUnion_partition](declarations/integralsum-biunion-partition.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [integralSum_inf_partition](declarations/integralsum-inf-partition.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [integralSum_fiberwise](declarations/integralsum-fiberwise.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [integralSum_sub_partitions](declarations/integralsum-sub-partitions.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [integralSum_disjUnion](declarations/integralsum-disjunion.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [integralSum_add](declarations/integralsum-add.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [integralSum_neg](declarations/integralsum-neg.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [integralSum_smul](declarations/integralsum-smul.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [HasIntegral](declarations/hasintegral.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Integrable](declarations/integrable.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [integral](declarations/integral.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [HasIntegral.tendsto](declarations/hasintegral-tendsto.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasIntegral_iff](declarations/hasintegral-iff.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [HasIntegral.of_mul](declarations/hasintegral-of-mul.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [integrable_iff_cauchy](declarations/integrable-iff-cauchy.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [integrable_iff_cauchy_basis](declarations/integrable-iff-cauchy-basis.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [HasIntegral.mono](declarations/hasintegral-mono.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Integrable.hasIntegral](declarations/integrable-hasintegral.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Integrable.mono](declarations/integrable-mono.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [HasIntegral.unique](declarations/hasintegral-unique.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HasIntegral.integrable](declarations/hasintegral-integrable.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [HasIntegral.integral_eq](declarations/hasintegral-integral-eq.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HasIntegral.add](declarations/hasintegral-add.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Integrable.add](declarations/integrable-add.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [integral_add](declarations/integral-add.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HasIntegral.neg](declarations/hasintegral-neg.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Integrable.neg](declarations/integrable-neg-source-edition-2.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Integrable.of_neg](declarations/integrable-of-neg.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [integrable_neg](declarations/integrable-neg.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [integral_neg](declarations/integral-neg.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HasIntegral.sub](declarations/hasintegral-sub.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Integrable.sub](declarations/integrable-sub.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [integral_sub](declarations/integral-sub.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hasIntegral_const](declarations/hasintegral-const.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [integral_const](declarations/integral-const.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [integrable_const](declarations/integrable-const.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [hasIntegral_zero](declarations/hasintegral-zero.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [integrable_zero](declarations/integrable-zero.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [integral_zero](declarations/integral-zero.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [HasIntegral.sum](declarations/hasintegral-sum.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [HasIntegral.smul](declarations/hasintegral-smul.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Integrable.smul](declarations/integrable-smul.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Integrable.of_smul](declarations/integrable-of-smul.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [integral_smul](declarations/integral-smul.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [integral_nonneg](declarations/integral-nonneg.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [norm_integral_le_of_norm_le](declarations/norm-integral-le-of-norm-le.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [norm_integral_le_of_le_const](declarations/norm-integral-le-of-le-const.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [convergenceR](declarations/convergencer.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [convergenceR_cond](declarations/convergencer-cond.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [dist_integralSum_integral_le_of_memBaseSet](declarations/dist-integralsum-integral-le-of-membaseset.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [dist_integralSum_le_of_memBaseSet](declarations/dist-integralsum-le-of-membaseset.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [tendsto_integralSum_toFilter_prod_self_inf_iUnion_eq_uniformity](declarations/tendsto-integralsum-tofilter-prod-self-inf-iunion-eq-uniformity.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [cauchy_map_integralSum_toFilteriUnion](declarations/cauchy-map-integralsum-tofilteriunion.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [to_subbox_aux](declarations/to-subbox-aux.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [to_subbox](declarations/to-subbox.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [tendsto_integralSum_toFilteriUnion_single](declarations/tendsto-integralsum-tofilteriunion-single.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [dist_integralSum_sum_integral_le_of_memBaseSet_of_iUnion_eq](declarations/dist-integralsum-sum-integral-le-of-membaseset-of-iunion-eq.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [dist_integralSum_sum_integral_le_of_memBaseSet](declarations/dist-integralsum-sum-integral-le-of-membaseset.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [tendsto_integralSum_sum_integral](declarations/tendsto-integralsum-sum-integral.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [sum_integral_congr](declarations/sum-integral-congr.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [toBoxAdditive](declarations/toboxadditive.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [integrable_of_bounded_and_ae_continuousWithinAt](declarations/integrable-of-bounded-and-ae-continuouswithinat.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [integrable_of_bounded_and_ae_continuous](declarations/integrable-of-bounded-and-ae-continuous.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [integrable_of_continuousOn](declarations/integrable-of-continuouson.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [HasIntegral.of_bRiemann_eq_false_of_forall_isLittleO](declarations/hasintegral-of-briemann-eq-false-of-forall-islittleo.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [HasIntegral.of_le_Henstock_of_forall_isLittleO](declarations/hasintegral-of-le-henstock-of-forall-islittleo.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [HasIntegral.mcShane_of_forall_isLittleO](declarations/hasintegral-mcshane-of-forall-islittleo.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d88c1938f9372d3d5899166e57d2ff1df64efb4e00f310e3278083826f5593c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
