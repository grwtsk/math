# Phase Observation Obstruction Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d303283b69f965b6d898e5ad44b57f0e3aeb5924`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PhaseMatrix](declarations/phasematrix.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [phase_matrix_jacobson_eq_bot](declarations/phase-matrix-jacobson-eq-bot.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [phaseObservation](declarations/phaseobservation.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [invisiblePhaseDirection](declarations/invisiblephasedirection.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [invisible_phase_direction_ne_zero](declarations/invisible-phase-direction-ne-zero.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [invisible_phase_direction_in_kernel](declarations/invisible-phase-direction-in-kernel.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [phase_observation_ker_ne_jacobson](declarations/phase-observation-ker-ne-jacobson.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [phase_observation_fiber](declarations/phase-observation-fiber.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [phaseCommutator](declarations/phasecommutator.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [phase_commutator_mem_jacobson_iff](declarations/phase-commutator-mem-jacobson-iff.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [imaginary_phase_commutator_not_in_jacobson](declarations/imaginary-phase-commutator-not-in-jacobson.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [signedTracePacket](declarations/signedtracepacket.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [signed_trace_packet_phase_rotation](declarations/signed-trace-packet-phase-rotation.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [signed_trace_packet_jacobson_zero](declarations/signed-trace-packet-jacobson-zero.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [signed_trace_packet_coset_invariant](declarations/signed-trace-packet-coset-invariant.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [signed_trace_packet_quotient_factor](declarations/signed-trace-packet-quotient-factor.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [signed_trace_packet_invisible_direction](declarations/signed-trace-packet-invisible-direction.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [signed_trace_packet_not_observation_invariant](declarations/signed-trace-packet-not-observation-invariant.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [phase_rotation_one](declarations/phase-rotation-one.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [phase_rotation_det_one](declarations/phase-rotation-det-one.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [signed_trace_packet_identity](declarations/signed-trace-packet-identity.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [conserved_determinant_no_uniform_packet_lower_bound](declarations/conserved-determinant-no-uniform-packet-lower-bound.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [zero_frequency_preserves_phase_objects](declarations/zero-frequency-preserves-phase-objects.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [phase_rotation_zero_frequency_limit](declarations/phase-rotation-zero-frequency-limit.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [singleCoordinateObservation](declarations/singlecoordinateobservation.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [single_coordinate_fiber](declarations/single-coordinate-fiber.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [phase_coordinate_jacobson_eq_bot](declarations/phase-coordinate-jacobson-eq-bot.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [single_coordinate_invisible_not_jacobson](declarations/single-coordinate-invisible-not-jacobson.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19326bfb68c535e51bbaca1245c88f53d2905f93c74c71feb8a7c43a9cb4ed12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
