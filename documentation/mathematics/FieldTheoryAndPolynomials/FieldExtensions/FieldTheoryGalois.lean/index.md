# Field Theory Galois

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `785413e9073c845e3058211914f7b568a4b81f9d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FieldTheoryAndPolynomials/FieldExtensions/FieldTheoryGalois.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [IsGalois](declarations/isgalois.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isGalois_iff](declarations/isgalois-iff.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [self](declarations/self.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [integral](declarations/integral.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [separable](declarations/separable.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [splits](declarations/splits.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [of_fixed_field](declarations/of-fixed-field.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IntermediateField.AdjoinSimple.card_aut_eq_finrank](declarations/intermediatefield-adjoinsimple-card-aut-eq-finrank.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [card_aut_eq_finrank](declarations/card-aut-eq-finrank.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsGalois.tower_top_of_isGalois](declarations/isgalois-tower-top-of-isgalois.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isGalois_iff_isGalois_bot](declarations/isgalois-iff-isgalois-bot.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsGalois.of_algEquiv](declarations/isgalois-of-algequiv.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [AlgEquiv.transfer_galois](declarations/algequiv-transfer-galois.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isGalois_iff_isGalois_top](declarations/isgalois-iff-isgalois-top.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [isGalois_bot](declarations/isgalois-bot.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [FixedPoints.intermediateField](declarations/fixedpoints-intermediatefield.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [fixedField](declarations/fixedfield.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [finrank_fixedField_eq_card](declarations/finrank-fixedfield-eq-card.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fixingSubgroup](declarations/fixingsubgroup.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [le_iff_le](declarations/le-iff-le.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [fixingSubgroupEquiv](declarations/fixingsubgroupequiv.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [fixingSubgroup_fixedField](declarations/fixingsubgroup-fixedfield.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [fixedField.smul](declarations/fixedfield-smul.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [fixedField.algebra](declarations/fixedfield-algebra.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [fixedField.isScalarTower](declarations/fixedfield-isscalartower.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [fixedField_fixingSubgroup](declarations/fixedfield-fixingsubgroup.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [card_fixingSubgroup_eq_finrank](declarations/card-fixingsubgroup-eq-finrank.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [intermediateFieldEquivSubgroup](declarations/intermediatefieldequivsubgroup.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [galoisInsertionIntermediateFieldSubgroup](declarations/galoisinsertionintermediatefieldsubgroup.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [galoisCoinsertionIntermediateFieldSubgroup](declarations/galoiscoinsertionintermediatefieldsubgroup.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [is_separable_splitting_field](declarations/is-separable-splitting-field.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [of_fixedField_eq_bot](declarations/of-fixedfield-eq-bot.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [of_card_aut_eq_finrank](declarations/of-card-aut-eq-finrank.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [of_separable_splitting_field_aux](declarations/of-separable-splitting-field-aux.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [of_separable_splitting_field](declarations/of-separable-splitting-field.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [tfae](declarations/tfae.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [IsGalois.normalClosure](declarations/isgalois-normalclosure.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9222a137594b6e8d93516edb9626eccf15f2f06538f00e4e4e08b2b66cc0c328 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
