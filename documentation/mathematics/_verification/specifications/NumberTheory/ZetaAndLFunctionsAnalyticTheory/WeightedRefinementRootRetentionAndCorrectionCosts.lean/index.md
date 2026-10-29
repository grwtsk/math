# Verification target: Weighted Refinement Root Retention And Correction Costs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e01ffe677b358d78aafd37bfb53db09ab2c1e49",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHodge/Variant7c64a0763742490fac3eca203f12959f5ce639cea89860f17a5232cc42d7cfd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeightedRefinementRootRetentionAndCorrectionCosts.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeightedRefinementRootRetentionAndCorrectionCosts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e01ffe677b358d78aafd37bfb53db09ab2c1e49`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHodge/Variant7c64a0763742490fac3eca203f12959f5ce639cea89860f17a5232cc42d7cfd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHodge/Variant7c64a0763742490fac3eca203f12959f5ce639cea89860f17a5232cc42d7cfd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [binary_refinement_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeightedRefinementRootRetentionAndCorrectionCosts.lean/declarations/binary-refinement-identity.md) | 22 | `result-track:a032e3dafe8fa10c36b41f107a30666a01f73b74d6d582b1dbc3ce628aa44a5f` |
| 2 | `theorem` | [binary_refinement_mono](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeightedRefinementRootRetentionAndCorrectionCosts.lean/declarations/binary-refinement-mono.md) | 30 | `result-track:535f5f458f7f1ec2492a59313ac625750ee31e41ac00b84fcf834be21e78d253` |
| 3 | `theorem` | [weighted_square_expand](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeightedRefinementRootRetentionAndCorrectionCosts.lean/declarations/weighted-square-expand.md) | 38 | `result-track:d71e88e03c9010c0a3431bd7c5dc516a4f1c27a091e925540ba03d4cb443cd94` |
| 4 | `theorem` | [finite_refinement_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeightedRefinementRootRetentionAndCorrectionCosts.lean/declarations/finite-refinement-identity.md) | 44 | `result-track:5fe6aef998e92b1bb9c7877e41917be78f7a3cb9b87233a405049720d688c1e8` |
| 5 | `theorem` | [finite_refinement_mono](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeightedRefinementRootRetentionAndCorrectionCosts.lean/declarations/finite-refinement-mono.md) | 68 | `result-track:17e67d141594f42fc780b90eb84c315365f7a32f13d8b5dab392386f4e6ae22f` |
| 6 | `theorem` | [arbitrary_root_zero_detail](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeightedRefinementRootRetentionAndCorrectionCosts.lean/declarations/arbitrary-root-zero-detail.md) | 78 | `result-track:dfda3ee5c9704e5332d8291ddbd3bc4eb5e822456575bbd29613a6ea81a8f091` |
| 7 | `theorem` | [signed_cycle_coarsening](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeightedRefinementRootRetentionAndCorrectionCosts.lean/declarations/signed-cycle-coarsening.md) | 82 | `result-track:db97ec29ee22ef74229200d621a26c086848364a1764926ffb6389f4000701c3` |
| 8 | `theorem` | [allocation_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeightedRefinementRootRetentionAndCorrectionCosts.lean/declarations/allocation-identity.md) | 92 | `result-track:38bfe9d22ebd9037a1e24276685eca53f1f6f5d8dafa74dc6536306ce67e3257` |
| 9 | `theorem` | [allocation_minimum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeightedRefinementRootRetentionAndCorrectionCosts.lean/declarations/allocation-minimum.md) | 98 | `result-track:f3b0fb9f5b3f51eb65d417997870558fbcec65bf660d2bdcea5bf8ba24d063a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a65521719b3bc94115b7ced0bae9227fac88aeaea5b17ae465c681c42ef74f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHodge/Variant7c64a0763742490fac3eca203f12959f5ce639cea89860f17a5232cc42d7cfd9.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedHodge/Variant7c64a0763742490fac3eca203f12959f5ce639cea89860f17a5232cc42d7cfd9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
