# Verification target: Alternating Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6059bd0ee17451999109f265eef7964b8b21631b",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant0a9c73b501ba1522b5de7cd542f02cfd257fce78ee81dee0aaa352d8b3713a57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6059bd0ee17451999109f265eef7964b8b21631b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant0a9c73b501ba1522b5de7cd542f02cfd257fce78ee81dee0aaa352d8b3713a57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Basic/Variant0a9c73b501ba1522b5de7cd542f02cfd257fce78ee81dee0aaa352d8b3713a57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousAlternatingMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/continuousalternatingmap.md) | 48 | `declaration-track:4acf5c681c07a720efc9998ac9fd4166be17b46b273662c7104e83f5b739e603` |
| 2 | `theorem` | [toContinuousMultilinearMap_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/tocontinuousmultilinearmap-injective.md) | 70 | `result-track:e15280dda21663220f0cea3cb80725167df592c996de2d92d53fd8e13747799a` |
| 3 | `theorem` | [range_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/range-tocontinuousmultilinearmap.md) | 75 | `result-track:8f0d5e0226cbfd7d0c91550aae2b66bbdfbbcf0c27753273067a2ba038851464` |
| 4 | `instance` | [funLike](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/funlike.md) | 83 | `declaration-track:a93b7fd0eca5cc2ed18c0b12d36c76e217edd03d03226f37649c33e3edb18b08` |
| 5 | `instance` | [continuousMapClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/continuousmapclass.md) | 87 | `declaration-track:e7e4719b2fdca47809b02bc086ccb0b1f0afd6c2ec8745a7abc66119ecc7e9d8` |
| 6 | `theorem` | [coe_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/coe-continuous.md) | 93 | `result-track:4f8904fd7365e3e6229e2df0631626824885546105988d6d3e18f91e839c7b17` |
| 7 | `theorem` | [coe_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/coe-tocontinuousmultilinearmap.md) | 96 | `result-track:9248c3c58432e9e060cbd3547651b0f959268aecdd009745e789bcdc3a3bdbc9` |
| 8 | `theorem` | [coe_mk](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/coe-mk.md) | 100 | `result-track:9c3e2242699c7c0e749ff0e701ca4e9f7ba409a6937f868cc8acdbdd3eaf7741` |
| 9 | `theorem` | [coe_toAlternatingMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/coe-toalternatingmap.md) | 105 | `result-track:1d28c4eedcdde4f33af10801f91eab17138863b2747f849fcef68ce039ba606e` |
| 10 | `theorem` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/ext.md) | 108 | `result-track:da15489758937de4f4806eb41c1874038e7a895c714e67bc414d22ccf2510829` |
| 11 | `theorem` | [toAlternatingMap_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/toalternatingmap-injective.md) | 111 | `result-track:a1d7920b8165b742566cc72b4ee43f8bc9c787d1c341e128aab432655b585785` |
| 12 | `theorem` | [range_toAlternatingMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/range-toalternatingmap.md) | 116 | `result-track:1b92733b7afc2173dc18b0659e6bc77d00544dd043b7f0735785585931b71338` |
| 13 | `theorem` | [map_update_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-update-add.md) | 122 | `result-track:f2f6efcf61d34613edcafee6f2179080cef9974e9cda35bddfde42e5bb59df3a` |
| 14 | `theorem` | [map_update_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-update-smul.md) | 127 | `result-track:649fac7806893be393b444994de64c527185c190d0d2a56672a9a99d4e9697af` |
| 15 | `theorem` | [map_coord_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-coord-zero.md) | 131 | `result-track:ac9dec903574d068b4977213c0699bd757bb620e2869a409df4cbc45cd8dd7be` |
| 16 | `theorem` | [map_update_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-update-zero.md) | 135 | `result-track:3b6816a795f1a31adeb7376e30ed006d8b7d8583e7d252f0111a43d4e2cb4c9b` |
| 17 | `theorem` | [map_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-zero.md) | 139 | `result-track:8b1402a41e7383f27953feaf87c0b07ed495ecb4a66c28eadcf25e8bf5280caf` |
| 18 | `theorem` | [map_eq_zero_of_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-eq-zero-of-eq.md) | 142 | `result-track:3e0d5eefa3ca2da3e9c6e37adc052ba7254dac85ef9a3a7ec5e493584c09c381` |
| 19 | `theorem` | [map_eq_zero_of_not_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-eq-zero-of-not-injective.md) | 145 | `result-track:6b0c5a8f5ceb72e2c2d5dfc67ecbd0f2e1a2047d6eab8a426d38beb88347d7d9` |
| 20 | `def` | [codRestrict](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/codrestrict.md) | 150 | `declaration-track:05d0357e4877529127d0a4d4235ed748a41437c618f2add040b7d8e58be2b285` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 153 | `declaration-track:fc70b5ef0c5ea03b02231c34bd98061416b34ac54e152b3e6aaac381ace5007f` |
| 22 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 156 | `declaration-track:5f594fa8b544557f240e3c43c14140f6c02269d62162e1881edc0630a6d9bef1` |
| 23 | `theorem` | [coe_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/coe-zero.md) | 160 | `result-track:9686ee6caa1ce85fdb80be1a01fd3588df6b9fbe15770977880bf6286377e466` |
| 24 | `theorem` | [toContinuousMultilinearMap_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/tocontinuousmultilinearmap-zero.md) | 164 | `result-track:7c54227c05d5066bb4a637a341a2162b5235035718349efaa107c6e1c1f9d368` |
| 25 | `theorem` | [toAlternatingMap_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/toalternatingmap-zero.md) | 168 | `result-track:b350b68e9457e542331bcb1dff06a6fc9ff5c21c850a0978ff48ed30e17f2ded` |
| 26 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/instance.md) | 177 | `declaration-track:0b9c7a716f49cf1ca0288e69812522c221ee7006f47ec201093ca122d8e58735` |
| 27 | `theorem` | [coe_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/coe-smul.md) | 181 | `result-track:bf30038c045cc12f93d26deb3603f82079c58de372b1e6c19e85feb8d9a6582c` |
| 28 | `theorem` | [smul_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/smul-apply.md) | 184 | `result-track:b44bdb9f35d4979383eb4ec6bc1d345b67146c9c6306a7aae07c27e18cf018a3` |
| 29 | `theorem` | [toContinuousMultilinearMap_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/tocontinuousmultilinearmap-smul.md) | 188 | `result-track:96121ef81719f60aa026ca3729cca27437a9e3b707b7ff62898461691f4768f5` |
| 30 | `theorem` | [toAlternatingMap_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/toalternatingmap-smul.md) | 193 | `result-track:db976cf28417055492dbab3a68acff8cfda5e77235b340d8ab9da8d84fe98256` |
| 31 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 197 | `declaration-track:0eee7787b1b43129ace51f33e3fe68acddb18285e07de320a0ae10a0927915df` |
| 32 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 200 | `declaration-track:b46fb15711c1e2f2dec352ebb164199c01a129b784494b5252f8fa6ad7009fef` |
| 33 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 203 | `declaration-track:77cebbbe665da55f5ea4ff030c7ae8a37f254748b497cc9308ca3b1bfa8493de` |
| 34 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 206 | `declaration-track:f082bd3c77d8b93d3a4e6043db37d651c87eee64e23c225f479cb171430a999b` |
| 35 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 215 | `declaration-track:39acad18637d141ff17e09051bf53283d74a4a93b42d8b21f358890c66c63eea` |
| 36 | `theorem` | [coe_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/coe-add.md) | 219 | `result-track:48847f3b54cc53392e14d13b480204d1a375935a62bc1a950132ad2d56751806` |
| 37 | `theorem` | [add_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/add-apply.md) | 223 | `result-track:fdab65f23d634f995f31ab54a049e4a943bfc23f0a19adaedef0349891413252` |
| 38 | `theorem` | [toContinuousMultilinearMap_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/tocontinuousmultilinearmap-add.md) | 227 | `result-track:9955655e01b8d96aa10820a175c72a3ff8d2381a0c8cb799833575468337fcfc` |
| 39 | `theorem` | [toAlternatingMap_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/toalternatingmap-add.md) | 231 | `result-track:05d103aba0b67ef5e5e3a753be1321eaa2eaac3ec070895b6e190076fb371670` |
| 40 | `instance` | [addCommMonoid](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/addcommmonoid.md) | 235 | `declaration-track:ec3bacff0bf12172c6af42f5b75cbb4513740291e3b8d8e4ccd5ed4114649292` |
| 41 | `def` | [applyAddHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/applyaddhom.md) | 239 | `declaration-track:5ef97eed3c1cb55d3383214518585db579f4dd7325f8ab1e61784fe87d103d70` |
| 42 | `theorem` | [sum_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/sum-apply.md) | 243 | `result-track:d49bb7d779e7999d66df506b410121a6d19cd88b000cd4fe8a4141ef31992846` |
| 43 | `def` | [toMultilinearAddHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/tomultilinearaddhom.md) | 249 | `declaration-track:6614c4c6fe7d3cd1f35a094362900b8c4bb00adc30c647ec7b98ac37c374d3d6` |
| 44 | `def` | [toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/tocontinuouslinearmap.md) | 258 | `declaration-track:61979b9784ede451cdc77aeef3249ba29138e3adb3ad97a8070f8407a0330602` |
| 45 | `def` | [prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/prod.md) | 263 | `declaration-track:78129ecbf9406191dfac9739fd0f81f4e766dd49e03c04c7d1c20b7d61c7ab81` |
| 46 | `def` | [pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/pi.md) | 268 | `declaration-track:a9510c10ac5b67ded79863033866f70a724ba8de29bc44dc844c3216128c8513` |
| 47 | `theorem` | [coe_pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/coe-pi.md) | 274 | `result-track:32638ba2e5a5d13466c7af20698ada637a5ba78ce4a08189e629ad2745961f54` |
| 48 | `theorem` | [pi_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/pi-apply.md) | 279 | `result-track:b634d26e6984ecc9f7d31c78eaa64ec4f6a62b6af05c88cffb40fb2e2520e6a2` |
| 49 | `def` | [ofSubsingleton](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/ofsubsingleton.md) | 291 | `declaration-track:a8acca01ffaef929cca0833b9b24517a639e275e4940c836bdea259207233b52` |
| 50 | `theorem` | [ofSubsingleton_toAlternatingMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/ofsubsingleton-toalternatingmap.md) | 301 | `result-track:d4e30166e2f1ebef87df27b0248097fb80d6ec7038862c02439238608c90a4a4` |
| 51 | `def` | [constOfIsEmpty](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/constofisempty.md) | 309 | `declaration-track:a90d2d91e62a2d81adc51db2bd42c0674cc733abd9c96fde4eb59e81ec7f3105` |
| 52 | `theorem` | [constOfIsEmpty_toAlternatingMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/constofisempty-toalternatingmap.md) | 314 | `result-track:f50444e1e85c10488afd7e8ed8c4cde7c1b2bc8e0b95d873cea642c6d79ff7d3` |
| 53 | `def` | [compContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/compcontinuouslinearmap-source-edition-2.md) | 322 | `declaration-track:c85d7a3b76d011824b2cf86bc0e9aac1634c54a1257fdb46a156cc06e68dbcac` |
| 54 | `theorem` | [compContinuousLinearMap_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/compcontinuouslinearmap-apply.md) | 327 | `result-track:cf09b933aebc83832647200f8601ad0297b8ba46725ff12245a6e835be22ad0e` |
| 55 | `def` | [Alternating Basic Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/compcontinuousalternatingmap-source-line-333-occurrence-2.md) | 333 | `declaration-track:3a305c12d9cc496651655b941a6b4d7c83230381d1f63282ce21a3d96f4b4953` |
| 56 | `theorem` | [Alternating Basic Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/compcontinuousalternatingmap-coe.md) | 339 | `result-track:8a9fc6618a79252a3674c5cc42e182ad1ec50a14f968f5248b4a60b985c4e35d` |
| 57 | `def` | [Alternating Basic Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/continuousalternatingmapcongrleftequiv.md) | 351 | `declaration-track:cd05bab55736f1930ecf4f1f95e615d8f13da4660431b4841c1b69346dd81b12` |
| 58 | `def` | [Alternating Basic Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/continuousalternatingmapcongrrightequiv.md) | 361 | `declaration-track:8087898b96c65f1014d731376ec3616a7e41b403de3bbc6136930b1ed79bcc7a` |
| 59 | `theorem` | [Alternating Basic Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/compcontinuousalternatingmap-coe-source-line-369-occurrence-2.md) | 369 | `result-track:9179a4cb8edb2ebf1048b477a42e82851c3d4a96a1c9f8bbabdb3db55f29f737` |
| 60 | `def` | [Alternating Basic Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/continuousalternatingmapcongrequiv.md) | 376 | `declaration-track:5b4df116b95e236a7d173b384b163681eedd1ddb61e547211529149f8b9e269e` |
| 61 | `def` | [piEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/piequiv.md) | 382 | `declaration-track:5405bf434530337e9b2abb59aa4f55e7bf2f145df27b1a432c42328f03f8bc9b` |
| 62 | `theorem` | [cons_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/cons-add.md) | 390 | `result-track:a8781276618df4d2a5c45fea1018cea0bb6e4a2dc230f52de8f97c54d1fb237b` |
| 63 | `theorem` | [vecCons_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/veccons-add.md) | 397 | `result-track:64eaf1268f7a14f06ce1c2d5942746ae23a5a6200e1d64df2909e577e65551e1` |
| 64 | `theorem` | [cons_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/cons-smul.md) | 404 | `result-track:c0c8e432a85602023c5d4538a5223b5da2c455b4a322a2a90787fcf2d9125c24` |
| 65 | `theorem` | [vecCons_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/veccons-smul.md) | 411 | `result-track:3e644447dd30e01c57b31f395444aa4e0a389a9663c3bd11a00e5cf7f527bdf5` |
| 66 | `theorem` | [map_piecewise_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-piecewise-add.md) | 415 | `result-track:366d35389377da11b41a515997253b3c418d493a95453201c20edbf404b004c4` |
| 67 | `theorem` | [map_add_univ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-add-univ.md) | 421 | `result-track:61ec123529a7a00b51ee437eaec6ccdf88d4449ec986ff1d9df704e5d91e3a21` |
| 68 | `theorem` | [map_sum_finset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-sum-finset.md) | 435 | `result-track:99e9d552ab0d276332221e12f75a565604b3853a3fd04616971a1a369afef484` |
| 69 | `theorem` | [map_sum](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-sum.md) | 442 | `result-track:d1f5af2e899c0cf6997eb003e126b59164c178c245e3839ab83cf1fac7d22b35` |
| 70 | `def` | [restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/restrictscalars.md) | 456 | `declaration-track:d4b988e204d8ecdffc65705bcdccaf3602af520024e87d527cb379623f63f0fa` |
| 71 | `theorem` | [coe_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/coe-restrictscalars.md) | 460 | `result-track:fe143984571a6d9383783813c6324abd455ec1da8e4eb8f07eff005f3a4dbfdd` |
| 72 | `theorem` | [map_update_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-update-sub.md) | 474 | `result-track:244bfbc19633a625a9c16cfa4cd644cc14f35d0a52cc70a74257ee49f44d5ab2` |
| 73 | `theorem` | [map_vecCons_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-veccons-sub.md) | 479 | `result-track:e6af73ecae32812711c629e0dd06b8cfd3d318cf2c47d980c6a22e64262fc13e` |
| 74 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 488 | `declaration-track:63b4d263e8d5578cda607dd50d4bfb6f7a58951b51bccf0aee06753283d54055` |
| 75 | `theorem` | [coe_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/coe-neg.md) | 492 | `result-track:2fd0512ae9b8abe92d6e4afd52f1e183982e5a476be3b6cf5018870e018b8a6b` |
| 76 | `theorem` | [neg_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/neg-apply.md) | 495 | `result-track:a4f846c490cdd816ef8a6d1fe8224fb28fe3cf02617196ffe220c678b0bae449` |
| 77 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 498 | `declaration-track:26bbcfdac2f7a6809d122040bafaf5defdfbb23475f6fe9214f04432572f8ab1` |
| 78 | `theorem` | [coe_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/coe-sub.md) | 502 | `result-track:04953f6cf7ae1826d3050d29c1588b6d7dc89135e9f63ea55ae890ece924b8e1` |
| 79 | `theorem` | [sub_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/sub-apply.md) | 504 | `result-track:0931fa212c6270ef11921d69d2e49587dbf4154d346ce87301a6103e04640051` |
| 80 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 506 | `declaration-track:2b922ee74da6779e20c82c0e797fb4617f9d6d232286406e84bcf1b3281bf099` |
| 81 | `theorem` | [map_piecewise_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-piecewise-smul.md) | 520 | `result-track:eecac9c10f237eff7858cd20ce531b17ad235de6f14c0f279b20eec37c135f17` |
| 82 | `theorem` | [map_smul_univ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/map-smul-univ.md) | 526 | `result-track:d4af117a48907d1b02ce6f3858a5349a0b87fa48530480f8ade36bea4cd0e29d` |
| 83 | `theorem` | [ext_ring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/ext-ring.md) | 534 | `result-track:2af879d403c53797bbd3acfeb0028d3c8b574e86f184fc5234b2443ea364754c` |
| 84 | `instance` | [uniqueOfCommRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/uniqueofcommring.md) | 539 | `declaration-track:b2bcf849fe2a37332ab4daebe11e788f540ccd46b0762efe7423b5831fa27d41` |
| 85 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 551 | `declaration-track:d0c0c0e2dacae6458a5ae33de06eaff0f942cf6706db4c31bffa17bcc99c1a93` |
| 86 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 565 | `declaration-track:3d3dbfe8d4b67bde3ecab8df16304d419b230392a697382597896b9fe9235495` |
| 87 | `def` | [toContinuousMultilinearMapLinear](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/tocontinuousmultilinearmaplinear.md) | 572 | `declaration-track:50f192bd95ad024eb6c1ad98eb4ee5fc08d7a5cb370612d4c0931553b37f5061` |
| 88 | `def` | [toAlternatingMapLinear](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/toalternatingmaplinear.md) | 581 | `declaration-track:bc605dd1707ae0570651d56b08e3437bb253a6a57d32d0c4853b62c3816e330d` |
| 89 | `def` | [piLinearEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/pilinearequiv.md) | 588 | `declaration-track:6f56cb3f1834e212ffff400ff1951992c114efe12e4969653850c23a6aca6e3f` |
| 90 | `def` | [smulRight](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/smulright.md) | 607 | `declaration-track:6728963bfc0b410cfe9a23c3a7912ba5cc1246cb2bf16fac2351e87148f18d98` |
| 91 | `def` | [compContinuousLinearMapₗ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/compcontinuouslinearmap.md) | 621 | `declaration-track:4aee9d19e5ddfa95e3d9454a47f8e5f2137ddb6825b5c35c9566a3003827d9ce` |
| 92 | `def` | [Alternating Basic Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/compcontinuousalternatingmap.md) | 629 | `declaration-track:1c3cc8ec24053c7a80907c8b70b4be154d5ce085df47ba8e61e43a2331c90214` |
| 93 | `def` | [alternatization](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/alternatization.md) | 646 | `declaration-track:0f27456c36da80cf6062fa0aa19233ee4c0c9d665545a4f11f6f4f5916b9fa06` |
| 94 | `theorem` | [alternatization_apply_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/alternatization-apply-apply.md) | 655 | `result-track:bdd40b9dcdc2cfbbb0db572703be42c54a218baba124b0a49a3d9c7be8c14255` |
| 95 | `theorem` | [alternatization_apply_toAlternatingMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasicNamespacedPublic.lean/declarations/alternatization-apply-toalternatingmap.md) | 660 | `result-track:c30b5b5abcac6c2120713c01d928ec15b78c392e8a15b942854eb8001069b25a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0751c6efd161bf6536f62b3cb09835fda21c8580840ba46ace49316a0d53229a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant0a9c73b501ba1522b5de7cd542f02cfd257fce78ee81dee0aaa352d8b3713a57.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Basic/Variant0a9c73b501ba1522b5de7cd542f02cfd257fce78ee81dee0aaa352d8b3713a57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
