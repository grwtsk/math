# Congruence Guard Attempt01 Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variante49d5362c8b830e574183c266a5d1e67091f930dcaa7ee62d9ea0788a16ec424.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e271cc5ddcf2765c357f091985b028acd0fe3977`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](declarations/quadratic.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasNegativeDirection](declarations/hasnegativedirection.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [pullback](declarations/pullback.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [quadratic_pullback](declarations/quadratic-pullback.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [pullback_isHermitian](declarations/pullback-ishermitian.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [invertible_psd_iff](declarations/invertible-psd-iff.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [unitary_psd_iff](declarations/unitary-psd-iff.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [inverse_negative_witness](declarations/inverse-negative-witness.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [invertible_negative_iff](declarations/invertible-negative-iff.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [negative_not_psd](declarations/negative-not-psd.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](declarations/hermitian-negative-iff-not-psd.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pullback_one](declarations/pullback-one.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pullback_mul](declarations/pullback-mul.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [groupTransport](declarations/grouptransport.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [groupTransport_one](declarations/grouptransport-one.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [groupTransport_mul](declarations/grouptransport-mul.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [congruenceAction](declarations/congruenceaction.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [group_negative_iff](declarations/group-negative-iff.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [group_orbit_not_psd](declarations/group-orbit-not-psd.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [SourcePreserving](declarations/sourcepreserving.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [CorrectedSource](declarations/correctedsource.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [LossySource](declarations/lossysource.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [SourcePreserving.psd_iff](declarations/sourcepreserving-psd-iff.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [SourcePreserving.negative_iff](declarations/sourcepreserving-negative-iff.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [CorrectedSource.quadratic_defect](declarations/correctedsource-quadratic-defect.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [indefinite](declarations/indefinite.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [swap](declarations/swap.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [imaginaryShear](declarations/imaginaryshear.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [projection](declarations/projection.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [indefinite_hermitian](declarations/indefinite-hermitian.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [indefinite_negative](declarations/indefinite-negative.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [swap_still_indefinite](declarations/swap-still-indefinite.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [shear_actual_negative_value](declarations/shear-actual-negative-value.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [shear_still_indefinite](declarations/shear-still-indefinite.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [projected_indefinite](declarations/projected-indefinite.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [projection_psd](declarations/projection-psd.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lossy_projection](declarations/lossy-projection.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [singular_psd_does_not_reflect](declarations/singular-psd-does-not-reflect.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [correction_changes_sign](declarations/correction-changes-sign.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d4dc719a799ea7280bcfd36edfba1d9ce5435367b7bede1746c669b779481ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variante49d5362c8b830e574183c266a5d1e67091f930dcaa7ee62d9ea0788a16ec424.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
