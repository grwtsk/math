# Verification target: Source Cesaro Kernel Budget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bf9b4b68ac4bd0a0df4e4a4169703bbcd4d0c99",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bf9b4b68ac4bd0a0df4e4a4169703bbcd4d0c99`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFourthCorrelationCalibration` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_zero_of_zero_on_Ici](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/deriv-zero-of-zero-on-ici.md) | 22 | `result-track:fa6059ecb9d768fbba31c22994aa4ae9a3e8ceeddae69871dd0f31997b2cdc0c` |
| 2 | `theorem` | [actual_correlation_three_upper_traces](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/actual-correlation-three-upper-traces.md) | 30 | `result-track:4d19235f22a1dfb7779ff5a1a03b7efd4ce9a3196da1a9f5c15a08fc220c1c22` |
| 3 | `theorem` | [actual_correlation_third_abs_le_upper_distance](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/actual-correlation-third-abs-le-upper-distance.md) | 51 | `result-track:ff8bae177d39b6002c77e981f44c6d3640c0b2c9aacc537b8daa94f50f26a0aa` |
| 4 | `theorem` | [actual_correlation_third_abs_le_physical](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/actual-correlation-third-abs-le-physical.md) | 70 | `result-track:0f0ddfb3df14af51f055eedbaf3a57288c8b57f71d8ab598bf32775d3c7efba2` |
| 5 | `def` | [cesaroWeight](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/cesaroweight.md) | 84 | `declaration-track:c94e4b7bf4bc0b69330698153054882e52d6510f7de7494f02ee070a610e013c` |
| 6 | `theorem` | [cesaroWeight_hasDerivAt](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/cesaroweight-hasderivat.md) | 88 | `result-track:76f7139f50068f01175a61f57d7345cfb69cc85c3abe6ea8c6d29d00dd79aa11` |
| 7 | `theorem` | [cesaroWeight_second_deriv](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/cesaroweight-second-deriv.md) | 96 | `result-track:90dff442998dd29c00969881718166b756ccd845945263a2edae4b144f73b3e9` |
| 8 | `theorem` | [cesaroWeight_second_deriv_continuous](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/cesaroweight-second-deriv-continuous.md) | 109 | `result-track:c50b7db5deaaa797071aa7afb8534a2476cbbcbb1e276392ed4f5c3159720c1d` |
| 9 | `theorem` | [cesaroWeight_second_abs_le_physical](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/cesaroweight-second-abs-le-physical.md) | 124 | `result-track:8102f555f94eda0368472137ae9a91ec8d61fcd36ea12c5ce2b306447fd44cb2` |
| 10 | `theorem` | [integral_linear](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/integral-linear.md) | 149 | `result-track:79839e40374373b3af42dbb31207fd536fe17c832df8fa06edcfa7e03a043c17` |
| 11 | `theorem` | [cesaroWeight_weighted_second_budget](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/cesaroweight-weighted-second-budget.md) | 159 | `result-track:562a74b55a5f4c1186af615603aa7049d53e3aa6666131d9e8d13aa711d8bd92` |
| 12 | `theorem` | [cesaroWeight_weighted_second_budget_uniform](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/cesaroweight-weighted-second-budget-uniform.md) | 196 | `result-track:1dc8c1381b1dbadf8943723e0440f49c83ce89fc21161220317cb868aa676952` |
| 13 | `theorem` | [cesaroWeight_weighted_second_budget_sharp](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/cesaroweight-weighted-second-budget-sharp.md) | 205 | `result-track:9384b921087f146e504abfc2e4be7ba187f75f10858d3b6ba18eedc79c4b77eb` |
| 14 | `theorem` | [cesaroWeight_weighted_second_budget_sharp_uniform](../../../../MeasureAndIntegration/SourceCesaroKernelBudget.lean/declarations/cesaroweight-weighted-second-budget-sharp-uniform.md) | 267 | `result-track:9f2f2f66356d9c75043b21ad67bb9a17b44f23c42c0c989b4efbb066ed2670f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=549a8be46784955b989e3203b7d6f9d31732a440a19b9f8ee88d9eb275bcc8a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
