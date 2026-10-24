# Verification target: GRWTSK.Topology.MetricTopology.UniformConvergence.Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b1bcdcc82b4be4162ce7cdbe4716d03e0bec1ca",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b1bcdcc82b4be4162ce7cdbe4716d03e0bec1ca`.

Source path: `GRWTSK/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/instance--53126260c41a636818041602.md) | 65 | `declaration-track:53126260c41a6368180416027fea8f016ae1bbc4069e444bb307df94d286a217` |
| 2 | `lemma` | [edist_def](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/edist-def--4ce7eadb699d17e37bd3cf08.md) | 68 | `result-track:4ce7eadb699d17e37bd3cf087842ce55745027fb54f33f03a3bad8d448245c8c` |
| 3 | `lemma` | [edist_le](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/edist-le--de992c70f0895aaee3815d30.md) | 72 | `result-track:de992c70f0895aaee3815d30a278001c435db39ad07ed97c30e43a9d46d8f23d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/instance--078421e2e3f14c4f518dee31.md) | 77 | `declaration-track:078421e2e3f14c4f518dee315e03bcf10e228a326820d2bf425339b685e5ed65` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/instance--c937463672c20784cf288e11.md) | 92 | `declaration-track:c937463672c20784cf288e11d4a9f3e5d004473a5be17974e4ab997aaf708398` |
| 6 | `lemma` | [lipschitzWith_iff](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/lipschitzwith-iff--b574db39a004dbf2d696387b.md) | 95 | `result-track:b574db39a004dbf2d696387b00779ab893510dc6a84395e5d7c2e04478da4393` |
| 7 | `lemma` | [lipschitzWith_ofFun_iff](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/lipschitzwith-offun-iff--e9c0e2681b29afa76b52ddc5.md) | 99 | `result-track:e9c0e2681b29afa76b52ddc5452f7461cf138326511fab7e36841c8a1412dfa5` |
| 8 | `lemma` | [_root_.GRWTSK.Topology.MetricTopology.EdistDef.Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.LipschitzWith.uniformEquicontinuous](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/root-grwtsk-topology-metrictopology-edistdef-variant589e43f4753a1e5d9ae0--f631912aa3811c65975d22de.md) | 105 | `result-track:f631912aa3811c65975d22de21c8a9fabb05f0c76d4f499843da6ddbb2d5eb26` |
| 9 | `lemma` | [lipschitzOnWith_iff](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/lipschitzonwith-iff--e1f9d32ed3b89137a1165af5.md) | 111 | `result-track:e1f9d32ed3b89137a1165af57c761016f646dde416d8554493a3ee7f32f1714f` |
| 10 | `lemma` | [lipschitzOnWith_ofFun_iff](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/lipschitzonwith-offun-iff--8cf656a1e5ddf7b33f65356f.md) | 116 | `result-track:8cf656a1e5ddf7b33f65356f9a7681b724f4c8978b93d214b6b931cd2a72da14` |
| 11 | `lemma` | [_root_.GRWTSK.Topology.MetricTopology.EdistDef.Variant589e43f4753a1e5d9ae0a8aca6d05ebbbeb02e5a229c93a593a65f08b022269b.LipschitzOnWith.uniformEquicontinuousOn](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/root-grwtsk-topology-metrictopology-edistdef-variant589e43f4753a1e5d9ae0--2a0916cc271a48e4fb5de5af.md) | 122 | `result-track:2a0916cc271a48e4fb5de5afda1677ad00a78dbca937e648717cfdc4dc0b24f6` |
| 12 | `lemma` | [edist_eval_le](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/edist-eval-le--81c23ab4bb03ac74e2f005df.md) | 128 | `result-track:81c23ab4bb03ac74e2f005dfb0a40f59f73b3d8c2aaae7657c9a3419554496f7` |
| 13 | `lemma` | [lipschitzWith_eval](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/lipschitzwith-eval--d0e2b9206d354be959033703.md) | 132 | `result-track:d0e2b9206d354be9590337034ea4ac1f3d352d3fc7c1c2a3edc2fdfa7b04f0d7` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/instance--1c54a6cfef75fa498e2071b9.md) | 143 | `declaration-track:1c54a6cfef75fa498e2071b92ef9cade174f3a0f86311cc065c3268f5222c4ae` |
| 15 | `lemma` | [dist_def](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/dist-def--fad15da989de6565d2378275.md) | 157 | `result-track:fad15da989de6565d23782752ecb51fdaf184f0554c2e6cabf9e8f30dada0901` |
| 16 | `lemma` | [dist_le](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/dist-le--f417d634c2f657af12d0858f.md) | 161 | `result-track:f417d634c2f657af12d0858f6f51d113c98b9d83e9687ebe3f4d4fc507584f48` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/instance--5a8824f9a41f2f406b5cd533.md) | 165 | `declaration-track:5a8824f9a41f2f406b5cd533ed175518aa78311533c5488dd482e1c3ee470f16` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/instance--b21279aa25a187bbb7a44669.md) | 172 | `declaration-track:b21279aa25a187bbb7a4466906145006fbc12c9f2d7663f1ee86aedcb958bc55` |
| 19 | `lemma` | [isometry_ofFun_boundedContinuousFunction](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/isometry-offun-boundedcontinuousfunction--56f0fc0cea6b95451f3f849b.md) | 176 | `result-track:56f0fc0cea6b95451f3f849b3b5e97f65bccb50e9b8ec4cc49d7713bd5e388d4` |
| 20 | `lemma` | [isometry_ofFun_continuousMap](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/isometry-offun-continuousmap--7dc36bc00d1f4ed4c6452595.md) | 180 | `result-track:7dc36bc00d1f4ed4c6452595ea00dde1b9e9adf3def337346b6482ea03529905` |
| 21 | `lemma` | [edist_continuousMapMk](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/edist-continuousmapmk--94172c80aa4cca51b351ffc6.md) | 185 | `result-track:94172c80aa4cca51b351ffc65f714b844e3841af6de4db021da27885c2644158` |
| 22 | `lemma` | [continuous_of_forall_lipschitzWith](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/continuous-of-forall-lipschitzwith--dc9dc423512aa8396276fd9c.md) | 204 | `result-track:dc9dc423512aa8396276fd9c7788e2bea0b76b901b1164fe4b38a9424a93e004` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/instance--7b14a67dbd43226e80bfabfd.md) | 214 | `declaration-track:7b14a67dbd43226e80bfabfd38e545bcf02253e60ddbbcada2836a89876f76a5` |
| 24 | `lemma` | [edist_def](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/edist-def--e6cef097667f087aaa91b752.md) | 217 | `result-track:e6cef097667f087aaa91b7525212b6b1f2b858945b355fbd67924099982e9ff7` |
| 25 | `lemma` | [edist_def'](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/edist-def--9504bb5b4363d15d7190ec7b.md) | 221 | `result-track:9504bb5b4363d15d7190ec7bb39145c7cdabe8ef4ce6bb9149bf42414a86a8a4` |
| 26 | `lemma` | [edist_eq_restrict_sUnion](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/edist-eq-restrict-sunion--60faae7fce996eca938d3713.md) | 225 | `result-track:60faae7fce996eca938d371313578856923e08a6fb82084f6824670930f4ed4d` |
| 27 | `lemma` | [edist_eq_pi_restrict](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/edist-eq-pi-restrict--370ced07075c15597a31207e.md) | 231 | `result-track:370ced07075c15597a31207ea16637480596fdcdcd62b5d72469a0ba3d6268eb` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/instance--8a10c39c34e90d0444d33a0a.md) | 242 | `declaration-track:8a10c39c34e90d0444d33a0af016177061804ab3dc7a4ada02e1d4e25df6c0c0` |
| 29 | `lemma` | [edist_le](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/edist-le--264fb4d26e6106686142c34e.md) | 253 | `result-track:264fb4d26e6106686142c34e7310ffcc10c20fd6999794c8be1ef43393f0be3c` |
| 30 | `lemma` | [lipschitzWith_iff](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/lipschitzwith-iff--dcd9c5bdba4262ee63f0f092.md) | 257 | `result-track:dcd9c5bdba4262ee63f0f092d37200e9f9f25f58657a2738d011c90f3e9022b6` |
| 31 | `lemma` | [lipschitzOnWith_iff](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/lipschitzonwith-iff--c6b5abb529fc887214fc1774.md) | 262 | `result-track:c6b5abb529fc887214fc177467b6981a56881e98e5b9faf2451e5c7d28b5c9fb` |
| 32 | `lemma` | [edist_eval_le](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/edist-eval-le--4920907e740bcda55323a7dc.md) | 267 | `result-track:4920907e740bcda55323a7dc0c9133aa0884173a11b68c3b68ac2605048925fe` |
| 33 | `lemma` | [lipschitzWith_eval](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/lipschitzwith-eval--874ed6f55a5c6b1d137f2e5e.md) | 271 | `result-track:874ed6f55a5c6b1d137f2e5e5188bd8adfa0f95c40d101a6a0657d5934f2a6ab` |
| 34 | `lemma` | [lipschitzWith_one_ofFun_toFun](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/lipschitzwith-one-offun-tofun--347e50a929dc1d33fa14a9ed.md) | 276 | `result-track:347e50a929dc1d33fa14a9ed3e278bfa97040c0867075bdacf435e8bc0023798` |
| 35 | `lemma` | [lipschitzWith_one_ofFun_toFun'](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/lipschitzwith-one-offun-tofun--1fa317d3e950e32b95577ef2.md) | 280 | `result-track:1fa317d3e950e32b95577ef221a7a939be9df10c78c4c8b2b779b401fcddcd26` |
| 36 | `lemma` | [lipschitzWith_restrict](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/lipschitzwith-restrict--7f5bef5ae0a6ab3ec3b2b118.md) | 284 | `result-track:7f5bef5ae0a6ab3ec3b2b118599ad2e2b3e00b41be660255d63fbcf772cee1d1` |
| 37 | `lemma` | [isometry_restrict](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/isometry-restrict--a14dcb250019f8c4b4b9f3d7.md) | 288 | `result-track:a14dcb250019f8c4b4b9f3d7707f8776648e8e655e52e4ee307a6a86d03b9cb1` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/instance--5a74b4f6ea2323c83c42fa70.md) | 298 | `declaration-track:5a74b4f6ea2323c83c42fa70449bbdd781e5c8f4fd669d7102855240bec1bfa1` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/instance--c7d2073e2c2dd99fbcf5d94b.md) | 313 | `declaration-track:c7d2073e2c2dd99fbcf5d94be2bcb984305216fce34ae7bbaa27dbf0d9e8c54b` |
| 40 | `lemma` | [edist_continuousRestrict](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/edist-continuousrestrict--2cb34344ffdbf5014f7f8438.md) | 320 | `result-track:2cb34344ffdbf5014f7f8438db221db7a2c4bb5f48aabb1751933e67debb6686` |
| 41 | `lemma` | [edist_continuousRestrict_of_singleton](../../../../../mathematics/Topology/MetricTopology/UniformConvergence/Variantb87481750bd5b04da26a45730e68d698723fd6f58a701400992c3f362a18906f.lean/declarations/edist-continuousrestrict-of-singleton--792d6dfbb060ab90a6cbcb8b.md) | 326 | `result-track:792d6dfbb060ab90a6cbcb8bb4d28e9a8321804fea2af67dd863dceb431e23e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
