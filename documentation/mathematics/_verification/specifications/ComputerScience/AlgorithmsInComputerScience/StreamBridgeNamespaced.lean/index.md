# Verification target: Stream Bridge Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4477d07452303d4fc63496d24317ee3915652d7",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant88dc82edf8a2ffe01270c67a4f5b29bdbe2455bb156d0879e86821ab7b7a6d5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4477d07452303d4fc63496d24317ee3915652d7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant88dc82edf8a2ffe01270c67a4f5b29bdbe2455bb156d0879e86821ab7b7a6d5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant88dc82edf8a2ffe01270c67a4f5b29bdbe2455bb156d0879e86821ab7b7a6d5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.AST.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Legacy.BinaryLogicMatrix.Core` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.Legacy.AffineTopos.NativeSyntacticTopos` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WitnessAuthority](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/witnessauthority.md) | 18 | `declaration-track:612017ab0b8d5b77157e74fe0d919ae98043b7990481b5d4eb764cb5a4ecf828` |
| 2 | `inductive` | [StreamEventKind](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/streameventkind.md) | 24 | `declaration-track:799ccdaeac482ec9e14f016da3138f2e2ee7257a966190a0e99ed51bd18fc510` |
| 3 | `structure` | [BinaryLogicMatrixStreamEvent](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/binarylogicmatrixstreamevent.md) | 34 | `declaration-track:c9760c7c10d72dabcd4aaedf094b3cb38df1bc5d2e46c1b428c639c28760ebca` |
| 4 | `structure` | [BinaryLogicMatrixStreamWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/binarylogicmatrixstreamwitness.md) | 44 | `declaration-track:a484b56021fb9b45bb97ad381ea5dcf5018d01bce06a03e1cb16343d426772ba` |
| 5 | `def` | [BinaryLogicMatrixStreamWitness.isOnlyCombinatorial](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/binarylogicmatrixstreamwitness-isonlycombinatorial.md) | 55 | `declaration-track:d926e7102d9d3842c085100fd5d20497165dc9c7054c1a897d120543b90083c6` |
| 6 | `structure` | [KernelCheckedTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/kernelcheckedtheorem.md) | 60 | `declaration-track:bc5e489a665f40654512694869f55aadc4abd37c9795c80253690ee24cec3204` |
| 7 | `structure` | [StreamToCheckedTheoremBridge](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/streamtocheckedtheorembridge.md) | 77 | `declaration-track:4ccb614b9b580a07efdd2192614182d0fa7993f5449ad7351c986ee9c2293032` |
| 8 | `theorem` | [bridge_outputs_checked_theorem](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/bridge-outputs-checked-theorem.md) | 89 | `result-track:f2d3e3eb36b5f9f4d8ac9749046da2a3347d386ac5372fc16c54950001403a84` |
| 9 | `theorem` | [bridge_outputs_theorem_declaration](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/bridge-outputs-theorem-declaration.md) | 96 | `result-track:9e351d25d12e68cbdeb4f325cf58e6b4922479d908c5f519b718a2be45e18f61` |
| 10 | `theorem` | [combinatorial_witness_not_checked_by_itself](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/combinatorial-witness-not-checked-by-itself.md) | 103 | `result-track:ac8475d835f8459a0fed4cd5478bff29bba62e61abbf2b757f2873d86b5eaf56` |
| 11 | `structure` | [PascalReductionNode](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/pascalreductionnode.md) | 111 | `declaration-track:0d4360a69660ad367b5ac4aabbbcefcd62e4fc0b9336903505d3285c9802926f` |
| 12 | `structure` | [StreamArrow](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/streamarrow.md) | 124 | `declaration-track:5754ee80c3e3195be35a3dc91154a57693af333e91bf62a8245a600b963471e1` |
| 13 | `structure` | [GuardedFeedback](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/guardedfeedback.md) | 130 | `declaration-track:0476a4eeb0082805aa10d342db2322eee97ec939deaa759089afc6f8b32f8c0f` |
| 14 | `def` | [safeStep](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/safestep.md) | 144 | `declaration-track:1f80159bffc8f11ca9a2bcf7ad418a03edc0c5a87cf5309376e8dd21d73e7a35` |
| 15 | `structure` | [ConwayLikeStreamController](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamBridgeNamespaced.lean/declarations/conwaylikestreamcontroller.md) | 155 | `declaration-track:63c6ab69c8773829747c9715be17fd98d6e9041f666136e23761123ca643331c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc865c3a29012c24f03e2f65711f8d168f5e616bc2a467dfabc468d9408aab2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant88dc82edf8a2ffe01270c67a4f5b29bdbe2455bb156d0879e86821ab7b7a6d5d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StreamBridge/Variant88dc82edf8a2ffe01270c67a4f5b29bdbe2455bb156d0879e86821ab7b7a6d5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
