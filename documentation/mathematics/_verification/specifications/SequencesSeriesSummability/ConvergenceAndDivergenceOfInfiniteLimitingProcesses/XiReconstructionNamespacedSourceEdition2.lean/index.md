# Verification target: Xi Reconstruction Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08cc08f2152b12711197d42bdb2016c813ae7dc9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Varianta4beb2cf32c0a3585090ba3b8fd96d692eee9ac94afe7c5f8b845c509da5662c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08cc08f2152b12711197d42bdb2016c813ae7dc9`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Varianta4beb2cf32c0a3585090ba3b8fd96d692eee9ac94afe7c5f8b845c509da5662c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Varianta4beb2cf32c0a3585090ba3b8fd96d692eee9ac94afe7c5f8b845c509da5662c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.TaylorSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Polynomial.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.OfScalars` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xi_iteratedDeriv_odd](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/xi-iteratedderiv-odd.md) | 22 | `result-track:8ef08aead6032552f723917d162edbb4bbf64d57910db1b851a725e1e33f5293` |
| 2 | `theorem` | [xi_iteratedDeriv_even_real](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/xi-iteratedderiv-even-real.md) | 30 | `result-track:ce479730bb62755a41f36c49c76f063212c468b6cf195243e0389b40129578ef` |
| 3 | `theorem` | [even_taylor_term](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/even-taylor-term.md) | 36 | `result-track:e8a92b750f064a54d432f81fb0e40b81129219a6c943d5067b7a474e9b3b55ba` |
| 4 | `theorem` | [hasSum_centered_even](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/hassum-centered-even.md) | 43 | `result-track:e3f1adb5a334535f3cf21f6f7b76cb566831a84a6712f2856f1f11e905fcd80c` |
| 5 | `theorem` | [summable_centered](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/summable-centered.md) | 59 | `result-track:ca1f7d67cff6ab5c8d337408e053d3fd81eb2b0f1408d6c98a63f6e9e3cee810` |
| 6 | `theorem` | [centeredSeries_sq](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/centeredseries-sq.md) | 64 | `result-track:a663cfd92f523cc666086d2c0e9cd4bce27f3ae4e8e471d2536270cc1b7ef69b` |
| 7 | `theorem` | [centeredSeries_radius](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/centeredseries-radius.md) | 67 | `result-track:29a6350eba9a69fac6f993f4cb3e9ad3669790e6a7d692792c3666d284fc1edb` |
| 8 | `theorem` | [differentiable_centeredSeries](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/differentiable-centeredseries.md) | 75 | `result-track:d439468c2442e552830c9a24f29836d0079b3bc4113b2a12965685e77ac6965b` |
| 9 | `theorem` | [taylorDescent](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/taylordescent.md) | 84 | `result-track:674222906736366a530b2a144c9d4fd196ea24cf1dc42d47b48fb16edd83e9cc` |
| 10 | `def` | [spectralXi](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/spectralxi.md) | 88 | `declaration-track:3d20c3252dcbb2f0cef3e759d8103213cee50c9d7f52102c17d0a48206b50f54` |
| 11 | `def` | [spectralSection](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/spectralsection.md) | 91 | `declaration-track:b6956d8c33ed4f7476c29e60e59170eb9f2dc64e3abe66e42a572928a2e325d3` |
| 12 | `theorem` | [centeredSeries_spectral](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/centeredseries-spectral.md) | 94 | `result-track:e84ab1bd9e5470f5c0547a6ed4af44f6f2c16c2f253a84eaaf2412206a32c3f5` |
| 13 | `theorem` | [spectralXi_zero_ne](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/spectralxi-zero-ne.md) | 98 | `result-track:582e51052738d381c7af3b8c6389e056a0aa92e926bcec52ac13dac24e932a43` |
| 14 | `theorem` | [spectralSection_uniform](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/spectralsection-uniform.md) | 104 | `result-track:9eba0ea9dc5f7ba9da941480d90384df3bb3e0d22457b829527675ec660b1b01` |
| 15 | `theorem` | [spectralSection_locallyUniform](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition2.lean/declarations/spectralsection-locallyuniform.md) | 125 | `result-track:1d9de82f191b6aaf0878bf17f6ed5c89c04f3cec26c401f69f9da21eefcf27fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d37d2bb232d8149e01608cd7bf3ab3c8c12544fcc91ba51b52ac92d6fc6c0166 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Varianta4beb2cf32c0a3585090ba3b8fd96d692eee9ac94afe7c5f8b845c509da5662c.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/47e477f906a186c2ef0628e55fbfb94b3635c0762359763f5879ffe266b6abf4XiReconstruction/Varianta4beb2cf32c0a3585090ba3b8fd96d692eee9ac94afe7c5f8b845c509da5662c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
