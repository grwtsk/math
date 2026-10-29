# Field Theory Galois Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84dfd4c47cd981412183ba77424574c428b62a16`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FieldTheoryAndPolynomials/FieldExtensions/FieldTheoryGaloisNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [IsGalois](declarations/isgalois.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isGalois_iff](declarations/isgalois-iff.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [self](declarations/self.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [integral](declarations/integral.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [separable](declarations/separable.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [splits](declarations/splits.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [of_fixed_field](declarations/of-fixed-field.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IntermediateField.AdjoinSimple.card_aut_eq_finrank](declarations/intermediatefield-adjoinsimple-card-aut-eq-finrank.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [card_aut_eq_finrank](declarations/card-aut-eq-finrank.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsGalois.tower_top_of_isGalois](declarations/isgalois-tower-top-of-isgalois.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isGalois_iff_isGalois_bot](declarations/isgalois-iff-isgalois-bot.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsGalois.of_algEquiv](declarations/isgalois-of-algequiv.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [AlgEquiv.transfer_galois](declarations/algequiv-transfer-galois.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isGalois_iff_isGalois_top](declarations/isgalois-iff-isgalois-top.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [isGalois_bot](declarations/isgalois-bot.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [FixedPoints.intermediateField](declarations/fixedpoints-intermediatefield.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [fixedField](declarations/fixedfield.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [finrank_fixedField_eq_card](declarations/finrank-fixedfield-eq-card.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fixingSubgroup](declarations/fixingsubgroup.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [le_iff_le](declarations/le-iff-le.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [fixingSubgroupEquiv](declarations/fixingsubgroupequiv.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [fixingSubgroup_fixedField](declarations/fixingsubgroup-fixedfield.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [fixedField.smul](declarations/fixedfield-smul.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [fixedField.algebra](declarations/fixedfield-algebra.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [fixedField.isScalarTower](declarations/fixedfield-isscalartower.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [fixedField_fixingSubgroup](declarations/fixedfield-fixingsubgroup.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [card_fixingSubgroup_eq_finrank](declarations/card-fixingsubgroup-eq-finrank.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [intermediateFieldEquivSubgroup](declarations/intermediatefieldequivsubgroup.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [galoisInsertionIntermediateFieldSubgroup](declarations/galoisinsertionintermediatefieldsubgroup.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [galoisCoinsertionIntermediateFieldSubgroup](declarations/galoiscoinsertionintermediatefieldsubgroup.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [is_separable_splitting_field](declarations/is-separable-splitting-field.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [of_fixedField_eq_bot](declarations/of-fixedfield-eq-bot.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [of_card_aut_eq_finrank](declarations/of-card-aut-eq-finrank.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [of_separable_splitting_field_aux](declarations/of-separable-splitting-field-aux.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [of_separable_splitting_field](declarations/of-separable-splitting-field.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [tfae](declarations/tfae.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [IsGalois.normalClosure](declarations/isgalois-normalclosure.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b198e70d863ff6d9fd9e39ef3b26978adf54611e914ce5a27988203a9d0a26c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Galois/Variant578a15ac62dac3ba6d6207a63c31938808ef1e1a0e3c91daba7d66dfcb7d0dde.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
