# Verification target: Flow Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b7a9b8f8b77f847ed312c29a2af8b40bb02a05e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Flow/Variante04cc0656caba6b24456442e8e4061db8630f5fe0e7862b79048db6e8d2574d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b7a9b8f8b77f847ed312c29a2af8b40bb02a05e`.

Source path: `GRWTSK/Topology/GeneralTopology/Flow/Variante04cc0656caba6b24456442e8e4061db8630f5fe0e7862b79048db6e8d2574d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Flow/Variante04cc0656caba6b24456442e8e4061db8630f5fe0e7862b79048db6e8d2574d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Iterate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Monoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/isinvariant.md) | 50 | `declaration-track:9860b6606075b6452b53dce5b306e40a4f2613cb097e26530e500039b1b041bb` |
| 2 | `theorem` | [isInvariant_iff_image](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/isinvariant-iff-image.md) | 55 | `result-track:164f73ecc77fa254ae01ea2b7d4a3b91d9767734c1c9f7fe53271658d3bcd436` |
| 3 | `def` | [IsFwInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/isfwinvariant.md) | 60 | `declaration-track:4366deb3ad22e34237832396bdfa7b93ff33b9206d32303acbaa72322a2721bb` |
| 4 | `theorem` | [IsInvariant.isFwInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/isfwinvariant-source-line-63-occurrence-2.md) | 63 | `result-track:ae9880d4669a58bf139e7b3fff326955e572b887bd912e6f6ba34c9df0984a84` |
| 5 | `theorem` | [IsFwInvariant.isInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/isinvariant-source-line-68-occurrence-2.md) | 68 | `result-track:c7b25a3fc6a17e682f272878fb9cee477fa4e428101aaeecfe4c3c4c6bd58262` |
| 6 | `theorem` | [isFwInvariant_iff_isInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/isfwinvariant-iff-isinvariant.md) | 74 | `result-track:4e8597d3112dae5cf2086413535ebf9580157f6bdb57d80131b4fa85b3839042` |
| 7 | `structure` | [Flow](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/flow.md) | 87 | `declaration-track:ebc2c22dc962762b0b63e97bd7e390ee85b8d4f6bb655cf29c117858ee8d5f08` |
| 8 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/instance-source-edition-2.md) | 100 | `declaration-track:1d92546e2bd2dfd018737b9ddf0c34d89b5fe04d9a7f2c90ff6958e0c3cddbeb` |
| 9 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/instance.md) | 106 | `declaration-track:1d629622cb9bbe52df6852e6cc3fe9209ef36bd2cd43e2bd4445655b8d847603` |
| 10 | `theorem` | [ext](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/ext.md) | 109 | `result-track:0f8c4b5f2f5edac0e9060b6beaecb7e60eae48b107a12687cadbfa098b559313` |
| 11 | `theorem` | [continuous](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/continuous.md) | 116 | `result-track:9dd5b9ca44b5c59baac64a420e3ef666f920167d088569d3ce56696c963eb99b` |
| 12 | `theorem` | [map_add](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/map-add.md) | 122 | `result-track:fc0b08d02eae01fb70db392a4d730239f7b3edc92545a37de61bdc5f665cb2d3` |
| 13 | `theorem` | [map_zero](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/map-zero.md) | 125 | `result-track:67e6c17151fa71892aef81b8df0e3c7c6fe0ab5f0773709e3fb21089deaa9ada` |
| 14 | `theorem` | [map_zero_apply](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/map-zero-apply.md) | 127 | `result-track:9cca72dfe0713eb3d55c0b086ee41bbd8bf69a0bb456a491b7e759cf586d83a3` |
| 15 | `def` | [fromIter](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/fromiter.md) | 131 | `declaration-track:d74ffca270740930161edbfa0ac8f1647adf17d57762fb563adfa2845b0f4673` |
| 16 | `def` | [restrict](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/restrict.md) | 138 | `declaration-track:4527a7ea1bb2b91b8033d4d657bdff236b654548d04be2e24482c3de67f0d718` |
| 17 | `theorem` | [isInvariant_iff_image_eq](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/isinvariant-iff-image-eq.md) | 151 | `result-track:68ea01af4a2a6ecf3766281ec9e31c6b1ef7056ff2259146b1f03e4e7a6372d4` |
| 18 | `def` | [reverse](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/reverse.md) | 159 | `declaration-track:78d5d91faa0c9ec2507b359dfdd0820f4492754532c825fe3116f67b7cf4e19f` |
| 19 | `theorem` | [continuous_toFun](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/continuous-tofun.md) | 166 | `result-track:e04b953f479e876c159ec6514c43c27b1aa115a2574f425e0b0cf363a3782cbc` |
| 20 | `def` | [toHomeomorph](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/tohomeomorph.md) | 170 | `declaration-track:69dd8ab0576fa2ff5146978f1423e4433eacfee4d54f1984a560d0ca3783ba42` |
| 21 | `theorem` | [image_eq_preimage](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespaced.lean/declarations/image-eq-preimage.md) | 176 | `result-track:a4419ef142d4f8ab11fbaef2363882682edec584e246dfc503f3e49182fd6b1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1352030544b2c060de90939cd366fd9e0ed69c1fce7610ff37929317f86111b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Flow/Variante04cc0656caba6b24456442e8e4061db8630f5fe0e7862b79048db6e8d2574d3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Flow/Variante04cc0656caba6b24456442e8e4061db8630f5fe0e7862b79048db6e8d2574d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
