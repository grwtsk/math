# Finite Heat Recovery

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**22 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `002b7d5c2f5530ff61cd5cfaf18f6d5463cf19fc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Geometry/FiniteHeatRecovery.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [diagonalHeat](declarations/diagonalheat.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [inverseDiagonalHeat](declarations/inversediagonalheat.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [inverse_after_heat](declarations/inverse-after-heat.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [heat_after_inverse](declarations/heat-after-inverse.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [diagonalHeat_injective](declarations/diagonalheat-injective.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [diagonalHeat_add_time](declarations/diagonalheat-add-time.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [diagonalHeat_abs_le](declarations/diagonalheat-abs-le.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [diagonalHeat_squareEnergy_le](declarations/diagonalheat-squareenergy-le.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [diagonalHeat_zero_mode](declarations/diagonalheat-zero-mode.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [inverse_gain_readout](declarations/inverse-gain-readout.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [UniformInverseBound](declarations/uniforminversebound.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [uniformInverseBound_iff_gain](declarations/uniforminversebound-iff-gain.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [HodgeSpectralChart](declarations/hodgespectralchart.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [HodgeSpectralChart.heat](declarations/hodgespectralchart-heat.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [HodgeSpectralChart.recover](declarations/hodgespectralchart-recover.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [HodgeSpectralChart.recover_heat](declarations/hodgespectralchart-recover-heat.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [HodgeSpectralChart.heat_squareEnergy_le](declarations/hodgespectralchart-heat-squareenergy-le.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [discarded_coordinate_is_not_injective](declarations/discarded-coordinate-is-not-injective.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [implicitEulerEncode](declarations/impliciteulerencode.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [implicitEulerRecover](declarations/impliciteulerrecover.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [implicitEuler_exact](declarations/impliciteuler-exact.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [implicitEuler_no_uniform_inverse_bound](declarations/impliciteuler-no-uniform-inverse-bound.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2d24bcc750bb4d8fc7cce71f815cda0facc18542915770ae205df847cc0d1b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/Hodge/FiniteHeatRecovery.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
