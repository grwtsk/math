# Congruence Guard Attempt03

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f97bee8c57e76afe95f7510ad450fedff0130eb6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt03.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](declarations/quadratic.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasNegativeDirection](declarations/hasnegativedirection.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [pullback](declarations/pullback.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [quadratic_pullback](declarations/quadratic-pullback.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [pullback_isHermitian](declarations/pullback-ishermitian.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [invertible_psd_iff](declarations/invertible-psd-iff.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [unitary_psd_iff](declarations/unitary-psd-iff.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [inverse_negative_witness](declarations/inverse-negative-witness.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [invertible_negative_iff](declarations/invertible-negative-iff.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [negative_not_psd](declarations/negative-not-psd.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](declarations/hermitian-negative-iff-not-psd.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pullback_one](declarations/pullback-one.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pullback_mul](declarations/pullback-mul.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [groupTransport](declarations/grouptransport.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [groupTransport_one](declarations/grouptransport-one.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [groupTransport_mul](declarations/grouptransport-mul.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [congruenceAction](declarations/congruenceaction.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [group_negative_iff](declarations/group-negative-iff.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [group_orbit_not_psd](declarations/group-orbit-not-psd.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [SourcePreserving](declarations/sourcepreserving.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [CorrectedSource](declarations/correctedsource.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [LossySource](declarations/lossysource.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [SourcePreserving.psd_iff](declarations/sourcepreserving-psd-iff.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [SourcePreserving.negative_iff](declarations/sourcepreserving-negative-iff.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [CorrectedSource.quadratic_defect](declarations/correctedsource-quadratic-defect.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [indefinite](declarations/indefinite.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [swap](declarations/swap.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [imaginaryShear](declarations/imaginaryshear.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [projection](declarations/projection.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [indefinite_hermitian](declarations/indefinite-hermitian.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [indefinite_negative](declarations/indefinite-negative.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [swap_still_indefinite](declarations/swap-still-indefinite.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [shear_actual_negative_value](declarations/shear-actual-negative-value.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [shear_still_indefinite](declarations/shear-still-indefinite.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [projected_indefinite](declarations/projected-indefinite.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [projection_psd](declarations/projection-psd.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [lossy_projection](declarations/lossy-projection.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [singular_psd_does_not_reflect](declarations/singular-psd-does-not-reflect.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [correction_changes_sign](declarations/correction-changes-sign.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ddfee04c3d018a93607961016a990b44ba80751578da3163942b3c869cc1fda -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt03/Variant39e35aa7d09a6602b0438cb673c67f6281127849dfed63aa793488405261a37b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
