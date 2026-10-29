# Exact Contact Coordinates For The KQHAuxiliary Model Edition3

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d93bb3a482f974ec836a049014c1fbcfe4e3324c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Point](declarations/point.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [flow0](declarations/flow0.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [flow1](declarations/flow1.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [central](declarations/central.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [flow0_add](declarations/flow0-add.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [flow1_add](declarations/flow1-add.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [flow0_inverse](declarations/flow0-inverse.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [flow1_inverse](declarations/flow1-inverse.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [contact_loop](declarations/contact-loop.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [field0](declarations/field0.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [field1](declarations/field1.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [flow0_derivative](declarations/flow0-derivative.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [flow1_derivative](declarations/flow1-derivative.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [field0_directional_derivative](declarations/field0-directional-derivative.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [field1_directional_derivative](declarations/field1-directional-derivative.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [bracket](declarations/bracket.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [contact_bracket](declarations/contact-bracket.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [segment](declarations/segment.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [segment_horizontal](declarations/segment-horizontal.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [endpoint](declarations/endpoint.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [endpoint_formula](declarations/endpoint-formula.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [endpointJacobian](declarations/endpointjacobian.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [endpoint_Y_partial1](declarations/endpoint-y-partial1.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [endpoint_Y_partial2](declarations/endpoint-y-partial2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [endpoint_Y_partial3](declarations/endpoint-y-partial3.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [endpoint_jacobian_det](declarations/endpoint-jacobian-det.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [endpoint_fiber_moments](declarations/endpoint-fiber-moments.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [centered_residual](declarations/centered-residual.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [centered_residual_bound](declarations/centered-residual-bound.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [phase](declarations/phase.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [phase_add](declarations/phase-add.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [phase_norm](declarations/phase-norm.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [U](declarations/u.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [V](declarations/v.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [centralMode](declarations/centralmode.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [pullback_flow0](declarations/pullback-flow0.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [pullback_flow1](declarations/pullback-flow1.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [fiber_weyl](declarations/fiber-weyl.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [U_comp](declarations/u-comp.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [V_comp](declarations/v-comp.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [U_inverse](declarations/u-inverse.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [V_inverse](declarations/v-inverse.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [U_norm](declarations/u-norm.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [V_norm](declarations/v-norm.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6927ceea9756141a425ac5efda829fa15cfa71ede07ce28a4d2d11e5a4590e41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant2e33342a0ca33b34ebd9f8ae8311d91db569d5dbc34a8111df4fd21aba7961de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
