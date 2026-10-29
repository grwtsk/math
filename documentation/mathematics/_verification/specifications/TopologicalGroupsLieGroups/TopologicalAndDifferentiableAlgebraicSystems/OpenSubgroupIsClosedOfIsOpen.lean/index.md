# Verification target: Open Subgroup Is Closed Of Is Open

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7760463cb9f4d330472d89b451962517a4cc5821",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant72193e1696a113b09f95f4243131f2de5b449548fcb742fb829bf836f617df2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7760463cb9f4d330472d89b451962517a4cc5821`.

Source path: `GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant72193e1696a113b09f95f4243131f2de5b449548fcb742fb829bf836f617df2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OpenSubgroup/Variant72193e1696a113b09f95f4243131f2de5b449548fcb742fb829bf836f617df2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Quotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OpenAddSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/openaddsubgroup.md) | 39 | `declaration-track:5dc77c7f9615432bf36578b2059d29c5da1a00e21719ec11d1186ed9f8094918` |
| 2 | `structure` | [OpenSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/opensubgroup.md) | 44 | `declaration-track:591f37b9d2c680ac5b7208bb3859c9b50e4372327eb88121112d84cdf3c63c13` |
| 3 | `instance` | [hasCoeSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/hascoesubgroup.md) | 61 | `declaration-track:2abd354c3f0a5a16922b3043253c7e56e6d348efc882567c534b95135777fc0d` |
| 4 | `theorem` | [toSubgroup_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/tosubgroup-injective.md) | 65 | `result-track:031e1af165f8608aae9e5e9e212b0c088f0f895c1deaf9c50b98121095c5c8bc` |
| 5 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance.md) | 69 | `declaration-track:22695a6e77025327d728c94826743b98fe2829757e419d79a6c9bf3def8fa6b1` |
| 6 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-11.md) | 74 | `declaration-track:ad48aba3ecacc4a500e5d17db26b9d1aa69bdfc57035402a81b0bdf76cae2521` |
| 7 | `def` | [toOpens](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/toopens.md) | 81 | `declaration-track:bbb461b6ccf21b8554fe04af07274c491a9c0ab14b51805853cb171cbfce67f6` |
| 8 | `instance` | [hasCoeOpens](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/hascoeopens.md) | 84 | `declaration-track:17fe25f3ac2ef7a4ca355de2335fe627acb0bb80c4dfec532add35170871f744` |
| 9 | `theorem` | [coe_toOpens](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/coe-toopens.md) | 87 | `result-track:320a7a223796a90f0f3e3136d88235f7c4e15f7d2493dbdd2c2364ed6d0b5cfd` |
| 10 | `theorem` | [coe_toSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/coe-tosubgroup.md) | 91 | `result-track:c169d718fc1ec7d9468ca95d3aaf8f2c13f90fddc38731817a6c84dca9ddd40c` |
| 11 | `theorem` | [mem_toOpens](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/mem-toopens.md) | 94 | `result-track:92cd5215a180ef3ca5f02d51a34e508620788e1a10f8d6f1fa4429b5928e8da1` |
| 12 | `theorem` | [mem_toSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/mem-tosubgroup.md) | 97 | `result-track:894a491852e9167cb86a4883546c139059f46c5da97d72606c7664a0bf6aa5a3` |
| 13 | `theorem` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/ext.md) | 100 | `result-track:d31e04c7077569e0e1ba5d9734e2f0d40875b0d14c5a3a6e1c0a40edca129517` |
| 14 | `theorem` | [isOpen](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/isopen.md) | 106 | `result-track:87dd8726b5fd60487125d5050e2af449d65258fc24d1f708c67ea562ea109626` |
| 15 | `theorem` | [mem_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/mem-nhds-one.md) | 110 | `result-track:be084c37296da7562725e0b47d868b3fb02388515c647e92e0543b1a109c5190` |
| 16 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-8.md) | 115 | `declaration-track:7e17f3eed83eab00db2e9859fa08912b3b1a7594dafd15bdee24cc56f4b16e04` |
| 17 | `theorem` | [mem_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/mem-top.md) | 118 | `result-track:4ba1e5160a85ac4bf09d4889780688eee3716728132be0f099ecb1aa6814e29e` |
| 18 | `theorem` | [coe_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/coe-top.md) | 122 | `result-track:331284201a5b4080fa80bcb25c409ded0f924d12f8487ebf77a2ea9896f54694` |
| 19 | `theorem` | [toSubgroup_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/tosubgroup-top.md) | 126 | `result-track:33c8101850334dee75b1b66ae331579f139f847ecbfe690033ccb6d2436e2f3d` |
| 20 | `theorem` | [toOpens_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/toopens-top.md) | 130 | `result-track:9268901242ff8777d72b8b70ecd1a3e021c8667eda36bd1b0c5bffaf244463c9` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-15.md) | 134 | `declaration-track:d28651618fb090351f7809b47534252ed99bf2f1cc34ecca01295f034829d07c` |
| 22 | `theorem` | [isClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/isclosed.md) | 138 | `result-track:d4bb010df098ac147cde123bba2fedaf827d9c6d0ef4648f1e5aa5a9276ae8e4` |
| 23 | `theorem` | [isClopen](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/isclopen.md) | 149 | `result-track:cf6120c4efca0947407347e315d1167d4d8c28e6c72072f6168aa1ea77ecb020` |
| 24 | `def` | [prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/prod.md) | 158 | `declaration-track:2d4aff93c602e253993af3fa976a2208e8fa0dbaf49fcf85f40376e78002cf4b` |
| 25 | `theorem` | [coe_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/coe-prod.md) | 165 | `result-track:3bf8c1ec06ca28bb4a8eb9579162bf8dbcb131a4cbecf64ad3cd226d58d0ddcb` |
| 26 | `theorem` | [toSubgroup_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/tosubgroup-prod.md) | 173 | `result-track:ff0e81ef9689c7342b3c2e7243da4f93eb78023cc345319ec97693263dff7157` |
| 27 | `instance` | [instInfOpenSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instinfopensubgroup.md) | 183 | `declaration-track:74adc92c3f8bb914ce5a7b29f285d33cbe86182c2da1fe83a854e70458b9fbaf` |
| 28 | `theorem` | [coe_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/coe-inf.md) | 187 | `result-track:ba0c8784be4ddd3228eb71faf89eadcf448e820474764b37e1f2a3eb0e10c7f7` |
| 29 | `theorem` | [toSubgroup_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/tosubgroup-inf.md) | 191 | `result-track:4090733b351657a7ccb039f2182293ad42c7340d5248d4ea8ef1c09d490931b8` |
| 30 | `theorem` | [toOpens_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/toopens-inf.md) | 195 | `result-track:26a278bbbec63f6e1a4f90d32f906703616eb69ea8c1922eeccd1c934a6950ad` |
| 31 | `theorem` | [mem_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/mem-inf.md) | 199 | `result-track:f1b89a0cf0f0f56ea7f2f1c9cf97699354e7fc2bcf2afb939ef3f097f112ce5e` |
| 32 | `instance` | [instPartialOrderOpenSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instpartialorderopensubgroup.md) | 203 | `declaration-track:733f3a6f35735768f66618fbc0419167a678ae0af3da9e03b89c9520f21d3a5e` |
| 33 | `instance` | [instSemilatticeInfOpenSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instsemilatticeinfopensubgroup.md) | 207 | `declaration-track:0e610a88b3ed69818de769127227e6ff03f48466d20a93e2abdfc4325f72acfb` |
| 34 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-16.md) | 212 | `declaration-track:fb755994ae99c0429286dd212310f17c2ac37e5980472de683c94592ac08af91` |
| 35 | `theorem` | [toSubgroup_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/tosubgroup-le.md) | 217 | `result-track:04f56e34429ac002ee57d3132ddef24e6ebeb964cc780f781c538035d28e87d0` |
| 36 | `def` | [comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/comap.md) | 226 | `declaration-track:9153524504e58a5d160d1a5d95ca8b24bf322ca8a2ee4feb1a7368bfacb116eb` |
| 37 | `theorem` | [coe_comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/coe-comap.md) | 230 | `result-track:5dfc55674c71430a859c07f34adedbc2cfcfbc25778f24b66d567b8e0a67b76b` |
| 38 | `theorem` | [toSubgroup_comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/tosubgroup-comap.md) | 235 | `result-track:4f3d5b5d6e888dee39b17b5ed5fc3f6f67ba29ce745a0f3a5f3c2e7a86ecc6cf` |
| 39 | `theorem` | [mem_comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/mem-comap.md) | 240 | `result-track:bf0a65c7f2fbd5156ab7d755b28921405aed71308c7f18738b2c443ada18514c` |
| 40 | `theorem` | [comap_comap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/comap-comap.md) | 245 | `result-track:6971e781f4748232972c8f04bcd79907ccf4a3d12f94efecd41efc688c5409dc` |
| 41 | `theorem` | [isOpen_of_mem_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/isopen-of-mem-nhds.md) | 256 | `result-track:5f1257dbfdf246d4eebb47adc870738a4baf145e27984df963d465471220e01b` |
| 42 | `theorem` | [isOpen_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/isopen-mono.md) | 266 | `result-track:5211d94e92a6ee67e4fe982af6e730aa1da07052dda03acd327291b3528e62d0` |
| 43 | `theorem` | [isOpen_of_openSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/isopen-of-opensubgroup.md) | 271 | `result-track:90a73e280eaa30395f8805b6ec0946ff12741e8eb4ca52b5fc3ee7309ef13a0c` |
| 44 | `theorem` | [isOpen_of_one_mem_interior](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/isopen-of-one-mem-interior.md) | 279 | `result-track:e54d6449c4f6fb35c38e353d7800175aa122703d279888dfb43009600349aafb` |
| 45 | `lemma` | [isClosed_of_isOpen](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/isclosed-of-isopen.md) | 284 | `result-track:bcb4b22ba2457897ae95a5dac6f799721921c21f48df58fc07da736680226bce` |
| 46 | `lemma` | [subgroupOf_isOpen](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/subgroupof-isopen.md) | 289 | `result-track:605831b39be6e7abd83ef87a0cd35bddb2e1629d9095ca620a3c88a5c83574c7` |
| 47 | `lemma` | [discreteTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/discretetopology.md) | 294 | `result-track:538aab0b58b936a44dad4cd45bb989cde77f045cd2053d8be63a9b53e486fcf7` |
| 48 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-6.md) | 307 | `declaration-track:627a1a4b939c40ea2cc46441d3e4c7e31eba2b0775e543637d1b87eb3fcd7542` |
| 49 | `lemma` | [quotient_finite_of_isOpen](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/quotient-finite-of-isopen-source-edition-2.md) | 311 | `result-track:8d909fa6b07855e092712133a2be438c33124e6f81612ed78ae3a5a0cf94d97b` |
| 50 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-14.md) | 317 | `declaration-track:cc1c4f0a064c64a2961f2b37572e8096dd0de3d7eff5435e3482b41240d262c4` |
| 51 | `lemma` | [quotient_finite_of_isOpen'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/quotient-finite-of-isopen.md) | 321 | `result-track:571830be7f451e0d2a3b6e6bebff1f92b60f1995d8155067feef11d6a0e74489` |
| 52 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-13.md) | 329 | `declaration-track:bb3de8c66acc8fe95ba494ce563efa9d5cfe29779658b9b8a9e3999796df2dcc` |
| 53 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-12.md) | 340 | `declaration-track:b3a9c3ed183502f813ad9aa0c3a50cf0be5f78b1f3bdad1eb2ec2b529ac91a15` |
| 54 | `theorem` | [toSubgroup_sup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/tosubgroup-sup.md) | 344 | `result-track:7a736461f1d6c295f290cbe4f467c92a221163a619d1d5ed4d3c3362d61233c0` |
| 55 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-4.md) | 348 | `declaration-track:42ce0816e25763f61ef27aae14da3c3dccb2d6c36ebe458d8306cb54bfd32a8b` |
| 56 | `theorem` | [isOpen_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/isopen-mono-source-edition-2.md) | 362 | `result-track:f33bf54941f1de0387822f486754c63e64737d87b739aa33271c254157721a9c` |
| 57 | `theorem` | [isOpen_of_isOpen_subideal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/isopen-of-isopen-subideal.md) | 373 | `result-track:0f49eb380ac560bdad20566b5683fa64404c8417354bf43c8190e2777c363cf1` |
| 58 | `structure` | [OpenNormalSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/opennormalsubgroup.md) | 393 | `declaration-track:c9b6b380695bc006db0001263d7023f5cbe48686c2e0b353814fc655c9fa4de4` |
| 59 | `structure` | [OpenNormalAddSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/opennormaladdsubgroup.md) | 399 | `declaration-track:804493b6bd324051b173db910fd40316ce33dde86770d9d614fe332000537c31` |
| 60 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-9.md) | 410 | `declaration-track:835cc79670c11a3fa220d0fcfc919b6449e1121dc016bcbbf78d09b970b0e9c3` |
| 61 | `theorem` | [toSubgroup_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/tosubgroup-injective-source-edition-2.md) | 413 | `result-track:ac2e15273961448391358e43aeb6284a90565c6eeec46b6ef65cb0b6c70d935e` |
| 62 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-2.md) | 421 | `declaration-track:388e7506422d00427fefe52efa55d2e1c377a9acbe6a6e6083b87d5419bdadf7` |
| 63 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-5.md) | 426 | `declaration-track:5a614aea24cd2ed69f16505baa0fb1f6a2e1ce56131ca856fe16a3761a538b7e` |
| 64 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-10.md) | 432 | `declaration-track:922815795ac8584b74eef25b682f054a40cff383e52a9ac3199b5b3bb0bbdbd9` |
| 65 | `instance` | [instPartialOrderOpenNormalSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instpartialorderopennormalsubgroup.md) | 436 | `declaration-track:791d40fc6def5b742c8d7bc724f7aacd48361a532da775673c1d4389ef7eeda2` |
| 66 | `instance` | [instInfOpenNormalSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instinfopennormalsubgroup.md) | 439 | `declaration-track:101659cc8f0b500412da0a46b37d209558d76301fc9d26a37f70b090b2b96f94` |
| 67 | `instance` | [instSemilatticeInfOpenNormalSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instsemilatticeinfopennormalsubgroup.md) | 444 | `declaration-track:2e13c80adf99ccf1565f76d4d091db7c0191630ec162c547dfe227bc48446ff3` |
| 68 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-7.md) | 448 | `declaration-track:714ff87bb9b9e586a0c59d2516189fbee049a8813cfa078f9546ae8d9648932c` |
| 69 | `instance` | [instSemilatticeSupOpenNormalSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instsemilatticesupopennormalsubgroup.md) | 453 | `declaration-track:879365bc66027db9791f59aef82e3731e067580550e2e65079ba55e52fed9a51` |
| 70 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/instance-source-edition-3.md) | 458 | `declaration-track:3adf6cd00ce13c25bb9b7053672a2d6171924c1a89022e21cec004848d919f69` |
| 71 | `structure` | [IsTopologicalAddGroup.addNegClosureNhd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/istopologicaladdgroup-addnegclosurenhd.md) | 479 | `declaration-track:ed68f4a29cb51c2fcbeae29ab105741d61d9692ac7a163ffd1e1faa899150943` |
| 72 | `structure` | [IsTopologicalGroup.mulInvClosureNhd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/istopologicalgroup-mulinvclosurenhd.md) | 490 | `declaration-track:fc3e4057f82ac9b021e68e54a710cddcd706f781fbeaf47630fd72ad5f7aa396` |
| 73 | `lemma` | [exist_mul_closure_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/exist-mul-closure-nhds.md) | 503 | `result-track:d07dcb6fc6a90f4717cec3f83754059497f51109e20505ddf2ee32c859dc8a88` |
| 74 | `lemma` | [exists_mulInvClosureNhd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/exists-mulinvclosurenhd.md) | 524 | `result-track:96581bf3271517a3b0162ca5f763acb7d674651559a79ab773d7e75935fd300f` |
| 75 | `theorem` | [exist_openSubgroup_sub_clopen_nhds_of_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OpenSubgroupIsClosedOfIsOpen.lean/declarations/exist-opensubgroup-sub-clopen-nhds-of-one.md) | 536 | `result-track:2f8f8de9741f403ec4491966fcc72f36d51559edfe7b8beda73f18d95e505e6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f71afce8fc75d532f23981742e9c868dc8fb082c3503565f7870141d82453fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OpenSubgroup/Variant72193e1696a113b09f95f4243131f2de5b449548fcb742fb829bf836f617df2f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/OpenSubgroup/Variant72193e1696a113b09f95f4243131f2de5b449548fcb742fb829bf836f617df2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
