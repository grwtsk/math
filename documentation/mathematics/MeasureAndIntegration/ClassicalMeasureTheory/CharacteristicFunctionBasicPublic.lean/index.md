# Characteristic Function Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3f90bba2eb49b295a4dd7bb80f5434f66c31ebdd2801a0bc82e5c9476c9b54e4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8642bb731c6c7d7982c045bce1fced92b98765f1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [innerProbChar](declarations/innerprobchar.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [innerProbChar_apply](declarations/innerprobchar-apply.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [innerProbChar_zero](declarations/innerprobchar-zero.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [probCharDual](declarations/probchardual.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [probCharDual_apply](declarations/probchardual-apply.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [probCharDual_zero](declarations/probchardual-zero.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ext_of_integral_char_eq](declarations/ext-of-integral-char-eq.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [charFun](declarations/charfun.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [charFun_apply](declarations/charfun-apply.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [charFun_apply_real](declarations/charfun-apply-real.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [charFun_zero](declarations/charfun-zero.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [charFun_zero_measure](declarations/charfun-zero-measure.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [charFun_neg](declarations/charfun-neg.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [charFun_eq_integral_innerProbChar](declarations/charfun-eq-integral-innerprobchar.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [charFun_eq_integral_probChar](declarations/charfun-eq-integral-probchar.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [charFun_eq_fourierIntegral](declarations/charfun-eq-fourierintegral.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [charFun_eq_fourierIntegral'](declarations/charfun-eq-fourierintegral-source-edition-2.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [norm_charFun_le](declarations/norm-charfun-le.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [norm_charFun_le_one](declarations/norm-charfun-le-one.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [norm_one_sub_charFun_le_two](declarations/norm-one-sub-charfun-le-two.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [stronglyMeasurable_charFun](declarations/stronglymeasurable-charfun.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [measurable_charFun](declarations/measurable-charfun.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [intervalIntegrable_charFun](declarations/intervalintegrable-charfun.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [charFun_map_eq_charFun_map_inner_one](declarations/charfun-map-eq-charfun-map-inner-one.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [charFun_map_smul](declarations/charfun-map-smul.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [charFun_map_smul_comp](declarations/charfun-map-smul-comp.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [charFun_map_mul](declarations/charfun-map-mul.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [charFun_map_mul_comp](declarations/charfun-map-mul-comp.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [charFun_dirac](declarations/charfun-dirac.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [charFun_map_add_const](declarations/charfun-map-add-const.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [charFun_map_const_add](declarations/charfun-map-const-add.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Measure.ext_of_charFun](declarations/measure-ext-of-charfun.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [charFun_conv](declarations/charfun-conv.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [charFun_prod](declarations/charfun-prod.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [charFun_eq_prod_iff](declarations/charfun-eq-prod-iff.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [charFun_pi](declarations/charfun-pi.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [charFun_eq_pi_iff](declarations/charfun-eq-pi-iff.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [charFunDual](declarations/charfundual.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [charFunDual_apply](declarations/charfundual-apply.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [charFunDual_eq_charFun_map_one](declarations/charfundual-eq-charfun-map-one.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [charFun_map_eq_charFunDual_smul](declarations/charfun-map-eq-charfundual-smul.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [charFun_eq_charFunDual_toDualMap](declarations/charfun-eq-charfundual-todualmap.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [charFun_toDual_symm_eq_charFunDual](declarations/charfun-todual-symm-eq-charfundual.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [charFunDual_map](declarations/charfundual-map.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [charFunDual_dirac](declarations/charfundual-dirac.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [charFunDual_map_add_const](declarations/charfundual-map-add-const.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [charFunDual_map_const_add](declarations/charfundual-map-const-add.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [charFunDual_prod](declarations/charfundual-prod-source-edition-2.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [charFunDual_prod'](declarations/charfundual-prod.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [charFunDual_pi](declarations/charfundual-pi-source-edition-2.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [charFunDual_pi'](declarations/charfundual-pi.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Measure.ext_of_charFunDual](declarations/measure-ext-of-charfundual.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [charFunDual_eq_prod_iff](declarations/charfundual-eq-prod-iff.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [charFunDual_eq_prod_iff'](declarations/charfundual-eq-prod-iff-source-edition-2.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [charFunDual_eq_pi_iff](declarations/charfundual-eq-pi-iff.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [charFunDual_eq_pi_iff'](declarations/charfundual-eq-pi-iff-source-edition-2.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [charFunDual_conv](declarations/charfundual-conv.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f317c0847b965149dc6a52a3b5b1e05e500e0757d8bd9ed2a0f65cf97413b54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3f90bba2eb49b295a4dd7bb80f5434f66c31ebdd2801a0bc82e5c9476c9b54e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
