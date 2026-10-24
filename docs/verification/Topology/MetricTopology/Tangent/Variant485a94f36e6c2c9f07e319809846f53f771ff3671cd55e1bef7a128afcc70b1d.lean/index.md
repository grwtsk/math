# Verification target: GRWTSK.Topology.MetricTopology.Tangent.Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8587b5704cea9ebd2b1c294c5d42fff1cb668b0b",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8587b5704cea9ebd2b1c294c5d42fff1cb668b0b`.

Source path: `GRWTSK/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Sphere.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orthRadius](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/orthradius--73b4bf6adf97a6202a4430e5.md) | 63 | `declaration-track:73b4bf6adf97a6202a4430e5d9fe79dfe133499aa087d8ef29d8fa36d6b72946` |
| 2 | `lemma` | [self_mem_orthRadius](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/self-mem-orthradius--95a3d7ba36fdfdcd516f587f.md) | 65 | `result-track:95a3d7ba36fdfdcd516f587fd212ad1d6d6de125c9cae345e3412638c750e24e` |
| 3 | `lemma` | [mem_orthRadius_iff_inner_left](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/mem-orthradius-iff-inner-left--cdbb547a2667451f08f24841.md) | 68 | `result-track:cdbb547a2667451f08f24841cc9dac86cd903ad362a5292e1aa2058a5e1916e5` |
| 4 | `lemma` | [mem_orthRadius_iff_inner_right](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/mem-orthradius-iff-inner-right--1448e3be73b664357d251a50.md) | 72 | `result-track:1448e3be73b664357d251a5063eef455e473585818ddd0caa3b609437aa8e037` |
| 5 | `lemma` | [direction_orthRadius](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/direction-orthradius--2202ca8f3c9de1dca80e5c93.md) | 76 | `result-track:2202ca8f3c9de1dca80e5c93da5cae8939fd993a98e1efecca016cff948d137d` |
| 6 | `lemma` | [orthRadius_center](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/orthradius-center--21c2945636636848d76ab5c5.md) | 80 | `result-track:21c2945636636848d76ab5c5010314b7923dabbc44fd88698cce2704f3f44a92` |
| 7 | `lemma` | [center_mem_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/center-mem-orthradius-iff--02e40df292ba3efb0d9c165f.md) | 83 | `result-track:02e40df292ba3efb0d9c165fa6c81d6ed8d1ea73e412b4c8ab869c49391f3420` |
| 8 | `lemma` | [orthRadius_le_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/orthradius-le-orthradius-iff--5d2091e2199384f5a8b85a61.md) | 88 | `result-track:5d2091e2199384f5a8b85a61a069b358027336befef91982c4d5420441d6b546` |
| 9 | `lemma` | [orthRadius_eq_orthRadius_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/orthradius-eq-orthradius-iff--c67fef815f3c5a0ad1dba5a6.md) | 115 | `result-track:c67fef815f3c5a0ad1dba5a6236b3625e5ed6064950bcac8fe6a83e83e6dd869` |
| 10 | `structure` | [IsTangentAt](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/istangentat--18124e3c464ca231bce70e4e.md) | 127 | `declaration-track:18124e3c464ca231bce70e4e87606570539881ea5d836b715f3d2154cd1bdef7` |
| 11 | `lemma` | [isTangentAt_orthRadius_iff_mem](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/istangentat-orthradius-iff-mem--c125d8a917fd5a207cbb237d.md) | 132 | `result-track:c125d8a917fd5a207cbb237dfc39abb9c2145adf8ed981da55f4460c563518a5` |
| 12 | `lemma` | [IsTangentAt.inner_left_eq_zero_of_mem](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/istangentat-inner-left-eq-zero-of-mem--3a1bf2f42cc729998db77fb7.md) | 136 | `result-track:3a1bf2f42cc729998db77fb7f929d43adf00eb969bc79df5c67e9a1ed0e04e62` |
| 13 | `lemma` | [IsTangentAt.inner_right_eq_zero_of_mem](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/istangentat-inner-right-eq-zero-of-mem--6c2813e2bd21d155fa9b42c4.md) | 140 | `result-track:6c2813e2bd21d155fa9b42c47d9bf442c03ef6b92d3160b611234f505138ee2a` |
| 14 | `lemma` | [IsTangentAt.eq_of_isTangentAt](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/istangentat-eq-of-istangentat--fe71cec13966690b9cb50142.md) | 144 | `result-track:fe71cec13966690b9cb501421229ed483503f9b229a03cd2b9cba1a0e106772b` |
| 15 | `lemma` | [isTangentAt_center_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/istangentat-center-iff--e8a6a6a1fa6d060e6765438a.md) | 152 | `result-track:e8a6a6a1fa6d060e6765438a160c797918276da827d13bbe71b52428955e2f4f` |
| 16 | `def` | [IsTangent](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/istangent--a085da2554c8360b3e8028d5.md) | 164 | `declaration-track:a085da2554c8360b3e8028d5a209eac6253f90068697d7b87c740918a4704a07` |
| 17 | `lemma` | [IsTangentAt.isTangent](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/istangentat-istangent--d6cc17187f71a3d1d2dfffb2.md) | 167 | `result-track:d6cc17187f71a3d1d2dfffb20b9d4294f4accc0bec2b51ed5372b23a6913b052` |
| 18 | `lemma` | [isTangent_orthRadius_iff_mem](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/istangent-orthradius-iff-mem--644b90039fa819a18847234d.md) | 171 | `result-track:644b90039fa819a18847234d2a14e63f8c1bb9acf399f6079c485458364f6d22` |
| 19 | `def` | [tangentSet](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/tangentset--b96532bf8c52ab5af5d71175.md) | 182 | `declaration-track:b96532bf8c52ab5af5d71175a238f1c76ddf343b34cb7b9f48bb961ecb81232f` |
| 20 | `lemma` | [mem_tangentSet_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/mem-tangentset-iff--fb928e2da5f7d63a00821ba2.md) | 185 | `result-track:fb928e2da5f7d63a00821ba29b46ffdfe1d2caf9c65b6ff0468422949911632f` |
| 21 | `lemma` | [isTangent_of_mem_tangentSet](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/istangent-of-mem-tangentset--a21007c470ddc797ad4f65f2.md) | 189 | `result-track:a21007c470ddc797ad4f65f296d569fc53d792a66656e6e97d1ab40799a15c38` |
| 22 | `def` | [tangentsFrom](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/tangentsfrom--c146c374615db3fd3c6dd86c.md) | 195 | `declaration-track:c146c374615db3fd3c6dd86cd523d6a256903e8f7fd7e99f635cb4bc9a79b295` |
| 23 | `lemma` | [mem_tangentsFrom_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/mem-tangentsfrom-iff--5a4175d84dc58fab83ce8486.md) | 198 | `result-track:5a4175d84dc58fab83ce8486190468861c26ddba44b58b29deb5862a1c61d145` |
| 24 | `lemma` | [mem_tangentSet_of_mem_tangentsFrom](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/mem-tangentset-of-mem-tangentsfrom--8adab2a5bd1997d1fe4bab4b.md) | 202 | `result-track:8adab2a5bd1997d1fe4bab4b20bca4195c2b837586f05c77a0d99a5b7e859da6` |
| 25 | `lemma` | [mem_of_mem_tangentsFrom](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/mem-of-mem-tangentsfrom--018ad9fa2eb3481ec4d321f0.md) | 206 | `result-track:018ad9fa2eb3481ec4d321f0e91228f11b1b86279b475b6a8d613c688d09bd7a` |
| 26 | `lemma` | [isTangent_of_mem_tangentsFrom](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/istangent-of-mem-tangentsfrom--6f3f0921486877155d211078.md) | 210 | `result-track:6f3f0921486877155d2110787b2c18cddfa8fd83bb1937b242c4e619d3f2c873` |
| 27 | `def` | [commonTangents](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/commontangents--66319816e5c36bfa728f428c.md) | 215 | `declaration-track:66319816e5c36bfa728f428cc169b8388fe363290ab24b70ff5bc286203fed54` |
| 28 | `lemma` | [mem_commonTangents_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/mem-commontangents-iff--bd050a492eefc633b6ded0cc.md) | 218 | `result-track:bd050a492eefc633b6ded0ccfe302f52ae2686c5a306b0df2fc43f30c642ec97` |
| 29 | `lemma` | [commonTangents_comm](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/commontangents-comm--4eef57436bc1e761a7865277.md) | 222 | `result-track:4eef57436bc1e761a7865277ac36b8932b431a5f005fd1f2487e45cdf1983364` |
| 30 | `def` | [commonIntTangents](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/commoninttangents--00522053f913108633615504.md) | 227 | `declaration-track:00522053f9131086336155043b404260c4b5d6820902c5bc8a16ef7f4169c7e2` |
| 31 | `def` | [commonExtTangents](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/commonexttangents--aea659d115bdc6734f83eb74.md) | 234 | `declaration-track:aea659d115bdc6734f83eb748a192343e6e00b2dbebcd411c4677ade4c456a31` |
| 32 | `lemma` | [mem_commonIntTangents_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/mem-commoninttangents-iff--7a0eaf3ccc9b5feae4c8df43.md) | 237 | `result-track:7a0eaf3ccc9b5feae4c8df43bd8d25b46e93ec1fc53d8b3f618921c2f87e004e` |
| 33 | `lemma` | [mem_commonExtTangents_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/mem-commonexttangents-iff--06a15dde3ab0c480a212a637.md) | 242 | `result-track:06a15dde3ab0c480a212a637642afe4fd4ed33c035673e4130b4b2625601d773` |
| 34 | `lemma` | [commonIntTangents_union_commonExtTangents](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/commoninttangents-union-commonexttangents--724efe82c56180b19fc34c69.md) | 247 | `result-track:724efe82c56180b19fc34c692f52aea383185d4364e4226ce56f6d2da2e01339` |
| 35 | `structure` | [IsExtTangentAt](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isexttangentat--90afb88c7744dc62094fbb6a.md) | 261 | `declaration-track:90afb88c7744dc62094fbb6a0fae99ee47c86ce6ed7e51f9857422fcca532d14` |
| 36 | `lemma` | [IsExtTangentAt.symm](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isexttangentat-symm--b2bea867d5795c4095ff5069.md) | 266 | `result-track:b2bea867d5795c4095ff506922d2d2c96e22f5a82dbbccf4cd21c8b2d0745094` |
| 37 | `lemma` | [isExtTangentAt_comm](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isexttangentat-comm--9584309b38e7b47043e1eb94.md) | 272 | `result-track:9584309b38e7b47043e1eb940519fa0cf9f73bad7985464a5719966cfa9226c7` |
| 38 | `lemma` | [isExtTangentAt_center_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isexttangentat-center-iff--e8c6c0b693fd0b9e74d456ba.md) | 276 | `result-track:e8c6c0b693fd0b9e74d456bad532cec32802474e0592f41c5d696a937b6acf41` |
| 39 | `structure` | [IsIntTangentAt](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isinttangentat--5cabfb9f3c1164dde8e47f9e.md) | 290 | `declaration-track:5cabfb9f3c1164dde8e47f9e028d714616bf343b954c1ddf18ef825cb88ed632` |
| 40 | `lemma` | [isIntTangentAt_center_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isinttangentat-center-iff--8cc15034680544fd0a370f4d.md) | 295 | `result-track:8cc15034680544fd0a370f4d38e7e8bff249c20d76f5c65ac6a2f48ddfb99410` |
| 41 | `lemma` | [isIntTangentAt_self_iff_mem](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isinttangentat-self-iff-mem--6d7989fd36fdc568ace40e40.md) | 306 | `result-track:6d7989fd36fdc568ace40e40054c6786bfc20fc355501bb0df1eb8d83f0d98d6` |
| 42 | `def` | [IsExtTangent](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isexttangent--1042a82f56b9ce57276c7603.md) | 311 | `declaration-track:1042a82f56b9ce57276c76034e11e60d3adf8189cd91a43d17bcfc9e57d4e5f4` |
| 43 | `lemma` | [IsExtTangent.symm](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isexttangent-symm--da217fb3cd38de4cd46736b7.md) | 314 | `result-track:da217fb3cd38de4cd46736b74943fd9f8140a83bf87b4f805d8106a09edb8305` |
| 44 | `lemma` | [isExtTangent_comm](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isexttangent-comm--5fca82656486e26adce7cb2d.md) | 318 | `result-track:5fca82656486e26adce7cb2de55b12d50a62e27437a3cce91ed74e05241c1b2c` |
| 45 | `def` | [IsIntTangent](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isinttangent--aaa91e5ba79bdbd6e7402579.md) | 322 | `declaration-track:aaa91e5ba79bdbd6e740257992010dbab7e4cdfeaaccf3464fc88ca12ba1221a` |
| 46 | `lemma` | [IsExtTangentAt.isExtTangent](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isexttangentat-isexttangent--5f5f61927228367ba1eaabf3.md) | 325 | `result-track:5f5f61927228367ba1eaabf3598769e7dccc0d1854ec0b596c63bcee4655d749` |
| 47 | `lemma` | [IsIntTangentAt.isIntTangent](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isinttangentat-isinttangent--e0a96feb2c0ed4c6e4228125.md) | 329 | `result-track:e0a96feb2c0ed4c6e422812565e8c95ed4480ad7fe856b02be31f300f20d4d9b` |
| 48 | `lemma` | [isIntTangent_self_iff](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isinttangent-self-iff--e3cbd3c4e706d971e5501aa5.md) | 333 | `result-track:e3cbd3c4e706d971e5501aa584e8a8c006cc35a99d1ecc79b5dcf736ef5d4269` |
| 49 | `lemma` | [IsExtTangent.dist_center](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isexttangent-dist-center--58de4f148089ca3f20801c4d.md) | 339 | `result-track:58de4f148089ca3f20801c4dfd25655bc31a92ade918217064b3890267bfa0ee` |
| 50 | `lemma` | [IsIntTangent.dist_center](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isinttangent-dist-center--271b5e645409a152c11c8a58.md) | 345 | `result-track:271b5e645409a152c11c8a584894ae8bbdd50ca7d1f469a6b7290921c6f1c763` |
| 51 | `lemma` | [isExtTangent_iff_dist_center](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isexttangent-iff-dist-center--62927568862518329fafe8ab.md) | 351 | `result-track:62927568862518329fafe8ab34047f2fe8e65e6a8bf61e9759ce995488f81af1` |
| 52 | `lemma` | [isIntTangent_iff_dist_center](../../../../../mathematics/Topology/MetricTopology/Tangent/Variant485a94f36e6c2c9f07e319809846f53f771ff3671cd55e1bef7a128afcc70b1d.lean/declarations/isinttangent-iff-dist-center--af6e7fd36ef0ade1729b2c17.md) | 375 | `result-track:af6e7fd36ef0ade1729b2c17dbfd3d56a8d99ff7b7dc190b9c6b88da5d86ee2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
