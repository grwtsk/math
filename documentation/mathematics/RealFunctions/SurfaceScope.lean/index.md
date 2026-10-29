# Surface Scope

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7dd07a88aeb6f083754cc62e9847e0f79a2c45e1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/SurfaceScope.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [DescendsThroughOn](declarations/descendsthroughon.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [descendsThroughOn_iff_subtype](declarations/descendsthroughon-iff-subtype.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [DescendsThroughOn.mono](declarations/descendsthroughon-mono.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [descendsThroughOn_univ_iff](declarations/descendsthroughon-univ-iff.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [DescentObstructionOn](declarations/descentobstructionon.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [DescentObstructionOn.toSubtype](declarations/descentobstructionon-tosubtype.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [DescentObstructionOn.notDescends](declarations/descentobstructionon-notdescends.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [boolean_singleton_scoped_descent](declarations/boolean-singleton-scoped-descent.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [booleanUnrestrictedScopeObstruction](declarations/booleanunrestrictedscopeobstruction.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [boolean_unrestricted_scope_not_descends](declarations/boolean-unrestricted-scope-not-descends.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [PositiveRadius](declarations/positiveradius.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [sphereVolumeFormula](declarations/spherevolumeformula.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sphereAreaFormula](declarations/sphereareaformula.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [sphereSumCurvatureFormula](declarations/spheresumcurvatureformula.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [spherePressureFormula](declarations/spherepressureformula.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [sphereEnergyFormula](declarations/sphereenergyformula.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sphereVolumeFormula_injective](declarations/spherevolumeformula-injective.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sphere_radius_target_descends](declarations/sphere-radius-target-descends.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sphere_area_formula_descends](declarations/sphere-area-formula-descends.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sphere_sum_curvature_formula_descends](declarations/sphere-sum-curvature-formula-descends.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sphere_pressure_formula_descends](declarations/sphere-pressure-formula-descends.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sphere_energy_formula_descends](declarations/sphere-energy-formula-descends.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sphere_volume_formula_pos](declarations/sphere-volume-formula-pos.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [isoperimetricDefectFormula](declarations/isoperimetricdefectformula.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isoperimetric_defect_formula_nonneg](declarations/isoperimetric-defect-formula-nonneg.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sphere_isoperimetric_defect_formula_zero](declarations/sphere-isoperimetric-defect-formula-zero.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sphere_area_cube_formula](declarations/sphere-area-cube-formula.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [surfaceEnergyExcessFormula](declarations/surfaceenergyexcessformula.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [surface_energy_excess_formula_nonneg](declarations/surface-energy-excess-formula-nonneg.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sphere_reference_energy_excess_formula_nonneg](declarations/sphere-reference-energy-excess-formula-nonneg.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea35e7172ee1029ed5f9e3e1f5d5c0cb977ea0f9fe5ba15553c27faad1f49f67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SurfaceScope/Variantef7e3bbf092c4fe14e6187429235a61f30f37b6d7860d60a143213847562fec4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
