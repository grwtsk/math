# Verification target: Gevrey Fourier Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e60b58ec32f081f6839e794783f586d990365ff7",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e60b58ec32f081f6839e794783f586d990365ff7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.GevreyNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.GevreyCorrelation` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceFourier_div_const](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/declarations/sourcefourier-div-const.md) | 36 | `result-track:68b81a75a497f832b9172de98828178262f11c7c9f53835310023c7cb206d6d9` |
| 2 | `theorem` | [source_integrand_integrable](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/declarations/source-integrand-integrable.md) | 41 | `result-track:85177d1bb912311c6341975d36708f9a108a7333fbdab0789187728b4f3f4cf1` |
| 3 | `theorem` | [sourceFourier_sub](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/declarations/sourcefourier-sub.md) | 50 | `result-track:04521592ce50ed829a3f3b351fef2e0cbdd6e7dae0acb120f4a5ddd54fea7481` |
| 4 | `theorem` | [sourceFourier_comp_div](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/declarations/sourcefourier-comp-div.md) | 57 | `result-track:22ef70e85e9d042c2a54f69a3fbef4feb9e1291ea7dd644ec4e472b350fc1ff0` |
| 5 | `theorem` | [sourceFourier_scaledProfile](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/declarations/sourcefourier-scaledprofile.md) | 74 | `result-track:79cac9592e72d3b7d19cddf4b9b9acd04f5ec56f4f333f994ddccaf7374bdee2` |
| 6 | `theorem` | [scaledProfile_contDiff](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/declarations/scaledprofile-contdiff.md) | 84 | `result-track:ea19e97f3c57c5fc27e7d02bfccb9497d35ee88a05c035de898d880cc993efb1` |
| 7 | `theorem` | [scaledProfile_derivatives_integrable](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/declarations/scaledprofile-derivatives-integrable.md) | 88 | `result-track:9e0ba1e0f94d1d02575547d5cefecbc85b8c12532249cc164541bc439e4c871b` |
| 8 | `theorem` | [sourceFourier_dilationOperator](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/declarations/sourcefourier-dilationoperator.md) | 119 | `result-track:ecda2afa8aa2e50c6df29929bfb7b48cb460c2b1bc50e9ba95a1a34740787274` |
| 9 | `theorem` | [sourceFourier_normalizedOperator](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/declarations/sourcefourier-normalizedoperator.md) | 137 | `result-track:b6db99e23bfba18a2e163830eb265e84c34cfb0a6f53957753392747c18f1f88` |
| 10 | `theorem` | [normSq_sourceFourier_normalizedOperator](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/declarations/normsq-sourcefourier-normalizedoperator.md) | 147 | `result-track:73cdf7e3007ceab518d67308e8966edc8f0a1ccc123024bd9e3c75190046f212` |
| 11 | `theorem` | [sourceFourier_autocorrelation](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/declarations/sourcefourier-autocorrelation.md) | 159 | `result-track:9b3bfc7458a3faf25dab960342ad50fcca12c92bd791d94a6a76b44d839b30c8` |
| 12 | `theorem` | [sourceFourier_normalized_autocorrelation](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/declarations/sourcefourier-normalized-autocorrelation.md) | 181 | `result-track:7ae96ca917a0aea43c3526a44443f55e72e445f564723ada2e368fe49498973c` |
| 13 | `theorem` | [sourceFourier_correlation](../../../../MeasureAndIntegration/GevreyFourierNamespaced.lean/declarations/sourcefourier-correlation.md) | 191 | `result-track:d6b54c84c08edda4579488eaf7ef75fd34574e6c559b9a5638bacb128fbaf363` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecc9451cbf78b897977ffe90cb82231a99000ad7f2fa609cd756523c0c4c32d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyFourier/Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
