# Bochner L1 L1 Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**77 observed declarations and anonymous commands**, 66 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant12ee8b69893dcce53817f6760e392d6b71732328fd7f8dfa8f6464bc1d80042d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9fd6c639cc132e235aba0c557bdacaf8b478f9b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1NamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSMul](declarations/weightedsmul.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [weightedSMul_apply](declarations/weightedsmul-apply.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [weightedSMul_zero_measure](declarations/weightedsmul-zero-measure.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [weightedSMul_empty](declarations/weightedsmul-empty.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [weightedSMul_add_measure](declarations/weightedsmul-add-measure.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [weightedSMul_smul_measure](declarations/weightedsmul-smul-measure.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [weightedSMul_congr](declarations/weightedsmul-congr.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [weightedSMul_null](declarations/weightedsmul-null.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [weightedSMul_union'](declarations/weightedsmul-union-source-edition-2.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [weightedSMul_union](declarations/weightedsmul-union.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [weightedSMul_smul](declarations/weightedsmul-smul.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [norm_weightedSMul_le](declarations/norm-weightedsmul-le.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [dominatedFinMeasAdditive_weightedSMul](declarations/dominatedfinmeasadditive-weightedsmul.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [weightedSMul_nonneg](declarations/weightedsmul-nonneg.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [posPart](declarations/pospart-source-edition-2.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [negPart](declarations/negpart.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [posPart_map_norm](declarations/pospart-map-norm.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [negPart_map_norm](declarations/negpart-map-norm.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [posPart_sub_negPart](declarations/pospart-sub-negpart.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [integral](declarations/integral.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [integral_def](declarations/integral-def.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [integral_eq](declarations/integral-eq.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integral_eq_sum_filter](declarations/integral-eq-sum-filter.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [integral_eq_sum_of_subset](declarations/integral-eq-sum-of-subset.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [integral_const](declarations/integral-const.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [integral_piecewise_zero](declarations/integral-piecewise-zero.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_integral](declarations/map-integral.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [integral_eq_lintegral'](declarations/integral-eq-lintegral-source-edition-2.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [integral_congr](declarations/integral-congr-source-edition-2.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [integral_eq_lintegral](declarations/integral-eq-lintegral-source-edition-3.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [integral_add](declarations/integral-add-source-edition-2.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [integral_neg](declarations/integral-neg-source-edition-2.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [integral_sub](declarations/integral-sub-source-edition-2.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [integral_smul](declarations/integral-smul-source-edition-2.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [norm_setToSimpleFunc_le_integral_norm](declarations/norm-settosimplefunc-le-integral-norm.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [norm_integral_le_integral_norm](declarations/norm-integral-le-integral-norm.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [integral_add_measure](declarations/integral-add-measure.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [integral_nonneg](declarations/integral-nonneg.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [integral_mono](declarations/integral-mono.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [integral_mono_measure](declarations/integral-mono-measure.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [norm_eq_integral](declarations/norm-eq-integral.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [posPart](declarations/pospart.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [negPart](declarations/negpart-source-edition-2.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coe_posPart](declarations/coe-pospart.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coe_negPart](declarations/coe-negpart.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [integral](declarations/integral-source-edition-2.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [integral_eq_integral](declarations/integral-eq-integral.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [integral_eq_lintegral](declarations/integral-eq-lintegral.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [integral_eq_setToL1S](declarations/integral-eq-settol1s.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [integral_congr](declarations/integral-congr.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [integral_add](declarations/integral-add.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [integral_smul](declarations/integral-smul-source-edition-3.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [norm_integral_le_norm](declarations/norm-integral-le-norm.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [integralCLM'](declarations/integralclm-source-edition-4.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [integralCLM](declarations/integralclm-source-edition-3.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [norm_Integral_le_one](declarations/norm-integral-le-one.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [posPart_toSimpleFunc](declarations/pospart-tosimplefunc.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [negPart_toSimpleFunc](declarations/negpart-tosimplefunc.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [integral_eq_norm_posPart_sub](declarations/integral-eq-norm-pospart-sub.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [integralCLM'](declarations/integralclm.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [integralCLM](declarations/integralclm-source-edition-2.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [integral_eq](declarations/integral-eq-source-edition-3.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [integral_eq_setToL1](declarations/integral-eq-settol1.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [SimpleFunc.integral_L1_eq_integral](declarations/simplefunc-integral-l1-eq-integral.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [SimpleFunc.integralCLM'_L1_eq_integral](declarations/simplefunc-integralclm-l1-eq-integral.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [integral_eq'](declarations/integral-eq-source-edition-2.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [integral_zero](declarations/integral-zero.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [integral_add](declarations/integral-add-source-edition-3.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [integral_neg](declarations/integral-neg.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [integral_sub](declarations/integral-sub.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [integral_smul](declarations/integral-smul.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [norm_Integral_le_one](declarations/norm-integral-le-one-source-edition-2.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [nnnorm_Integral_le_one](declarations/nnnorm-integral-le-one.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [norm_integral_le](declarations/norm-integral-le.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [nnnorm_integral_le](declarations/nnnorm-integral-le.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [continuous_integral](declarations/continuous-integral.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [integral_eq_norm_posPart_sub](declarations/integral-eq-norm-pospart-sub-source-edition-2.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f320c57ff0e60ecbe849232d929247f36bac7bd29bcde16bab603fee6ba5e950 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant12ee8b69893dcce53817f6760e392d6b71732328fd7f8dfa8f6464bc1d80042d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
