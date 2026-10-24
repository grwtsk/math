# Verification target: GRWTSK.Topology.MetricTopology.GromovHausdorffRealized.Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82db927467f984768136129aec9fe25b31eb2a38",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82db927467f984768136129aec9fe25b31eb2a38`.

Source path: `GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Gluing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Bounded` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProdSpaceFun](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/prodspacefun--392901349f41391e82c7b628.md) | 74 | `declaration-track:392901349f41391e82c7b628a37ff59357573a1df7b75527483dd33e4f7b7ae9` |
| 2 | `def` | [Cb](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/cb--bf46e9b70722e2cdb85f7fcd.md) | 78 | `declaration-track:bf46e9b70722e2cdb85f7fcd1625adec537d5f59390aa71a955a46cb5c18c43b` |
| 3 | `def` | [maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/maxvar--14dc8f01a2841bc003266d8d.md) | 81 | `declaration-track:14dc8f01a2841bc003266d8d08beeee6bbd3a209ab76297ad2ea8b988bef6412` |
| 4 | `theorem` | [one_le_maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/one-le-maxvar--73841c7356eb3d3e4d717c53.md) | 84 | `result-track:73841c7356eb3d3e4d717c5307f4d22593d04cf2e6e4e5e6fc1b40febdd0ad15` |
| 5 | `def` | [candidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidates--80d0a7a2456f6d2d272e13fc.md) | 91 | `declaration-track:80d0a7a2456f6d2d272e13fc79a79cf4f1094bd9c4cb978fb5f158092069a9a1` |
| 6 | `def` | [candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidatesb--23001cd19cd17d90ab974e5d.md) | 101 | `declaration-track:23001cd19cd17d90ab974e5dc2f170f395085f52b45a98e14609c6bb0b065b10` |
| 7 | `theorem` | [maxVar_bound](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/maxvar-bound--4311616cb195f86f2ae05252.md) | 113 | `result-track:4311616cb195f86f2ae0525214208d0743abdc3c957a55edb650c20977e1d948` |
| 8 | `theorem` | [candidates_symm](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidates-symm--60dda563f1f2f26506e69853.md) | 128 | `result-track:60dda563f1f2f26506e69853f7cc8ce6563a6716670d7b6193ee641cade591c6` |
| 9 | `theorem` | [candidates_triangle](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidates-triangle--bae698f6dd5c7e73c9d07545.md) | 131 | `result-track:bae698f6dd5c7e73c9d07545bd54fa15bd3226ee7a56c05f6697f3d45cb54821` |
| 10 | `theorem` | [candidates_refl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidates-refl--a9cabe9fb2caf2d6e138f002.md) | 134 | `result-track:a9cabe9fb2caf2d6e138f002774530be109e19ac389b39f4fed0cd375962c2de` |
| 11 | `theorem` | [candidates_nonneg](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidates-nonneg--f17d39625567309afa77e55f.md) | 137 | `result-track:f17d39625567309afa77e55f01ae71200f87c085fb30d1241fd0182831836454` |
| 12 | `theorem` | [candidates_dist_inl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidates-dist-inl--2c6ba586216e082e00d4fa89.md) | 146 | `result-track:2c6ba586216e082e00d4fa894c2c9a4a33cdb39fc5482b29af19141d49d68330` |
| 13 | `theorem` | [candidates_dist_inr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidates-dist-inr--c13f54f2fac6c447bd898c24.md) | 150 | `result-track:c13f54f2fac6c447bd898c2480511591f431582555c90e14ba8a6cd45f20750a` |
| 14 | `theorem` | [candidates_le_maxVar](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidates-le-maxvar--5edc5ef614d1c796fc632fff.md) | 154 | `result-track:5edc5ef614d1c796fc632fffa263cd8982e19ca370b118b2bbe426f960c27b9c` |
| 15 | `theorem` | [candidates_dist_bound](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidates-dist-bound--ffa974986be8d674729e882f.md) | 158 | `result-track:ffa974986be8d674729e882f4a5ff45b7afbe1d8f77d16e0391bd315b97c90d4` |
| 16 | `theorem` | [candidates_lipschitz_aux](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidates-lipschitz-aux--3d1c0e20750a6cdaee27abee.md) | 188 | `result-track:3d1c0e20750a6cdaee27abeef8e4a04b5f31da85982b47fe896dc34a04d7b3ca` |
| 17 | `theorem` | [candidates_lipschitz](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidates-lipschitz--6dd80cb156fc9e59250539af.md) | 206 | `result-track:6dd80cb156fc9e59250539af3136e06e87e936a35e91169ed1632273daa31ae2` |
| 18 | `def` | [candidatesBOfCandidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidatesbofcandidates--8607796f6270a7ea99e0e8b2.md) | 216 | `declaration-track:8607796f6270a7ea99e0e8b21e23080be3494f39cf8b410a5b5d9c8da30cdc04` |
| 19 | `theorem` | [candidatesBOfCandidates_mem](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidatesbofcandidates-mem--367cc697100e29b1f56613f8.md) | 220 | `result-track:367cc697100e29b1f56613f8a78a197818c0354bcfcb2b38835b8e7fbf5f7fa1` |
| 20 | `theorem` | [dist_mem_candidates](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/dist-mem-candidates--69de44dc82abafd1e7c03cdf.md) | 226 | `result-track:69de44dc82abafd1e7c03cdfaaf42e40f67252217df0e8977731451cfd33f149` |
| 21 | `def` | [candidatesBDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidatesbdist--1a7b871f1b7fa30f7d0e3181.md) | 233 | `declaration-track:1a7b871f1b7fa30f7d0e3181bd20b6c2c8c79a55978970fce8f4c3f5c3315555` |
| 22 | `theorem` | [candidatesBDist_mem_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidatesbdist-mem-candidatesb--6196a4292911c63f9705e8fd.md) | 238 | `result-track:6196a4292911c63f9705e8fd1fc3a4e69d70709b882d61b5280da0f2b7a35a9a` |
| 23 | `theorem` | [candidatesB_nonempty](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/candidatesb-nonempty--3005aec7b5dc4f24e76f7379.md) | 242 | `result-track:3005aec7b5dc4f24e76f7379e3d4597ab0022c5ead0efe1f832435496dfb8760` |
| 24 | `theorem` | [closed_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/closed-candidatesb--fba16f14eb1b9509a01be129.md) | 247 | `result-track:fba16f14eb1b9509a01be129b0d376e227bb3fac6012fc863053e1c6fd600f6f` |
| 25 | `theorem` | [isCompact_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/iscompact-candidatesb--6a7dc95e3c45fcd40230ce57.md) | 276 | `result-track:6a7dc95e3c45fcd40230ce57e963a907e3ee70af5c6c95d59028ab10d5ee4fac` |
| 26 | `def` | [HD](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/hd--3973d9aa98346a44e149deff.md) | 292 | `declaration-track:3973d9aa98346a44e149deffbe8c4c185e4abfcfe35784d3d68e653f024dccfa` |
| 27 | `theorem` | [HD_below_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/hd-below-aux1--a747fa3ce219500adfb96b57.md) | 301 | `result-track:a747fa3ce219500adfb96b57a42eee95c333536a01deb73b9e1614ef7015dbbf` |
| 28 | `theorem` | [HD_bound_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/hd-bound-aux1--335261ad7d8d96284fd83810.md) | 307 | `result-track:335261ad7d8d96284fd83810c8ec306ac20b82bfa767ade83149bd63f84f334a` |
| 29 | `theorem` | [HD_below_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/hd-below-aux2--5b5a2d8f0d1c757aca30e1c2.md) | 315 | `result-track:5b5a2d8f0d1c757aca30e1c2189ac25c82f8d41b85830d379e891479d03c381d` |
| 30 | `theorem` | [HD_bound_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/hd-bound-aux2--27604139193b99d6a409415f.md) | 321 | `result-track:27604139193b99d6a409415faa7a366ae4bfc933a03f3108740aedaf4225de20` |
| 31 | `theorem` | [HD_candidatesBDist_le](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/hd-candidatesbdist-le--373459603ce082032e589969.md) | 331 | `result-track:373459603ce082032e589969b7fcf642e75b2a5d11cd0bac3fad88cd3a78db3a` |
| 32 | `theorem` | [HD_lipschitz_aux1](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/hd-lipschitz-aux1--94d9a7121d5d1794ddc5f0d9.md) | 356 | `result-track:94d9a7121d5d1794ddc5f0d9995cdd2200426924eebec6397f630f14dc5c08d5` |
| 33 | `theorem` | [HD_lipschitz_aux2](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/hd-lipschitz-aux2--382d4b4786d400a3ec1c21d0.md) | 384 | `result-track:382d4b4786d400a3ec1c21d0776d44e3d8e88cfb6177c196906d81fb6e78dcfd` |
| 34 | `theorem` | [HD_lipschitz_aux3](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/hd-lipschitz-aux3--9d21b30a238b16a3a2e2ef0c.md) | 412 | `result-track:9d21b30a238b16a3a2e2ef0c96943bd982bb9f79948553d52fb383b8277254ca` |
| 35 | `theorem` | [HD_continuous](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/hd-continuous--20a041183d1df8abf127568c.md) | 417 | `result-track:20a041183d1df8abf127568c21afe7b4895a13e04265b0393321c643e3f27794` |
| 36 | `theorem` | [exists_minimizer](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/exists-minimizer--bb10008bec5e5d71d565b392.md) | 430 | `result-track:bb10008bec5e5d71d565b392bbbfbb665ac189a353d43c8ff2009831c517d72c` |
| 37 | `def` | [optimalGHDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/optimalghdist--0c5aaa39d76f3e4c67afcb10.md) | 433 | `declaration-track:0c5aaa39d76f3e4c67afcb10070068b97e837aa68e04c8c1eded3249b709471a` |
| 38 | `theorem` | [optimalGHDist_mem_candidatesB](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/optimalghdist-mem-candidatesb--b074115f896950bc33a87b5c.md) | 436 | `result-track:b074115f896950bc33a87b5cc1c55d165437596404629594686cd534db2ceb92` |
| 39 | `theorem` | [HD_optimalGHDist_le](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/hd-optimalghdist-le--b84b8bc1e1d9b55cefe9e00d.md) | 440 | `result-track:b84b8bc1e1d9b55cefe9e00d7d913be2b50b28ac959974067da42070c62dd008` |
| 40 | `def` | [premetricOptimalGHDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/premetricoptimalghdist--aa38eb0b86658484ba5694f7.md) | 448 | `declaration-track:aa38eb0b86658484ba5694f7203cf7c5437d61a64651324f581b222e510a3446` |
| 41 | `def` | [OptimalGHCoupling](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/optimalghcoupling--56a0f1fe775cb23b9d1bffb6.md) | 465 | `declaration-track:56a0f1fe775cb23b9d1bffb61ec601f1c7f4adcfa5fddef8840e7584303dcce8` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/instance--200e9073089d145b8be8f415.md) | 469 | `declaration-track:200e9073089d145b8be8f4155eaef628524050488c59dcd7e537d0a6b59e14bc` |
| 43 | `def` | [optimalGHInjl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/optimalghinjl--3651fec0f8779171261e9857.md) | 474 | `declaration-track:3651fec0f8779171261e98576a68578e58182f2499279cd120469716f93bd7b4` |
| 44 | `theorem` | [isometry_optimalGHInjl](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/isometry-optimalghinjl--ee5f23004b31c5521063d612.md) | 479 | `result-track:ee5f23004b31c5521063d61278dac102fd1a6ae5ba1786632c7266a62d907b76` |
| 45 | `def` | [optimalGHInjr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/optimalghinjr--57688b0bb102c33963225e19.md) | 484 | `declaration-track:57688b0bb102c33963225e194e9f3b7897cf75920a2694d7b4c77c0ab68cb5ff` |
| 46 | `theorem` | [isometry_optimalGHInjr](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/isometry-optimalghinjr--91ca8f023602e6b81d8903d8.md) | 489 | `result-track:91ca8f023602e6b81d8903d8cf67dc89fe6148bfd1ce8983ad6e785418157da9` |
| 47 | `instance` | [compactSpace_optimalGHCoupling](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/compactspace-optimalghcoupling--a0b9eaf79f5584ba1d8d52fe.md) | 494 | `declaration-track:a0b9eaf79f5584ba1d8d52fe48ef379036e497c1dc05d5eee9c89a6b408d44db` |
| 48 | `theorem` | [hausdorffDist_optimal_le_HD](../../../../../mathematics/Topology/MetricTopology/GromovHausdorffRealized/Variant4e77d1e66d007eb510613800223a8b48eefc43c4e8296b3037cc71742ddff889.lean/declarations/hausdorffdist-optimal-le-hd--42f9380a60e5c7246feb285e.md) | 504 | `result-track:42f9380a60e5c7246feb285e4ee4d208436c99109ff314c6579fd1d329246ab5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
