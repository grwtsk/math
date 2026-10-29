# Holomorphic Multiplier Area

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Operator/HolomorphicMultiplierArea.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f6b98dd105a5d8265111243d4d66188ef5fbd72`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/HolomorphicMultiplierArea.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [areaMeasure](declarations/areameasure.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [areaMeasure_map](declarations/areameasure-map.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [areaMeasure_univ](declarations/areameasure-univ.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [areaMeasure_singleton](declarations/areameasure-singleton.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [lintegral_areaMeasure](declarations/lintegral-areameasure.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [energy_area_eq](declarations/energy-area-eq.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [window_integral_le_energy](declarations/window-integral-le-energy.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [window_energy_bound](declarations/window-energy-bound.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [value_zero_of_energy_zero](declarations/value-zero-of-energy-zero.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ae_value_eq](declarations/ae-value-eq.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [aeEqual_area_iff](declarations/aeequal-area-iff.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [value](declarations/value.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [value_classOf](declarations/value-classof.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [value_sq_bound](declarations/value-sq-bound.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [value_norm_bound](declarations/value-norm-bound.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [functional](declarations/functional.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [functional_classOf](declarations/functional-classof.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [functional_norm_le](declarations/functional-norm-le.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [functional_congr](declarations/functional-congr.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [pointPort](declarations/pointport.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [finiteAreaPointPort](declarations/finiteareapointport.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [finiteAreaPointPortAt](declarations/finiteareapointportat.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [area_representation_norm](declarations/area-representation-norm.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [areaRepresentation](declarations/arearepresentation.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [areaRepresentation_apply](declarations/arearepresentation-apply.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [area_representation_closed](declarations/area-representation-closed.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [no_positiveAtom](declarations/no-positiveatom.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [unit_not_finite_of_infinite_area](declarations/unit-not-finite-of-infinite-area.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [disk_finite_area](declarations/disk-finite-area.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [disk_area_norming](declarations/disk-area-norming.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [spike](declarations/spike.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [spike_center](declarations/spike-center.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [spike_ae_zero](declarations/spike-ae-zero.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [spike_not_holomorphic](declarations/spike-not-holomorphic.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b60972ae5f15c132da18e711723071ad24be305f489f680980f281b638290530 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Operator/HolomorphicMultiplierArea.lean","GRWTSK/Analysis/OperatorTheory/HolomorphicMultiplierArea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
