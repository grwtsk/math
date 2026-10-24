# Verification target: GRWTSK.Topology.GeneralTopology.Sober.Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e7f13795efc3046b4394c821a4b5d032321d678",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e7f13795efc3046b4394c821a4b5d032321d678`.

Source path: `GRWTSK/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean.json)

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
| 1 | `def` | [IsGenericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isgenericpoint--7ab8e1a467a17042d03b599f.md) | 47 | `declaration-track:7ab8e1a467a17042d03b599f08018b7d8548d596ecad18b926aa1cba07593617` |
| 2 | `theorem` | [isGenericPoint_def](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isgenericpoint-def--8af2857c0fb7b92b57cbf531.md) | 50 | `result-track:8af2857c0fb7b92b57cbf531fba510bda2fc03fe858dda4cd0016f4a91e26c58` |
| 3 | `theorem` | [IsGenericPoint.def](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isgenericpoint-def--369a058918afdc73eda62fce.md) | 53 | `result-track:369a058918afdc73eda62fce427f69514c244da4278ae73dd66d4de69adeb1f0` |
| 4 | `theorem` | [isGenericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isgenericpoint-closure--3fdcf8711614489ce5419b86.md) | 57 | `result-track:3fdcf8711614489ce5419b86a3566c1ba7d6183ff22256361d80b67176d7fa28` |
| 5 | `theorem` | [isGenericPoint_iff_specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isgenericpoint-iff-specializes--81de306ac56c7dd502eb8c96.md) | 62 | `result-track:81de306ac56c7dd502eb8c96062e1c723b5fef5e9c01c580b75c62beb3ea7d0c` |
| 6 | `theorem` | [specializes_iff_mem](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/specializes-iff-mem--a3ecec786249b21a1161ce84.md) | 67 | `result-track:a3ecec786249b21a1161ce84bba1025119fe4b96f94a885b5a107961e4565b31` |
| 7 | `theorem` | [specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/specializes--32cdd483fea4ef59b7b74303.md) | 70 | `result-track:32cdd483fea4ef59b7b74303bd4fe05383065fd3d2e081891b8e06737e83216b` |
| 8 | `theorem` | [mem](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/mem--81c8640ce436d49d92909c88.md) | 73 | `result-track:81c8640ce436d49d92909c88d2a62259f701b50e1d1ea015bb21cfd54213a064` |
| 9 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isclosed--610e28b801009976c0da8130.md) | 76 | `result-track:610e28b801009976c0da8130bce48788022f8dd8b015f47993b015878a1bec0e` |
| 10 | `theorem` | [isIrreducible](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isirreducible--3605b0bd7cb304b8cb415d9e.md) | 79 | `result-track:3605b0bd7cb304b8cb415d9e9cc3a6cb65e20505962daa513e84bf608c88658d` |
| 11 | `theorem` | [inseparable](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/inseparable--3d6fab6d7b06f5eb891e7240.md) | 82 | `result-track:3d6fab6d7b06f5eb891e724034cc35973fd7025c91766cbd2ce90251838f8183` |
| 12 | `theorem` | [eq](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/eq--ef507cd8cbf2b350b09f7e8d.md) | 87 | `result-track:ef507cd8cbf2b350b09f7e8d744d3cf6cb546debc66fc160d12bf26fa55142a8` |
| 13 | `theorem` | [mem_open_set_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/mem-open-set-iff--c6727a1312bab56cf1a31f2b.md) | 90 | `result-track:c6727a1312bab56cf1a31f2ba219e4f85e3ccdd8f3f518feacd0dce567346afa` |
| 14 | `theorem` | [disjoint_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/disjoint-iff--eadf209db5487a371644dfa3.md) | 93 | `result-track:eadf209db5487a371644dfa3ba96a51728060b471ab60a9145391e66ed1e8182` |
| 15 | `theorem` | [mem_closed_set_iff](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/mem-closed-set-iff--4894f185081d9f73dbd39246.md) | 96 | `result-track:4894f185081d9f73dbd392461e16ccd2fbec92edc34bae882ed88285621470eb` |
| 16 | `theorem` | [image](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/image--908dba95da165016d603a7a7.md) | 99 | `result-track:908dba95da165016d603a7a7b7bde6c7b42ec56fd60a384688efaa231d85bedf` |
| 17 | `theorem` | [isGenericPoint_iff_forall_closed](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isgenericpoint-iff-forall-closed--7f45727b8bfe891a15585564.md) | 105 | `result-track:7f45727b8bfe891a15585564ea2449055d3a228809e482e628fb3da5fab2f2c8` |
| 18 | `class` | [QuasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/quasisober--1a62260a8fa2c390a1d81d4b.md) | 117 | `declaration-track:1a62260a8fa2c390a1d81d4b5c0af834291127c9bdbda2baeef4fa536e449ec7` |
| 19 | `def` | [IsIrreducible.genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isirreducible-genericpoint--01a3513d9b73012faa73f174.md) | 121 | `declaration-track:01a3513d9b73012faa73f1742b160c6c87296e0d417bfcee8c4103043a7563c5` |
| 20 | `theorem` | [IsIrreducible.isGenericPoint_genericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isirreducible-isgenericpoint-genericpoint-closure--d4f0253a89b1a1d6af9542d1.md) | 125 | `result-track:d4f0253a89b1a1d6af9542d15eb194ec192b5b503ae56e9dbe3898dd95b998ab` |
| 21 | `theorem` | [IsIrreducible.isGenericPoint_genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isirreducible-isgenericpoint-genericpoint--03959e8dbedaad8a23f9b5ec.md) | 130 | `result-track:03959e8dbedaad8a23f9b5ec93a6fae562e85edd6d36eeb8b9a8c7a203b65af7` |
| 22 | `theorem` | [IsIrreducible.genericPoint_closure_eq](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isirreducible-genericpoint-closure-eq--6380e8656ecc487fe54554f8.md) | 136 | `result-track:6380e8656ecc487fe54554f84fe621b9f3cc63aa6b3b88fa214350c703c7e3e9` |
| 23 | `theorem` | [IsIrreducible.closure_genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isirreducible-closure-genericpoint--bf93734ee42edaa00446ecf5.md) | 140 | `result-track:bf93734ee42edaa00446ecf5a5444f0bee9e681f22462f7e1c9a54305f7ee70d` |
| 24 | `def` | [genericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/genericpoint--4a49c437f10180aff0dcaeea.md) | 148 | `declaration-track:4a49c437f10180aff0dcaeead7992a30193c3b126973574bab8de32e81a8be39` |
| 25 | `theorem` | [genericPoint_spec](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/genericpoint-spec--00bb2626449b33ad194de5f0.md) | 151 | `result-track:00bb2626449b33ad194de5f0c408743fb80a1cd40c29bff472f902db72467b98` |
| 26 | `theorem` | [genericPoint_closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/genericpoint-closure--463bfbb5d7f26eea6799253d.md) | 156 | `result-track:463bfbb5d7f26eea6799253d789949b58611082ee1c53e9528c1a75522ed7452` |
| 27 | `theorem` | [genericPoint_specializes](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/genericpoint-specializes--708025e395bd1f4979ec77c5.md) | 162 | `result-track:708025e395bd1f4979ec77c5363ae20f1a140473f90d32ca32e277cc586e77a6` |
| 28 | `def` | [irreducibleSetEquivPoints](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/irreduciblesetequivpoints--6bd2507c9a0e79d1200c969b.md) | 168 | `declaration-track:6bd2507c9a0e79d1200c969b5d11bd74b86aac7060d98b97d5994e5d17bb1b93` |
| 29 | `lemma` | [coe_irreducibleEquivPoints_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/coe-irreducibleequivpoints-symm-apply--6ff2057e216c1653d9f15b98.md) | 186 | `result-track:6ff2057e216c1653d9f15b98fbec6df8dc5bfdf94f34404982cbbc84226f7e11` |
| 30 | `lemma` | [Topology.IsClosedEmbedding.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/topology-isclosedembedding-quasisober--838fc9cfc1a0f12940a597d5.md) | 189 | `result-track:838fc9cfc1a0f12940a597d54b764dccd7cf26c5ba2e7aeb8964a89cebd22005` |
| 31 | `theorem` | [Topology.IsOpenEmbedding.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/topology-isopenembedding-quasisober--3738650a3c70704b93a5aa75.md) | 199 | `result-track:3738650a3c70704b93a5aa757650124b963afa3d0077f4f5fa9c522577f38576` |
| 32 | `lemma` | [TopologicalSpace.IsOpenCover.quasiSober_iff_forall](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/topologicalspace-isopencover-quasisober-iff-forall--b029b0338ed1745375939d79.md) | 222 | `result-track:b029b0338ed1745375939d79c7508e8c10261d432b4dd17062b13b138001aa33` |
| 33 | `lemma` | [TopologicalSpace.IsOpenCover.quasiSober](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/topologicalspace-isopencover-quasisober--fb9ad44a97942eed105f3535.md) | 239 | `result-track:fb9ad44a97942eed105f3535dc0cf513f7969ee520023161196bff0ca8ee2882` |
| 34 | `theorem` | [quasiSober_of_open_cover](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/quasisober-of-open-cover--6798a884ac60a3e4e6a796b9.md) | 244 | `result-track:6798a884ac60a3e4e6a796b9e8f6df033af8a18533056c5a87f6e4d2214133bc` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/instance--9b4183b07942681f7d740fa1.md) | 254 | `declaration-track:9b4183b07942681f7d740fa1f45e4f81d2bf0f8af8b773332535afc027781e62` |
| 36 | `lemma` | [QuasiSober.val_lt_genericPoint_of_closure_ne_univ](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/quasisober-val-lt-genericpoint-of-closure-ne-univ--e6b8ba7d283115485dd8039e.md) | 268 | `result-track:e6b8ba7d283115485dd8039e0cf679f00ec6230af60a6835a57753be93dd2c78` |
| 37 | `lemma` | [QuasiSober.of_subset](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/quasisober-of-subset--cefe6de4a6b1bbe1671f0599.md) | 276 | `result-track:cefe6de4a6b1bbe1671f05994351d879d710dc5cafadc95071a59bf06cda1c09` |
| 38 | `lemma` | [QuasiSober.inter_of_isClosed_of_quasiSober_left](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/quasisober-inter-of-isclosed-of-quasisober-left--43033792796e79aa90e22185.md) | 279 | `result-track:43033792796e79aa90e22185516e8f42be1cedc65b661bb5119e1a8521a5cf60` |
| 39 | `lemma` | [QuasiSober.inter_of_isClosed_of_quasiSober_right](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/quasisober-inter-of-isclosed-of-quasisober-right--da0be8feb4262b721fa47a5f.md) | 285 | `result-track:da0be8feb4262b721fa47a5fcc67c415b765563355648ac59ef6e66eeaa9d52a` |
| 40 | `def` | [genericPoints](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/genericpoints--c95eda893f623c6eb22fd740.md) | 296 | `declaration-track:c95eda893f623c6eb22fd7403ca0acf1c259dc3e16bd34411c23b446ab09531b` |
| 41 | `def` | [component](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/component--bf210c26fc810bf3e21d7d32.md) | 301 | `declaration-track:bf210c26fc810bf3e21d7d321c64932ea9a0bb6edec711ffbea74797fb1bd148` |
| 42 | `lemma` | [isGenericPoint](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isgenericpoint--e799b8f29fcdd61d65e80f50.md) | 304 | `result-track:e799b8f29fcdd61d65e80f50e3f241707ed4b2197fe0b7a596aaebb46cb67e1d` |
| 43 | `lemma` | [component_injective](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/component-injective--44bfa5c2102e14b29555601a.md) | 306 | `result-track:44bfa5c2102e14b29555601a5bc2d4d26d9adadda77bf40b665e32b6723e5d25` |
| 44 | `def` | [ofComponent](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/ofcomponent--8a0afb44a44b749ac1e746fa.md) | 311 | `declaration-track:8a0afb44a44b749ac1e746fa64d4688e7269388f8fb31b14afe7cee97867291d` |
| 45 | `lemma` | [isGenericPoint_ofComponent](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/isgenericpoint-ofcomponent--121ef544a8f27ae591843ea3.md) | 315 | `result-track:121ef544a8f27ae591843ea3548ae2ef6bd613eae2973f6c7e02e7ca4c520465` |
| 46 | `lemma` | [component_ofComponent](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/component-ofcomponent--5dbb9e388d85d18c5fc7d49a.md) | 320 | `result-track:5dbb9e388d85d18c5fc7d49a6d657a047d8207ae2b8d35a946886fe22b4c6fab` |
| 47 | `lemma` | [ofComponent_component](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/ofcomponent-component--18961cccc11b7e55ed3cc92d.md) | 325 | `result-track:18961cccc11b7e55ed3cc92dd6c7ae9c0852c7e8f8c45a21aac1c5acfca37f6b` |
| 48 | `lemma` | [component_surjective](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/component-surjective--a48d3bce2e9146b558e6fe02.md) | 329 | `result-track:a48d3bce2e9146b558e6fe02c1ecd209512848778e36e9bd2b414a0bb4c8aa0d` |
| 49 | `lemma` | [finite](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/finite--c996f75a7cf7123cf5a2ff5c.md) | 332 | `result-track:c996f75a7cf7123cf5a2ff5c777cf2a7f094d6d0a8843f7e290d8af6e03af070` |
| 50 | `def` | [equiv](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/equiv--e26fa052c25f2b13f6c9864a.md) | 338 | `declaration-track:e26fa052c25f2b13f6c9864a018e10f4424cd5b849ec492b49f37fe456589eaf` |
| 51 | `lemma` | [closure](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/closure--be770af23df82a8b0ff888d2.md) | 341 | `result-track:be770af23df82a8b0ff888d2266a48f50df2da7b951867e88cc46867fd5100bc` |
| 52 | `lemma` | [genericPoints_eq_singleton](../../../../../mathematics/Topology/GeneralTopology/Sober/Variant59b6b8a1d13872480e45a0696360e7ce9dc6420d3556c40e312b0fbdfbfe3912.lean/declarations/genericpoints-eq-singleton--1d58e27d06136f4459564eec.md) | 349 | `result-track:1d58e27d06136f4459564eec415cb2edacd621fafe55a9b98f8ed4c53b077c06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
