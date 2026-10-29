# Galois Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**60 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5a3abbd8f68b79aec9433460e8bc5bb0f90f8fd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FieldTheoryAndPolynomials/FieldExtensions/GaloisBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [IsGalois](declarations/isgalois.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isGalois_iff](declarations/isgalois-iff.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [self](declarations/self.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [integral](declarations/integral.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [separable](declarations/separable.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [splits](declarations/splits.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [of_fixed_field](declarations/of-fixed-field.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IntermediateField.AdjoinSimple.card_aut_eq_finrank](declarations/intermediatefield-adjoinsimple-card-aut-eq-finrank.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [card_aut_eq_finrank](declarations/card-aut-eq-finrank.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsGalois.tower_top_of_isGalois](declarations/isgalois-tower-top-of-isgalois.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isGalois_iff_isGalois_bot](declarations/isgalois-iff-isgalois-bot.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsGalois.of_algEquiv](declarations/isgalois-of-algequiv.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [AlgEquiv.transfer_galois](declarations/algequiv-transfer-galois.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isGalois_iff_isGalois_top](declarations/isgalois-iff-isgalois-top.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [isGalois_bot](declarations/isgalois-bot.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [FixedPoints.intermediateField](declarations/fixedpoints-intermediatefield.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [fixedField](declarations/fixedfield.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mem_fixedField_iff](declarations/mem-fixedfield-iff.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [fixedField_bot](declarations/fixedfield-bot.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [finrank_fixedField_eq_card](declarations/finrank-fixedfield-eq-card.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [fixingSubgroup](declarations/fixingsubgroup.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [le_iff_le](declarations/le-iff-le.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [fixingSubgroup_le](declarations/fixingsubgroup-le.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [fixedField_le](declarations/fixedfield-le.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [fixingSubgroup_antitone](declarations/fixingsubgroup-antitone.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [fixedField_antitone](declarations/fixedfield-antitone.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [mem_fixingSubgroup_iff](declarations/mem-fixingsubgroup-iff.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [fixingSubgroup_top](declarations/fixingsubgroup-top.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [fixingSubgroup_bot](declarations/fixingsubgroup-bot.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [fixingSubgroupEquiv](declarations/fixingsubgroupequiv.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [fixingSubgroup_fixedField](declarations/fixingsubgroup-fixedfield.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [fixedField.smul](declarations/fixedfield-smul.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [fixedField.algebra](declarations/fixedfield-algebra.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [fixedField.isScalarTower](declarations/fixedfield-isscalartower.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [fixedField_fixingSubgroup](declarations/fixedfield-fixingsubgroup.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [fixedField_top](declarations/fixedfield-top.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_bot_iff_fixed](declarations/mem-bot-iff-fixed.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mem_range_algebraMap_iff_fixed](declarations/mem-range-algebramap-iff-fixed.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [card_fixingSubgroup_eq_finrank](declarations/card-fixingsubgroup-eq-finrank.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [intermediateFieldEquivSubgroup](declarations/intermediatefieldequivsubgroup.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [galoisInsertionIntermediateFieldSubgroup](declarations/galoisinsertionintermediatefieldsubgroup.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [galoisCoinsertionIntermediateFieldSubgroup](declarations/galoiscoinsertionintermediatefieldsubgroup.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [IntermediateField.restrictNormalHom_ker](declarations/intermediatefield-restrictnormalhom-ker.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [of_fixedField_normal_subgroup](declarations/of-fixedfield-normal-subgroup.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [normalAutEquivQuotient](declarations/normalautequivquotient.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [normalAutEquivQuotient_apply](declarations/normalautequivquotient-apply.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_fixingSubgroup](declarations/map-fixingsubgroup.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [fixingSubgroup_normal_of_isGalois](declarations/fixingsubgroup-normal-of-isgalois.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [is_separable_splitting_field](declarations/is-separable-splitting-field.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [of_fixedField_eq_bot](declarations/of-fixedfield-eq-bot.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [of_card_aut_eq_finrank](declarations/of-card-aut-eq-finrank.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [of_separable_splitting_field_aux](declarations/of-separable-splitting-field-aux.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [of_separable_splitting_field](declarations/of-separable-splitting-field.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [tfae](declarations/tfae.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [IsGalois.normalClosure](declarations/isgalois-normalclosure.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [IsQuadraticExtension.isGalois](declarations/isquadraticextension-isgalois.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [IsQuadraticExtension.isCyclic](declarations/isquadraticextension-iscyclic.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [IsQuadraticExtension.isMulCommutative_galoisGroup](declarations/isquadraticextension-ismulcommutative-galoisgroup.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86d12e30b9f02ea79b2a8ef8154ae0056d36ee89122ac1ee78a579fa8b18bb40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
