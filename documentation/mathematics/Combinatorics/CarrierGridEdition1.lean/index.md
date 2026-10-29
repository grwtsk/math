# Carrier Grid Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c150aa123482d10b5dfd8be666ae753b2ec3af31`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/CarrierGridEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NormalizedPoint](declarations/normalizedpoint.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [InClosedUnitInterval](declarations/inclosedunitinterval.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [AxisSupports](declarations/axissupports.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [axisSupportsDecidable](declarations/axissupportsdecidable.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [axisCarriers](declarations/axiscarriers.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ExactCarrier](declarations/exactcarrier.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [exactCarrierDecidablePred](declarations/exactcarrierdecidablepred.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [carrierMultiplicity](declarations/carriermultiplicity.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [AxisOriginMatches](declarations/axisoriginmatches.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [OriginMatches](declarations/originmatches.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_axisCarriers_iff](declarations/mem-axiscarriers-iff.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [exactCarrier_iff_axis_membership](declarations/exactcarrier-iff-axis-membership.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [exactCarrierEquivAxisCarriers](declarations/exactcarrierequivaxiscarriers.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [card_exactCarrier_eq_carrierMultiplicity](declarations/card-exactcarrier-eq-carriermultiplicity.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [axisOriginMatches_implies_support](declarations/axisoriginmatches-implies-support.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [originMatches_implies_exactCarrier](declarations/originmatches-implies-exactcarrier.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [InteriorAxisStratum](declarations/interioraxisstratum.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [InteriorAxisStratum.codimension](declarations/interioraxisstratum-codimension.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fin_eq_of_val_eq](declarations/fin-eq-of-val-eq.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [axisCarriers_eq_singleton_of_cell](declarations/axiscarriers-eq-singleton-of-cell.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [axisCarriers_eq_pair_of_internalBoundary](declarations/axiscarriers-eq-pair-of-internalboundary.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [InteriorGridStratum](declarations/interiorgridstratum.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [InteriorGridStratum.codimension](declarations/interiorgridstratum-codimension.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [carrierMultiplicity_eq_two_pow_codimension](declarations/carriermultiplicity-eq-two-pow-codimension.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [center](declarations/center.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [oddCenterIndex](declarations/oddcenterindex.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [evenCenterLeft](declarations/evencenterleft.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [evenCenterRight](declarations/evencenterright.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [odd_center_axisCarriers](declarations/odd-center-axiscarriers.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [even_center_axisCarriers](declarations/even-center-axiscarriers.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [odd_center_carrierMultiplicity](declarations/odd-center-carriermultiplicity.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [even_center_carrierMultiplicity](declarations/even-center-carriermultiplicity.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [odd_center_axisOriginMatches_iff](declarations/odd-center-axisoriginmatches-iff.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [even_center_axisOriginMatches_false](declarations/even-center-axisoriginmatches-false.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18a9d9b18a48e2c432d1224defea151d27f52d2007253d21bcdd83efc28ed2e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
