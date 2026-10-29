# Bochner L1 L1 Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**77 observed declarations and anonymous commands**, 66 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `983362255ba0f61e8e71fa655f81c2cf5c5a0d13`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/BochnerL1L1Public.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSMul](declarations/weightedsmul.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [weightedSMul_apply](declarations/weightedsmul-apply.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [weightedSMul_zero_measure](declarations/weightedsmul-zero-measure.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [weightedSMul_empty](declarations/weightedsmul-empty.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [weightedSMul_add_measure](declarations/weightedsmul-add-measure.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [weightedSMul_smul_measure](declarations/weightedsmul-smul-measure.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [weightedSMul_congr](declarations/weightedsmul-congr.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [weightedSMul_null](declarations/weightedsmul-null.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [weightedSMul_union'](declarations/weightedsmul-union.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [weightedSMul_union](declarations/weightedsmul-union-source-edition-2.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [weightedSMul_smul](declarations/weightedsmul-smul.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [norm_weightedSMul_le](declarations/norm-weightedsmul-le.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [dominatedFinMeasAdditive_weightedSMul](declarations/dominatedfinmeasadditive-weightedsmul.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [weightedSMul_nonneg](declarations/weightedsmul-nonneg.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [posPart](declarations/pospart-source-edition-2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [negPart](declarations/negpart-source-edition-2.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [posPart_map_norm](declarations/pospart-map-norm.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [negPart_map_norm](declarations/negpart-map-norm.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [posPart_sub_negPart](declarations/pospart-sub-negpart.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [integral](declarations/integral-source-edition-2.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [integral_def](declarations/integral-def.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [integral_eq](declarations/integral-eq.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integral_eq_sum_filter](declarations/integral-eq-sum-filter.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [integral_eq_sum_of_subset](declarations/integral-eq-sum-of-subset.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [integral_const](declarations/integral-const.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [integral_piecewise_zero](declarations/integral-piecewise-zero.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_integral](declarations/map-integral.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [integral_eq_lintegral'](declarations/integral-eq-lintegral-source-edition-2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [integral_congr](declarations/integral-congr.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [integral_eq_lintegral](declarations/integral-eq-lintegral-source-edition-3.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [integral_add](declarations/integral-add-source-edition-2.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [integral_neg](declarations/integral-neg.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [integral_sub](declarations/integral-sub.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [integral_smul](declarations/integral-smul.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [norm_setToSimpleFunc_le_integral_norm](declarations/norm-settosimplefunc-le-integral-norm.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [norm_integral_le_integral_norm](declarations/norm-integral-le-integral-norm.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [integral_add_measure](declarations/integral-add-measure.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [integral_nonneg](declarations/integral-nonneg.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [integral_mono](declarations/integral-mono.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [integral_mono_measure](declarations/integral-mono-measure.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [norm_eq_integral](declarations/norm-eq-integral.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [posPart](declarations/pospart.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [negPart](declarations/negpart.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coe_posPart](declarations/coe-pospart.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coe_negPart](declarations/coe-negpart.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [integral](declarations/integral.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [integral_eq_integral](declarations/integral-eq-integral.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [integral_eq_lintegral](declarations/integral-eq-lintegral.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [integral_eq_setToL1S](declarations/integral-eq-settol1s.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [integral_congr](declarations/integral-congr-source-edition-2.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [integral_add](declarations/integral-add-source-edition-3.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [integral_smul](declarations/integral-smul-source-edition-2.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [norm_integral_le_norm](declarations/norm-integral-le-norm.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [integralCLM'](declarations/integralclm-source-edition-4.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [integralCLM](declarations/integralclm-source-edition-3.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [norm_Integral_le_one](declarations/norm-integral-le-one.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [posPart_toSimpleFunc](declarations/pospart-tosimplefunc.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [negPart_toSimpleFunc](declarations/negpart-tosimplefunc.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [integral_eq_norm_posPart_sub](declarations/integral-eq-norm-pospart-sub-source-edition-2.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [integralCLM'](declarations/integralclm.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [integralCLM](declarations/integralclm-source-edition-2.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [integral_eq](declarations/integral-eq-source-edition-2.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [integral_eq_setToL1](declarations/integral-eq-settol1.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [SimpleFunc.integral_L1_eq_integral](declarations/simplefunc-integral-l1-eq-integral.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [SimpleFunc.integralCLM'_L1_eq_integral](declarations/simplefunc-integralclm-l1-eq-integral.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [integral_eq'](declarations/integral-eq-source-edition-3.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [integral_zero](declarations/integral-zero.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [integral_add](declarations/integral-add.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [integral_neg](declarations/integral-neg-source-edition-2.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [integral_sub](declarations/integral-sub-source-edition-2.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [integral_smul](declarations/integral-smul-source-edition-3.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [norm_Integral_le_one](declarations/norm-integral-le-one-source-edition-2.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [nnnorm_Integral_le_one](declarations/nnnorm-integral-le-one.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [norm_integral_le](declarations/norm-integral-le.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [nnnorm_integral_le](declarations/nnnorm-integral-le.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [continuous_integral](declarations/continuous-integral.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [integral_eq_norm_posPart_sub](declarations/integral-eq-norm-pospart-sub.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27ce0b0918c3e3a81ae212340f8191cd56d8d96e2faa932d2c67a9c712a87674 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant4269e210eee8cd9e4e7a9c35f8c316eed7fee5488db5ca9c544d7a09ccf54fd4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
