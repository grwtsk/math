# Box Integral Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**71 observed declarations and anonymous commands**, 65 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0925e524275a3187930041cbdadbf1efd6be99b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/BoxIntegralBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [integralSum](declarations/integralsum.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [integralSum_congr](declarations/integralsum-congr.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [integralSum_biUnionTagged](declarations/integralsum-biuniontagged.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [integralSum_biUnion_partition](declarations/integralsum-biunion-partition.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [integralSum_inf_partition](declarations/integralsum-inf-partition.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [integralSum_fiberwise](declarations/integralsum-fiberwise.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [integralSum_sub_partitions](declarations/integralsum-sub-partitions.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [integralSum_disjUnion](declarations/integralsum-disjunion.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [integralSum_add](declarations/integralsum-add.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [integralSum_neg](declarations/integralsum-neg.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [integralSum_smul](declarations/integralsum-smul.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [HasIntegral](declarations/hasintegral.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Integrable](declarations/integrable.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [integral](declarations/integral.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasIntegral_congr](declarations/hasintegral-congr.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [HasIntegral.tendsto](declarations/hasintegral-tendsto.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hasIntegral_iff](declarations/hasintegral-iff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [HasIntegral.of_mul](declarations/hasintegral-of-mul.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [integrable_iff_cauchy](declarations/integrable-iff-cauchy.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [integrable_iff_cauchy_basis](declarations/integrable-iff-cauchy-basis.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [HasIntegral.mono](declarations/hasintegral-mono.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Integrable.hasIntegral](declarations/integrable-hasintegral.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Integrable.mono](declarations/integrable-mono.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [HasIntegral.unique](declarations/hasintegral-unique.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HasIntegral.integrable](declarations/hasintegral-integrable.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [HasIntegral.integral_eq](declarations/hasintegral-integral-eq.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HasIntegral.add](declarations/hasintegral-add.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Integrable.add](declarations/integrable-add.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [integral_add](declarations/integral-add.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [HasIntegral.neg](declarations/hasintegral-neg.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Integrable.neg](declarations/integrable-neg-source-edition-2.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Integrable.of_neg](declarations/integrable-of-neg.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [integrable_neg](declarations/integrable-neg.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [integral_neg](declarations/integral-neg.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [HasIntegral.sub](declarations/hasintegral-sub.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Integrable.sub](declarations/integrable-sub.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [integral_sub](declarations/integral-sub.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [hasIntegral_const](declarations/hasintegral-const.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [integral_const](declarations/integral-const.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [integrable_const](declarations/integrable-const.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [hasIntegral_zero](declarations/hasintegral-zero.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [integrable_zero](declarations/integrable-zero.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [integral_zero](declarations/integral-zero.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [HasIntegral.sum](declarations/hasintegral-sum.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [HasIntegral.smul](declarations/hasintegral-smul.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Integrable.smul](declarations/integrable-smul.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Integrable.of_smul](declarations/integrable-of-smul.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [integral_smul](declarations/integral-smul.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [integral_nonneg](declarations/integral-nonneg.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [norm_integral_le_of_norm_le](declarations/norm-integral-le-of-norm-le.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [norm_integral_le_of_le_const](declarations/norm-integral-le-of-le-const.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [convergenceR](declarations/convergencer.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [convergenceR_cond](declarations/convergencer-cond.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [dist_integralSum_integral_le_of_memBaseSet](declarations/dist-integralsum-integral-le-of-membaseset.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [dist_integralSum_le_of_memBaseSet](declarations/dist-integralsum-le-of-membaseset.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [tendsto_integralSum_toFilter_prod_self_inf_iUnion_eq_uniformity](declarations/tendsto-integralsum-tofilter-prod-self-inf-iunion-eq-uniformity.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [cauchy_map_integralSum_toFilteriUnion](declarations/cauchy-map-integralsum-tofilteriunion.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [to_subbox_aux](declarations/to-subbox-aux.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [to_subbox](declarations/to-subbox.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [tendsto_integralSum_toFilteriUnion_single](declarations/tendsto-integralsum-tofilteriunion-single.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [dist_integralSum_sum_integral_le_of_memBaseSet_of_iUnion_eq](declarations/dist-integralsum-sum-integral-le-of-membaseset-of-iunion-eq.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [dist_integralSum_sum_integral_le_of_memBaseSet](declarations/dist-integralsum-sum-integral-le-of-membaseset.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [tendsto_integralSum_sum_integral](declarations/tendsto-integralsum-sum-integral.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [sum_integral_congr](declarations/sum-integral-congr.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [toBoxAdditive](declarations/toboxadditive.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [integrable_of_bounded_and_ae_continuousWithinAt](declarations/integrable-of-bounded-and-ae-continuouswithinat.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [integrable_of_bounded_and_ae_continuous](declarations/integrable-of-bounded-and-ae-continuous.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [integrable_of_continuousOn](declarations/integrable-of-continuouson.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [HasIntegral.of_bRiemann_eq_false_of_forall_isLittleO](declarations/hasintegral-of-briemann-eq-false-of-forall-islittleo.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [HasIntegral.of_le_Henstock_of_forall_isLittleO](declarations/hasintegral-of-le-henstock-of-forall-islittleo.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [HasIntegral.mcShane_of_forall_isLittleO](declarations/hasintegral-mcshane-of-forall-islittleo.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b803ab5bb5ec25541fd0b84470c678b317e95f93dc2e434392b6492bab5687b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant29daf3725b24a06046ddaadfefa360111df66f247aeb9d6b9e143b08b662bbdc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
