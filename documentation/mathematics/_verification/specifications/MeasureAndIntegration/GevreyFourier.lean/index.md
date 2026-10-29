# Verification target: Gevrey Fourier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b812b3ae353e3661d8b966ec6020a933c3fea8b8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/GevreyFourier.lean/index.md) · [Full source](../../../../MeasureAndIntegration/GevreyFourier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b812b3ae353e3661d8b966ec6020a933c3fea8b8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.GevreyNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.GevreyCorrelation` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceFourier_div_const](../../../../MeasureAndIntegration/GevreyFourier.lean/declarations/sourcefourier-div-const.md) | 28 | `result-track:8159881ec321b0034b76e8f2b8f920dab827e27e981d374e61748db85c2386f8` |
| 2 | `theorem` | [source_integrand_integrable](../../../../MeasureAndIntegration/GevreyFourier.lean/declarations/source-integrand-integrable.md) | 33 | `result-track:85923dd120f48a3758ce6b93be788c86738583686f354bff3a81d6d233c2e579` |
| 3 | `theorem` | [sourceFourier_sub](../../../../MeasureAndIntegration/GevreyFourier.lean/declarations/sourcefourier-sub.md) | 42 | `result-track:6ce8b72745c7c43da34ba87969ac08c07a732e4f73a39c13adf269e34947eafc` |
| 4 | `theorem` | [sourceFourier_comp_div](../../../../MeasureAndIntegration/GevreyFourier.lean/declarations/sourcefourier-comp-div.md) | 49 | `result-track:c7dcd2eb0b1dd79e26a7d7f8c9e94b547e20b258a4f92e85d5cb517835799de0` |
| 5 | `theorem` | [sourceFourier_scaledProfile](../../../../MeasureAndIntegration/GevreyFourier.lean/declarations/sourcefourier-scaledprofile.md) | 66 | `result-track:b90658f72d1af56dca4d819b244984506392516db141d6446af09c21b5fb4514` |
| 6 | `theorem` | [scaledProfile_contDiff](../../../../MeasureAndIntegration/GevreyFourier.lean/declarations/scaledprofile-contdiff.md) | 76 | `result-track:3220b94532721b8f8449f7050060d1fdb660017c31ccff13132f3b2103a5f37c` |
| 7 | `theorem` | [scaledProfile_derivatives_integrable](../../../../MeasureAndIntegration/GevreyFourier.lean/declarations/scaledprofile-derivatives-integrable.md) | 80 | `result-track:3f1a028830a222d3c73a6f11036c42d5c0a42acc6cf58a8cf9a4ab80fc837263` |
| 8 | `theorem` | [sourceFourier_dilationOperator](../../../../MeasureAndIntegration/GevreyFourier.lean/declarations/sourcefourier-dilationoperator.md) | 111 | `result-track:82747584c215704d97af03948e686541c7a20077c85175b72c00d687b306a7d1` |
| 9 | `theorem` | [sourceFourier_normalizedOperator](../../../../MeasureAndIntegration/GevreyFourier.lean/declarations/sourcefourier-normalizedoperator.md) | 129 | `result-track:a18c08beab34cbb9428ddd44e8566e8924139a2edbc40c4f4bf9865a83784759` |
| 10 | `theorem` | [normSq_sourceFourier_normalizedOperator](../../../../MeasureAndIntegration/GevreyFourier.lean/declarations/normsq-sourcefourier-normalizedoperator.md) | 139 | `result-track:864d5329a909543b150a00753a4094a8942d2270e4544bcebc0a09cac0d464e7` |
| 11 | `theorem` | [sourceFourier_autocorrelation](../../../../MeasureAndIntegration/GevreyFourier.lean/declarations/sourcefourier-autocorrelation.md) | 151 | `result-track:0a3a2080547ccb12324648109e35bff20846c2a255de20635719a71360ff8a97` |
| 12 | `theorem` | [sourceFourier_normalized_autocorrelation](../../../../MeasureAndIntegration/GevreyFourier.lean/declarations/sourcefourier-normalized-autocorrelation.md) | 173 | `result-track:cb2ae4d2e513e6135f3c181e11d5dc5263aa8fd8d9e2c5eb32f821f65198be17` |
| 13 | `theorem` | [sourceFourier_correlation](../../../../MeasureAndIntegration/GevreyFourier.lean/declarations/sourcefourier-correlation.md) | 183 | `result-track:1b583f446cc9eec851325bdef6596741123c3f643301055c56c27f932ffb1930` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68e1af98911cd59dc84d87f1699d33c58f045f0ed5fe16303900fea48a3c7233 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
