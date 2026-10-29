# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PrimePowerQuadraticPortControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "283948f9f4f4869eb511da3a3e7b887c2393a994",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimePowerQuadraticPortControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerQuadraticPortControls.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerQuadraticPortControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `283948f9f4f4869eb511da3a3e7b887c2393a994`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimePowerQuadraticPortControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PrimePowerQuadraticPortControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerQuadraticPort`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimePowerQuadraticPort.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [two_and_four_have_same_weight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerQuadraticPortControls.lean/declarations/two-and-four-have-same-weight.md) | 18 | `result-track:aedfc368a3edd79c034baef5f8587220d3bd5c48aa87ecbd7764e745e2ddcf43` |
| 2 | `theorem` | [four_weight_is_not_two_times_two_weight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerQuadraticPortControls.lean/declarations/four-weight-is-not-two-times-two-weight.md) | 25 | `result-track:734a9decff57980e27684fc47a81058f51ba594a73847f3fb1eb14cd68d3fcb7` |
| 3 | `theorem` | [arbitrary_stage_energy_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerQuadraticPortControls.lean/declarations/arbitrary-stage-energy-nonnegative.md) | 31 | `result-track:67d501ec53957170d05290dec613479af4affb08ee8b13b82adeff0b14a9d89a` |
| 4 | `theorem` | [zero_test_has_zero_energy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerQuadraticPortControls.lean/declarations/zero-test-has-zero-energy.md) | 37 | `result-track:dfe6fff09066bc82eeafab5480a892df5bcff109124a1b46ac13aba389c00830` |
| 5 | `theorem` | [no_extraction_at_unit_horizontal_displacement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerQuadraticPortControls.lean/declarations/no-extraction-at-unit-horizontal-displacement.md) | 45 | `result-track:02e39b178bbf0401cc310f7e4ee4cbe5ae0945415797d1b0906c3cdeb64dafdf` |
| 6 | `theorem` | [collapse_witness_survives_in_source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerQuadraticPortControls.lean/declarations/collapse-witness-survives-in-source.md) | 54 | `result-track:de9321004f6fd2775643bb664e81058ab4ff7607a7229a1624672256f1700d88` |
| 7 | `theorem` | [triangular_base_cardinality](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimePowerQuadraticPortControls.lean/declarations/triangular-base-cardinality.md) | 61 | `result-track:6a0490efcdd69902dcdab2e6bb013c4f4c1134797feb3180ce1e698dc2e5a338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dc0010929c704f2fc1a01bac9d7f299656aeca62fff0f988a9ee5d424e859c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimePowerQuadraticPortControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/PrimePowerQuadraticPortControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
