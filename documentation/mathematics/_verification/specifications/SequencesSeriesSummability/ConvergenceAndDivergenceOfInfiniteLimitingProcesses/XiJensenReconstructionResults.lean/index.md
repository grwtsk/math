# Verification target: Xi Jensen Reconstruction Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52481c1e88935e5b39ff5cd5afac1f5318579c3e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Variant68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52481c1e88935e5b39ff5cd5afac1f5318579c3e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Variant68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Variant68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.XiJensenWeights` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jensenSection](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/declarations/jensensection.md) | 19 | `declaration-track:e437390d399a9c9defea1b4906bae2b0a510bb7bf16f5bda0e12b1db6e6aaccb` |
| 2 | `theorem` | [jensenSection_index_zero](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/declarations/jensensection-index-zero.md) | 23 | `result-track:767c49942365e2597f0ef6fe449257bf6e81a601309e3780f56736d1bdaa85f1` |
| 3 | `theorem` | [jensenSection_zero](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/declarations/jensensection-zero.md) | 27 | `result-track:27d915e79adb8eec6fbe8db50ad4232db1ededc2ad8c23e3af8e3d79ce2973f2` |
| 4 | `theorem` | [jensenSection_eq_tsum](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/declarations/jensensection-eq-tsum.md) | 36 | `result-track:6da858bbcb9d8d77bb2f4e98573c87b8bfddda8636f13a5bbbb6a50ea85178c8` |
| 5 | `theorem` | [summable_coefficient_radius](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/declarations/summable-coefficient-radius.md) | 48 | `result-track:e67e09b5b6730b58912e318b9f22d740b47333153d3079103cd312e2ce8ac520` |
| 6 | `lemma` | [quadratic_factor_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/declarations/quadratic-factor-nonneg.md) | 56 | `result-track:4703a42b36aba15cb554d46e16c500e215fb8bc78064ffc061dcbf07def08825` |
| 7 | `lemma` | [quadratic_factor_le](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/declarations/quadratic-factor-le.md) | 64 | `result-track:e979e85bd493d084509be609642a429e1abc0211591cc3878027e7c9c4bb4b2d` |
| 8 | `theorem` | [summable_error_majorant](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/declarations/summable-error-majorant.md) | 72 | `result-track:ef41bb4235c4df55b21ab18d0d468748079552c5ea21eec7887ff61b8abbba27` |
| 9 | `lemma` | [error_term_norm](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/declarations/error-term-norm.md) | 85 | `result-track:bd0f48da63c7277d0f8fa687a67d05697caacca31f54a1b41f4201d06478b975` |
| 10 | `lemma` | [summable_jensen_terms](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/declarations/summable-jensen-terms.md) | 98 | `result-track:abdcf71207a2e4c5af8553223b4993dcc4e8aecf13f3ad93986f82391ef12a96` |
| 11 | `theorem` | [jensenSection_error_le](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/declarations/jensensection-error-le.md) | 112 | `result-track:17385f4e595f006350dfc9ec7389843ab6e9a8f86d7dbb3b263b1614d1142e01` |
| 12 | `theorem` | [jensenSection_uniform](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/declarations/jensensection-uniform.md) | 144 | `result-track:4b75249ce580d8a5cf4b49da00ddb4313c3d92584f492fdae842b1bbc2e0a229` |
| 13 | `theorem` | [jensenSection_locallyUniform](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/XiJensenReconstructionResults.lean/declarations/jensensection-locallyuniform.md) | 159 | `result-track:03f79b2fcedc05178f614f1d3b95d88c249aaa346162d678f595308fde65ec28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7baa7b037d70c42c49010fad69894fdda0a624d63a5861bd08140f3613989a17 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Variant68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/XiJensenReconstruction/Variant68ad0c3be458742a1640b6f74b5674587c3b5a203dbb7fe5db0e35a5b2ca24b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
