# Verification target: Module Cat Topology Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e32a9367052e84ebe59e0ed1f2da77ed36d16d05",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e32a9367052e84ebe59e0ed1f2da77ed36d16d05`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean.json)

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
| 1 | `structure` | [TopModuleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/topmodulecat.md) | 41 | `declaration-track:7ebb98e0a18ed9a4c60a119b4926d1f4bb7e1e858143c5eb3f427019b762ab80` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-24.md) | 49 | `declaration-track:d18bf16c4fdba842ec04ca439429ae19099d2473be1bc2a78c9fd5eff961672e` |
| 3 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/of.md) | 54 | `declaration-track:7f4589e76c68db660a0767f1527a5aa9427c21aff9cc306eca7734d9c28342be` |
| 4 | `def` | [delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/delabof.md) | 63 | `declaration-track:1ed432a7ad4820409fe8c9088dd97bc35dc3a5dce730109b6d11a424fc3fa48d` |
| 5 | `lemma` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/coe-of.md) | 65 | `result-track:62d34907c56a64df067afda8df858a174a6e1901f076c1774951ae134a6333ec` |
| 6 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom.md) | 70 | `declaration-track:e2cbd69095881b125f034be902e54d528ee0220c55c6c9c55f14e1c5210db4ba` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-13.md) | 78 | `declaration-track:6b11fbd584999943983a870b5dbe22e42e6b2a3a30953d34fc4196d56f6b9d3d` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-17.md) | 86 | `declaration-track:88a9af54a62290dcb31c8fd584e2b8e30cdbc0e0424347388df1e398a65b864f` |
| 9 | `abbrev` | [Hom.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-hom.md) | 92 | `declaration-track:5142626abba2a141a482698cd68b7b7903a9c4e4755dd905871edc04e667445e` |
| 10 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/ofhom.md) | 97 | `declaration-track:2a95498417a8e7d7a3acbc6be0855dbf13140985feb65b4f664a4c7f41c8bcd3` |
| 11 | `lemma` | [hom_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-ofhom.md) | 103 | `result-track:ff0a6319c24f5a6ea80095a4a9f29f8043588276ed2a20103b562c1db32a43a3` |
| 12 | `lemma` | [ofHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/ofhom-hom.md) | 109 | `result-track:16e7f79d92ff5d7ba9cf0a44dca76f792a5cf1b8bd82f721ac026f9278b8ad83` |
| 13 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-comp.md) | 111 | `result-track:d95216795c1c2584220b59af32ec32e2da1829485b37ac7eca20df9af42b1c72` |
| 14 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-id.md) | 114 | `result-track:483001471e0d4b616fe032aa45e4556896f693613afbf2c02e6d7519d6b52527` |
| 15 | `def` | [Hom.Simps.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-simps-hom.md) | 117 | `declaration-track:540c68f99ad831311bc9c4dd192934fd427eaf723868e671ebb18c18439960e9` |
| 16 | `def` | [ofIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/ofiso.md) | 124 | `declaration-track:16c1a0979934b3cd9dd961e7121463473725f725a28d599d7e4dc40b4865b8a5` |
| 17 | `def` | [_root_.CategoryTheory.Iso.toContinuousLinearEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/root-categorytheory-iso-tocontinuouslinearequiv.md) | 130 | `declaration-track:a2524746bd9bda3fbc31d5f55a1815dcef214dba2f35ee4415cc4cfb5acac2b7` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-26.md) | 137 | `declaration-track:d84224d2de904e3e9722d3875728da8d91e6ce48151843de989f10cafa9a4895` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-16.md) | 142 | `declaration-track:834fbc4ca02256dbd5fd7dba5662f48ebbe67bee68ab33080448e4c871a33c7a` |
| 20 | `lemma` | [hom_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-zero.md) | 150 | `result-track:d139dbd3ef6d109b0e0df461b6d4c1ad4c077235cd6a6bf54cd48ad702c3d639` |
| 21 | `lemma` | [hom_zero_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-zero-apply.md) | 151 | `result-track:50a91ac580d16fee9ab0efddf61c33eb06780fc29bcebb1f4975fddcb82a3752` |
| 22 | `lemma` | [hom_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-add.md) | 152 | `result-track:6935a52b5109ca28ede9081dad313d345727b364e46d951876aa9d800bd36791` |
| 23 | `lemma` | [hom_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-neg.md) | 153 | `result-track:03d671c5687f082a99647680d81d44370a22178ae3747548e7ccd2d0dcc4aff7` |
| 24 | `lemma` | [hom_sub](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-sub.md) | 154 | `result-track:9486b3efeb62ccfcafb52d464c21a0945c7ea20af23169cee7bf48e76d8a858b` |
| 25 | `lemma` | [hom_nsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-nsmul.md) | 155 | `result-track:679edb2388909fee0d631149c987b748a31aafb68017cdec3aa8f5258c76fb4d` |
| 26 | `lemma` | [hom_zsmul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-zsmul.md) | 156 | `result-track:5ed382ccffc9a98a699d68b9c01a160503c3ecd7cd6f111bf0b0c98e4853cbac` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-4.md) | 164 | `declaration-track:2bc18f6fbbf8f27d77f0d91a14c7919e6d092d8a4e9d8181cd71a2d15d00ef62` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-15.md) | 167 | `declaration-track:8183ee055bde91229ed87cb06b37ec9d09340a7dc879a7644c30ca822f77be50` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-23.md) | 170 | `declaration-track:c42c240bbe221fe2121085dc74b237fbf6ca71e34a9714c639852b77e03f1fb2` |
| 30 | `lemma` | [hom_smul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-smul.md) | 175 | `result-track:d6971b4725267c6392cb48775bad8b0f0f6e31fa1961ae744c94d8ee04b49571` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-8.md) | 179 | `declaration-track:44e50967fb660b3d8f41dba57491f983e726c95ce11687f36ee4e8661ec0f8e5` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-11.md) | 180 | `declaration-track:53c95f25ae0737c514107324f4427e4a18e4b5ed3ea71f02df8c49a82411f4fe` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-6.md) | 182 | `declaration-track:3005f842c2f08730c3319c3a219cbd7a5f5111e91c345b174feac321b8b7249a` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-21.md) | 187 | `declaration-track:bd32892f49287b219f17b11c79c33c91b32d50702bd8411ee80c8d6125506085` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-2.md) | 192 | `declaration-track:15f1cff2b1c42335060e71f011914ba9845b5e562d80a31ef7d8215a5e4b30b1` |
| 36 | `lemma` | [hom_forget₂_TopCat_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/hom-forget-topcat-map.md) | 200 | `result-track:b6b45eb4b4be08eb16a9c0e3ae4f3c5bc4144f6b1e804176b07431ea0646e00e` |
| 37 | `lemma` | [forget₂_TopCat_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/forget-topcat-obj.md) | 204 | `result-track:c0184e19c43f2a6cc97af90b5f8c85407d1fa33acda9983813e846c59a8a2bc8` |
| 38 | `def` | [coinduced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/coinduced.md) | 216 | `declaration-track:5b7f966dcbe43d77a3d4fd9f2cf43010275c4c0938836227d81517b4cb556ec8` |
| 39 | `def` | [toCoinduced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/tocoinduced.md) | 225 | `declaration-track:66ed2e2c59121e5cc1a47c1a6bc5d4413651f8067ba6d1bba347219bdd85bb80` |
| 40 | `def` | [ofCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/ofcocone.md) | 231 | `declaration-track:58ea2063299d03ef07c07d457dc4bfb23a4e915868917a10e038d99e6c1eb7f7` |
| 41 | `def` | [isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/iscolimit.md) | 241 | `declaration-track:e0a6137729bcd65e820a20702a7a3f2301c9f965be41c79b100794efd5afe9b9` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-20.md) | 260 | `declaration-track:a47955cf000d797c42acdf558341cffae5607390f25e8c1c8554110aebf09dba` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-22.md) | 264 | `declaration-track:c28d823ff3a848583ad18035c6ce7996fa8fa38a0381089ee0a7ba51450510dc` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-27.md) | 267 | `declaration-track:e984ff403f6f272002b333972e51e7129b5d5e95e0f58e6f75e4c7e965fd058b` |
| 45 | `def` | [induced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/induced.md) | 279 | `declaration-track:b1d03f7ba682fb11b699488feca728afcf409bf0a3e979d77bd3a3614a237dbf` |
| 46 | `def` | [fromInduced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/frominduced.md) | 287 | `declaration-track:97b9b437315608ba81b9dba0ce31f88d412fe73db2dd0812db6952d505c770e1` |
| 47 | `def` | [ofCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/ofcone.md) | 294 | `declaration-track:385bd2df94fc46c367922f42d2eb72a28c25622c815440391e4649ec8a7e10bf` |
| 48 | `def` | [isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/islimit.md) | 304 | `declaration-track:5caf687d3a677d70669d95495850360085709a7bc60ceb194d750fcaa3d4dded` |
| 49 | `instance` | [hasLimit_of_hasLimit_forget₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/haslimit-of-haslimit-forget.md) | 322 | `declaration-track:80b34a60f57bcbf487749fc3fa058fd761bb89530c2e9e48b61d1fe2c4e76308` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-12.md) | 326 | `declaration-track:657184d33d845b07214d12cabac76e76ca77aef5b85e8793d8e60fdd986c26bc` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-25.md) | 330 | `declaration-track:d1ff07aac4bef1c55ac3540c29f936b2c3f9096732822a2e771535aefd55b515` |
| 52 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance.md) | 333 | `declaration-track:034fc1a8c3930cb4a57087f28f92917ed8d096e48b2c66eb620de8446868c0fb` |
| 53 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-14.md) | 342 | `declaration-track:6cf385c70227b75d539392c9e09597833027d1946b2f9d30addea054258683ca` |
| 54 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-10.md) | 347 | `declaration-track:51b43f87d4198b087694bf7655ac57df419c9c816082095f27295687969f03ff` |
| 55 | `def` | [withModuleTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/withmoduletopology.md) | 357 | `declaration-track:8d30d504c5007de266d7b563952c48b6dbaf7d85ba6b6d8bcac478840d325e4e` |
| 56 | `def` | [withModuleTopologyAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/withmoduletopologyadj.md) | 370 | `declaration-track:8682f584d5ab93e37b80e305a98479382620375c3c9c0fbd9f11642d3a401b52` |
| 57 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-19.md) | 376 | `declaration-track:9f05ace5ca250f3d4fc941136f0cec23ede410207c8b1534cc22c41c184f27c7` |
| 58 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-7.md) | 377 | `declaration-track:3aa2d17f48ebb1cef7fa2dd65eb892777c04c952a23ef4a8c0e40a5fd2906f90` |
| 59 | `def` | [indiscrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/indiscrete.md) | 381 | `declaration-track:419c658e49a34985ea2d004521aaa42c3eb2e35af03aa6d1fbbf47162395eefd` |
| 60 | `def` | [indiscreteAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/indiscreteadj.md) | 394 | `declaration-track:a37da82842ea13a760245147941ebc843b3b20845e4a92ccc5414efa8440fe47` |
| 61 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-9.md) | 399 | `declaration-track:4f4cc93b80fa8e4a58643766a2e06f22d59b791a4969a90b1310dc116af618ea` |
| 62 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-5.md) | 400 | `declaration-track:2fdd1e3961bbf2440b4f436ae8d3e650f6eb0017b60c5da6236cd7295f6675ca` |
| 63 | `def` | [freeObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/freeobj.md) | 404 | `declaration-track:71d89288ff0b53bebc588ea46c6dc34b09432bc85ba100165e227f84a0edb487` |
| 64 | `lemma` | [coe_freeObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/coe-freeobj.md) | 412 | `result-track:8d9cecd36b4630f648e5980209371b16f44c9518e4a4d4f9c0ffea0b30078bcd` |
| 65 | `def` | [freeMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/freemap.md) | 417 | `declaration-track:6ed980c367742657a2d2abb34615fa065dd06f309f4e353f333d5d1282c108db` |
| 66 | `lemma` | [freeMap_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/freemap-map.md) | 431 | `result-track:4ec925007779dc3441f54739d8fd3efc07e4802f5ea057e4132788abd0b5158a` |
| 67 | `def` | [free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/free.md) | 437 | `declaration-track:e8771e1f3a9cf94a5d5e33b4acd861346c2ae9058017501de5f7c21b8a7e4824` |
| 68 | `def` | [freeAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/freeadj.md) | 447 | `declaration-track:d9ed45e5dee62d88126b79501218cea94f49d3fac34b3839867e7a3027948f06` |
| 69 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-18.md) | 476 | `declaration-track:92ad4f7da49e3bcd66cbb22f793e6a5b6d7cca62e0d14e59e294f6b56f3e4826` |
| 70 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/instance-source-edition-3.md) | 477 | `declaration-track:24bb15a37b3a59bdb028c451a3d690cf78d714e4dcc9b7b8cebf0631e293888a` |
| 71 | `def` | [endRingEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatTopologyBasicPublic.lean/declarations/endringequiv.md) | 485 | `declaration-track:e55da1c98964ce7b6e2f44f7a44d2efdb7cdc666db46218c68014c33a38cbcba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54f2ee241e3f6e906c3500941047b1c523a4392e0a6996d64b4b84f53f562b6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantcd1041e82c33bb889c23024261b6468e375650065014d041ae14d92c97ec8344.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
