# Galois Basic Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**60 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44c31058cd1ce88476d70fd5eb494caab8b7fa64`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [IsGalois](declarations/isgalois.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isGalois_iff](declarations/isgalois-iff.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [self](declarations/self.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [integral](declarations/integral.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [separable](declarations/separable.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [splits](declarations/splits.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [of_fixed_field](declarations/of-fixed-field.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IntermediateField.AdjoinSimple.card_aut_eq_finrank](declarations/intermediatefield-adjoinsimple-card-aut-eq-finrank.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [card_aut_eq_finrank](declarations/card-aut-eq-finrank.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsGalois.tower_top_of_isGalois](declarations/isgalois-tower-top-of-isgalois.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isGalois_iff_isGalois_bot](declarations/isgalois-iff-isgalois-bot.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsGalois.of_algEquiv](declarations/isgalois-of-algequiv.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [AlgEquiv.transfer_galois](declarations/algequiv-transfer-galois.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isGalois_iff_isGalois_top](declarations/isgalois-iff-isgalois-top.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [isGalois_bot](declarations/isgalois-bot.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [FixedPoints.intermediateField](declarations/fixedpoints-intermediatefield.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [fixedField](declarations/fixedfield.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mem_fixedField_iff](declarations/mem-fixedfield-iff.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [fixedField_bot](declarations/fixedfield-bot.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [finrank_fixedField_eq_card](declarations/finrank-fixedfield-eq-card.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [fixingSubgroup](declarations/fixingsubgroup.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [le_iff_le](declarations/le-iff-le.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [fixingSubgroup_le](declarations/fixingsubgroup-le.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [fixedField_le](declarations/fixedfield-le.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [fixingSubgroup_antitone](declarations/fixingsubgroup-antitone.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [fixedField_antitone](declarations/fixedfield-antitone.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [mem_fixingSubgroup_iff](declarations/mem-fixingsubgroup-iff.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [fixingSubgroup_top](declarations/fixingsubgroup-top.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [fixingSubgroup_bot](declarations/fixingsubgroup-bot.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [fixingSubgroupEquiv](declarations/fixingsubgroupequiv.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [fixingSubgroup_fixedField](declarations/fixingsubgroup-fixedfield.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [fixedField.smul](declarations/fixedfield-smul.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [fixedField.algebra](declarations/fixedfield-algebra.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [fixedField.isScalarTower](declarations/fixedfield-isscalartower.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [fixedField_fixingSubgroup](declarations/fixedfield-fixingsubgroup.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [fixedField_top](declarations/fixedfield-top.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_bot_iff_fixed](declarations/mem-bot-iff-fixed.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mem_range_algebraMap_iff_fixed](declarations/mem-range-algebramap-iff-fixed.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [card_fixingSubgroup_eq_finrank](declarations/card-fixingsubgroup-eq-finrank.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [intermediateFieldEquivSubgroup](declarations/intermediatefieldequivsubgroup.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [galoisInsertionIntermediateFieldSubgroup](declarations/galoisinsertionintermediatefieldsubgroup.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [galoisCoinsertionIntermediateFieldSubgroup](declarations/galoiscoinsertionintermediatefieldsubgroup.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [IntermediateField.restrictNormalHom_ker](declarations/intermediatefield-restrictnormalhom-ker.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [of_fixedField_normal_subgroup](declarations/of-fixedfield-normal-subgroup.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [normalAutEquivQuotient](declarations/normalautequivquotient.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [normalAutEquivQuotient_apply](declarations/normalautequivquotient-apply.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_fixingSubgroup](declarations/map-fixingsubgroup.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [fixingSubgroup_normal_of_isGalois](declarations/fixingsubgroup-normal-of-isgalois.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [is_separable_splitting_field](declarations/is-separable-splitting-field.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [of_fixedField_eq_bot](declarations/of-fixedfield-eq-bot.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [of_card_aut_eq_finrank](declarations/of-card-aut-eq-finrank.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [of_separable_splitting_field_aux](declarations/of-separable-splitting-field-aux.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [of_separable_splitting_field](declarations/of-separable-splitting-field.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [tfae](declarations/tfae.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [IsGalois.normalClosure](declarations/isgalois-normalclosure.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [IsQuadraticExtension.isGalois](declarations/isquadraticextension-isgalois.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [IsQuadraticExtension.isCyclic](declarations/isquadraticextension-iscyclic.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [IsQuadraticExtension.isMulCommutative_galoisGroup](declarations/isquadraticextension-ismulcommutative-galoisgroup.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b8b96e4910b119db059216eabf189fb0b300e2bb95bbe100061c983c96b1219 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variantd108d0a3b92b38922395cb44b9f92d06f99759810423826111024ff088a6b49e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
