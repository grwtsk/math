# Verification target: Xi Reconstruction Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2a5a6b645892e9eb25c19137cf8f72530fdb9e1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2a5a6b645892e9eb25c19137cf8f72530fdb9e1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean.json)

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
| 1 | `theorem` | [xi_iteratedDeriv_odd](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/xi-iteratedderiv-odd.md) | 33 | `result-track:ae4463b774af10b85b92df1b45d4bc4ee5e9bb687e1701df02e897d3f65f3c54` |
| 2 | `theorem` | [xi_iteratedDeriv_even_real](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/xi-iteratedderiv-even-real.md) | 42 | `result-track:c1660f6744876016597a41a4fee91889a432f56890d18005bea679e890c64861` |
| 3 | `theorem` | [even_taylor_term](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/even-taylor-term.md) | 49 | `result-track:787d1159c1ae4ae9ae8b60695aec62f1f3653bfd4cc677afa843858735d79de5` |
| 4 | `theorem` | [hasSum_centered_even](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/hassum-centered-even.md) | 57 | `result-track:a4be4f25f6a7fd7d702be33299f60c7e92b6760998f524097716654147646f0e` |
| 5 | `theorem` | [summable_centered](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/summable-centered.md) | 74 | `result-track:6bdf6ef85dbd69c5d206554b439eb0551fadf1c1db74fcf3628ea942f25bdba2` |
| 6 | `theorem` | [centeredSeries_sq](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/centeredseries-sq.md) | 80 | `result-track:dbca0d4e76b20ee894fd1c2c7b53ce5660683b7d0c56216077f811f0cbcdda58` |
| 7 | `theorem` | [centeredSeries_radius](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/centeredseries-radius.md) | 84 | `result-track:74cc1d719a57b9f6685db2d8edf63d9f53b96a9c0d205237b5545c320fc3aae7` |
| 8 | `theorem` | [differentiable_centeredSeries](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/differentiable-centeredseries.md) | 93 | `result-track:4c58b042ca5077c36eda30b3604f7da7cb39eb0cd2f2a00771cf334189baa40a` |
| 9 | `theorem` | [taylorDescent](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/taylordescent.md) | 103 | `result-track:f6659035c1acd461c5fc94774e7e68d0a974bd85fe98c80c6da4760ffec7ad48` |
| 10 | `def` | [spectralXi](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/spectralxi.md) | 107 | `declaration-track:b197059ecd2b351e319cadbee9683703563dbdf43a3f11363a95699b5284ffd1` |
| 11 | `def` | [spectralSection](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/spectralsection.md) | 110 | `declaration-track:d50011d08ffa224537927e992fda47cf7fa7dfb801a58fa5ccd7557d417eac7d` |
| 12 | `theorem` | [centeredSeries_spectral](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/centeredseries-spectral.md) | 114 | `result-track:6165fdb8d863c5a713319fc5f777201442a4bb130d37eb809fe8c1cab01b1d9a` |
| 13 | `theorem` | [spectralXi_zero_ne](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/spectralxi-zero-ne.md) | 119 | `result-track:66889a7d74e079d5e0a19598dd3f69a2d3a6572040000a069dc84d97281c3192` |
| 14 | `theorem` | [spectralSection_uniform](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/spectralsection-uniform.md) | 126 | `result-track:027c696f521baa59af5bbf5e8ed676f10fe2339600746a437b0d71510d41d5fc` |
| 15 | `theorem` | [spectralSection_locallyUniform](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiReconstructionNamespacedSourceEdition1.lean/declarations/spectralsection-locallyuniform.md) | 148 | `result-track:633c56740844150788b36fb8bf3410a059b6339d5b9c585691c2cfff2d2a6b29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=538ddb3d2314eb26bc9ececafa463ae023b5b94afcb9b478bbc024048e7af6df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
