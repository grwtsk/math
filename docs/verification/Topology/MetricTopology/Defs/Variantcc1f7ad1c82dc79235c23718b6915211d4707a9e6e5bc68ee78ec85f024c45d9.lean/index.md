# Verification target: GRWTSK.Topology.MetricTopology.Defs.Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10910c95e518dfacb8d4fcb88d7e689315791952",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10910c95e518dfacb8d4fcb88d7e689315791952`.

Source path: `GRWTSK/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean.json)

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
| 1 | `class` | [MetricSpace](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/metricspace--c9165e5ec6524bc2f2583c77.md) | 70 | `declaration-track:c9165e5ec6524bc2f2583c77228c03924fea29ac4d8676292837d30a941ae3a7` |
| 2 | `theorem` | [MetricSpace.ext](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/metricspace-ext--54f7ddb99325207053646322.md) | 75 | `result-track:54f7ddb993252070536463222dfe87b2f7ddc288a352dbb63b62f3cce72c78d9` |
| 3 | `def` | [MetricSpace.ofDistTopology](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/metricspace-ofdisttopology--45ffdbe68e6684bc3ffdf361.md) | 83 | `declaration-track:45ffdbe68e6684bc3ffdf361fbb0984ed90ae804842f7e9e5df6c6a54b59f443` |
| 4 | `theorem` | [eq_of_dist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/eq-of-dist-eq-zero--d322f7e78e41eefd840f62c3.md) | 93 | `result-track:d322f7e78e41eefd840f62c3d382b684ae83237a7daeb4fa04b182a7c2a495d9` |
| 5 | `theorem` | [dist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/dist-eq-zero--178d25cd5e8f71643d9bd648.md) | 97 | `result-track:178d25cd5e8f71643d9bd648c9b73481608a79cfbcb7de7858a94f22271e4644` |
| 6 | `theorem` | [zero_eq_dist](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/zero-eq-dist--dd06ff38b8f855da4a98125d.md) | 101 | `result-track:dd06ff38b8f855da4a98125d73da96fa6e49ff9f0738d9df403db06c053d9b18` |
| 7 | `theorem` | [dist_ne_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/dist-ne-zero--dc494e137f75cc2dd51a13b2.md) | 103 | `result-track:dc494e137f75cc2dd51a13b22a6647aee0f5cc42543e368853c3e56821a92fd7` |
| 8 | `theorem` | [dist_le_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/dist-le-zero--f8a2313f284f3242e0c2d077.md) | 107 | `result-track:f8a2313f284f3242e0c2d0774e0b6ade3813430375a2d2eef8ffc944ff4c364e` |
| 9 | `theorem` | [dist_pos](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/dist-pos--7dc0556fa339795d48a3e25c.md) | 111 | `result-track:7dc0556fa339795d48a3e25ccb0b838f3645ad7fc2f148bd7d9b096089718595` |
| 10 | `theorem` | [eq_of_forall_dist_le](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/eq-of-forall-dist-le--d131e86d285ed53ac0659a53.md) | 114 | `result-track:d131e86d285ed53ac0659a53061f7631cc697824c2207d9447eeb1a64cac3650` |
| 11 | `theorem` | [eq_of_nndist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/eq-of-nndist-eq-zero--06dcee6f9a7dda8aecd45602.md) | 118 | `result-track:06dcee6f9a7dda8aecd45602c638aca884b063afca39fd4c714d6ce118032b92` |
| 12 | `theorem` | [nndist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/nndist-eq-zero--9e67abe1ae518fcafdde9835.md) | 123 | `result-track:9e67abe1ae518fcafdde9835376f3bde3d5587fe05724e68b7a7a46d8f750563` |
| 13 | `theorem` | [zero_eq_nndist](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/zero-eq-nndist--d2a3a43c8093f1ff08fd5952.md) | 127 | `result-track:d2a3a43c8093f1ff08fd59525112f39b6ef48041dd22847607b43dea5c2a0361` |
| 14 | `theorem` | [closedBall_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/closedball-zero--d515057f7518f0a9e02c1223.md) | 134 | `result-track:d515057f7518f0a9e02c1223facca59fcc38e9316d98661bcd11b2c6109bd64d` |
| 15 | `theorem` | [sphere_zero](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/sphere-zero--31cbf956c2fb3ca211e80b6b.md) | 136 | `result-track:31cbf956c2fb3ca211e80b6b4be8779874028b683473c6fc5f7c2ea7579a8773` |
| 16 | `theorem` | [subsingleton_closedBall](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/subsingleton-closedball--326220d017247e4deb7f956e.md) | 138 | `result-track:326220d017247e4deb7f956e5956ae3caddfdb7d7875e9b5cf1b6dbead5f1f2e` |
| 17 | `theorem` | [subsingleton_sphere](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/subsingleton-sphere--fd5feab8cba299b55e9e8f27.md) | 145 | `result-track:fd5feab8cba299b55e9e8f273d9fd31098e3c823e5df4671d6f6e9b8a504b3e0` |
| 18 | `abbrev` | [MetricSpace.replaceUniformity](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/metricspace-replaceuniformity--2549f6b9d2edb49bd3653f30.md) | 155 | `declaration-track:2549f6b9d2edb49bd3653f30e90735580bf0ca88d9e63e0a7b4d294e4dd4f69f` |
| 19 | `theorem` | [MetricSpace.replaceUniformity_eq](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/metricspace-replaceuniformity-eq--0a7226b6309494993f62dc25.md) | 160 | `result-track:0a7226b6309494993f62dc25f4040bdc4a794a4b197342296db25c94613f0021` |
| 20 | `abbrev` | [MetricSpace.replaceTopology](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/metricspace-replacetopology--6eb78c3d03cef5e98cdfc793.md) | 169 | `declaration-track:6eb78c3d03cef5e98cdfc7938ef810027a892963b643baf02173ef7da3ab2e32` |
| 21 | `theorem` | [MetricSpace.replaceTopology_eq](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/metricspace-replacetopology-eq--f4ee3c15fcb41297c7dad131.md) | 173 | `result-track:f4ee3c15fcb41297c7dad131eb0e9027bf293c367296f014f0aa0272e88f6b12` |
| 22 | `abbrev` | [MetricSpace.replaceBornology](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/metricspace-replacebornology--d38d222f5b30e49993be9df4.md) | 183 | `declaration-track:d38d222f5b30e49993be9df4574e275ebdf857d64addda33945f0c4f4ef5c18e` |
| 23 | `theorem` | [MetricSpace.replaceBornology_eq](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/metricspace-replacebornology-eq--02f72fffa6b2d137cf2cabca.md) | 187 | `result-track:02f72fffa6b2d137cf2cabca271e72c4bfa96e70b6dc6d95f1b5394a274767ae` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/instance--9caf25b3ed558bec902427e2.md) | 193 | `declaration-track:9caf25b3ed558bec902427e2b3568b7794b024250a6d6aa60405754dda33faad` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/instance--b825b4e99a741a302bf0e9dc.md) | 203 | `declaration-track:b825b4e99a741a302bf0e9dc070f94f1dcb620d57cf4aa31afbd3fef08b6cc85` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/instance--bf0faf8a69ef608bed705e5f.md) | 227 | `declaration-track:bf0faf8a69ef608bed705e5f42a9cd00dee7afef3ad81280da6270fa36ded5f0` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/instance--7ff139cec534f84f1df20887.md) | 228 | `declaration-track:7ff139cec534f84f1df2088763cc080e8e67814a22662a40768ced4ec95a52db` |
| 28 | `theorem` | [dist_ofMul](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/dist-ofmul--00d25b7e43986cb31c1d68ab.md) | 230 | `result-track:00d25b7e43986cb31c1d68ab43d66e252accf8c26a91e87644161b4a1470ce91` |
| 29 | `theorem` | [dist_ofAdd](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/dist-ofadd--745ae4223cdcfc6b8a6b097d.md) | 232 | `result-track:745ae4223cdcfc6b8a6b097df8dc1840e6c0eb8e2acce3c98e82ea7570503be3` |
| 30 | `theorem` | [dist_toMul](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/dist-tomul--5a3c8f3ab2ff10face1c096a.md) | 234 | `result-track:5a3c8f3ab2ff10face1c096aed226c94c0f847797b63a659487ad56284d4820e` |
| 31 | `theorem` | [dist_toAdd](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/dist-toadd--8aca3bf83c711ebc4b91225e.md) | 236 | `result-track:8aca3bf83c711ebc4b91225e8f4427b06cb2bccc3b270be268c13cc62ccfa231` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/instance--a702f246a04525c23526a250.md) | 240 | `declaration-track:a702f246a04525c23526a25023b849f89f9bb7b31b5fa3ebc3cc8de122cee00c` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/instance--92c7127474a63291c8694a22.md) | 241 | `declaration-track:92c7127474a63291c8694a22e29ccfa11b31972f0bdc4fcb7901c7b90b0f76e2` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/instance--27caa799739594a84d5e8c23.md) | 255 | `declaration-track:27caa799739594a84d5e8c2377e56a15b75c06e2db982bfd3b5b64645fc6b47b` |
| 35 | `theorem` | [dist_toDual](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/dist-todual--1d460356422b495f5128bb10.md) | 257 | `result-track:1d460356422b495f5128bb10d5ba7f33d58e69052301a5419b3bd520e1a74e9e` |
| 36 | `theorem` | [dist_ofDual](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/dist-ofdual--a3a36177a03fc3b0484c24e2.md) | 259 | `result-track:a3a36177a03fc3b0484c24e21f0fce4780a66d553aaa4f0774ece9c149231279` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/declarations/instance--3d94ff85921803b52eee18ff.md) | 263 | `declaration-track:3d94ff85921803b52eee18ffce38a78e30a6167d3ff25c96b233c63d056c847a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
