# Weierstrass Origin Jet

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `806048d95c0afea23b62fad46c77974d55b4e9e2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeierstrassOriginJet.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Plane](declarations/plane.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Parameter](declarations/parameter.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [equation](declarations/equation.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [origin](declarations/origin.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [relations](declarations/relations.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [Jet](declarations/jet.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [quotientMap](declarations/quotientmap.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [scalar](declarations/scalar.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [x](declarations/x.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [y](declarations/y.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [neighborhood](declarations/neighborhood.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [neighborhood_pow](declarations/neighborhood-pow.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [x_mem](declarations/x-mem.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [y_mem](declarations/y-mem.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [y_pow](declarations/y-pow.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [quotient_equation](declarations/quotient-equation.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [x_eq_lift](declarations/x-eq-lift.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [evaluate](declarations/evaluate.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [relations_le_kernel](declarations/relations-le-kernel.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [toParameter](declarations/toparameter.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [fromParameter](declarations/fromparameter.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toParameter_scalar](declarations/toparameter-scalar.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toParameter_x](declarations/toparameter-x.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toParameter_y](declarations/toparameter-y.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [fromParameter_scalar](declarations/fromparameter-scalar.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fromParameter_parameter](declarations/fromparameter-parameter.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [hom_ext](declarations/hom-ext.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [from_to](declarations/from-to.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [to_from](declarations/to-from.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [algebraEquiv](declarations/algebraequiv.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [parameterBasis](declarations/parameterbasis.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [jetBasis](declarations/jetbasis.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [jet_finrank](declarations/jet-finrank.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [kernel_evaluate](declarations/kernel-evaluate.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [truncate](declarations/truncate.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [truncate_scalar](declarations/truncate-scalar.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [truncate_x](declarations/truncate-x.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [truncate_y](declarations/truncate-y.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [fromParameter_truncate](declarations/fromparameter-truncate.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toParameter_truncate](declarations/toparameter-truncate.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [truncate_id](declarations/truncate-id.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [truncate_comp](declarations/truncate-comp.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58447a68ed798b77c7b0e7a01db291ff737c1eeaeb7f87f765e1da89282a1deb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean","GRWTSK/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassOriginJet.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
