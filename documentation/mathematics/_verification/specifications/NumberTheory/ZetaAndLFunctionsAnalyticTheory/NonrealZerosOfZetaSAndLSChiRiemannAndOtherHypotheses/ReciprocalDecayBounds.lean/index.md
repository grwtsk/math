# Verification target: Reciprocal Decay Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "774e40eaeffa54c84e5eb25e6abe1889da780eb8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalDecayBounds/Variant859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalDecayBounds.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalDecayBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `774e40eaeffa54c84e5eb25e6abe1889da780eb8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalDecayBounds/Variant859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalDecayBounds/Variant859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MoebiusEulerProduct.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SignedEnergyDecompositionHistoricalSourceEdition2.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [absoluteDirichletBudget](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalDecayBounds.lean/declarations/absolutedirichletbudget.md) | 12 | `declaration-track:e37740eff905fae9dde03bf70e2d5169b273a0c883581428254e72b5ad8610e3` |
| 2 | `theorem` | [absoluteDirichletBudget_nonnegative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalDecayBounds.lean/declarations/absolutedirichletbudget-nonnegative.md) | 15 | `result-track:11a0b4477859cf79f7e14f0623f8f5ed6eea4caaf9182091b18225974b3009c8` |
| 3 | `theorem` | [reciprocal_zeta_uniform_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalDecayBounds.lean/declarations/reciprocal-zeta-uniform-bound.md) | 18 | `result-track:17108d816584e501c0c8145534b222531b36b5bb4195a9f360297b813c26a2ff` |
| 4 | `def` | [pickupKernel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalDecayBounds.lean/declarations/pickupkernel.md) | 31 | `declaration-track:3d8be8980691d3823fb85881fac974b48fe0ad10610e8414ee374c8ca800b114` |
| 5 | `theorem` | [pickupKernel_norm_decay](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalDecayBounds.lean/declarations/pickupkernel-norm-decay.md) | 35 | `result-track:c7d4e8182f1bef4f2cff4a6382076bb83b92c7ccc1769035e72311bc6eb919ca` |
| 6 | `theorem` | [pickupKernel_continuous](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalDecayBounds.lean/declarations/pickupkernel-continuous.md) | 58 | `result-track:9c5bc25aca577e9ab8a280516e750acee07c2cc97e0bcca328448b27c5ce4896` |
| 7 | `theorem` | [pickupKernel_right_tail](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReciprocalDecayBounds.lean/declarations/pickupkernel-right-tail.md) | 85 | `result-track:b45c5fe9fd4422bd68f9763b8325c8100b83643931e7d00823cde17274fab593` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1fe94a5bc5cb0b4285253017e1a9d59876696d0a8846ee0a74c789e22384a1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalDecayBounds/Variant859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReciprocalDecayBounds/Variant859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
