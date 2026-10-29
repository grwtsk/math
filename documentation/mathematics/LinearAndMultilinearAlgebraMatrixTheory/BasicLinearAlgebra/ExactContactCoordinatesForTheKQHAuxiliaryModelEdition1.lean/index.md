# Exact Contact Coordinates For The KQHAuxiliary Model Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant00eeb18048baa0ccfec7071f789a7ff0574e2fe3228eea2da9ff9f1da2fa060e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f540e8f6b4d6e3c0fe2a6d182881d5c07ba496a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Point](declarations/point.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [flow0](declarations/flow0.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [flow1](declarations/flow1.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [central](declarations/central.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [flow0_add](declarations/flow0-add.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [flow1_add](declarations/flow1-add.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [flow0_inverse](declarations/flow0-inverse.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [flow1_inverse](declarations/flow1-inverse.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [contact_loop](declarations/contact-loop.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [field0](declarations/field0.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [field1](declarations/field1.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [field0_directional_derivative](declarations/field0-directional-derivative.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [field1_directional_derivative](declarations/field1-directional-derivative.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [bracket](declarations/bracket.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [contact_bracket](declarations/contact-bracket.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [segment](declarations/segment.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [segment_horizontal](declarations/segment-horizontal.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [endpoint](declarations/endpoint.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [endpoint_formula](declarations/endpoint-formula.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [endpointJacobian](declarations/endpointjacobian.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [endpoint_jacobian_det](declarations/endpoint-jacobian-det.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [endpoint_fiber_moments](declarations/endpoint-fiber-moments.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [phase](declarations/phase.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [phase_add](declarations/phase-add.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [phase_norm](declarations/phase-norm.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [U](declarations/u.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [V](declarations/v.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [centralMode](declarations/centralmode.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [pullback_flow0](declarations/pullback-flow0.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [pullback_flow1](declarations/pullback-flow1.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fiber_weyl](declarations/fiber-weyl.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [U_comp](declarations/u-comp.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [V_comp](declarations/v-comp.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [U_norm](declarations/u-norm.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [V_norm](declarations/v-norm.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=925b5c8ed822e463c7ffab5d14bae0b1e51bbeabeca8f0fe08c0cb8c0f492620 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant00eeb18048baa0ccfec7071f789a7ff0574e2fe3228eea2da9ff9f1da2fa060e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
