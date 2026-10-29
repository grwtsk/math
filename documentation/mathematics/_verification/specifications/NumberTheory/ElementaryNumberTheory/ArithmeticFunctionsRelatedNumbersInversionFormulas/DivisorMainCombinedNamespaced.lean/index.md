# Verification target: Divisor Main Combined Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67fc0bfbf328f9d95687308c267a155835c8dbb3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variantfe9d4742af5a6219a650928681c367a117739170bf560576ffc6553ae92a2af1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67fc0bfbf328f9d95687308c267a155835c8dbb3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variantfe9d4742af5a6219a650928681c367a117739170bf560576ffc6553ae92a2af1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variantfe9d4742af5a6219a650928681c367a117739170bf560576ffc6553ae92a2af1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.TruncatedDivisorResidual` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CoreTailSplit` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorTaylor` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divisorRemainderCore](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/divisorremaindercore.md) | 24 | `declaration-track:b762b73a544660a6eff780724f1da5b04233014976a2a1746a0395f168ccaf51` |
| 2 | `theorem` | [divisorRemainderCore_measurable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/divisorremaindercore-measurable.md) | 30 | `result-track:6ea49d2aba3228707ad03d058a95dc3612bed90afd3a5851120a211b33f195c3` |
| 3 | `theorem` | [divisorRemainderCore_sq_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/divisorremaindercore-sq-le.md) | 42 | `result-track:719600488f9a6393893648bf370fb2357abe31cc6bffb4ade223711653dfaae0` |
| 4 | `theorem` | [remainderMajorant_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/remaindermajorant-integrable.md) | 71 | `result-track:28572a4f95c1c5966671dbb61b8cd80fb762d1e84b2e54097c461bc3e5dd5ce3` |
| 5 | `theorem` | [divisorRemainderCore_memLp](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/divisorremaindercore-memlp.md) | 78 | `result-track:f5d132ac2ca0c5a3cc78e8aa646b315ba3fe308bf31ac53a1cadef5a4f8348dd` |
| 6 | `def` | [divisorRemainderVector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/divisorremaindervector.md) | 89 | `declaration-track:1fe35179f9b3a9cc2eb90c32fbe66a36c7cdfb9e521803e38ef106b98553fcf4` |
| 7 | `theorem` | [divisorRemainderVector_norm_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/divisorremaindervector-norm-le.md) | 93 | `result-track:592092243a663fbf9c7e908533393e99ced3f1343816427dee31b8ceecdfa146` |
| 8 | `theorem` | [sourceMultiplier_divisorRemainder_norm_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/sourcemultiplier-divisorremainder-norm-le.md) | 116 | `result-track:c1f723c52fab8a3cee401ff6315d5a5862b52f8fb4aceac24a1b56cd2a94e4f0` |
| 9 | `def` | [divisorMainResidual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/divisormainresidual.md) | 141 | `declaration-track:4f5125a6df4eb4bf43f3fd7763595e6341c8cd70d9ff4240f059c4ca6f789b54` |
| 10 | `theorem` | [arithmeticResidual_eq_main_sub_remainder](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/arithmeticresidual-eq-main-sub-remainder.md) | 151 | `result-track:bb373f777bb7f327a9e0f5bb392698ac908212e13ddb1ad3b2b3ee77206c86e8` |
| 11 | `def` | [divisorMainCore](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/divisormaincore.md) | 162 | `declaration-track:edff5e44d732a34643d10aa7a1e6218d0168671bc5a6417cf7cc94ecbf21cec2` |
| 12 | `theorem` | [mainCore_eq_add](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/maincore-eq-add.md) | 166 | `result-track:3f35b5b747cb001a40c62872c6973ac42069a9218530fe99e59a055fcff15479` |
| 13 | `theorem` | [divisorMainCore_memLp](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/divisormaincore-memlp.md) | 181 | `result-track:394c37f348a9ad48a3dc8ad6be69667d91d034d3794d6de072db79c18170a121` |
| 14 | `def` | [divisorMainVector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/divisormainvector.md) | 189 | `declaration-track:14d7a1ad1717a4bf27f66eed3893d05c87d7b73bd2e685a9ff1304703b74dc8e` |
| 15 | `theorem` | [mainVector_eq_add](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/mainvector-eq-add.md) | 193 | `result-track:a1802c85ff75bf8893e61d7e1adf52829c5ad9fe1ab2d8cff1961094b3711add` |
| 16 | `theorem` | [filtered_core_main_norm_difference_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisorMainCombinedNamespaced.lean/declarations/filtered-core-main-norm-difference-le.md) | 211 | `result-track:a70bdcc5aeca10338616841ed58fc49a74c2416be405e19dee57340430723c1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=845496ce974a67da48151c09aee1c387ad2e6255e9b29589218f964be6dcc99d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variantfe9d4742af5a6219a650928681c367a117739170bf560576ffc6553ae92a2af1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainCombined/Variantfe9d4742af5a6219a650928681c367a117739170bf560576ffc6553ae92a2af1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
