# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightCapacityRatioControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8305e4697a80bbbc19405e0184491faafef36718",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCapacityRatioControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCapacityRatioControls.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCapacityRatioControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8305e4697a80bbbc19405e0184491faafef36718`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCapacityRatioControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCapacityRatioControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightCapacityRatio`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ClauseIndexedPinnedPrimeWeightCapacityRatio.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positivePolarity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCapacityRatioControls.lean/declarations/positivepolarity.md) | 15 | `declaration-track:63db74a2b5d38b0b2449bae1b01306038693b62c56249c7a14f679f650479610` |
| 2 | `theorem` | [concrete_dyadic_amplitude_iff_ratio_dichotomy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCapacityRatioControls.lean/declarations/concrete-dyadic-amplitude-iff-ratio-dichotomy.md) | 20 | `result-track:ba06d243fab734e6e89dc25b115c1bfa286d5cb96be5c06e63da9181b0a190f2` |
| 3 | `theorem` | [totalized_ratio_zero_of_zero_amplitude](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCapacityRatioControls.lean/declarations/totalized-ratio-zero-of-zero-amplitude.md) | 31 | `result-track:51b8e0e5561ffbdfd8a32ced749615bc9bd09de313fe3f1dc89a9cda6a1b0242` |
| 4 | `theorem` | [zero_amplitude_nonvacuous_stage_has_no_finite_certificate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCapacityRatioControls.lean/declarations/zero-amplitude-nonvacuous-stage-has-no-finite-certificate.md) | 39 | `result-track:d0e2c220a00b1828a5b5b68d5aad3a05de12ada485d8a9836027a6ed49d1b88f` |
| 5 | `theorem` | [nonvacuous_dyadic_stage_forces_amplitude_and_budget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCapacityRatioControls.lean/declarations/nonvacuous-dyadic-stage-forces-amplitude-and-budget.md) | 51 | `result-track:cabbe25c6c6621b59372abca92219b7abd5aeb3a1f7265b6dd4dfbfc4aef55a9` |
| 6 | `theorem` | [concrete_required_capacity_is_minimum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCapacityRatioControls.lean/declarations/concrete-required-capacity-is-minimum.md) | 69 | `result-track:42049c82886c1b6aaff743f7da5aa00ea1ecd98df4d85c002e53d1dd089e6f67` |
| 7 | `theorem` | [concrete_three_clause_fixed_ratio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCapacityRatioControls.lean/declarations/concrete-three-clause-fixed-ratio.md) | 81 | `result-track:228d58426407ee0082f48004cc8d86d215b51005814f89678e87f17b11ade97d` |
| 8 | `theorem` | [concrete_two_clause_fixed_ratio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCapacityRatioControls.lean/declarations/concrete-two-clause-fixed-ratio.md) | 91 | `result-track:babb70da2f34bfface620b7c81079b1dcc4b1e0f1c4badfe9d2cb54ff432174a` |
| 9 | `def` | [requiredCapacityRatioObligations](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCapacityRatioControls.lean/declarations/requiredcapacityratioobligations.md) | 102 | `declaration-track:70753b301e4e5492a7bde2e9572f06d3f4682054c98fffed4d53841b545b3546` |
| 10 | `def` | [prohibitedPromotions](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCapacityRatioControls.lean/declarations/prohibitedpromotions.md) | 111 | `declaration-track:d828c5a85508d8975ed7485367ab4b9d8da517a96f635adbf28a1d88336f9b5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16ee61a63d0329206b514d331eea5065403e84c3b903bdf82b4a40eab8ebf563 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCapacityRatioControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightCapacityRatioControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
