# Verification target: Flow Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41864fa5f9d6cfe2816b26b38efdfeac18a0afd3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41864fa5f9d6cfe2816b26b38efdfeac18a0afd3`.

Source path: `GRWTSK/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/isinvariant.md) | 53 | `declaration-track:bf7aecc16afa0665093081dcb138d0898aeae114bba4d1c1f04f884fb37a6d58` |
| 2 | `theorem` | [isInvariant_iff_image](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/isinvariant-iff-image.md) | 59 | `result-track:6ab6243d998370cae505be71a8ee073f03f14abc094680e3d99e77ce1a30ca46` |
| 3 | `def` | [IsFwInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/isfwinvariant.md) | 65 | `declaration-track:307031ba97838d7ca1c6e3bba50f7c832e613133aacfd400d4a487f28c6b1e42` |
| 4 | `theorem` | [IsInvariant.isFwInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/isfwinvariant-source-line-69-occurrence-2.md) | 69 | `result-track:09015376f89cad92fd02818c4c3caa179cc26be1a9b68703eef342442d933a65` |
| 5 | `theorem` | [IsFwInvariant.isInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/isinvariant-source-line-75-occurrence-2.md) | 75 | `result-track:2adfca7f72439e755888e886298b59b8c50f97eeebf6d6a54d27f8ff50900240` |
| 6 | `theorem` | [isFwInvariant_iff_isInvariant](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/isfwinvariant-iff-isinvariant.md) | 81 | `result-track:325aac396130c18e1625362ef4d4102f351b13a90e641b91b4800029489bf096` |
| 7 | `structure` | [Flow](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/flow.md) | 95 | `declaration-track:c5b631df7390170ebc4932be5b58cf65ad4741bad10108861b1c1d1c29927c81` |
| 8 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/instance.md) | 108 | `declaration-track:106e7cd5c47560288ec795683c5a1fcc7e256b2ee941ea95bdb23c1bef2b342d` |
| 9 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 114 | `declaration-track:a0044b85410fae652655c9116b59bebb089d1efca9dfcb0eda6e42b06de2b1d9` |
| 10 | `theorem` | [ext](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/ext.md) | 117 | `result-track:c7142a25db02df671053a78d8b32e9363758067253a29312544a96d7c5eab55f` |
| 11 | `theorem` | [continuous](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/continuous.md) | 125 | `result-track:2261c613b894992fe7e68f87fad4cc79093721945ebabbc7aeeb3daffca9c83d` |
| 12 | `theorem` | [map_add](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/map-add.md) | 133 | `result-track:44d93f202e76bffb66f3595116c333d2e4e89450a37e15d5b224c4a946fd17ff` |
| 13 | `theorem` | [map_zero](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/map-zero.md) | 137 | `result-track:88c8b8134893275a83e599bfa8cdd71c48c27ebde54764880876caedb1f0c0f4` |
| 14 | `theorem` | [map_zero_apply](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/map-zero-apply.md) | 140 | `result-track:aed9969abafc01ed2b3b80c45965709bf16553742f5c3d0b3baaaea7ebe66a9d` |
| 15 | `def` | [fromIter](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/fromiter.md) | 145 | `declaration-track:80b101a1c8ae018e0a4eb993a3f7ed1f6a65ba0d4615a652105d0e5852c47148` |
| 16 | `def` | [restrict](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/restrict.md) | 153 | `declaration-track:62b07b8f8e53370e58efd20769d3480bbee3354e62b633bb56c98252d7374a34` |
| 17 | `theorem` | [isInvariant_iff_image_eq](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/isinvariant-iff-image-eq.md) | 167 | `result-track:b37db8a803ab0aa87965a2fa4e0ae0955f93afaa23fc42e74ef8ee86c7a08d1d` |
| 18 | `def` | [reverse](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/reverse.md) | 176 | `declaration-track:adc53a85397c9a013dac6351cbcea3529140856615ab9a10d30e626c82222790` |
| 19 | `theorem` | [continuous_toFun](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/continuous-tofun.md) | 187 | `result-track:f9bc68cc8e7b84246de6282df6f844725a3e992c4c9276c9f441c67805f5eea9` |
| 20 | `def` | [toHomeomorph](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/tohomeomorph.md) | 193 | `declaration-track:01a2d22acdfa45e377651b5b9032f2e2c3e7384ff0a1a10337dd827ae09b7c47` |
| 21 | `theorem` | [image_eq_preimage](../../../../DynamicalSystemsAndErgodicTheory/FlowNamespacedAligned.lean/declarations/image-eq-preimage.md) | 200 | `result-track:c9fffffaa5a994eeacfda653ffee128879bad35f469e90d782b59f70fe72a484` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4c374196d4f57fd062da0a7e97281574b9026affeed4aa9da285aec4d7b2179 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Flow/Variant2234c0290eba73bda0e7d560c8c3ddc80f5ec6bdc40985ff01326dbe4c8aa347.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
