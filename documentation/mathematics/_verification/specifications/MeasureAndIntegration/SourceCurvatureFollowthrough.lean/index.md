# Verification target: Source Curvature Followthrough

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59ee1f73c8a54c41be3efc89c665ca265d5df0df",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variant16be9a59149d978e31a17fe2eada905c6207d1d40101c0f1efdb2f1f329d2ec8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCurvatureFollowthrough.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCurvatureFollowthrough.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59ee1f73c8a54c41be3efc89c665ca265d5df0df`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variant16be9a59149d978e31a17fe2eada905c6207d1d40101c0f1efdb2f1f329d2ec8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variant16be9a59149d978e31a17fe2eada905c6207d1d40101c0f1efdb2f1f329d2ec8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualFiniteCesaroConsumer` — import line 1; external provider; requires a separately pinned dependency.
- `SourceFiveCesaroPrimitiveConsumer` — import line 2; external provider; requires a separately pinned dependency.
- `SourceCesaroSignedPairingConsumer` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [remaining_lower_of_actual_finite_row_five](../../../../MeasureAndIntegration/SourceCurvatureFollowthrough.lean/declarations/remaining-lower-of-actual-finite-row-five.md) | 23 | `result-track:e7adb00ded7b02f3a44a384f8b753790c0e84e4a75f69d50574c7e2053138249` |
| 2 | `theorem` | [estimate_of_actual_finite_row_five](../../../../MeasureAndIntegration/SourceCurvatureFollowthrough.lean/declarations/estimate-of-actual-finite-row-five.md) | 33 | `result-track:81e1ae7c60882c7e8d9f8b9581730145441f75b609b960bee4168fad53d716e6` |
| 3 | `theorem` | [signed_pairing_eq_actual_finite_row](../../../../MeasureAndIntegration/SourceCurvatureFollowthrough.lean/declarations/signed-pairing-eq-actual-finite-row.md) | 43 | `result-track:2a668f57b36ecbca0e15fd67ecfa3aff606426418631d0a0395e5b351a8ceeb3` |
| 4 | `theorem` | [cesaro_growth_of_global_first_primitive](../../../../MeasureAndIntegration/SourceCurvatureFollowthrough.lean/declarations/cesaro-growth-of-global-first-primitive.md) | 58 | `result-track:d1d5814dc759e6ed8ea046142c2bad4db9e6324d4c26041f4435188e2b35622e` |
| 5 | `theorem` | [remaining_lower_of_global_first_primitive_five](../../../../MeasureAndIntegration/SourceCurvatureFollowthrough.lean/declarations/remaining-lower-of-global-first-primitive-five.md) | 78 | `result-track:e22bc48666e06472bc185eff46a0475bc6a31f0e2d91d53e32eb837f824dcca7` |
| 6 | `theorem` | [estimate_of_global_first_primitive_five](../../../../MeasureAndIntegration/SourceCurvatureFollowthrough.lean/declarations/estimate-of-global-first-primitive-five.md) | 87 | `result-track:233ddf220c7728ffb55a5ce9fa7bb3bcf873ffae2e7b30ef06151d4e36b0457b` |
| 7 | `theorem` | [estimate_of_actual_finite_signed_pairing](../../../../MeasureAndIntegration/SourceCurvatureFollowthrough.lean/declarations/estimate-of-actual-finite-signed-pairing.md) | 94 | `result-track:ad84e4b9e3a0695e91714e88f631ab5274fd6a74d5a5ee83905082fd69695f85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe43ae03340530f13da03286a27dfbd9f0a9b4c861ab36ae6cff04b0b1ef2d91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variant16be9a59149d978e31a17fe2eada905c6207d1d40101c0f1efdb2f1f329d2ec8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variant16be9a59149d978e31a17fe2eada905c6207d1d40101c0f1efdb2f1f329d2ec8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
