# Congruence Guard Attempt02

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06471027f12d85790c20ee7bce9f5dbd338ea737`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt02.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](declarations/quadratic.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasNegativeDirection](declarations/hasnegativedirection.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [pullback](declarations/pullback.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [quadratic_pullback](declarations/quadratic-pullback.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [pullback_isHermitian](declarations/pullback-ishermitian.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [invertible_psd_iff](declarations/invertible-psd-iff.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [unitary_psd_iff](declarations/unitary-psd-iff.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [inverse_negative_witness](declarations/inverse-negative-witness.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [invertible_negative_iff](declarations/invertible-negative-iff.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [negative_not_psd](declarations/negative-not-psd.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](declarations/hermitian-negative-iff-not-psd.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pullback_one](declarations/pullback-one.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pullback_mul](declarations/pullback-mul.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [groupTransport](declarations/grouptransport.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [groupTransport_one](declarations/grouptransport-one.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [groupTransport_mul](declarations/grouptransport-mul.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [congruenceAction](declarations/congruenceaction.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [group_negative_iff](declarations/group-negative-iff.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [group_orbit_not_psd](declarations/group-orbit-not-psd.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [SourcePreserving](declarations/sourcepreserving.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [CorrectedSource](declarations/correctedsource.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [LossySource](declarations/lossysource.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [SourcePreserving.psd_iff](declarations/sourcepreserving-psd-iff.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [SourcePreserving.negative_iff](declarations/sourcepreserving-negative-iff.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [CorrectedSource.quadratic_defect](declarations/correctedsource-quadratic-defect.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [indefinite](declarations/indefinite.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [swap](declarations/swap.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [imaginaryShear](declarations/imaginaryshear.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [projection](declarations/projection.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [indefinite_hermitian](declarations/indefinite-hermitian.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [indefinite_negative](declarations/indefinite-negative.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [swap_still_indefinite](declarations/swap-still-indefinite.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [shear_actual_negative_value](declarations/shear-actual-negative-value.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [shear_still_indefinite](declarations/shear-still-indefinite.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [projected_indefinite](declarations/projected-indefinite.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [projection_psd](declarations/projection-psd.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [lossy_projection](declarations/lossy-projection.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [singular_psd_does_not_reflect](declarations/singular-psd-does-not-reflect.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [correction_changes_sign](declarations/correction-changes-sign.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8a4606f8a3e9d03ea1dfac45a4f0f7fccab01c6bcfd76150b2368f09b9ff7b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt02/Variant9d63784e1b6f50f835d6ba7c03034fb3d8027bc18db5dbe41eb38288d8390ab6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
