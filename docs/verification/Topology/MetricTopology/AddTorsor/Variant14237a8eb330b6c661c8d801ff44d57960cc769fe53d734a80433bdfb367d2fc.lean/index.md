# Verification target: GRWTSK.Topology.MetricTopology.AddTorsor.Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd902453c068c852d2df93d8da7c67478d369afd",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd902453c068c852d2df93d8da7c67478d369afd`.

Source path: `GRWTSK/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean.json)

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
| 1 | `class` | [NormedAddTorsor](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/normedaddtorsor--d3f4df2f110bed6ae4ff15b3.md) | 45 | `declaration-track:d3f4df2f110bed6ae4ff15b3a7bc333699719af4579aecb273a6031882ec421e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/instance--82bc724a947323fac7a8cc09.md) | 50 | `declaration-track:82bc724a947323fac7a8cc09b99cb86684eb6abfe8e687db44e8b72ed227eae8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/instance--986bf87b882aaf3bfe1c0845.md) | 57 | `declaration-track:986bf87b882aaf3bfe1c08451eda1d06fb9291ff5dd3a31bc246d01c8c3645f9` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/instance--6884740d68e3d76c5c8a6d93.md) | 62 | `declaration-track:6884740d68e3d76c5c8a6d93f0df42c86257cc3fbc9d7823c621da176793f820` |
| 5 | `instance` | [AffineSubspace.toNormedAddTorsor](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/affinesubspace-tonormedaddtorsor--75beda2f4ba36b0af6a34145.md) | 67 | `declaration-track:75beda2f4ba36b0af6a3414558661c559bbd835ed6263414312520c25f17dbff` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/instance--c600413e934ee2a3ca7760c9.md) | 72 | `declaration-track:c600413e934ee2a3ca7760c9eb043e61563c9abc16a4af70e1f682c767804fa3` |
| 7 | `theorem` | [dist_eq_norm_vsub](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/dist-eq-norm-vsub--cf1b7e64bc8f566b02910829.md) | 84 | `result-track:cf1b7e64bc8f566b029108294e34f6fec83583d9845eefdb205aefe3fa545818` |
| 8 | `theorem` | [nndist_eq_nnnorm_vsub](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/nndist-eq-nnnorm-vsub--c1139b0bcbf23e08e5328287.md) | 87 | `result-track:c1139b0bcbf23e08e532828708c8e08bb8d435e784147034caacd48c9869f45f` |
| 9 | `theorem` | [dist_eq_norm_vsub'](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/dist-eq-norm-vsub--4613d35b169bc8a1813e3be9.md) | 94 | `result-track:4613d35b169bc8a1813e3be9f97c38f4185dc382f90e075fcebceec681fc2870` |
| 10 | `theorem` | [nndist_eq_nnnorm_vsub'](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/nndist-eq-nnnorm-vsub--e4a58a449877ae0330affd6d.md) | 97 | `result-track:e4a58a449877ae0330affd6d886bd2d67d9553b7669c4254d795fd9fb2804e27` |
| 11 | `theorem` | [dist_vadd_cancel_left](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/dist-vadd-cancel-left--560a457279f4718e45ad7a3e.md) | 102 | `result-track:560a457279f4718e45ad7a3ec1d0b93549b7053638a8b9aeff57dbf43033d519` |
| 12 | `theorem` | [nndist_vadd_cancel_left](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/nndist-vadd-cancel-left--2947d5aa57c48f0916fa51de.md) | 105 | `result-track:2947d5aa57c48f0916fa51dedd15299e4cc49e2309f7b484d24c46356347f557` |
| 13 | `theorem` | [dist_vadd_cancel_right](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/dist-vadd-cancel-right--adc89e3d544d758aa29598a7.md) | 109 | `result-track:adc89e3d544d758aa29598a7ca43b6e4fe3b55c2a56606ceb5e1710430981619` |
| 14 | `theorem` | [nndist_vadd_cancel_right](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/nndist-vadd-cancel-right--65ad4f3d5008e95a71953711.md) | 113 | `result-track:65ad4f3d5008e95a71953711c49d448d9fb34c65ab1fa6c5cb4120fa9c8a07ce` |
| 15 | `theorem` | [dist_vadd_left](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/dist-vadd-left--ef91da4526bcc38d29496367.md) | 117 | `result-track:ef91da4526bcc38d29496367e477314dda62d22917418a0e0a3c4f860eb75bdf` |
| 16 | `theorem` | [nndist_vadd_left](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/nndist-vadd-left--a01f1fafad61fd804394a771.md) | 121 | `result-track:a01f1fafad61fd804394a7710ce3722aecd23f7decbf161aa7828c41259fe15c` |
| 17 | `theorem` | [dist_vadd_right](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/dist-vadd-right--027acb5b46365a6c7d49d975.md) | 125 | `result-track:027acb5b46365a6c7d49d975b02c091ed731253a23f40d36753ad18ad8af4cd2` |
| 18 | `theorem` | [nndist_vadd_right](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/nndist-vadd-right--524e7eac903eb29be47cc4ae.md) | 128 | `result-track:524e7eac903eb29be47cc4ae0cebb7608f3c7852a61446d2f6819707daa4f28f` |
| 19 | `def` | [IsometryEquiv.vaddConst](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/isometryequiv-vaddconst--968a21397159c2847e1b74c3.md) | 134 | `declaration-track:968a21397159c2847e1b74c37249c2a1e61720a8951510cfbf1127b2cb8b2aae` |
| 20 | `theorem` | [dist_vsub_cancel_left](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/dist-vsub-cancel-left--d830ac3e7452f4cdb888f33f.md) | 139 | `result-track:d830ac3e7452f4cdb888f33fc6d21de23222b9f5ba2c7ebb2a58e8f5c216a41c` |
| 21 | `theorem` | [nndist_vsub_cancel_left](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/nndist-vsub-cancel-left--16c4afdf5b9dae9c206527a0.md) | 143 | `result-track:16c4afdf5b9dae9c206527a0222de9d2a22259c79f5cce013986977b457a809e` |
| 22 | `def` | [IsometryEquiv.constVSub](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/isometryequiv-constvsub--b3d9545e7be245d42019a498.md) | 149 | `declaration-track:b3d9545e7be245d42019a4983670fcac8b874a3a38420d054f573ab26cd0e11f` |
| 23 | `theorem` | [dist_vsub_cancel_right](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/dist-vsub-cancel-right--72581cd71fd96e59ddfdae28.md) | 154 | `result-track:72581cd71fd96e59ddfdae28bd8b487b3270ab5fa60121fe1f45e46ace984d27` |
| 24 | `theorem` | [nndist_vsub_cancel_right](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/nndist-vsub-cancel-right--dec2fc83dae1ba554bf7e0ae.md) | 158 | `result-track:dec2fc83dae1ba554bf7e0ae8fb642adc4f6b00eeb7dbef23c558ca972cab55d` |
| 25 | `theorem` | [dist_vadd_vadd_le](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/dist-vadd-vadd-le--e420832a66fd2426bdb1dd32.md) | 161 | `result-track:e420832a66fd2426bdb1dd3255c981f8452088c336d36e93ac9956714b65d468` |
| 26 | `theorem` | [nndist_vadd_vadd_le](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/nndist-vadd-vadd-le--183b23db39abd7fdb4d284f7.md) | 165 | `result-track:183b23db39abd7fdb4d284f78083373c5aa5c06930bb5b9592ac8748d0da8f21` |
| 27 | `theorem` | [dist_vsub_vsub_le](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/dist-vsub-vsub-le--032ffb0dff7457fbb7f214b3.md) | 169 | `result-track:032ffb0dff7457fbb7f214b3305e0446396e7ceebaaecd516da19e1a748eddbb` |
| 28 | `theorem` | [nndist_vsub_vsub_le](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/nndist-vsub-vsub-le--420063ee70ee84944c3b9b66.md) | 174 | `result-track:420063ee70ee84944c3b9b66f5ba01206ff4681a9e191d4ba573093a9bd9d404` |
| 29 | `theorem` | [edist_vadd_vadd_le](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/edist-vadd-vadd-le--1a993c60b292c8a838d754a4.md) | 178 | `result-track:1a993c60b292c8a838d754a4229cb735e1b3742dd0a8c828d0637581cee7e9c2` |
| 30 | `theorem` | [edist_vsub_vsub_le](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/edist-vsub-vsub-le--857894082f785453ecb14b93.md) | 184 | `result-track:857894082f785453ecb14b937f886d4415300b7511925c13731093cc07360a0c` |
| 31 | `def` | [pseudoMetricSpaceOfNormedAddCommGroupOfAddTorsor](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/pseudometricspaceofnormedaddcommgroupofaddtorsor--30421a33fb96530122176747.md) | 193 | `declaration-track:30421a33fb96530122176747b4d4673e8833782accbcf1ae44bb72576fa280dd` |
| 32 | `def` | [metricSpaceOfNormedAddCommGroupOfAddTorsor](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/metricspaceofnormedaddcommgroupofaddtorsor--2f035e15a46c1fce7e536fc0.md) | 205 | `declaration-track:2f035e15a46c1fce7e536fc049d1b7d7652708c1deaeb9fa18fedea0e87e9adf` |
| 33 | `theorem` | [LipschitzWith.vadd](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/lipschitzwith-vadd--06738cda5773c206624c580a.md) | 215 | `result-track:06738cda5773c206624c580a84e93b5571f599e79d514b7bd2524168d3ba9e75` |
| 34 | `theorem` | [LipschitzWith.vsub](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/lipschitzwith-vsub--46b0759689bc75dee5a18a28.md) | 224 | `result-track:46b0759689bc75dee5a18a2819bea5e5ba5a6e2da352091eabc2053e28300fd5` |
| 35 | `theorem` | [uniformContinuous_vadd](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/uniformcontinuous-vadd--ee6e886da627eabc5a9c98df.md) | 234 | `result-track:ee6e886da627eabc5a9c98dfd36b897006b3ec2582db462c63db5ea8dbd6b290` |
| 36 | `theorem` | [uniformContinuous_vsub](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/uniformcontinuous-vsub--dfa197203dded6c54bac571f.md) | 238 | `result-track:dfa197203dded6c54bac571f8265327b9eeed36c130c163987c332ef19dfb48f` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/instance--b9546015013f0eae02c2293f.md) | 241 | `declaration-track:b9546015013f0eae02c2293fb741db74bbe38659f31e71635f09d8f6fa2de7fc` |
| 38 | `abbrev` | [Function.Injective.normedAddTorsor](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/function-injective-normedaddtorsor--93f19d0cd49e5791cd160b7a.md) | 246 | `declaration-track:93f19d0cd49e5791cd160b7afbdd4dc709489de976244c72cf98a38d30858a60` |
| 39 | `abbrev` | [Function.Surjective.normedAddTorsor](../../../../../mathematics/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/declarations/function-surjective-normedaddtorsor--2157678b6e0f517233cdee7a.md) | 255 | `declaration-track:2157678b6e0f517233cdee7a296ec21fb03241a657fe05976dc02ff63a5a0139` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
