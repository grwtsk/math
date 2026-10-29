# KQHContact Geometry Namespaced Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55328c2d09a9bca74e3c1bddcb2dbb05fda5b083`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KQHContactGeometryNamespacedEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Point](declarations/point.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [flow0](declarations/flow0.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [flow1](declarations/flow1.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [central](declarations/central.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [flow0_add](declarations/flow0-add.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [flow1_add](declarations/flow1-add.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [flow0_inverse](declarations/flow0-inverse.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [flow1_inverse](declarations/flow1-inverse.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [contact_loop](declarations/contact-loop.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [field0](declarations/field0.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [field1](declarations/field1.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [field0_directional_derivative](declarations/field0-directional-derivative.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [field1_directional_derivative](declarations/field1-directional-derivative.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [bracket](declarations/bracket.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [contact_bracket](declarations/contact-bracket.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [segment](declarations/segment.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [segment_horizontal](declarations/segment-horizontal.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [endpoint](declarations/endpoint.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [endpoint_formula](declarations/endpoint-formula.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [endpointJacobian](declarations/endpointjacobian.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [endpoint_jacobian_det](declarations/endpoint-jacobian-det.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [endpoint_fiber_moments](declarations/endpoint-fiber-moments.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [phase](declarations/phase.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [phase_add](declarations/phase-add.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [phase_norm](declarations/phase-norm.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [U](declarations/u.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [V](declarations/v.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [centralMode](declarations/centralmode.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [pullback_flow0](declarations/pullback-flow0.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [pullback_flow1](declarations/pullback-flow1.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fiber_weyl](declarations/fiber-weyl.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [U_comp](declarations/u-comp.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [V_comp](declarations/v-comp.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [U_norm](declarations/u-norm.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [V_norm](declarations/v-norm.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fc9b1f8c92d87f6bd51bfaac1ca6a418f2f2a43b4308e35b6d3cd893803048a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant24d7fd66bafc01010872f50ba6ce443dedd535b908b80c6774b753affcf633ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
