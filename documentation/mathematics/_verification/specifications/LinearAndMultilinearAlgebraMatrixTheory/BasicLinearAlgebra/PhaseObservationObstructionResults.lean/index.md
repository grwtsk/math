# Verification target: Phase Observation Obstruction Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23645418c55467229a76070978f13c6becb2268f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant9f0299a75600532ea98e1353874dcd28fcbef5b2be80f685f537e9e6f8271316.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23645418c55467229a76070978f13c6becb2268f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant9f0299a75600532ea98e1353874dcd28fcbef5b2be80f685f537e9e6f8271316.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant9f0299a75600532ea98e1353874dcd28fcbef5b2be80f685f537e9e6f8271316.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.JacobsonObservation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PhaseInvolution` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.MultiplicativePhase` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Semiprimary` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.WedderburnArtin` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PhaseMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/phasematrix.md) | 32 | `declaration-track:64f080174bb19b5d9d5a1c646e71a21d983693149d6479d301f05824a4886b71` |
| 2 | `theorem` | [phase_matrix_jacobson_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/phase-matrix-jacobson-eq-bot.md) | 35 | `result-track:3efe1cd36ca88203e82914a5bf40fc8f1ee92e0171771dd4123c3fb987a55845` |
| 3 | `def` | [phaseObservation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/phaseobservation.md) | 40 | `declaration-track:ec5e78df7b6e43322182d2930485567124e4c187221cdfdf2b04557ef06a8eca` |
| 4 | `def` | [invisiblePhaseDirection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/invisiblephasedirection.md) | 48 | `declaration-track:2ce5c74c37a3ba6a750b6f29895c89f49c12f444c04f9ac2d2f10a5ccb77a110` |
| 5 | `theorem` | [invisible_phase_direction_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/invisible-phase-direction-ne-zero.md) | 50 | `result-track:bf02f142de481b02fa59335df5beb294fbff9aa869d990acf7fad44ea3baff4b` |
| 6 | `theorem` | [invisible_phase_direction_in_kernel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/invisible-phase-direction-in-kernel.md) | 55 | `result-track:a90bdce8b654afdb3a4291765a2de78c3cda5615d4a2107b618dd2ce38297e40` |
| 7 | `theorem` | [phase_observation_ker_ne_jacobson](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/phase-observation-ker-ne-jacobson.md) | 62 | `result-track:4956a745fdc147900d21e74138f7d33bbe31bd2d63e51b89fc9df2e8d81a0c9f` |
| 8 | `theorem` | [phase_observation_fiber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/phase-observation-fiber.md) | 70 | `result-track:78f4c801d449dcb64988b22fc1b727225d05f861d6a2ee65e119e4d7765e1516` |
| 9 | `def` | [phaseCommutator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/phasecommutator.md) | 76 | `declaration-track:426f8f395b562e3b469e545ecff471c1e9063b34611424c92a914a5bece2014a` |
| 10 | `theorem` | [phase_commutator_mem_jacobson_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/phase-commutator-mem-jacobson-iff.md) | 80 | `result-track:2010749c640ea36aa71d08bf8f6a78f4c4314a33927073ba027bb6eca7e4401a` |
| 11 | `theorem` | [imaginary_phase_commutator_not_in_jacobson](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/imaginary-phase-commutator-not-in-jacobson.md) | 87 | `result-track:0c626427a150f4c76a94e3a175e75adaa07815900bb857de5793878d9ad35426` |
| 12 | `def` | [signedTracePacket](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/signedtracepacket.md) | 92 | `declaration-track:00465a8557a2fd063584582a19951bf321fb49702f3765e999b5a170b60ff81d` |
| 13 | `theorem` | [signed_trace_packet_phase_rotation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/signed-trace-packet-phase-rotation.md) | 95 | `result-track:9d2a0b4b6f710c03b30efe16597c5e5b6c4d4ede51b6b5bc86d7a3398a5f262e` |
| 14 | `theorem` | [signed_trace_packet_jacobson_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/signed-trace-packet-jacobson-zero.md) | 105 | `result-track:7caa63e4e93014363229dc1352b634b4538346f1d467a83a228928326a3abc5f` |
| 15 | `theorem` | [signed_trace_packet_coset_invariant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/signed-trace-packet-coset-invariant.md) | 112 | `result-track:0bc1a72370d2f70dbb4fec72d9b3864b1948b7cbbefa954d35398ce0012c3580` |
| 16 | `theorem` | [signed_trace_packet_quotient_factor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/signed-trace-packet-quotient-factor.md) | 121 | `result-track:1cd86723b5a2bab875f3d61d7bcc343e2f3e312f8fdfce438054da5a01d9f6bf` |
| 17 | `theorem` | [signed_trace_packet_invisible_direction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/signed-trace-packet-invisible-direction.md) | 126 | `result-track:fdcb71327a936b7fccf488bdc5f5584f0893acddbfb07afadc6b8db13d390d2a` |
| 18 | `theorem` | [signed_trace_packet_not_observation_invariant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/signed-trace-packet-not-observation-invariant.md) | 132 | `result-track:748fd86ba008cc46658f0fb02d6bbc236dcca394eb5dddd953bdaab9b60b6272` |
| 19 | `theorem` | [phase_rotation_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/phase-rotation-one.md) | 141 | `result-track:889172dcb3844cdb876c053c4def4942ab32068dca835a9acedca5821aae4e72` |
| 20 | `theorem` | [phase_rotation_det_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/phase-rotation-det-one.md) | 145 | `result-track:d692fe8d6d06ae587be3f77b25ecf2b8e018f5e67c9a16c606c2e956647d8c3f` |
| 21 | `theorem` | [signed_trace_packet_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/signed-trace-packet-identity.md) | 150 | `result-track:fbed28cd49bc8d73605b0d651b62b57fe85d43ba58025cc3bcc0c41489656bd3` |
| 22 | `theorem` | [conserved_determinant_no_uniform_packet_lower_bound](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/conserved-determinant-no-uniform-packet-lower-bound.md) | 156 | `result-track:0ea1f36034fea896dbfc85bedf7d75397ab5dd0ed5b02ad903cf79aade78ffff` |
| 23 | `theorem` | [zero_frequency_preserves_phase_objects](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/zero-frequency-preserves-phase-objects.md) | 167 | `result-track:5321cd6b699eb551dca41359f4d5ba987c7eb6854d26a47b6bb35bb508e807cd` |
| 24 | `theorem` | [phase_rotation_zero_frequency_limit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/phase-rotation-zero-frequency-limit.md) | 174 | `result-track:142b7655cf755e74e4ce579d116591476192958c6785fc5af6ea52f9a25bb292` |
| 25 | `def` | [singleCoordinateObservation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/singlecoordinateobservation.md) | 197 | `declaration-track:21b01e909c30f37274c590185181263cfa2b3937fba3a878145461368f6d37b6` |
| 26 | `theorem` | [single_coordinate_fiber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/single-coordinate-fiber.md) | 200 | `result-track:bf32f0af61c7f7ebcb2328a0a03b14294b5a4dcc18dc93541a25c46ed41f1944` |
| 27 | `theorem` | [phase_coordinate_jacobson_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/phase-coordinate-jacobson-eq-bot.md) | 215 | `result-track:6214a9d787d18dd32280900d22a8e04c494b86ba14e3538aff88626919f6a955` |
| 28 | `theorem` | [single_coordinate_invisible_not_jacobson](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseObservationObstructionResults.lean/declarations/single-coordinate-invisible-not-jacobson.md) | 219 | `result-track:8bd0e05e66a09d6b9cb8c8e18cbcad9761ffcd71906e291dadbce1d7937b6707` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92346dcd9c5a4f038c340bd6313d521c2ba558526270ad0a35a3ad67911229bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant9f0299a75600532ea98e1353874dcd28fcbef5b2be80f685f537e9e6f8271316.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant9f0299a75600532ea98e1353874dcd28fcbef5b2be80f685f537e9e6f8271316.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
