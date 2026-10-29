# Weighted Finite Reflection

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bde4095259dfca0b25519323409d43125a8eab91`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WeightedFiniteReflection.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Vec](declarations/vec.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Weights](declarations/weights.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [pairing](declarations/pairing.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [energy](declarations/energy.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [weightedMean](declarations/weightedmean.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [projector](declarations/projector.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [diffuse](declarations/diffuse.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [sign](declarations/sign.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [phase](declarations/phase.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [step](declarations/step.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [inverseStep](declarations/inversestep.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pairing_symm](declarations/pairing-symm.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pairing_add_left](declarations/pairing-add-left.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pairing_sub_left](declarations/pairing-sub-left.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pairing_scale_left](declarations/pairing-scale-left.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pairing_add_right](declarations/pairing-add-right.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [pairing_scale_right](declarations/pairing-scale-right.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pairing_self](declarations/pairing-self.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [energy_nonneg](declarations/energy-nonneg.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [energy_eq_zero_iff](declarations/energy-eq-zero-iff.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pairing_pos_def](declarations/pairing-pos-def.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [weightedMean_add](declarations/weightedmean-add.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [weightedMean_sub](declarations/weightedmean-sub.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [weightedMean_scale](declarations/weightedmean-scale.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [weightedMean_const](declarations/weightedmean-const.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [weightedMean_projector](declarations/weightedmean-projector.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [weightedMean_diffuse](declarations/weightedmean-diffuse.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [projector_add](declarations/projector-add.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [projector_scale](declarations/projector-scale.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [diffuse_add](declarations/diffuse-add.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [diffuse_scale](declarations/diffuse-scale.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [projector_idempotent](declarations/projector-idempotent.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [projector_pairing](declarations/projector-pairing.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [projector_selfAdjoint](declarations/projector-selfadjoint.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [diffuse_pairing](declarations/diffuse-pairing.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [diffuse_selfAdjoint](declarations/diffuse-selfadjoint.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [diffuse_involutive](declarations/diffuse-involutive.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [diffuse_leftInverse](declarations/diffuse-leftinverse.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [diffuse_rightInverse](declarations/diffuse-rightinverse.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [diffuse_bijective](declarations/diffuse-bijective.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [diffuseEquiv](declarations/diffuseequiv.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [diffuse_energy](declarations/diffuse-energy.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [sign_mul_self](declarations/sign-mul-self.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [phase_involutive](declarations/phase-involutive.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [phase_add](declarations/phase-add.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [phase_scale](declarations/phase-scale.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [phase_selfAdjoint](declarations/phase-selfadjoint.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [phase_energy](declarations/phase-energy.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [step_add](declarations/step-add.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [step_scale](declarations/step-scale.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [step_leftInverse](declarations/step-leftinverse.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [step_rightInverse](declarations/step-rightinverse.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [stepEquiv](declarations/stepequiv.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [step_adjoint_inverse](declarations/step-adjoint-inverse.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [inverseStep_adjoint](declarations/inversestep-adjoint.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [step_energy](declarations/step-energy.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [uniformFour](declarations/uniformfour.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [firstBasis](declarations/firstbasis.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [fourthBasis](declarations/fourthbasis.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [lastMarked](declarations/lastmarked.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [step_not_selfAdjoint_control](declarations/step-not-selfadjoint-control.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [step_not_selfAdjoint](declarations/step-not-selfadjoint.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8aa68a46c7e3c889a28396e1e5a2ba8de0d4bcd9326c5b101cd8afd8b4467894 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BilinearAndQuadraticForms/WeightedFiniteReflection.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
