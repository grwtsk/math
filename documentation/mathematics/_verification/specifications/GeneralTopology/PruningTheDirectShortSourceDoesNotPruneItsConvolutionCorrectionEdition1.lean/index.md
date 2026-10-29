# Verification target: Pruning The Direct Short Source Does Not Prune Its Convolution Correction Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f98a79eadaf12e155591d6f8594404f001e6e66",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortSourceConvolution/Variant6361239ddb9286adcc33c9baedd020fe3d573bd13c68e6c0e909482dc06d8c07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/index.md) · [Full source](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f98a79eadaf12e155591d6f8594404f001e6e66`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortSourceConvolution/Variant6361239ddb9286adcc33c9baedd020fe3d573bd13c68e6c0e909482dc06d8c07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortSourceConvolution/Variant6361239ddb9286adcc33c9baedd020fe3d573bd13c68e6c0e909482dc06d8c07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CenteredVaughan` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [first_mobius_cutoff_is_unit](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/first-mobius-cutoff-is-unit.md) | 28 | `result-track:d6265b26626e97cdcb94d67a8fb955ed1b36b18342b836c5412a97bd2dfcd87f` |
| 2 | `theorem` | [exact_short_source](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/exact-short-source.md) | 38 | `result-track:02ffefb3aeb0e9f308714409d595f6495d63fbf1a58fb0b3f038a056f9b28830` |
| 3 | `def` | [shortCorrection](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/shortcorrection.md) | 56 | `declaration-track:9309bad4f5ea8518d7b4d404249692528d36c313874220520c86d0c9231e3b20` |
| 4 | `theorem` | [exact_short_correction](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/exact-short-correction.md) | 59 | `result-track:62cdb2b49c80ac91d11a010981478e19433b7060906f7d849a3aa45f4da52d8b` |
| 5 | `theorem` | [short_correction_negative_on_positive_even](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/short-correction-negative-on-positive-even.md) | 66 | `result-track:575f9bab50b8f5550a980c833bdb983b27b208807c4089a37ea618b2491626cb` |
| 6 | `theorem` | [direct_pruned_correction_retained](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/direct-pruned-correction-retained.md) | 73 | `result-track:cad3c3c0b4d2478b0b40340909277b75e78a2a02c370b8884f403f59e274618a` |
| 7 | `def` | [fourthWeight](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/fourthweight.md) | 83 | `declaration-track:d110d67045729db53bff16980514705b9c53a69107843874569a6f96c668cc84` |
| 8 | `theorem` | [finite_weight_is_beyond_short_support](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/finite-weight-is-beyond-short-support.md) | 85 | `result-track:89687ce822ca168e39e53f9cef056ff6fe15dba76285fc63cb4e2cf0487ef505` |
| 9 | `theorem` | [finite_weight_sees_only_correction](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/finite-weight-sees-only-correction.md) | 89 | `result-track:0b0057e2282ba9ebfd499a4036517221ab2160837ce57352ee6810821de49576` |
| 10 | `def` | [fourthHat](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/fourthhat.md) | 100 | `declaration-track:f7630c0364d6a0aadc5aec02444b7d1b346176f50f43377e4516a0a75b3593c4` |
| 11 | `theorem` | [fourth_hat_continuous](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/fourth-hat-continuous.md) | 102 | `result-track:9cb39c0454e2b8425b9783a488d6177f23bf009a028bdc217b0d8a1e8a42b70d` |
| 12 | `theorem` | [fourth_hat_zero_outside](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/fourth-hat-zero-outside.md) | 106 | `result-track:973092b3634ee717d7e319e4808d4be83f0af29411cc9d1659d7be158edf158c` |
| 13 | `theorem` | [fourth_hat_integer_values](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/fourth-hat-integer-values.md) | 114 | `result-track:e0b8ef02ac4af91a05a53a84c181b725e8f0306b3530163fbe2f29649a41a610` |
| 14 | `theorem` | [continuous_compact_hat_retains_correction](../../../../GeneralTopology/PruningTheDirectShortSourceDoesNotPruneItsConvolutionCorrectionEdition1.lean/declarations/continuous-compact-hat-retains-correction.md) | 127 | `result-track:48956731275c515b7948970f3658b82bd0ed42e42f1ec0be67a2f6abfa5a0ace` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d016effb801e50691ee25eb8df4e5080f3d67c684d28434f625d49d20508eea6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortSourceConvolution/Variant6361239ddb9286adcc33c9baedd020fe3d573bd13c68e6c0e909482dc06d8c07.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ShortSourceConvolution/Variant6361239ddb9286adcc33c9baedd020fe3d573bd13c68e6c0e909482dc06d8c07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
