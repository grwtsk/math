# Characteristic Function Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfe39edd793ec429e617eca068248d1f1cb8d4b5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/CharacteristicFunctionNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [innerProbChar](declarations/innerprobchar.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [innerProbChar_apply](declarations/innerprobchar-apply.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [innerProbChar_zero](declarations/innerprobchar-zero.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [probCharDual](declarations/probchardual.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [probCharDual_apply](declarations/probchardual-apply.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [probCharDual_zero](declarations/probchardual-zero.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ext_of_integral_char_eq](declarations/ext-of-integral-char-eq.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [charFun](declarations/charfun.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [charFun_apply](declarations/charfun-apply.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [charFun_apply_real](declarations/charfun-apply-real.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [charFun_zero](declarations/charfun-zero.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [charFun_zero_measure](declarations/charfun-zero-measure.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [charFun_neg](declarations/charfun-neg.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [charFun_eq_integral_innerProbChar](declarations/charfun-eq-integral-innerprobchar.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [charFun_eq_integral_probChar](declarations/charfun-eq-integral-probchar.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [charFun_eq_fourierIntegral](declarations/charfun-eq-fourierintegral-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [charFun_eq_fourierIntegral'](declarations/charfun-eq-fourierintegral.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [norm_charFun_le](declarations/norm-charfun-le.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [norm_charFun_le_one](declarations/norm-charfun-le-one.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [norm_one_sub_charFun_le_two](declarations/norm-one-sub-charfun-le-two.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [stronglyMeasurable_charFun](declarations/stronglymeasurable-charfun.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [measurable_charFun](declarations/measurable-charfun.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [intervalIntegrable_charFun](declarations/intervalintegrable-charfun.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [charFun_map_smul](declarations/charfun-map-smul.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [charFun_map_mul](declarations/charfun-map-mul.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Measure.ext_of_charFun](declarations/measure-ext-of-charfun.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [charFun_conv](declarations/charfun-conv.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [charFunDual](declarations/charfundual.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [charFunDual_apply](declarations/charfundual-apply.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [charFunDual_eq_charFun_map_one](declarations/charfundual-eq-charfun-map-one.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [charFun_map_eq_charFunDual_smul](declarations/charfun-map-eq-charfundual-smul.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [charFun_eq_charFunDual_toDualMap](declarations/charfun-eq-charfundual-todualmap.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [charFunDual_map](declarations/charfundual-map.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [charFunDual_dirac](declarations/charfundual-dirac.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [charFunDual_prod](declarations/charfundual-prod.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Measure.ext_of_charFunDual](declarations/measure-ext-of-charfundual.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [charFunDual_conv](declarations/charfundual-conv.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81fd5299eca610d0fcc960a55a42f7a73f0bba2c7247748969499cce6d1818e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/CharacteristicFunction/Variant4adba0b5c7e780628934740a020132e2492aa7b47c353dc49fd143144975970e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
