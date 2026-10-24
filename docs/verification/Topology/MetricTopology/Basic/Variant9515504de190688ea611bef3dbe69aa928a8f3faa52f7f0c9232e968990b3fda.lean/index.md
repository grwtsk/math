# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a795decc1e67d207cc38ea61f6d0adc4f339ca9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a795decc1e67d207cc38ea61f6d0adc4f339ca9`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean.json)

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
| 1 | `class` | [IsUltrametricDist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/isultrametricdist--25efc5669f1d4810f14481c2.md) | 54 | `declaration-track:25efc5669f1d4810f14481c2c244bf23c6e4a18daf87e29f2a27f751b1f9625e` |
| 2 | `lemma` | [dist_triangle_max](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/dist-triangle-max--90e9fd8b400bfa220b7dbd61.md) | 61 | `result-track:90e9fd8b400bfa220b7dbd61cda29c1d0bfb4f80c9e0da27f8efb2cf3f7e9520` |
| 3 | `lemma` | [dist_eq_max_of_dist_ne_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/dist-eq-max-of-dist-ne-dist--9bc8448628cf1c99ee411b82.md) | 67 | `result-track:9bc8448628cf1c99ee411b8225a5d315dd61d573da3d7f5d746d25fe18a30676` |
| 4 | `instance` | [subtype](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/subtype--8bbc67cea23bef8c2a0ce636.md) | 78 | `declaration-track:8bbc67cea23bef8c2a0ce636f5121e4e3491d5bb4bcf6766c391d726fbe9fd55` |
| 5 | `lemma` | [ball_eq_of_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/ball-eq-of-mem--7449684bef25fb44eb6efda9.md) | 81 | `result-track:7449684bef25fb44eb6efda97adff92ccb2d287479d653578aa3b346d75b650e` |
| 6 | `lemma` | [ball_subset_trichotomy](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/ball-subset-trichotomy--6e1f029bd371527469fac2da.md) | 87 | `result-track:6e1f029bd371527469fac2daff005856d599491059f5385a8f779b55e8f84dda` |
| 7 | `lemma` | [ball_eq_or_disjoint](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/ball-eq-or-disjoint--f887613205cc0336fb4b2645.md) | 97 | `result-track:f887613205cc0336fb4b26456cdc6fe50f13726a9f24c953dbf21e16fc83a0e6` |
| 8 | `lemma` | [closedBall_eq_of_mem](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/closedball-eq-of-mem--ea082832fd94b0cdf1525411.md) | 104 | `result-track:ea082832fd94b0cdf1525411917908b28b0233c7e39818fe170473bdb7a88af4` |
| 9 | `lemma` | [closedBall_subset_trichotomy](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/closedball-subset-trichotomy--d764a4501ebd863b5cb4a5a8.md) | 111 | `result-track:d764a4501ebd863b5cb4a5a86cad292df13093677e5aaaa7be504bca7d155be0` |
| 10 | `lemma` | [isClosed_ball](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/isclosed-ball--82ed989c2c91a5e60fb0d5e1.md) | 123 | `result-track:82ed989c2c91a5e60fb0d5e1b97de76b6610986c6c7fb28c89cb119f15e0e84c` |
| 11 | `lemma` | [isClopen_ball](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/isclopen-ball--568fb4cb09cbe97248358b58.md) | 139 | `result-track:568fb4cb09cbe97248358b58fd29150d6fe980d9b019691e9cc579752018fe56` |
| 12 | `lemma` | [frontier_ball_eq_empty](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/frontier-ball-eq-empty--ed7703c129f9569d8ac2dc76.md) | 141 | `result-track:ed7703c129f9569d8ac2dc7664c3fe2af455c94207924e0272bda2aeacfbdc73` |
| 13 | `lemma` | [closedBall_eq_or_disjoint](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/closedball-eq-or-disjoint--7a53555e0853e22a2d45c6f1.md) | 144 | `result-track:7a53555e0853e22a2d45c6f1763150aab21c398634d39527afaeaf3db47ea98a` |
| 14 | `lemma` | [isOpen_closedBall](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/isopen-closedball--a09a1224d33a5ede3d899f34.md) | 152 | `result-track:a09a1224d33a5ede3d899f3494e46e7f59824c808dc7abe7198d232312577448` |
| 15 | `lemma` | [isClopen_closedBall](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/isclopen-closedball--fa9d5c7effa46f577f601b22.md) | 167 | `result-track:fa9d5c7effa46f577f601b22201d07e248879ab1f92daa450892071e529561e3` |
| 16 | `lemma` | [frontier_closedBall_eq_empty](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/frontier-closedball-eq-empty--827dbc423d0f3fa9891e1963.md) | 170 | `result-track:827dbc423d0f3fa9891e1963f2ea87d6411847bac53b90479325c9f823bdeaff` |
| 17 | `lemma` | [isOpen_sphere](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/isopen-sphere--780e8a78549247f2cba35c8f.md) | 173 | `result-track:780e8a78549247f2cba35c8f054354803236ee19243092a82d4ee98c2b93daea` |
| 18 | `lemma` | [isClopen_sphere](../../../../../mathematics/Topology/MetricTopology/Basic/Variant9515504de190688ea611bef3dbe69aa928a8f3faa52f7f0c9232e968990b3fda.lean/declarations/isclopen-sphere--7661b78e028dc8f6a861b553.md) | 177 | `result-track:7661b78e028dc8f6a861b553651266fd89ea15e441b2cc0050a58a491adfe656` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
