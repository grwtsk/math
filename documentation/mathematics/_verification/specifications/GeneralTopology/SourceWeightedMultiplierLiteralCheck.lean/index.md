# Verification target: Source Weighted Multiplier Literal Check

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e0e111ac6ef54589a1fc8b14b8bf1b979a04a2d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/index.md) · [Full source](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e0e111ac6ef54589a1fc8b14b8bf1b979a04a2d`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDeltaConvergence` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.LpSpace` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryMultiplier](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/boundarymultiplier.md) | 14 | `declaration-track:c85cc5cab2fe15ded491cffeeca8f7cc7127267996ed2bb5197f1bcfcf41e64a` |
| 2 | `theorem` | [boundaryMultiplier_norm_le](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/boundarymultiplier-norm-le.md) | 18 | `result-track:f9c8be04ec2eb7ff162d17f5f2a5857d37000a0e3c734a0b0f33da4ac7ba1b7f` |
| 3 | `theorem` | [boundaryMultiplier_measurable](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/boundarymultiplier-measurable.md) | 65 | `result-track:5d66aefc19c77b8fae9fb98f09ebe8b151d10f05feb8319f5b98c353c7c9a27e` |
| 4 | `theorem` | [frequencyProduct_memLp](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/frequencyproduct-memlp.md) | 72 | `result-track:85362da14df3d3fa5fa48bd3d31038698e83b7fafb2bbd9fba04160d67639cf6` |
| 5 | `def` | [frequencyVector](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/frequencyvector.md) | 85 | `declaration-track:494aee7e189f63218920c8a5c17792f525640e655ee8b6036b856ca87d974507` |
| 6 | `theorem` | [frequencyVector_ae](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/frequencyvector-ae.md) | 90 | `result-track:14db527170cd52bef8df64a7ad85555ec2d65db7b66a2d3aa23588f438ce1028` |
| 7 | `theorem` | [frequencyVector_norm_le](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/frequencyvector-norm-le.md) | 96 | `result-track:f43bf1e5849353af55091e8460937f5d2e096502683d3d77abd14788f7906f87` |
| 8 | `def` | [frequencyMultiplier](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/frequencymultiplier.md) | 106 | `declaration-track:7317eef94435f8788f75ce56e05e23563ee4c5306bbea71d3d4408ff2367d31d` |
| 9 | `theorem` | [frequencyMultiplier_ae](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/frequencymultiplier-ae.md) | 135 | `result-track:55e527e72fab3d6ba7c8f88811b8c4d8645ea437c0e913f8a63b4e7af75546dc` |
| 10 | `def` | [sourceMultiplier](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/sourcemultiplier.md) | 142 | `declaration-track:749003cf4a4d4d8c1fd4a94c5679b8ed6b22cf460cd6747b113e642403b24833` |
| 11 | `theorem` | [sourceMultiplier_fourier_ae](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/sourcemultiplier-fourier-ae.md) | 147 | `result-track:f0d5efe9948bab467d3256867d9dac675990aa01f355e6e389348c78b0e79e40` |
| 12 | `theorem` | [sourceMultiplier_norm_le](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/sourcemultiplier-norm-le.md) | 156 | `result-track:06eeb1a0782e201ee62a32f178c728d6dd50a47c2efcedeb39b340298dddf56f` |
| 13 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/example-source-edition-7.md) | 175 | `declaration-track:e21fe7d736da71e074929d6c75439d7f85b4cea10578dbc4c3a1085e00f0c134` |
| 14 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/example-source-edition-8.md) | 178 | `declaration-track:efe0ba67b59e15b4df89011d208b88affa185b29373401011f111e4693ecb8d3` |
| 15 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/example-source-edition-5.md) | 184 | `declaration-track:a3d8e179da7435f176b0bbc62fda5a9b9a02b54c5ded1aa1829d2170623f86be` |
| 16 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/example-source-edition-3.md) | 188 | `declaration-track:3f0b55e8fc5197408a68a3f8245da16db0afe1644381c4a2b67675937ce0ce0b` |
| 17 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/example-source-edition-2.md) | 190 | `declaration-track:37163b78593ef9692dba63fbe64d9faa7d4f49ae6f95ba59cd699b66aa6a131c` |
| 18 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/example.md) | 194 | `declaration-track:2e2f7e8328bbead7bae131a62d320e293363b9fe63e428dde61cdbb865e5ebd6` |
| 19 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/example-source-edition-4.md) | 197 | `declaration-track:46a96e9fdbd2ba09afa542c15f0250f39003c934d4f2ea17370aa86fea172888` |
| 20 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheck.lean/declarations/example-source-edition-6.md) | 201 | `declaration-track:d7f2f86724a65917ef6fbf4fa36f0649892c79688ea79c0bc755262b92aef11d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=576dd8164a4fd7f12aeb8ef4ff530cb8a174b50b44a2eba806a512be14bc2c6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variant5afa63be4be6882a0c1bbe8a581fd92107e1c1dbefe434e7dea2a776e97dd5db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
