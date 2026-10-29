# Finite Positive Hodge Heat

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/LinearAlgebra/FinitePositiveHodgeHeat.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd5fc34723c3dd9a8d09b3dce66f3bfa180998c0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinitePositiveHodgeHeat.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [dot](declarations/dot.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [dot_self_nonneg](declarations/dot-self-nonneg.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [dot_self_eq_zero_iff](declarations/dot-self-eq-zero-iff.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [diagonal](declarations/diagonal.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [diagonal_apply](declarations/diagonal-apply.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [positiveDiagonalHodge](declarations/positivediagonalhodge.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [diagonal_adjoint](declarations/diagonal-adjoint.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [positiveDiagonalHodge_laplacian0_apply](declarations/positivediagonalhodge-laplacian0-apply.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [positiveDiagonalHodge_laplacian1_apply](declarations/positivediagonalhodge-laplacian1-apply.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [energy](declarations/energy.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [energy_nonneg](declarations/energy-nonneg.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [energy_eq_zero_iff](declarations/energy-eq-zero-iff.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [harmonic0_iff_delta_eq_zero](declarations/harmonic0-iff-delta-eq-zero.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [harmonic0_iff_eq_zero](declarations/harmonic0-iff-eq-zero.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [functionalCalculus](declarations/functionalcalculus.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [functionalCalculus_one](declarations/functionalcalculus-one.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [functionalCalculus_mul](declarations/functionalcalculus-mul.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [heat](declarations/heat.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [heat_zero](declarations/heat-zero.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [heat_add](declarations/heat-add.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [heat_laplacian0_comm](declarations/heat-laplacian0-comm.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [heat_fixed_of_harmonic](declarations/heat-fixed-of-harmonic.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [heat_contracts](declarations/heat-contracts.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [maskProjector](declarations/maskprojector.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [complementMask](declarations/complementmask.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [maskProjector_apply](declarations/maskprojector-apply.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [maskProjector_idempotent](declarations/maskprojector-idempotent.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [maskProjector_add_complement](declarations/maskprojector-add-complement.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mask_complement_orthogonal](declarations/mask-complement-orthogonal.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [maskProjector_delta_comm](declarations/maskprojector-delta-comm.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [coordinateHodgeProjector](declarations/coordinatehodgeprojector.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [energy_mask_split](declarations/energy-mask-split.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [heat_maskProjector_comm](declarations/heat-maskprojector-comm.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [heat_mask_split](declarations/heat-mask-split.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [diagonal_heat_comm](declarations/diagonal-heat-comm.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b96df0f47e5c40c833422a759b8cd62a632bc37324775ce0e86b269ee6839820 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean","GRWTSK/LinearAlgebra/FinitePositiveHodgeHeat.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
