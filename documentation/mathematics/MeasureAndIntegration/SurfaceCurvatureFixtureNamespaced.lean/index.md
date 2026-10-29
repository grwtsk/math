# Surface Curvature Fixture Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant9a7b6ee6c304ecc636debf7d7b2bf8faad375065ef7d0bd046b3711c9d78c633.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c56e1199f0ff5477de6aa0273aad1c313f9fff8a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/SurfaceCurvatureFixtureNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [coord](declarations/coord.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [radial](declarations/radial.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [radial_apply](declarations/radial-apply.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [radial_axis_zero](declarations/radial-axis-zero.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [planeLevel](declarations/planelevel.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [cylinderLevel](declarations/cylinderlevel.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [plane_gradient](declarations/plane-gradient.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [cylinder_gradient](declarations/cylinder-gradient.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [radial_norm_derivative](declarations/radial-norm-derivative.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [radial_normal_derivative](declarations/radial-normal-derivative.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [plane_normal](declarations/plane-normal.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [cylinder_normal](declarations/cylinder-normal.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [plane_curvature](declarations/plane-curvature.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cylinder_curvature](declarations/cylinder-curvature.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [parameterCoord](declarations/parametercoord.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [planeChart](declarations/planechart.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [cylinderChart](declarations/cylinderchart.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [planeDerivative](declarations/planederivative.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [cylinderDerivative](declarations/cylinderderivative.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [plane_chart_derivative](declarations/plane-chart-derivative.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cylinder_chart_derivative](declarations/cylinder-chart-derivative.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [plane_patch_tangent_zero](declarations/plane-patch-tangent-zero.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [plane_patch_tangent_one](declarations/plane-patch-tangent-one.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cylinder_patch_tangent_zero](declarations/cylinder-patch-tangent-zero.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cylinder_patch_tangent_one](declarations/cylinder-patch-tangent-one.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cylinder_tangent_norm](declarations/cylinder-tangent-norm.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cylinder_tangent_orthogonal](declarations/cylinder-tangent-orthogonal.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [plane_density](declarations/plane-density.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cylinder_density](declarations/cylinder-density.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [parameterRectangle](declarations/parameterrectangle.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [parameterMeasure](declarations/parametermeasure.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [parameterRectangle_volume](declarations/parameterrectangle-volume.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [parameterMeasure_finite](declarations/parametermeasure-finite.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [parameterMeasure_univ](declarations/parametermeasure-univ.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [plane_area_integrable](declarations/plane-area-integrable.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [cylinder_area_integrable](declarations/cylinder-area-integrable.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [plane_area](declarations/plane-area.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [cylinder_area](declarations/cylinder-area.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [plane_chart_on_interface](declarations/plane-chart-on-interface.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cylinder_chart_on_interface](declarations/cylinder-chart-on-interface.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [plane_chart_zero](declarations/plane-chart-zero.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [cylinder_chart_zero](declarations/cylinder-chart-zero.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [chartFamily](declarations/chartfamily.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [levelFamily](declarations/levelfamily.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [areaCurvatureObstruction](declarations/areacurvatureobstruction.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [curvature_not_determined_by_area](declarations/curvature-not-determined-by-area.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [plane_regular_patch](declarations/plane-regular-patch.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [cylinder_regular_patch](declarations/cylinder-regular-patch.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [plane_chart_injective](declarations/plane-chart-injective.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [cylinder_chart_injective_on_rectangle](declarations/cylinder-chart-injective-on-rectangle.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [common_point_regular](declarations/common-point-regular.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [requiredPressureDifference](declarations/requiredpressuredifference.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [areaPressureObstruction](declarations/areapressureobstruction.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [required_pressure_not_determined_by_area](declarations/required-pressure-not-determined-by-area.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [no_area_pressure_decoder](declarations/no-area-pressure-decoder.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [zero_mem_parameterRectangle](declarations/zero-mem-parameterrectangle.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [common_normal](declarations/common-normal.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [pressure_jump_requires_fixture_pressure](declarations/pressure-jump-requires-fixture-pressure.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=733e7493247869a439220678b5a5f3e3db3c97b6c8f6c2c13237270d05e7ee19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant9a7b6ee6c304ecc636debf7d7b2bf8faad375065ef7d0bd046b3711c9d78c633.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
