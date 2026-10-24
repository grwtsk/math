# Verification target: GRWTSK.Topology.GeneralTopology.UniformApproximation.Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d72af75a4a61ec8563c23a25bf7f43347efb60f3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d72af75a4a61ec8563c23a25bf7f43347efb60f3`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean.json)

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
| 1 | `theorem` | [continuousWithinAt_of_locally_uniform_approx_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/continuouswithinat-of-locally-uniform-approx-of-continuouswithinat--58807b0b43e8034472d61c0c.md) | 44 | `result-track:58807b0b43e8034472d61c0c713a9f262b6908039da385c4395ca3aad6b9ecb8` |
| 2 | `theorem` | [continuousAt_of_locally_uniform_approx_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/continuousat-of-locally-uniform-approx-of-continuousat--e7b7cdc73b2bc0ed9ecf360b.md) | 62 | `result-track:e7b7cdc73b2bc0ed9ecf360baec2ff8a41831a319e784726bcc6d0f2589cdcc0` |
| 3 | `theorem` | [continuousOn_of_locally_uniform_approx_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/continuouson-of-locally-uniform-approx-of-continuouswithinat--292679c4fc2d44fa2b476ddb.md) | 71 | `result-track:292679c4fc2d44fa2b476ddb86261482e3a4c35c5f70cf1955ae62ef761b0abe` |
| 4 | `theorem` | [continuousOn_of_uniform_approx_of_continuousOn](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/continuouson-of-uniform-approx-of-continuouson--c20dc0b70317aa2fba871363.md) | 79 | `result-track:c20dc0b70317aa2fba871363cde4945b28688e2ddae7a68a2ef2ab5a53aba331` |
| 5 | `theorem` | [continuous_of_locally_uniform_approx_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/continuous-of-locally-uniform-approx-of-continuousat--3560497f3c422f38048a66a7.md) | 85 | `result-track:3560497f3c422f38048a66a7e9cc95d712e2a248b8c912c0fd4828cf47f34ace` |
| 6 | `theorem` | [continuous_of_uniform_approx_of_continuous](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/continuous-of-uniform-approx-of-continuous--824d3d008e42d3771cc9ece1.md) | 92 | `result-track:824d3d008e42d3771cc9ece16e0547c24cd5ca2f56592fa41ca8a5f921a5748b` |
| 7 | `theorem` | [TendstoLocallyUniformlyOn.continuousOn](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/tendstolocallyuniformlyon-continuouson--3ed860c7b531e2f8fe14b38b.md) | 108 | `result-track:3ed860c7b531e2f8fe14b38b490caaf699a5dd892a8ae375bffc454d13ba0d60` |
| 8 | `theorem` | [TendstoUniformlyOn.continuousOn](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/tendstouniformlyon-continuouson--60e3ca600ec8809b655d2cf9.md) | 117 | `result-track:60e3ca600ec8809b655d2cf90e5490b0a36aa44f38fce8a622491dd9c3db3e45` |
| 9 | `theorem` | [TendstoLocallyUniformly.continuous](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/tendstolocallyuniformly-continuous--a9ec2d44d907217bedefb709.md) | 122 | `result-track:a9ec2d44d907217bedefb70994eca93755c0ffca29de41219885312f77c967e8` |
| 10 | `theorem` | [TendstoUniformly.continuous](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/tendstouniformly-continuous--201ba0196eab59b7e61f74ba.md) | 128 | `result-track:201ba0196eab59b7e61f74ba5aed3cc2b9e215f3856e9a28b703fb69af291efc` |
| 11 | `theorem` | [tendsto_comp_of_locally_uniform_limit_within](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/tendsto-comp-of-locally-uniform-limit-within--c4a43752275151fa5157f03b.md) | 144 | `result-track:c4a43752275151fa5157f03b34e07e46e992d8385454c52cbb180303fd0b112c` |
| 12 | `theorem` | [tendsto_comp_of_locally_uniform_limit](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/tendsto-comp-of-locally-uniform-limit--74e52b1bccea28393a4d4358.md) | 157 | `result-track:74e52b1bccea28393a4d4358121ec0767101278905327bba05ce7bc2a0a5c460` |
| 13 | `theorem` | [TendstoLocallyUniformlyOn.tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/tendstolocallyuniformlyon-tendsto-comp--d03faab514908d019f912d70.md) | 166 | `result-track:d03faab514908d019f912d701ee423da2626da795aab8850fc1a87f9587f4c16` |
| 14 | `theorem` | [TendstoUniformlyOn.tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/tendstouniformlyon-tendsto-comp--1fa54844c8aa8f8577364ec0.md) | 173 | `result-track:1fa54844c8aa8f8577364ec0e771bf682b23b0a3f9c3ee6cc957c52ffc60a68c` |
| 15 | `theorem` | [TendstoLocallyUniformly.tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/tendstolocallyuniformly-tendsto-comp--910dab93abc2801c949a3cfe.md) | 179 | `result-track:910dab93abc2801c949a3cfeed9030136235044a983f251d2b7841be0bcad1f0` |
| 16 | `theorem` | [TendstoUniformly.tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/tendstouniformly-tendsto-comp--6c03294e21e39207fdb2a1fe.md) | 184 | `result-track:6c03294e21e39207fdb2a1fecc6032c025d659bc42a2721ee8220aa135752498` |
| 17 | `theorem` | [uniformContinuousOn_of_uniform_approx_of_uniformContinuousOn](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/uniformcontinuouson-of-uniform-approx-of-uniformcontinuouson--70048bc7b0c2ec9d3ac010f2.md) | 197 | `result-track:70048bc7b0c2ec9d3ac010f239550a9239511c4138b2351260736fb10fedfd37` |
| 18 | `theorem` | [uniformContinuous_of_uniform_approx_of_uniformContinuous](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/uniformcontinuous-of-uniform-approx-of-uniformcontinuous--babfce7c36af333ae9ae856b.md) | 210 | `result-track:babfce7c36af333ae9ae856bdebc1f372463d379ed3e40eb061cb05948d46682` |
| 19 | `theorem` | [TendstoUniformlyOn.uniformContinuousOn](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/tendstouniformlyon-uniformcontinuouson--793e794e78d8964e1e658f13.md) | 218 | `result-track:793e794e78d8964e1e658f1308d41762d8feb56fb95717a26dd12d27cf6752e3` |
| 20 | `theorem` | [TendstoUniformly.uniformContinuous](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant7be287f12f3f369243dba3b8c9818361c96c63ce32cabfd5f1626b315c268d71.lean/declarations/tendstouniformly-uniformcontinuous--fef5bc1fa8bbcf50fc001273.md) | 225 | `result-track:fef5bc1fa8bbcf50fc001273fead9896f124250b04e2af477af55dc4535a76aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
