# Verification target: GRWTSK.Analysis.Fourier.ZModBalancedExpectedLayers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f3b03b9316c6b7d0722ca187f97820bf3455cb8",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModBalancedExpectedLayers.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f3b03b9316c6b7d0722ca187f97820bf3455cb8`.

Source path: `GRWTSK/Analysis/Fourier/ZModBalancedExpectedLayers.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModBalancedExpectedLayers.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ZModExpectedLayers`](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModExpectedLayers.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModPartitionConcentration`](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModPartitionConcentration.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [balancedEnergy](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/balancedenergy.md) | 27 | `declaration-track:2993c3f6f9e9f1b087f2d21d50387c99a537d5c58d3aa5078503cda78e3dcd94` |
| 2 | `def` | [expectedLowCard](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/expectedlowcard.md) | 32 | `declaration-track:88dbd346babec143342346f7c423ad9ce6ffa8e6851002038351a6fcd8a52ccf` |
| 3 | `def` | [expectedLayerCard](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/expectedlayercard.md) | 36 | `declaration-track:ce3d33c4395c7615d61aa6eb4501b08085b1cf193d29958b5705fd306a0e4b2f` |
| 4 | `theorem` | [balancedPartitions_nonempty](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/balancedpartitions-nonempty.md) | 40 | `result-track:0fc5c0b49eefb867bf3ee65331a71278712790a75120e04c9e97e0e9a4103009` |
| 5 | `theorem` | [expectedLowCard_le](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/expectedlowcard-le.md) | 47 | `result-track:8bbef7c66cc6a96f5c672e12d7272d596d7adb69376c95cd58e85854956061f1` |
| 6 | `theorem` | [expectedLayerCard_le_small](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/expectedlayercard-le-small.md) | 62 | `result-track:8564bda7c587c2b57773eeb583dfe8655ccbab139698850d078ccc2541cfdedc` |
| 7 | `theorem` | [expectedLayerCard_le_card](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/expectedlayercard-le-card.md) | 78 | `result-track:063e2affc175846ec6ab6c45e40f1b39bfcad2f428a05d6f4959260a41405fc2` |
| 8 | `theorem` | [mean_const_mul](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/mean-const-mul.md) | 93 | `result-track:433ce6dda8b70d078ae4a5f40a02c37c420d08b985b8814dc975f1f7c0c48194` |
| 9 | `theorem` | [mean_mul_const](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/mean-mul-const.md) | 99 | `result-track:d080f8afa0d420cd83b1a6c95704a6bf89ec91827940d9a4f2fe0ba70cde0843` |
| 10 | `theorem` | [mean_finset_sum](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/mean-finset-sum.md) | 105 | `result-track:327b13b7e7ff053f8ef4c3c9fb63fe5c0ff3305c69088149ed962fe483d0a1dd` |
| 11 | `theorem` | [subsetSumProbability_le_expectedLayers](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/subsetsumprobability-le-expectedlayers.md) | 112 | `result-track:e016e7aab2a6c79d4f65f34adbd8b976768b6e9bb3a533d8bcc3eddf39730dbf` |
| 12 | `theorem` | [smallLayer_sum_le](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/smalllayer-sum-le.md) | 128 | `result-track:e4a834296d4703a56c8e9244427d8ab85df16c06b86c08bace5631336898b713` |
| 13 | `theorem` | [largeLayer_sum_le](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/largelayer-sum-le.md) | 154 | `result-track:08ccf1b52ddbaa15ef046a6541021ea69c7ca9a4a1b3ca0067f746dc7df24090` |
| 14 | `theorem` | [subsetSumProbability_le_30022](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/subsetsumprobability-le-30022.md) | 179 | `result-track:917ab68e02904d83646a68d69713dd1c5a3a1fe33bccd84f611b491db1b9a2b1` |
| 15 | `theorem` | [subsetSumProbability_le_source_constant](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/subsetsumprobability-le-source-constant.md) | 221 | `result-track:7616424a972b09d66db54d18caba4d0c0a679ff7c40c59b3fd89794da18e374b` |
| 16 | `theorem` | [prime_subsetSumProbability_le_source_constant](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/prime-subsetsumprobability-le-source-constant.md) | 233 | `result-track:317fa255fc598e175c5b2fb89e8a556a5105f5b758beae90ef14ff5e7aada55f` |
| 17 | `theorem` | [exists_anticoncentration_constant](../../../../HarmonicAnalysisOnEuclideanSpaces/ZModBalancedExpectedLayers.lean/declarations/exists-anticoncentration-constant.md) | 244 | `result-track:89e10d3ca425b8d8b9f41f30224515280db1b1b4ed21836b29a02f584e04ddaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d31e049db8b4338ccc95359a49c7a16f11a607033bec6d35e42a127478e05779 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/ZModBalancedExpectedLayers.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedExpectedLayers.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
