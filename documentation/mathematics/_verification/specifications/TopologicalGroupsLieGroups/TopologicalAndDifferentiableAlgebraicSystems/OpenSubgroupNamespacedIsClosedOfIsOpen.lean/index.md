# Verification target: Open Subgroup Namespaced Is Closed Of Is Open

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50595f09d50a3d32037ed65853a87615d4e61f43",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50595f09d50a3d32037ed65853a87615d4e61f43`.

Source path: `GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Quotient` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OpenAddSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/openaddsubgroup.md) | 47 | `declaration-track:13093b8884ef0b421dcf62e7d6e5516c09d0be2c86b60c7e6e200891d24bda4a` |
| 2 | `structure` | [OpenSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/opensubgroup.md) | 52 | `declaration-track:6c198f7e434a377b263457760f9fef1556525db48367c3d4969eeb72325f8544` |
| 3 | `instance` | [hasCoeSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/hascoesubgroup.md) | 69 | `declaration-track:376e96dfff4ffd66e7120b0f9b0c72963781ff36ae08e41064504aca8f312921` |
| 4 | `theorem` | [toSubgroup_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/tosubgroup-injective-source-edition-2.md) | 73 | `result-track:87ce00a78df642870073ceb288674ee9f35de1faaa9a7484f52f40ee7b15f7b7` |
| 5 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-14.md) | 77 | `declaration-track:d8458f6e37ec78b084f32a0d6ddcfd76410dd08046429ffe14af4f24d703b3dd` |
| 6 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:03cf1971798eaa3da98fd0adc49e344ce7a1f5ed9ed7b6ce9220dac4a8cc4712` |
| 7 | `def` | [toOpens](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/toopens.md) | 89 | `declaration-track:ca1fed4aec3c6421ecbacd4a1251755ed36c5729e59f0e9c21907fc537b5a2f9` |
| 8 | `instance` | [hasCoeOpens](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/hascoeopens.md) | 92 | `declaration-track:090271dde42bd646b549d68b82f7ee6234f4ba6d5a263eb4861360d05e36b5da` |
| 9 | `theorem` | [coe_toOpens](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/coe-toopens.md) | 95 | `result-track:921f0f0ca62736627023d007fc87a2392926d2cc165aaad5f39bd9c6cc80ec24` |
| 10 | `theorem` | [coe_toSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/coe-tosubgroup.md) | 99 | `result-track:f4d8cb09eccbe54bbf077fd57c43573e0d126907c85410aa6ec7c32a245b0ece` |
| 11 | `theorem` | [mem_toOpens](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/mem-toopens.md) | 102 | `result-track:1e114b80b78e77a1a53a585e31eab0b40abf71ae5a1b60095e40a3fa3cc6fc55` |
| 12 | `theorem` | [mem_toSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/mem-tosubgroup.md) | 105 | `result-track:d5cea9473107951ad47c0c42e6752164de3fc2e9ddcaf36541abe60aa2debdec` |
| 13 | `theorem` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/ext.md) | 108 | `result-track:51a6174a51d45d9b9557dd17bb0e1433ff5a600513090e081e16ccde98e9023f` |
| 14 | `theorem` | [isOpen](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/isopen.md) | 114 | `result-track:05462bd9bc89e4eeb0482acbe13d1669ce3b6b93ea72756e01ec800dbe515ccc` |
| 15 | `theorem` | [mem_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/mem-nhds-one.md) | 118 | `result-track:b5301c2373c368ae70a08b0098370b1197374429502cf3606fe0315f9473fcb7` |
| 16 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-15.md) | 123 | `declaration-track:eb81988e4150bf3fabbbd7b33e8c9eff8eb467a216294915f3837d1c40dc1baf` |
| 17 | `theorem` | [mem_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/mem-top.md) | 126 | `result-track:7f2825de6aba53f0948af08c760d34b0bcaac1361524ca25f64684f1716072de` |
| 18 | `theorem` | [coe_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/coe-top.md) | 130 | `result-track:2764a0f2fafd1095bd45d72c3b2ab019557e0acfe3d1570c746e6848dc8606bf` |
| 19 | `theorem` | [toSubgroup_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/tosubgroup-top.md) | 134 | `result-track:9c59ba395118d2821885880542236574121c1e0cd5f9125a94e508145e98f593` |
| 20 | `theorem` | [toOpens_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/toopens-top.md) | 138 | `result-track:c3418d47df55dd848933b7faf1c9d96f0d472cf9d727d572b6885116e0a62ede` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-5.md) | 142 | `declaration-track:44419aab7ec8696c81c043937a0f1473bc36346f37137fda1242ccecf35a4bee` |
| 22 | `theorem` | [isClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/isclosed.md) | 146 | `result-track:8ade327d359a60f297f4fd88feaa5d10c03f13760a201913b107726ecb39a298` |
| 23 | `theorem` | [isClopen](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/isclopen.md) | 157 | `result-track:b60bc6b45f99c060a4c333037d1ad7e1eb50e32a245ab70374b832063fb52439` |
| 24 | `def` | [prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/prod.md) | 166 | `declaration-track:8e5a370c1088bcf3081b7f8ee02fd89584305092b4e01f36ff31da61044e9db5` |
| 25 | `theorem` | [coe_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/coe-prod.md) | 173 | `result-track:a84b6e097eeb21ab5ff190d1b019dd2ea1d6608e1c6cc549919c406408b07def` |
| 26 | `theorem` | [toSubgroup_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/tosubgroup-prod.md) | 181 | `result-track:59fac0eb29d7f9e3a3d09a7d9ddffd07ba820c618f4ed8917adcc679148273b6` |
| 27 | `instance` | [instInfOpenSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instinfopensubgroup.md) | 191 | `declaration-track:dd00f434b38828fc278579bc495cf46e20a7817b64ae9751b69d44689a0affdf` |
| 28 | `theorem` | [coe_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/coe-inf.md) | 195 | `result-track:c7f78c7a56bdb305bc70d6fd561c941c1c7b59a71ddec6a814980b04335af80b` |
| 29 | `theorem` | [toSubgroup_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/tosubgroup-inf.md) | 199 | `result-track:a38a16f04fc3a0d1a98792173d0e869fc0f06ed5aeb7c46ec401c18c4cda34a8` |
| 30 | `theorem` | [toOpens_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/toopens-inf.md) | 203 | `result-track:5b594fd9c2bfa9c0df53502786ffed82da790d7ec9d5a99ea85ac30ee7214b9d` |
| 31 | `theorem` | [mem_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/mem-inf.md) | 207 | `result-track:796d8ff84e09cf6cf51cb62a0de29572dd1bb71a5cc7a5b0958611923e77759a` |
| 32 | `instance` | [instPartialOrderOpenSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instpartialorderopensubgroup.md) | 211 | `declaration-track:982994c11a0cd4b587da6bf3411c27b91931e0463ac7f78c7e8f239e61f68b88` |
| 33 | `instance` | [instSemilatticeInfOpenSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instsemilatticeinfopensubgroup.md) | 215 | `declaration-track:2a18894abb2aa93b9c5994e25d4e6c53370b84fb71c164f96c4d862b40f563b6` |
| 34 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance.md) | 220 | `declaration-track:0055ace0af246bfad97ca13633bd0b8a2b729cc8230a17ca2432a36b4f6efda0` |
| 35 | `theorem` | [toSubgroup_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/tosubgroup-le.md) | 225 | `result-track:032cf7d4634871b7c57a7c31e2bba264677dfdd979b5e01491b046e046b94ffb` |
| 36 | `def` | [comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/comap.md) | 234 | `declaration-track:d13883c7c66b6e238adfcc3f9210a82fece10f563418122c0dc117cb09be127b` |
| 37 | `theorem` | [coe_comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/coe-comap.md) | 238 | `result-track:26065e3e7c218a0e8b8f55c72af7c95c1a65ae219759fad13270520dd1e8d929` |
| 38 | `theorem` | [toSubgroup_comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/tosubgroup-comap.md) | 243 | `result-track:37c873a593edd11a9c40d5c15be2a087beda54fab1c069c7f4bcbefd9ec45eaf` |
| 39 | `theorem` | [mem_comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/mem-comap.md) | 248 | `result-track:8a296e997b41df49385afad02192c7e3c8078084fc9800fbdc06efc68c1e6e8c` |
| 40 | `theorem` | [comap_comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/comap-comap.md) | 253 | `result-track:304adbdee7827efee63d6e08ccc2fba487ae4657ad923bc82935151a058828f7` |
| 41 | `theorem` | [isOpen_of_mem_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/isopen-of-mem-nhds.md) | 264 | `result-track:4ecfc3755299c5c3ba70ff1bc260e9fefc2fb538cccb6efe9799f68c48a8daf2` |
| 42 | `theorem` | [isOpen_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/isopen-mono-source-edition-2.md) | 274 | `result-track:431f1e0f273c9e7e0f00f14ca8c9a05a0d5c0bd4ed66235dde8145dc73ee6801` |
| 43 | `theorem` | [isOpen_of_openSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/isopen-of-opensubgroup.md) | 279 | `result-track:a15e2b92d937b073cb8776d0709bd60c7e1474c7bbffc8de2ed4e9be971823aa` |
| 44 | `theorem` | [isOpen_of_one_mem_interior](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/isopen-of-one-mem-interior.md) | 287 | `result-track:0f4fccd8b0ef313fe7851ca37ae64dd156b6a253ce13cd99d470a283080b9edf` |
| 45 | `lemma` | [isClosed_of_isOpen](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/isclosed-of-isopen.md) | 292 | `result-track:80575aaa41cac565b0191f7b47051cdab596cc7ac40cc96e1cd40e816e4c9686` |
| 46 | `lemma` | [subgroupOf_isOpen](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/subgroupof-isopen.md) | 297 | `result-track:02b30e4c977a4591f59fce4770d700d49d2b17f23c31aa21770f7bfdac57b207` |
| 47 | `lemma` | [discreteTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/discretetopology.md) | 302 | `result-track:d3839b22b2fe5720e4cc9678634791c7b5017dec534e0e517fe6a51b72a09380` |
| 48 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-6.md) | 315 | `declaration-track:617cbd46d0ed9cec0f2dc2ffd90630afd2ff1f2efe95a367cf9336d193855ef4` |
| 49 | `lemma` | [quotient_finite_of_isOpen](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/quotient-finite-of-isopen-source-edition-2.md) | 319 | `result-track:affa62bba34b0fee61a78a27d30c780b286c6e65f9bf822b74e6390a2e816cd0` |
| 50 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-10.md) | 325 | `declaration-track:9217071f950498b5cc2ee1723b3fc204c3e0a4df4d5ec14cef47aa4db7783d6f` |
| 51 | `lemma` | [quotient_finite_of_isOpen'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/quotient-finite-of-isopen.md) | 329 | `result-track:50f808c9c610479c3bc244210727fd7a555bc051acba0bba8476928ea89bb8b7` |
| 52 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-4.md) | 337 | `declaration-track:25fa0b9372a8c8516882105ebfa1130fdbdc3ced94d1bcbfb064ff41b3521052` |
| 53 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-16.md) | 348 | `declaration-track:f606a76bcdb6dec39c7155b5179fef897965c73498392c63f471e03941580df0` |
| 54 | `theorem` | [toSubgroup_sup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/tosubgroup-sup.md) | 352 | `result-track:e875667dcf5e38fc8da6973d362afacbb0395e07365123497a4b7da109cf92df` |
| 55 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-3.md) | 356 | `declaration-track:202cac98fa805027e0181c3f25ace67a018ccbe29d7d10ce5f92f7fac5a31689` |
| 56 | `theorem` | [isOpen_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/isopen-mono.md) | 370 | `result-track:1d61bb005b7a121a5f116b13bd6784f97a6492c5b4a72aeae098a3d3cf4f84cf` |
| 57 | `theorem` | [isOpen_of_isOpen_subideal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/isopen-of-isopen-subideal.md) | 381 | `result-track:20af4bd707b16eff5466bfa508863ee1d23144d4fea5f6e63ef1fefa0a3da673` |
| 58 | `structure` | [OpenNormalSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/opennormalsubgroup.md) | 401 | `declaration-track:41f038d6c568851074878a9ee532a4560bfc8ecb8d0efecc02d573eac16122ce` |
| 59 | `structure` | [OpenNormalAddSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/opennormaladdsubgroup.md) | 407 | `declaration-track:340a0bd7f4b6611b0875534a0174b86064b0eb3d157b70e1c57f44035aeda9ef` |
| 60 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-11.md) | 418 | `declaration-track:9525b6a19ecc90738f8b0205ae0bc7479dd7d6f949e1116d1e6a086250b72a40` |
| 61 | `theorem` | [toSubgroup_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/tosubgroup-injective.md) | 421 | `result-track:74b9063180eaf5da19a9ef1b703dcf2b81e66c1a0367ad492c4d8127581acf24` |
| 62 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-13.md) | 429 | `declaration-track:d3a7f40bab63efad85e3450760a7915af300cf410f60aa0ded9c8b2be87ae409` |
| 63 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-8.md) | 434 | `declaration-track:792f06ce43663b6d63929b7d32ec41e706786d8da1b6ffc57117b5532b298b62` |
| 64 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-9.md) | 440 | `declaration-track:7af1ebd3aad083199fe316775e7a212a956683b71a9d6c6616a07dc19f66c031` |
| 65 | `instance` | [instPartialOrderOpenNormalSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instpartialorderopennormalsubgroup.md) | 444 | `declaration-track:e7dfc8ab1c061839ad1423551356ba63580ffe460b144066b61ec97fd13eb8f4` |
| 66 | `instance` | [instInfOpenNormalSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instinfopennormalsubgroup.md) | 447 | `declaration-track:0cca68417fced15284f5787db86f2c55af36bcc6da40e37e52d3eeb0d67be253` |
| 67 | `instance` | [instSemilatticeInfOpenNormalSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instsemilatticeinfopennormalsubgroup.md) | 452 | `declaration-track:d4172448d30e86b61f30909f4f19e491b0f12515e628ec1bd275e87f61ae096b` |
| 68 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-7.md) | 456 | `declaration-track:75cb79e30d73f57d7fd9999cbebfe1adbf4b48166e0fcbf5411b2d83fe3e1c22` |
| 69 | `instance` | [instSemilatticeSupOpenNormalSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instsemilatticesupopennormalsubgroup.md) | 461 | `declaration-track:fbd3fef6a4b5115cab9cfe753ca3ca4d0cee01b26149fcc90627a25467bda166` |
| 70 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/instance-source-edition-12.md) | 466 | `declaration-track:ac798a7eccdec7bc27b069b232ed38c18f2f818d45f34b2488da987f9cc91fde` |
| 71 | `structure` | [IsTopologicalAddGroup.addNegClosureNhd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/istopologicaladdgroup-addnegclosurenhd.md) | 487 | `declaration-track:9693c9fb42aac3ace7b7bfc113493a7ef6707766f131eb004ec85d1f7247bbc5` |
| 72 | `structure` | [IsTopologicalGroup.mulInvClosureNhd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/istopologicalgroup-mulinvclosurenhd.md) | 498 | `declaration-track:6b04a5197734d1817a10cc3a9531aa4e04a1bde735686f65f86754930eb2daaf` |
| 73 | `lemma` | [exist_mul_closure_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/exist-mul-closure-nhds.md) | 511 | `result-track:02dc02a16c8384d77be170e43c16ba2204d6e7208f46411ddc0250bab4ac3e5a` |
| 74 | `lemma` | [exists_mulInvClosureNhd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/exists-mulinvclosurenhd.md) | 532 | `result-track:97903f2b53f0d5e7c69bc7d07c0f2a455f65c1657b99503bb638f154ebff840f` |
| 75 | `theorem` | [exist_openSubgroup_sub_clopen_nhds_of_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupNamespacedIsClosedOfIsOpen.lean/declarations/exist-opensubgroup-sub-clopen-nhds-of-one.md) | 544 | `result-track:16e1075ef122bff386832df1c26b5a6599787d7ffd804dedca49f241b0daabb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b09e0ccb23035a2f1a8941aea445ba5266948d25bd20c161b053c85ee9e3f35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/OpenSubgroup/Variantb1a9ed0b5c28d2db729a278021babcfa48ca07932bf26526616b308b1257a243.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
