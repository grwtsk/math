# Verification target: Cone Basic Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6f463e7334b5820e579b56cf61c1d46e2349855",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Basic/Variantdbe5efe60788443425458f3f91b0e682bdc8b0f05506e31373a35b740283c5ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6f463e7334b5820e579b56cf61c1d46e2349855`.

Source path: `GRWTSK/Analysis/Basic/Variantdbe5efe60788443425458f3f91b0e682bdc8b0f05506e31373a35b740283c5ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Basic/Variantdbe5efe60788443425458f3f91b0e682bdc8b0f05506e31373a35b740283c5ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Hull` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearPMap` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ConvexCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/convexcone.md) | 87 | `declaration-track:0dda055ccd8437ea9696c7b11607bda79429a94cde0d12740299027c1567639d` |
| 2 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-7.md) | 105 | `declaration-track:a7f551b02ff74476fb4ed857cd4ade402c6b4b405317f075b9bc1caafcb39224` |
| 3 | `theorem` | [coe_mk](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/coe-mk.md) | 110 | `result-track:bfe71dba1bc61f2de446144500548862b2af758180aaabde6b72f9fbc9af5d97` |
| 4 | `theorem` | [mem_mk](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-mk.md) | 115 | `result-track:fef1215305bc458f89b58d1016a982d7785f048d7e63dd0c46c960084e1ae31c` |
| 5 | `theorem` | [ext](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/ext.md) | 121 | `result-track:5f34be572dd91d7a89ed222a7667478bf2096ccc99dabb420d2f5955ede92823` |
| 6 | `theorem` | [smul_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/smul-mem.md) | 125 | `result-track:eb80600e312face16b373fb3c18ea97526c9a589457dc44ff9a293662ab66ad1` |
| 7 | `theorem` | [add_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/add-mem.md) | 129 | `result-track:3054d41c111ecd1c28baa858cf87b93b12a0e2765135c021830b6ab08950eed7` |
| 8 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/instance.md) | 133 | `declaration-track:00b98b8d96820a98e0c3a37981a4bf5b9eb598db4e4a2ddad7e40bd6c7a20ea2` |
| 9 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-8.md) | 135 | `declaration-track:b90dc9179f2d9102ade63fe2bd46cc805c25a668f5f4b2b37e755d795e096401` |
| 10 | `theorem` | [coe_inf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/coe-inf.md) | 141 | `result-track:e9c1ee1e1926858773819eb9d437875ccd642df903913ad27d229c2adb15bb77` |
| 11 | `theorem` | [mem_inf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-inf.md) | 145 | `result-track:9a0d9190f5a61b14e80706fd5964e814fe9c31864a74cc9aa75abc3799735874` |
| 12 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-9.md) | 149 | `declaration-track:c56ae6f4767fa5b02c954a904fe7d18a7156c31e552040058bfed91880d97882` |
| 13 | `theorem` | [coe_sInf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/coe-sinf.md) | 156 | `result-track:5bb61f5d2bfda7357a0fc4c3df5a24f72099f6cffadc41880aa3c0ecad098d21` |
| 14 | `theorem` | [mem_sInf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-sinf.md) | 160 | `result-track:d8478fdc37a35cb1fabd0f1124b7c997d2ea63183994cf52ae66fca462f246b6` |
| 15 | `theorem` | [coe_iInf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/coe-iinf.md) | 165 | `result-track:b0c94fd2bde3e148ce256cfeebca146402df6a53853c60b6147d5ba6b05ab399` |
| 16 | `theorem` | [mem_iInf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-iinf.md) | 169 | `result-track:28c86b8ed2007712b4322b1bb0894e2c944516435d5f22925b7dcfd3c7fc926e` |
| 17 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-4.md) | 175 | `declaration-track:4672660927fb44ce595590196ad9e74f3b931ab6bbc1dc1008314f4cac9fa50e` |
| 18 | `theorem` | [mem_bot](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-bot.md) | 178 | `result-track:95e887a8a00fda65617d8ff2c260cd048ec851d50d2ce1f50d2468cf5a44fa82` |
| 19 | `theorem` | [coe_bot](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/coe-bot.md) | 183 | `result-track:3363efe7ce22f2c7f3701e7cebf8710757ecf987f621dd765a61a188e224b556` |
| 20 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 187 | `declaration-track:0154f852212f0080acc2775790d91c6515187087dcaa3bd8d8d9c2ffa3694d03` |
| 21 | `theorem` | [mem_top](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-top.md) | 190 | `result-track:baf5a13f14d529cdc1583f0abfff9a149f7bddc0cd2709ebb82a3445ec6f8b0b` |
| 22 | `theorem` | [coe_top](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/coe-top.md) | 195 | `result-track:55cb9c4015945fdd07d9df7a6e08a501085b8fddeed65b2c396b33b51fa20f87` |
| 23 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-5.md) | 199 | `declaration-track:6578e4022fb870afc031033a4115d416926434297bac9e9f619e307bd32e4821` |
| 24 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-3.md) | 222 | `declaration-track:38910edd309d32d4587923f0bd111be484a6e892e5599d68a66fc2e83faad114` |
| 25 | `theorem` | [convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/convex.md) | 231 | `result-track:5b9df2ca54f94767548a4c1fc35f851d79995be42563db2b4f01384cf9e321af` |
| 26 | `theorem` | [smul_mem_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/smul-mem-iff.md) | 252 | `result-track:7d95d8f5e488c49bf0ea0a1b179cfac1a0a9922d6d91a3389b01c7f1a6b1d82f` |
| 27 | `def` | [map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/map.md) | 263 | `declaration-track:c4bf9c39bdcd14adbd4277c80206ebba98d263d2501b8a260ff9905476f81ad8` |
| 28 | `theorem` | [mem_map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-map.md) | 271 | `result-track:c7fe528843083f3430b4af5c0f08e056f9d78a9f111496079bb76fa2dd44f360` |
| 29 | `theorem` | [map_map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/map-map.md) | 275 | `result-track:745f95245870287dd3e5aa570219ef4e1d295c2ee6341f6410602e9d6da4a4c7` |
| 30 | `theorem` | [map_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/map-id.md) | 281 | `result-track:5210950368fa68d2caeb227258c3682098e1f38634ba290e5759cd0ea39cd804` |
| 31 | `def` | [comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/comap.md) | 286 | `declaration-track:aafaebf2cdb34cfce045977b9d9b5308f59563ff25911415de0392f7d70f3b1a` |
| 32 | `theorem` | [coe_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/coe-comap.md) | 297 | `result-track:47dd9cd1b240935a3143c1ead478a1c7065097f0077933309c8737691a20a1e6` |
| 33 | `theorem` | [comap_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/comap-id.md) | 302 | `result-track:7e69741a6d2d3138f387788108b072f439ebce1da715de76bff2b658be04a831` |
| 34 | `theorem` | [comap_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/comap-comap.md) | 306 | `result-track:a5171f7bf60786ae5e3786d1cc36c5850a6a1783ab652da8d5c6f88c7e77b576` |
| 35 | `theorem` | [mem_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-comap.md) | 312 | `result-track:c9209216378765bcde2aebf7024c0e8eb13128e3d28b7f244c66876a801c7d90` |
| 36 | `theorem` | [to_orderedSMul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/to-orderedsmul.md) | 327 | `result-track:1b6de74f6a8bcd4962ddb78f4b145ed70cfa11ba866e1c07814cf8c5fd62b4e0` |
| 37 | `def` | [Pointed](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/pointed.md) | 351 | `declaration-track:3abf4b8504991f2e6833ebc04bf6fc2ceb9477cfb1a1b7d4a057c5252dfba217` |
| 38 | `def` | [Blunt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/blunt.md) | 356 | `declaration-track:749d6c3f5bfaa57625bd9b7eb43a9e98ab2a649330de5c33570f046809508195` |
| 39 | `theorem` | [pointed_iff_not_blunt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/pointed-iff-not-blunt.md) | 360 | `result-track:dcd5a7a63197bdab0daa24de295d863d50ce51a232628768d53879403e304db4` |
| 40 | `theorem` | [blunt_iff_not_pointed](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/blunt-iff-not-pointed.md) | 364 | `result-track:e7b141128b1d5d2c7d3a1ae48aaed5c1e39ecb99d360258e667d63d041f7d641` |
| 41 | `theorem` | [Pointed.mono](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/pointed-mono.md) | 368 | `result-track:5a8730cdde13cd45cbba974c1d346dd34a1bb7054f12b99715d7435dd77879a4` |
| 42 | `theorem` | [Blunt.anti](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/blunt-anti.md) | 372 | `result-track:3f3bb5bd27f88640546c46cbb9c6ee68ac408cb2ee9a3fbe2609f757a84123e0` |
| 43 | `def` | [Flat](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/flat.md) | 383 | `declaration-track:42d0bbb69968aa92ce46c19c4b94250ef7eb0ceebc00a782cee4da5113e7c2c0` |
| 44 | `def` | [Salient](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/salient.md) | 388 | `declaration-track:4bc9af1b979e0fa028ea790e2c68beed16f334d451e1de641fb89df8c86d2dea` |
| 45 | `theorem` | [salient_iff_not_flat](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/salient-iff-not-flat.md) | 392 | `result-track:96bfbc74b0b9f2c7dce4fd36db7f65b2e25b44bf9aeff5f47439874ae94f8943` |
| 46 | `theorem` | [Flat.mono](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/flat-mono.md) | 396 | `result-track:7aad963610d96888f1cf39ff49b6e446d3819264ecc94e0e5fc5a1798824f73c` |
| 47 | `theorem` | [Salient.anti](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/salient-anti.md) | 400 | `result-track:677926bee3338222c34e0a97493a220a131f59b1524debd026446490fddf8348` |
| 48 | `theorem` | [Flat.pointed](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/flat-pointed.md) | 405 | `result-track:9b0c8c26c907bd2554cc75fa534147bd670671205a536d6db2d67cd81c236bc6` |
| 49 | `theorem` | [Blunt.salient](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/blunt-salient.md) | 412 | `result-track:4df9ddacf5741c6a390785e33445e89e1012a9b32d153066f9c0e2d46a23a2c0` |
| 50 | `def` | [toPreorder](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/topreorder.md) | 418 | `declaration-track:ca0dae952cb1fc49fed64da8727cf74360fe3e82bcdac8a65a1f74163aef07da` |
| 51 | `def` | [toPartialOrder](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/topartialorder.md) | 425 | `declaration-track:e765a28cbc2ac2d6d2c0bec47ffbd5a518acd5c6a263ab6403318dedadf6f8b5` |
| 52 | `def` | [toOrderedAddCommGroup](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/toorderedaddcommgroup.md) | 437 | `declaration-track:783595327b4fa0e1e8f1a4b6927fa7b56e67667f5908c45f574b8ca7e281c6a0` |
| 53 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-6.md) | 452 | `declaration-track:86d69a3bd4d8dcfb6b2de260067f21aabec6936b0309a1125ef63664b1131f5c` |
| 54 | `theorem` | [mem_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-zero.md) | 456 | `result-track:bc608d19c7a27a64d0884b5779aa99790b0eb8090e4d8579534726e0ce0070ca` |
| 55 | `theorem` | [coe_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/coe-zero.md) | 461 | `result-track:4efc407d077a882176ee76995d983937e46abccb6ccd86398a4da973ca18b9f9` |
| 56 | `theorem` | [pointed_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/pointed-zero.md) | 465 | `result-track:9444d58acffc81639bc0ea69711f6a92511e291e0d41d0447d87dda6d930e45f` |
| 57 | `instance` | [instAdd](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/instadd.md) | 468 | `declaration-track:32278cd82cc1b3003d8f2194e4114aeebfd98e8607c61c9b5c2ae73a927c4346` |
| 58 | `theorem` | [mem_add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-add.md) | 481 | `result-track:f83805f79266bf23a5d11137738ea8404d84fc00d14587e86ba54f9f021bf60c` |
| 59 | `instance` | [instAddZeroClass](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/instaddzeroclass.md) | 486 | `declaration-track:72890bd196dd6663f4fc6a7fed4a3087fb4b5887e52c2baa667e7200ffb59222` |
| 60 | `instance` | [instAddCommSemigroup](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/instaddcommsemigroup.md) | 490 | `declaration-track:0e5a1604ac6f3011b7170b428b3f15cd6a91d1152998409a22906af12ba7d875` |
| 61 | `def` | [toConvexCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/toconvexcone.md) | 515 | `declaration-track:beb4b571e07bcecb9e12e6dc34502bd0712dfa3f73f275a9140fb935dd3940be` |
| 62 | `theorem` | [coe_toConvexCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/coe-toconvexcone.md) | 522 | `result-track:939db3cc4e70ccee17caf66d5d02c1fa3f65322f8c9e112f99014d1074ffcf0f` |
| 63 | `theorem` | [mem_toConvexCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-toconvexcone.md) | 527 | `result-track:6cf01b7c82389952a4b5bba8cff2c99c1568d1751610c1f9954b52aa7c624b79` |
| 64 | `theorem` | [toConvexCone_le_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/toconvexcone-le-iff.md) | 532 | `result-track:314738d9617da2cc3137fc5940805e6b05c830df5e622a66d311105204881b05` |
| 65 | `theorem` | [toConvexCone_bot](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/toconvexcone-bot.md) | 537 | `result-track:435251f6fbaa32934e77d2d0bf19c6f2c2ec2c2efc597b084479af9e46320fa2` |
| 66 | `theorem` | [toConvexCone_top](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/toconvexcone-top.md) | 542 | `result-track:aa19832c4494b2c31f848ce8318f0c3fd202aa275b8ac8585af0f6838f7cad81` |
| 67 | `theorem` | [toConvexCone_inf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/toconvexcone-inf.md) | 547 | `result-track:578199d7a93fcc8b6f118eaaeeb1f102b52ab5939c3138076ed78e14576028a3` |
| 68 | `theorem` | [pointed_toConvexCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/pointed-toconvexcone.md) | 553 | `result-track:3739d3be1f46f69c6d5a3ba9f5428a50a33865ee61db1e8518f129032ba60ac4` |
| 69 | `def` | [positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/positive.md) | 575 | `declaration-track:cfefa60d34352343bd5df393504774dc98830416e844385535e89d0ebe4ba85b` |
| 70 | `theorem` | [mem_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-positive.md) | 582 | `result-track:6a3921159c63388c6a83152e7fc6a87b435593f567b7feae1b576b6003a70b10` |
| 71 | `theorem` | [coe_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/coe-positive.md) | 587 | `result-track:919760c7a5f5796bcb02d865159aea642aaea1b7354ca241593393a62d4dab3e` |
| 72 | `theorem` | [salient_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/salient-positive.md) | 592 | `result-track:0b0079c12e8b4867748866acc76d76a370113c106be988ae96c40b190aea5ec4` |
| 73 | `theorem` | [pointed_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/pointed-positive.md) | 602 | `result-track:05b2853e86e4f6a3bf080d931f0c0f9da4a66d513070dd2d0c41c841d15e4a51` |
| 74 | `def` | [strictlyPositive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/strictlypositive.md) | 610 | `declaration-track:a1cb7850f4f42716dadea8c97d50c78441c5018327d419ab2789b1e611c4ecb5` |
| 75 | `theorem` | [mem_strictlyPositive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-strictlypositive.md) | 617 | `result-track:06f3d1b2224814f1ee770774566d3066b20f7fe7f43baf3e5062d75970966e6b` |
| 76 | `theorem` | [coe_strictlyPositive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/coe-strictlypositive.md) | 622 | `result-track:83e8e477396255f298d2711f34e2506ca67b132dc29e6fe72a583342f8a3d05e` |
| 77 | `theorem` | [positive_le_strictlyPositive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/positive-le-strictlypositive.md) | 626 | `result-track:02c04ca2e7b371c459ab990b6bc9719e4d44c405572be5c19ee623a700d7b940` |
| 78 | `theorem` | [salient_strictlyPositive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/salient-strictlypositive.md) | 630 | `result-track:c99c00af727e40f5e348b1803d516b296ce3f74ee44ddc3a062a6785a0f9a731` |
| 79 | `theorem` | [blunt_strictlyPositive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/blunt-strictlypositive.md) | 635 | `result-track:40ccdca6073bde82242b43662cdd0a1c617e0b2af93c87ced5f810406cde302c` |
| 80 | `def` | [toCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/tocone.md) | 653 | `declaration-track:d402ab000cf2f03943e9650e6c497d7a2ac62d162fdd09c782b04f079c97ad68` |
| 81 | `theorem` | [mem_toCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-tocone.md) | 665 | `result-track:70985553614ab3353d0ab331d8dae52097bb84d87df3b2e651d854d8a98dec80` |
| 82 | `theorem` | [mem_toCone'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/mem-tocone-source-edition-2.md) | 669 | `result-track:8033897e61358c33a198cb57da0752ee24a37f055242f44ac5188ceb9431dff3` |
| 83 | `theorem` | [subset_toCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/subset-tocone.md) | 677 | `result-track:3ae8f08fc5450c2847a71f9d8439e76314ed8706c5bb7b0624a72aef9b0c5b83` |
| 84 | `theorem` | [toCone_isLeast](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/tocone-isleast.md) | 682 | `result-track:161c7ad4577c80ad12e6c66f67fde2e5c88bafd32ca757219cd267ebbea81c29` |
| 85 | `theorem` | [toCone_eq_sInf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/tocone-eq-sinf.md) | 688 | `result-track:9fbc43562946313ea072ea9247cb7ceca92d24a0bbc6055712bd56457311e634` |
| 86 | `theorem` | [convexHull_toCone_isLeast](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/convexhull-tocone-isleast.md) | 694 | `result-track:771c2b89a9684d7c7c7c42373bd61673903b16f78e6334a7d20e318173ecbc10` |
| 87 | `theorem` | [convexHull_toCone_eq_sInf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/convexhull-tocone-eq-sinf.md) | 701 | `result-track:470137cb0052b9541156a45289a665a6ccb014a1f22289bf2b64ffc11288f358` |
| 88 | `theorem` | [step](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/step.md) | 738 | `result-track:8db2958125ba0c9550ba04ced90372add42c61114858dbaa4794f2db2d6b6708` |
| 89 | `theorem` | [exists_top](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/exists-top.md) | 790 | `result-track:e2eb90d01c2c056dccc206de7d8383d0350c81f8f6ab31796f49455058a19eee` |
| 90 | `theorem` | [riesz_extension](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/riesz-extension.md) | 823 | `result-track:5252b0b4b2eaf4a4ba5dcd929dfdb6c9771180863beaf48659a97e819af00f25` |
| 91 | `theorem` | [exists_extension_of_le_sublinear](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition1.lean/declarations/exists-extension-of-le-sublinear.md) | 838 | `result-track:3ed50c277250b5deca9e2ca17020f3566b582387e05f47b35a2034cceaa286c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01bfb3b02e3959388b064a4be46dd9475eec6aa8fb64de8fea373f9651de5f7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Basic/Variantdbe5efe60788443425458f3f91b0e682bdc8b0f05506e31373a35b740283c5ba.lean","GRWTSK/_verification/specifications/Analysis/Basic/Variantdbe5efe60788443425458f3f91b0e682bdc8b0f05506e31373a35b740283c5ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
