# Verification target: Source Weighted Multiplier Literal Check Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2de3312b9146a34721327d8d2c30e367efbd3d7f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variantaeb885c35be07d781a0f4b32a4c9498f0f9bbebde05b0d3b9622a90282d074f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2de3312b9146a34721327d8d2c30e367efbd3d7f`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variantaeb885c35be07d781a0f4b32a4c9498f0f9bbebde05b0d3b9622a90282d074f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variantaeb885c35be07d781a0f4b32a4c9498f0f9bbebde05b0d3b9622a90282d074f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDeltaConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.LpSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryMultiplier](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/boundarymultiplier.md) | 22 | `declaration-track:fe0cc4232a8e7a10323affa39a0ccb0da2362099f3af4062a2d665fa012eb196` |
| 2 | `theorem` | [boundaryMultiplier_norm_le](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/boundarymultiplier-norm-le.md) | 26 | `result-track:7c112c5347de8750461abe190c26cf327daa708b8dfe6e13fbc4934a47fa3e61` |
| 3 | `theorem` | [boundaryMultiplier_measurable](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/boundarymultiplier-measurable.md) | 73 | `result-track:67a660cb36f068011263775c6383ad9a173448ee3e4deb81c682eb7746881091` |
| 4 | `theorem` | [frequencyProduct_memLp](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/frequencyproduct-memlp.md) | 80 | `result-track:c1e074df891a0ec3909afb44a08ac6abff988a8cabf4b22981ad3c8003ac03d4` |
| 5 | `def` | [frequencyVector](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/frequencyvector.md) | 93 | `declaration-track:c4140720f3ab59d62de8393fb84b0eaf4cca8dfa9abd9114335edbc43ffb17f8` |
| 6 | `theorem` | [frequencyVector_ae](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/frequencyvector-ae.md) | 98 | `result-track:56c2e9edf2e8f745d0c159e9afc4d5ae5ea19d17118e52f6c906e2376536d33a` |
| 7 | `theorem` | [frequencyVector_norm_le](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/frequencyvector-norm-le.md) | 104 | `result-track:8f2ac60c38a0f28b3f346098dde796ed6852186e0a9eec270eeca29a818b7937` |
| 8 | `def` | [frequencyMultiplier](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/frequencymultiplier.md) | 114 | `declaration-track:24fd788398cafd6be8af6c2f08e97728eeb69c2bb49df7504159fbb6d6a85d21` |
| 9 | `theorem` | [frequencyMultiplier_ae](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/frequencymultiplier-ae.md) | 143 | `result-track:3c9b6e9d39f99216f3c4874a696c14345dea78ffead14bba21e4b1262f7c0d46` |
| 10 | `def` | [sourceMultiplier](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/sourcemultiplier.md) | 150 | `declaration-track:c6d8f9c4d8319613664d188f1b8984fe2e100a398d04f46d6014cab57c74cf7b` |
| 11 | `theorem` | [sourceMultiplier_fourier_ae](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/sourcemultiplier-fourier-ae.md) | 155 | `result-track:f0faa3a5d9561406cf0a317cfc41763271d1a55cc343a8cd9deb8d1228711a25` |
| 12 | `theorem` | [sourceMultiplier_norm_le](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/sourcemultiplier-norm-le.md) | 164 | `result-track:739a61e19276f457d2f7f33b95e6074eea046b31a7e44d569e7b35ca504d024f` |
| 13 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/example-source-edition-8.md) | 183 | `declaration-track:d80787d73ccd4702687d45ad4c0407bdd7bb2d64c34686920332b8b5086dd4f2` |
| 14 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/example-source-edition-7.md) | 186 | `declaration-track:d3b49e18e8c84ff84531fd51bb0cd8a64c9dffb3f0d26fa5edea89fdb931e0e4` |
| 15 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/example-source-edition-5.md) | 192 | `declaration-track:a9972eba80e9ea65690cb35ca5082fd56504fdf4a568a9664f48ecbe4a9292e1` |
| 16 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/example-source-edition-4.md) | 196 | `declaration-track:7831365aeb15499772800a949846386e59375a7143c1b694bf9d83bfab5a481a` |
| 17 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/example-source-edition-3.md) | 198 | `declaration-track:3f81533b9cfbc245ca10de0b0874292967689426c4304e07219893f7de0c1bd7` |
| 18 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/example-source-edition-2.md) | 202 | `declaration-track:1404e9a222051f866f48b180b360c8a6fa37e3c8292726da212cf5cda7d80164` |
| 19 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/example-source-edition-6.md) | 205 | `declaration-track:b0c5368ce8420e05d967ef9cb1ecfbba187407b85035017c50e4728757fecb70` |
| 20 | `example` | [(anonymous)](../../../../GeneralTopology/SourceWeightedMultiplierLiteralCheckNamespaced.lean/declarations/example.md) | 209 | `declaration-track:02fc3dc57128965c07f5a3741ed35608911bda35b3541449226e0646f0d2f08b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=782fd4acc3598eee6759c7bd2731af3fc4d0af7ff4ff22857b949f6412923485 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variantaeb885c35be07d781a0f4b32a4c9498f0f9bbebde05b0d3b9622a90282d074f6.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralCheck/Variantaeb885c35be07d781a0f4b32a4c9498f0f9bbebde05b0d3b9622a90282d074f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
