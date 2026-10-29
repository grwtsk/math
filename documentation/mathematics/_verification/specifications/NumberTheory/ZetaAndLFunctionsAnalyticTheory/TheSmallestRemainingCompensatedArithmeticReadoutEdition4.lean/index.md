# Verification target: The Smallest Remaining Compensated Arithmetic Readout Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1beda0b5875772654ac54525b8232ba127503d31",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variantfa3bbedf26b4696a4eafccf10e2e46fb79cfd88e7f74b4378d2bab2ae3dbecdd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheSmallestRemainingCompensatedArithmeticReadoutEdition4.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheSmallestRemainingCompensatedArithmeticReadoutEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1beda0b5875772654ac54525b8232ba127503d31`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variantfa3bbedf26b4696a4eafccf10e2e46fb79cfd88e7f74b4378d2bab2ae3dbecdd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variantfa3bbedf26b4696a4eafccf10e2e46fb79cfd88e7f74b4378d2bab2ae3dbecdd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceKapitzaEventBalance` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [combined_terminal_eq_compensated](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheSmallestRemainingCompensatedArithmeticReadoutEdition4.lean/declarations/combined-terminal-eq-compensated.md) | 25 | `result-track:14343a2da0a39ca9b27909e1dae1db41f5ca672cbe2103bb02ebe38a93935c5c` |
| 2 | `theorem` | [totalQuadraticWork_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheSmallestRemainingCompensatedArithmeticReadoutEdition4.lean/declarations/totalquadraticwork-nonneg.md) | 33 | `result-track:1b31f96ad01f830628f4b99f5fb1297df53646c85642d425a8a2f9df9264e93b` |
| 3 | `def` | [CompensatedTailUpperBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheSmallestRemainingCompensatedArithmeticReadoutEdition4.lean/declarations/compensatedtailupperbound.md) | 38 | `declaration-track:c0e009f729b101da1b558c04a645969b11c0cba749c03ba760fc0adc65d0e647` |
| 4 | `def` | [CombinedTerminalTailUpperBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheSmallestRemainingCompensatedArithmeticReadoutEdition4.lean/declarations/combinedterminaltailupperbound.md) | 48 | `declaration-track:25350a504fd5de23fb36331b3671154369b0314aed98bf5fc088d70f432514b0` |
| 5 | `theorem` | [combined_terminal_tail_iff_compensated_tail](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheSmallestRemainingCompensatedArithmeticReadoutEdition4.lean/declarations/combined-terminal-tail-iff-compensated-tail.md) | 53 | `result-track:1877f90690423e844b1c712cd13e2575c3b3909d1813ff2b1681eeca8c2f6211` |
| 6 | `theorem` | [original_lower_of_compensated_cap](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheSmallestRemainingCompensatedArithmeticReadoutEdition4.lean/declarations/original-lower-of-compensated-cap.md) | 84 | `result-track:6ee533cbf4c4eba3bc98d4b81e4472d0f7d83d63c5d806d34dc9de55b1d6ac56` |
| 7 | `theorem` | [estimate_of_compensated_tail](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/TheSmallestRemainingCompensatedArithmeticReadoutEdition4.lean/declarations/estimate-of-compensated-tail.md) | 107 | `result-track:10e56a9f3285ca381eeaa68922a5c174b6f8c58179b7d1ada1c5c456153d5163` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a52cee4458f308ecd75d56ea13b2be833bab78c1be9f151a3c88d1982f5d82e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variantfa3bbedf26b4696a4eafccf10e2e46fb79cfd88e7f74b4378d2bab2ae3dbecdd.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSignedReduction/Variantfa3bbedf26b4696a4eafccf10e2e46fb79cfd88e7f74b4378d2bab2ae3dbecdd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
