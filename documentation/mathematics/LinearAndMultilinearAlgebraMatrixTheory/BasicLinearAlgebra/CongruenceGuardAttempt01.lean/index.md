# Congruence Guard Attempt01

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variant80708c8f51c0dcd9d1b8215b2c2235711dc135addeea2118e6120081a15e41d8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3899cc132f6ec61dba1d57ab38320c29c222fda`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](declarations/quadratic.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasNegativeDirection](declarations/hasnegativedirection.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [pullback](declarations/pullback.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [quadratic_pullback](declarations/quadratic-pullback.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [pullback_isHermitian](declarations/pullback-ishermitian.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [invertible_psd_iff](declarations/invertible-psd-iff.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [unitary_psd_iff](declarations/unitary-psd-iff.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [inverse_negative_witness](declarations/inverse-negative-witness.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [invertible_negative_iff](declarations/invertible-negative-iff.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [negative_not_psd](declarations/negative-not-psd.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](declarations/hermitian-negative-iff-not-psd.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pullback_one](declarations/pullback-one.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pullback_mul](declarations/pullback-mul.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [groupTransport](declarations/grouptransport.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [groupTransport_one](declarations/grouptransport-one.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [groupTransport_mul](declarations/grouptransport-mul.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [congruenceAction](declarations/congruenceaction.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [group_negative_iff](declarations/group-negative-iff.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [group_orbit_not_psd](declarations/group-orbit-not-psd.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [SourcePreserving](declarations/sourcepreserving.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [CorrectedSource](declarations/correctedsource.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [LossySource](declarations/lossysource.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [SourcePreserving.psd_iff](declarations/sourcepreserving-psd-iff.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [SourcePreserving.negative_iff](declarations/sourcepreserving-negative-iff.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [CorrectedSource.quadratic_defect](declarations/correctedsource-quadratic-defect.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [indefinite](declarations/indefinite.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [swap](declarations/swap.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [imaginaryShear](declarations/imaginaryshear.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [projection](declarations/projection.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [indefinite_hermitian](declarations/indefinite-hermitian.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [indefinite_negative](declarations/indefinite-negative.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [swap_still_indefinite](declarations/swap-still-indefinite.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [shear_actual_negative_value](declarations/shear-actual-negative-value.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [shear_still_indefinite](declarations/shear-still-indefinite.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [projected_indefinite](declarations/projected-indefinite.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [projection_psd](declarations/projection-psd.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lossy_projection](declarations/lossy-projection.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [singular_psd_does_not_reflect](declarations/singular-psd-does-not-reflect.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [correction_changes_sign](declarations/correction-changes-sign.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0424998627a0446af82e7caa1942fd44601f036ffa589f7d558c420b70be5402 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variant80708c8f51c0dcd9d1b8215b2c2235711dc135addeea2118e6120081a15e41d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
