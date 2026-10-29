# Carrier Grid Namespaced Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef862603cb95ceb119d5977afaa20f841d512341`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/CarrierGridNamespacedEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NormalizedPoint](declarations/normalizedpoint.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [InClosedUnitInterval](declarations/inclosedunitinterval.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [AxisSupports](declarations/axissupports.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [axisSupportsDecidable](declarations/axissupportsdecidable.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [axisCarriers](declarations/axiscarriers.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ExactCarrier](declarations/exactcarrier.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [exactCarrierDecidablePred](declarations/exactcarrierdecidablepred.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [carrierMultiplicity](declarations/carriermultiplicity.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [AxisOriginMatches](declarations/axisoriginmatches.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [OriginMatches](declarations/originmatches.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_axisCarriers_iff](declarations/mem-axiscarriers-iff.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [exactCarrier_iff_axis_membership](declarations/exactcarrier-iff-axis-membership.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [exactCarrierEquivAxisCarriers](declarations/exactcarrierequivaxiscarriers.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [card_exactCarrier_eq_carrierMultiplicity](declarations/card-exactcarrier-eq-carriermultiplicity.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [axisOriginMatches_implies_support](declarations/axisoriginmatches-implies-support.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [originMatches_implies_exactCarrier](declarations/originmatches-implies-exactcarrier.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [InteriorAxisStratum](declarations/interioraxisstratum.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [InteriorAxisStratum.codimension](declarations/interioraxisstratum-codimension.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fin_eq_of_val_eq](declarations/fin-eq-of-val-eq.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [axisCarriers_eq_singleton_of_cell](declarations/axiscarriers-eq-singleton-of-cell.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [axisCarriers_eq_pair_of_internalBoundary](declarations/axiscarriers-eq-pair-of-internalboundary.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [InteriorGridStratum](declarations/interiorgridstratum.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [InteriorGridStratum.codimension](declarations/interiorgridstratum-codimension.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [carrierMultiplicity_eq_two_pow_codimension](declarations/carriermultiplicity-eq-two-pow-codimension.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [center](declarations/center.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [oddCenterIndex](declarations/oddcenterindex.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [evenCenterLeft](declarations/evencenterleft.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [evenCenterRight](declarations/evencenterright.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [odd_center_axisCarriers](declarations/odd-center-axiscarriers.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [even_center_axisCarriers](declarations/even-center-axiscarriers.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [odd_center_carrierMultiplicity](declarations/odd-center-carriermultiplicity.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [even_center_carrierMultiplicity](declarations/even-center-carriermultiplicity.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [odd_center_axisOriginMatches_iff](declarations/odd-center-axisoriginmatches-iff.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [even_center_axisOriginMatches_false](declarations/even-center-axisoriginmatches-false.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2c6021bb685ca8092716c42636bc4b50b425cbeb26b26bacfed6decb2770932 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variantc724f1d21999e794135694f3595a78396504d24a30a904217ae1c655c7797fd4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
