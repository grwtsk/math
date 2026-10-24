# Verification target: GRWTSK.Topology.GeneralTopology.ProperSpace.Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98fc4a762880408f9abf13a39b0f308e5341ce3a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98fc4a762880408f9abf13a39b0f308e5341ce3a`.

Source path: `GRWTSK/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ProperSpace](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/properspace--949da8495529fe6f5b81b041.md) | 39 | `declaration-track:949da8495529fe6f5b81b0413aa15d0064d2ab855705937d7ebe3d9bef7e8e76` |
| 2 | `theorem` | [isCompact_sphere](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/iscompact-sphere--c065de0f074571f70411ed29.md) | 47 | `result-track:c065de0f074571f70411ed2992998a07d822585d2217fc86e0a5c17b3d7a93ce` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/instance--38d85a478175ea29c8ef2526.md) | 53 | `declaration-track:38d85a478175ea29c8ef2526ececf9bdbabee73a77f1f561e40ff4ec07c226b6` |
| 4 | `instance` | [Metric.sphere.compactSpace](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/metric-sphere-compactspace--1047e53266a6055f2aa5da08.md) | 58 | `declaration-track:1047e53266a6055f2aa5da083e289d89e37f90e13ad1b8d3dcd74c38933a98fa` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/instance--c6988890f203e373c872d79e.md) | 66 | `declaration-track:c6988890f203e373c872d79eca275995bbdd250f00e2298306c1b39a79f9711e` |
| 6 | `theorem` | [ProperSpace.of_isCompact_closedBall_of_le](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/properspace-of-iscompact-closedball-of-le--a0810c53e111d257ea216c36.md) | 77 | `result-track:a0810c53e111d257ea216c36ea8527dee333a174c58fb7dfd80afe6d693d5505` |
| 7 | `theorem` | [ProperSpace.of_seq_closedBall](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/properspace-of-seq-closedball--dce91eaa8c68cc16d421ed2e.md) | 84 | `result-track:dce91eaa8c68cc16d421ed2e9274d9685fa2f24bc6f41b4f4ff484ff045aa8c9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/instance--344eda8a121796cb03244374.md) | 93 | `declaration-track:344eda8a121796cb032443742f49cbbb2f9ec574d1fd1188ceb2a8ef9db919c2` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/instance--28b337acf074a7756e21276d.md) | 98 | `declaration-track:28b337acf074a7756e21276dffa65b93ec3fff7c07e427363ef01a93beb83461` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/instance--648e12f07b605417a433a1cb.md) | 104 | `declaration-track:648e12f07b605417a433a1cb778bdf82c02261efe1a7ed1143aa3296f079d0b7` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/instance--c33c7367a962e1d86d5f1e0a.md) | 117 | `declaration-track:c33c7367a962e1d86d5f1e0a6c0565b34cdb713c990a212312b2841c10553ac5` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/instance--0537c4dc67fcc875baa6320d.md) | 121 | `declaration-track:0537c4dc67fcc875baa6320d1a76757d71cca6d26c19457f743b4ea20279a8a8` |
| 13 | `instance` | [prod_properSpace](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/prod-properspace--11e8a48bd3f649461670c5b4.md) | 124 | `declaration-track:11e8a48bd3f649461670c5b4facaadbe0fac8353cb3ecfd801d686b1f88cc865` |
| 14 | `instance` | [pi_properSpace](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/pi-properspace--fbb7a367eedb53f34d0f6534.md) | 132 | `declaration-track:fbb7a367eedb53f34d0f65345b6f485848fd1ff3036d46cf8c44122482036bd9` |
| 15 | `lemma` | [ProperSpace.of_isClosed](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/properspace-of-isclosed--d47687c3d726305c64b27f75.md) | 140 | `result-track:d47687c3d726305c64b27f751ff6864fd0390b08a1c85dd65ca18b38b511cf6a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/instance--1e6323f55cd681a78379decc.md) | 149 | `declaration-track:1e6323f55cd681a78379deccb65a865ba1f7d418ed261779a0a847b50a68be89` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/instance--23d7f5c7ca82299261aec405.md) | 150 | `declaration-track:23d7f5c7ca82299261aec4057571a8bec50748cce4dc8458f3aa23a1a2f7e6b5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variantfd2754c20d5709e40b04584270a90bbf117d5a8c2726c9a7005b7ef47a5dc38c.lean/declarations/instance--38de4de3b400b7f1356456cb.md) | 151 | `declaration-track:38de4de3b400b7f1356456cb41e2df574b5d84b1e98fc8e7686269f44ec35903` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
