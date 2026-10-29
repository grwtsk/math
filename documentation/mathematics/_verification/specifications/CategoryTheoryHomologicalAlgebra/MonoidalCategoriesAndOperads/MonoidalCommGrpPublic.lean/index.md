# Verification target: Monoidal Comm Grp Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a6b3ad74b1d6211baf7ce1f31c90119455e2a4e",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant50221549ad05c60cc8a2f4401430409b7ec4396b20442971a56fcf1783cc8cad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a6b3ad74b1d6211baf7ce1f31c90119455e2a4e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant50221549ad05c60cc8a2f4401430409b7ec4396b20442971a56fcf1783cc8cad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant50221549ad05c60cc8a2f4401430409b7ec4396b20442971a56fcf1783cc8cad.lean.json)

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
| 1 | `structure` | [CommGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/commgrp.md) | 26 | `declaration-track:2645a9b562a75c3e863ce96697130791778ed7058ef2ac4df924dc4fe9456da9` |
| 2 | `abbrev` | [toGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/togrp.md) | 40 | `declaration-track:4ba52cabbc1dac7498136ead68bc690fcf43c8ae593a24f48003c446a3d5ab2e` |
| 3 | `def` | [toCommMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/tocommmon.md) | 44 | `declaration-track:f7b0eb58ce084fadbe7211e05911472e5447f5249efe5eeac69d9bc1afa41414` |
| 4 | `abbrev` | [toMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/tomon.md) | 47 | `declaration-track:3289b4bbfb1b49478b0e1f27b670ab1ca102250faf30b93137cb67167ec4b20f` |
| 5 | `def` | [trivial](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/trivial.md) | 52 | `declaration-track:c3132eb517dcb41d28f4b898f0ed1e132b1f0ad1264ff816a5a8c15385ff699f` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/instance-source-edition-6.md) | 54 | `declaration-track:cb868bf62757cb7a3ea8720eb5b2bd3a2f88d4382b14a6313f33baab3fe04e47` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/instance-source-edition-2.md) | 57 | `declaration-track:2e2d5ee82058aaeee1f3c58557fb7039b5f4cd5d44f31e9bd66de274550c7790` |
| 8 | `theorem` | [id_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/id-hom.md) | 61 | `result-track:232dc795fdb09b45fafc95c1b8f8ca25c41ac7fc6a281a586892457acfc6e437` |
| 9 | `theorem` | [comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/comp-hom.md) | 65 | `result-track:3f74e83ac7a61de2da3b077a341d8bd3033d3a5b83575d0e3e08c3458ebe1c00` |
| 10 | `theorem` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/hom-ext.md) | 70 | `result-track:b238320c071cfdc93e8a2ee37a9d3cb9b0cf62ec3cd201f4460037efe2ed703e` |
| 11 | `def` | [forget₂Grp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/forget-grp.md) | 79 | `declaration-track:9a9f1a1c46b866ba20e4a2ed20ccf89e6daca77d8809917e83c9692fdf89aa40` |
| 12 | `def` | [fullyFaithfulForget₂Grp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/fullyfaithfulforget-grp.md) | 83 | `declaration-track:6a10ec7190aaf49475b787168d8b3f5dd93da7b69fbf2f5555c4c6da703b77d9` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/instance-source-edition-10.md) | 86 | `declaration-track:f8d85f9b61416068ab779ad4d0e0acfc45a2b47ac7486640f862dfd793c8e40c` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/instance-source-edition-8.md) | 87 | `declaration-track:d61a72f7f075f9318aee777fa35fb76e8a2784b4a92e6c69c2fe2ce8e043049d` |
| 15 | `theorem` | [forget₂Grp_obj_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/forget-grp-obj-one.md) | 90 | `result-track:9a32b70e84d274f3bd9355d4af4d49c48af90f0264557633896bb3215fa94af8` |
| 16 | `theorem` | [forget₂Grp_obj_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/forget-grp-obj-mul.md) | 94 | `result-track:e805c61e2f21696ef3267568676e45d12ed1df6757ae28a97bea73ffc847c237` |
| 17 | `theorem` | [forget₂Grp_map_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/forget-grp-map-hom.md) | 98 | `result-track:4ca7968622c5ba943a21c713dcede1da35159100a09415a2524f97fef8a19faa` |
| 18 | `def` | [forget₂CommMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/forget-commmon.md) | 103 | `declaration-track:6ca8156269444a413401e12e52df872c0a394132468012f3000fea6de9c2bdca` |
| 19 | `def` | [fullyFaithfulForget₂CommMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/fullyfaithfulforget-commmon.md) | 109 | `declaration-track:06ca8326b635912a0ae4c36a36f4b003ad7a48044e37681cac4d7b39468e38d2` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/instance-source-edition-7.md) | 112 | `declaration-track:ce22b3ebfabab1ca7f22531c5a538aefb7f502163b14877374e86e235c3c7b01` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/instance-source-edition-3.md) | 113 | `declaration-track:3dfc716bfa25d484810a7d91caef8a2287a1ffe5e549b598ddf3374c1a152be8` |
| 22 | `theorem` | [forget₂CommMon_obj_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/forget-commmon-obj-one.md) | 116 | `result-track:c1b6929cf6d47bc71b64579dfcff75564c3b321ac5bc65d885c4567622ede578` |
| 23 | `theorem` | [forget₂CommMon_obj_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/forget-commmon-obj-mul.md) | 120 | `result-track:c6a789b0b5f2cc55ae7dea3813cd399722741033d66946a03b20d528ecd3e9c5` |
| 24 | `theorem` | [forget₂CommMon_map_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/forget-commmon-map-hom.md) | 124 | `result-track:8064e7035ca2be5df9c1680c47906c7a9c36e6bee2c48f8d643d2257e1a93aac` |
| 25 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/forget.md) | 130 | `declaration-track:739b0a446e1b04eb12911ab74003cdd5ca160a118c6b3517526610d261cddae4` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/instance-source-edition-9.md) | 133 | `declaration-track:e257d1508a8cd337f344fcefbcca4673c532e0de0074b8477a342aaacc426609` |
| 27 | `theorem` | [forget₂Grp_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/forget-grp-comp-forget.md) | 136 | `result-track:bc0f1469cd22055e62a331e6899ca31872388dc43ff140e55d19a69ff6958b85` |
| 28 | `theorem` | [forget₂CommMon_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/forget-commmon-comp-forget.md) | 139 | `result-track:8153da2c0ee521a7aa131b028591bbe6c337ea937c6f5bae489354c0bd90c9fb` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/instance-source-edition-5.md) | 141 | `declaration-track:b9456ab4c0748247f3f53ce7d1d9ba2adba0efc0ca174ea1abbd5c12b3984804` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/instance-source-edition-4.md) | 144 | `declaration-track:73674f5070dbbf09e7b6913c4192a28ac8b5e0fe5b6ef2c4a88b54344bb65f60` |
| 31 | `def` | [mkIso'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mkiso.md) | 152 | `declaration-track:6cc6e7f6d69bb15794f4797bbab212b51e15d22c6360e641eeb1eb3e91c0b1f2` |
| 32 | `abbrev` | [mkIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mkiso-source-edition-2.md) | 164 | `declaration-track:d78d6ba9669f32cd8c24f0b9781059b95a49c7126747ed437d7b4abd13ebf029` |
| 33 | `lemma` | [mkIso_hom_hom_hom_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mkiso-hom-hom-hom-hom.md) | 169 | `result-track:80f157a77f6521d25b3820f3ee6087ebcf962a105a39850d8b516277354ab7fd` |
| 34 | `lemma` | [mkIso_inv_hom_hom_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mkiso-inv-hom-hom-hom.md) | 171 | `result-track:536dbe16af5138868e495eb77ba25ed363ef8e4ccc9bff2e879e6d3aec5fd579` |
| 35 | `instance` | [uniqueHomFromTrivial](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/uniquehomfromtrivial.md) | 175 | `declaration-track:298c498083e78ec9f221c3b17c6df6fecdf8a5298c7038730ec2814e4ba734ee` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/instance.md) | 179 | `declaration-track:1b84c5ebfa96046effe25a2072ada13f9b00e6c684d7347962a0c555bc22a557` |
| 37 | `def` | [mapCommGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mapcommgrp-source-edition-3.md) | 199 | `declaration-track:ee401718055970997225e8cf0e5b97344c6c331c7a94a9a00138efce7f6564c6` |
| 38 | `instance` | [Faithful.mapCommGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/faithful-mapcommgrp.md) | 208 | `declaration-track:fe87b0f8a7979d01663b987983e824d9f476b3643813a1490e24faeeaf229857` |
| 39 | `def` | [FullyFaithful.mapCommGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/fullyfaithful-mapcommgrp.md) | 216 | `declaration-track:71565310cb687e7d04574919e156a3f2aaeeb6c9f1440b32169a6b337de3b01f` |
| 40 | `instance` | [Full.mapCommGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/full-mapcommgrp.md) | 219 | `declaration-track:f5343c2119386f756d4bd047e9e1e70c8ebab546997d0c9022defc7972f0ea73` |
| 41 | `theorem` | [mapCommGrp_id_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mapcommgrp-id-one.md) | 223 | `result-track:05b9f9f327e680bfacf15b245606aad2251bb30498ada41b4b6e502e002795e0` |
| 42 | `theorem` | [mapCommpGrp_id_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mapcommpgrp-id-mul.md) | 228 | `result-track:8149f6b573eb8c1543623f2657c9ae678e546f0a6736125e989ed4517d65ca9d` |
| 43 | `theorem` | [comp_mapCommGrp_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/comp-mapcommgrp-one.md) | 233 | `result-track:aa7e0e73a2991c6a679177788c12f3b5e824db73941aeff943ec0dd86b6f6721` |
| 44 | `theorem` | [comp_mapCommGrp_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/comp-mapcommgrp-mul.md) | 238 | `result-track:6b5c912a687614badcb59e94354dadb4c1e0469c5af0decbda2105fc638af076` |
| 45 | `def` | [mapCommGrpIdIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mapcommgrpidiso.md) | 245 | `declaration-track:ca765a912f38a716ee2f01ac413881c54f490c93ea22f2a4d53329c183e0ecda` |
| 46 | `def` | [mapCommGrpCompIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mapcommgrpcompiso.md) | 252 | `declaration-track:fbf53f2c81f0946fdceabe2ba1712f6c0eb18fdb3fd4dbaa0e898610f8432ade` |
| 47 | `def` | [mapCommGrpNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mapcommgrpnattrans.md) | 259 | `declaration-track:d43503792f4ed3e1a86542fcd6ede610ae68900637886be8dde3c0aa2fb1652d` |
| 48 | `def` | [mapCommGrpNatIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mapcommgrpnatiso.md) | 265 | `declaration-track:f1be0aa44ded3b6e422a6d8951a89712d55337c6fb6ddb116f1eca0f04ee34a8` |
| 49 | `def` | [mapCommGrpFunctor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mapcommgrpfunctor.md) | 271 | `declaration-track:e27d64c152d011cef30dc852ea91c5c5414ac4ddf3de40ead037cbe1d7489696` |
| 50 | `def` | [mapCommGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mapcommgrp-source-edition-2.md) | 285 | `declaration-track:298ccff252e14df2752668db6dd0d515345cdad118c0dbe98b01fcc95280e877` |
| 51 | `def` | [mapCommGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpPublic.lean/declarations/mapcommgrp.md) | 296 | `declaration-track:160dc6a14bb4077e7daeec280bd370fc3164073ee36e68ff3c78e34476a3a1ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84494077137a5b03cd08b813d6f56473ecf27e00309b2d116a77c6e8a440eb4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant50221549ad05c60cc8a2f4401430409b7ec4396b20442971a56fcf1783cc8cad.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant50221549ad05c60cc8a2f4401430409b7ec4396b20442971a56fcf1783cc8cad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
