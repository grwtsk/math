# Weierstrass Second Jet

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5995cf8be35a9b679171d7c5fe31ef4fbe0fbd19`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/WeierstrassSecondJet.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [jetIdeal](declarations/jetideal.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Jet2](declarations/jet2.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [jetMap](declarations/jetmap.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [scalar](declarations/scalar.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [normalPolynomial](declarations/normalpolynomial.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [jet](declarations/jet.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [jetMap_zero_iff](declarations/jetmap-zero-iff.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [jetMap_eq_iff](declarations/jetmap-eq-iff.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [normal_form](declarations/normal-form.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [jet_eq_iff](declarations/jet-eq-iff.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [exists_normal_form](declarations/exists-normal-form.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [epsilon](declarations/epsilon.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [epsilon_cube](declarations/epsilon-cube.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [epsilon_square_ne_zero](declarations/epsilon-square-ne-zero.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [dualEval](declarations/dualeval.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [dualEval_cube](declarations/dualeval-cube.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [truncate](declarations/truncate.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [truncate_jet](declarations/truncate-jet.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [truncate_fiber](declarations/truncate-fiber.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [truncate_surjective](declarations/truncate-surjective.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [HasVerticalLift](declarations/hasverticallift.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [model](declarations/model.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [arcPolynomial](declarations/arcpolynomial.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [residual](declarations/residual.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [residual_expansion](declarations/residual-expansion.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [residual_coefficients](declarations/residual-coefficients.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mapped_residual](declarations/mapped-residual.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [equation_iff](declarations/equation-iff.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [vertical_lift_iff_unit](declarations/vertical-lift-iff-unit.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [vertical_node_residual](declarations/vertical-node-residual.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [no_vertical_lift_at_node](declarations/no-vertical-lift-at-node.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [vertical_field_coefficient](declarations/vertical-field-coefficient.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [reciprocal_clearing_iff](declarations/reciprocal-clearing-iff.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [binary_tangent_test](declarations/binary-tangent-test.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [binary_node_directions](declarations/binary-node-directions.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c099d1359b233ae890f3f2f3efc3a211165c0d8bb4547710ea089b04511044f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean","GRWTSK/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
