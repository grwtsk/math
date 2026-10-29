# Verification target: Cone Basic Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f25b233f3b80e72774972abb137702f61d24401d",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant4bc42a1c2672cee08e1c7c8cde95f8ca62d1b764652f8a70cde39ccc6f8223ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f25b233f3b80e72774972abb137702f61d24401d`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Basic/Variant4bc42a1c2672cee08e1c7c8cde95f8ca62d1b764652f8a70cde39ccc6f8223ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Basic/Variant4bc42a1c2672cee08e1c7c8cde95f8ca62d1b764652f8a70cde39ccc6f8223ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Hull` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ConvexCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/convexcone.md) | 64 | `declaration-track:009df0aa17d090493bcfb0132f36f686fff6a33a2dd43913b4f770736bf94229` |
| 2 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:54c7ac4af15fc0daee99553abe7a3d79c927a605d36c83b067a0c7c6243d91c2` |
| 3 | `theorem` | [coe_mk](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/coe-mk.md) | 87 | `result-track:2412050645dbdf1dc6ddc991ac3c1f08d6572359a706fb7510f098a8aa7b4159` |
| 4 | `theorem` | [mem_mk](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-mk.md) | 91 | `result-track:048eba1784bc2dca06bc83f606104191ce01a475dc44c1bd06afe646efd2924f` |
| 5 | `theorem` | [ext](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/ext.md) | 96 | `result-track:9905d16aefa57bdf75872873d6d2c637bf3f95e3a82fc02740d34ff7a08812b3` |
| 6 | `theorem` | [smul_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/smul-mem.md) | 100 | `result-track:5ad5ee9982d5ed250adfdd241f484b5fbdeaacfc9bb312de0de870e4b1108430` |
| 7 | `theorem` | [add_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/add-mem.md) | 103 | `result-track:4cc85b862c65ecaf8aa80380070a768b18d43627036744b1d8072afd39e78d24` |
| 8 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 106 | `declaration-track:6a0067196b0d48ba017b38c34f240b90ed3168889d95306a08bfe7d92d22b324` |
| 9 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 108 | `declaration-track:5e66c1dba17252d65f2af63c55158f573d5a8d8f91bc644a4bda104521f70371` |
| 10 | `theorem` | [coe_inf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/coe-inf.md) | 114 | `result-track:227fa0444a0e7ebe72597a6ea8a8878a0f51b64e2d8f3915460e5901d18c3408` |
| 11 | `theorem` | [mem_inf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-inf.md) | 117 | `result-track:0a35d0a9d3b9f0cb59c17f13e977659a732c8a0cf91cce862f27df1616b28696` |
| 12 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-8.md) | 120 | `declaration-track:868cd1085939546c0ba5b90df2c6362d7c6384829693e533ce22e429a9f6e175` |
| 13 | `theorem` | [coe_sInf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/coe-sinf.md) | 127 | `result-track:9f11e4bc2a56d3b465f741fbb75a23f55d02812b16cdd9fbfccff648fab41b05` |
| 14 | `theorem` | [mem_sInf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-sinf.md) | 130 | `result-track:8582582441d0d5f1e5c4c013c2f2c1560d7bdf9b88b536efc63ca637e90b5dd3` |
| 15 | `theorem` | [coe_iInf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/coe-iinf.md) | 134 | `result-track:2492adaaab9526e0958f3fc1e739ecfda50b926ec1f3fec0cf32cb3b479e2547` |
| 16 | `theorem` | [mem_iInf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-iinf.md) | 137 | `result-track:294c7bb794fc30de0fbe0bd1b27441f6e3c1ff3b17659eca6ffd2d20daa92ff1` |
| 17 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-6.md) | 142 | `declaration-track:6d42cf748898e08656af49456c502fae050e494317c2a6b76e8dd266560165ce` |
| 18 | `theorem` | [mem_bot](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-bot.md) | 145 | `result-track:b576adc6645f25975445f4ab77a3deb01be0fcee5e113e919dc1fe512cd1567d` |
| 19 | `theorem` | [coe_bot](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/coe-bot.md) | 149 | `result-track:f686b03cbce09563453687083c7cddd385498acdaf7c90174f928188b5eac7d1` |
| 20 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-5.md) | 152 | `declaration-track:6be225927af903d88af41c086dab5f7fa946a904c860ae0927db97c8a0e2f760` |
| 21 | `theorem` | [mem_top](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-top.md) | 155 | `result-track:c6cff5156eee2232d65cfa56348e3aaf4c44fa954848db03a6e1b208ea262a36` |
| 22 | `theorem` | [coe_top](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/coe-top.md) | 159 | `result-track:1358ff86422d11b64153466321e9e923bb99c3c6eb4f1ed512afbb8eeb5eba57` |
| 23 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/instance.md) | 162 | `declaration-track:3e17b791f28857f72cf10d9d13fd0051ff35a4fa306fd0c89b7c0882f2412e41` |
| 24 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-9.md) | 185 | `declaration-track:9ad173ff16335b28ffb8cc0c67e0b1817411ffb5b132e86ac94090ebbdca3057` |
| 25 | `theorem` | [convex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/convex.md) | 194 | `result-track:df696f50d9dff42da7f95fd1261d47bce72f04b13943c1f5c4e239fbee3e8394` |
| 26 | `def` | [map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/map.md) | 206 | `declaration-track:2968250334b421d33099a7018f344bdf88dcc15559a825891164f8b792ec5cce` |
| 27 | `theorem` | [coe_map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/coe-map.md) | 213 | `result-track:b10c5e05664ba9177a4c7cf4e7307c1bf33a3e12a3322f12e52bc9e9bdf53cb0` |
| 28 | `theorem` | [mem_map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-map.md) | 217 | `result-track:56de5692c06f26ed88ca424a865851a1429938d43ce288c2a92a32ab65ec5e3e` |
| 29 | `theorem` | [map_map](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/map-map.md) | 220 | `result-track:90732b87c2e3052060a9d0ebd18e3ac226bf73d54ef75083605eca039eef0666` |
| 30 | `theorem` | [map_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/map-id.md) | 225 | `result-track:bd7efcc021418c46d4cd45365575edd4ea6aae65714ebc72a82d38128cbb86d7` |
| 31 | `def` | [comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/comap.md) | 229 | `declaration-track:568f9f323aba93d0f322c9518eb51c323974ebbfa746d8f96b6232cf16417b9c` |
| 32 | `theorem` | [coe_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/coe-comap.md) | 239 | `result-track:237db288c698040332dfed876eda88fd7338a258b95b0b87d8246f9b68b47941` |
| 33 | `theorem` | [comap_id](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/comap-id.md) | 243 | `result-track:62f4f28f4deb71a575060bb41e60a897c09606bc822e36e8d889eb10685cfd22` |
| 34 | `theorem` | [comap_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/comap-comap.md) | 246 | `result-track:ed7cc9c3badf8a651c863d1932038e2ca3b5944719fa8176886734dab8a77423` |
| 35 | `theorem` | [mem_comap](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-comap.md) | 251 | `result-track:720aeea1f5a6424b68e89dd695d26bee4fd819b8d04b846310834446dbd8da29` |
| 36 | `theorem` | [smul_mem_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/smul-mem-iff.md) | 267 | `result-track:f05d7dda47e2b978ab42447f893d0c8a241163303bf376b1671ed16457656310` |
| 37 | `theorem` | [to_orderedSMul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/to-orderedsmul.md) | 279 | `result-track:4a45f46a3401c5a138c98ba3bed8cb9e5e7e4e41b3448bb9b3a8de75bd3f533c` |
| 38 | `def` | [Pointed](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/pointed.md) | 302 | `declaration-track:16ee06454627f2c6485c9a51cbf686615ab84ad75564d5a69838ab48fba1ad61` |
| 39 | `def` | [Blunt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/blunt.md) | 306 | `declaration-track:dcedf35327563c8f19377cc6e738fa836d68c607daaa6639b754325e8185b914` |
| 40 | `theorem` | [pointed_iff_not_blunt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/pointed-iff-not-blunt.md) | 309 | `result-track:52a2d3165500a7269b155f533e158faf0e7813d7594afcf3c958f382b29af443` |
| 41 | `theorem` | [blunt_iff_not_pointed](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/blunt-iff-not-pointed.md) | 312 | `result-track:1416fe80100034bebc00b597c43d7c99e5aafd823bcef41d64cf1313e943bb22` |
| 42 | `theorem` | [Pointed.mono](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/pointed-mono.md) | 315 | `result-track:cf61cbb70a2eef4644de1a0c6749f7024eedda106017b2a8903be413d37e6904` |
| 43 | `theorem` | [Blunt.anti](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/blunt-anti.md) | 318 | `result-track:03638f5f1356c706deb1835d6ddf7f7aa7ef2459abf54d47a2f00961f5629027` |
| 44 | `def` | [Flat](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/flat.md) | 328 | `declaration-track:2cc3056d5dc8a1f96558ee321e4cd37fc89f765ac1f9b9fd21be879c92cd9e0a` |
| 45 | `def` | [Salient](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/salient.md) | 332 | `declaration-track:966eac2a59bb9ed59f59c58d65fa9f176a3cea1f4cf0f907e47c3d6de19e8852` |
| 46 | `theorem` | [salient_iff_not_flat](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/salient-iff-not-flat.md) | 335 | `result-track:36910180b11958647d9f520100a9e2a8b7b410b3e25c56d0a6fcfacc1b774f09` |
| 47 | `theorem` | [Flat.mono](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/flat-mono.md) | 338 | `result-track:634bee5c966ed7ef05460b92d26a2d3408d69aea53bceff55e5daa081136cf38` |
| 48 | `theorem` | [Salient.anti](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/salient-anti.md) | 341 | `result-track:7fb2aed45a4d380b13847915316bcd7f7d30a95be72b808c73fe434c3a96ee5c` |
| 49 | `theorem` | [Flat.pointed](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/flat-pointed.md) | 345 | `result-track:04005a01b7522a0c60d3a25595e6e04cba3f41d10ff2de10f7a8bdd755f89717` |
| 50 | `theorem` | [Blunt.salient](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/blunt-salient.md) | 351 | `result-track:1d8ff93be0850a4df2799d2e47b31bdece4da943e0395482d89c0644652431fb` |
| 51 | `def` | [toPreorder](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/topreorder.md) | 356 | `declaration-track:ecf884f205194abcf876b435e086650932225fd573388c7dbe785f1ff37a172e` |
| 52 | `def` | [toPartialOrder](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/topartialorder.md) | 362 | `declaration-track:5bf92c990299253f5b4e9f4f4871a9dcd771e1f85012a3ef79ee1a9e40604d8d` |
| 53 | `lemma` | [toIsOrderedAddMonoid](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/toisorderedaddmonoid.md) | 373 | `result-track:bd0080acf7efc5cbda7d16edce12250871bda87cb92d580e0ff575022889c0e4` |
| 54 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/instance-source-edition-7.md) | 389 | `declaration-track:71bd2092a66436722a1005274f5ed1643d0ce4e179f944867901e4642716c7f9` |
| 55 | `theorem` | [mem_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-zero.md) | 393 | `result-track:faf874a8ff7012573d640a2dfeb9e5edf16e97d5f1636b3ef4029478a34c4e0e` |
| 56 | `theorem` | [coe_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/coe-zero.md) | 397 | `result-track:48f4f04af0171281f825d8a61cd9f8cf14f6acb53b43061bb476d88b8ecf91f0` |
| 57 | `theorem` | [pointed_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/pointed-zero.md) | 400 | `result-track:fdbe57d3a75596a06a13998146a77fef7af20c930381b16f87877799908838eb` |
| 58 | `instance` | [instAdd](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/instadd.md) | 402 | `declaration-track:d45fe43d7d43c398ad61df3191fb5126b8a6f3e577ea5ca46728b987472307bf` |
| 59 | `theorem` | [mem_add](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-add.md) | 415 | `result-track:30826152925ed2e2e21d4c9d867b03fcb9160b619516d4eb9797af550358bb01` |
| 60 | `instance` | [instAddZeroClass](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/instaddzeroclass.md) | 419 | `declaration-track:6038301146b18db41e10c2dc58049d09abcf2ea973d96cdf3e200cf138d2a3c9` |
| 61 | `instance` | [instAddCommSemigroup](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/instaddcommsemigroup.md) | 423 | `declaration-track:402da30cc64aedeaf45a7e054674791ed348cec008d06f23a4972bef56f89698` |
| 62 | `def` | [toConvexCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/toconvexcone.md) | 448 | `declaration-track:101dc59f6376fcdd6d1e67318b56221d535214007edffeb4a9d9f0bf682d0121` |
| 63 | `theorem` | [coe_toConvexCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/coe-toconvexcone.md) | 454 | `result-track:99bf950c9f2a48058148109888892f67ef72383a9c460c96c9502fcc8e6c98ea` |
| 64 | `theorem` | [mem_toConvexCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-toconvexcone.md) | 458 | `result-track:e99afe37b3e07f96e0fbe3dbc5d3450bde4438c57394d2305d7aaf15f835c7cb` |
| 65 | `theorem` | [toConvexCone_le_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/toconvexcone-le-iff.md) | 462 | `result-track:73bf68ecdcfed0f01938c270a669f739e1ca73afcd3664df45c025b63876c978` |
| 66 | `theorem` | [toConvexCone_bot](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/toconvexcone-bot.md) | 466 | `result-track:22109e3bebe7da157ff7997539b8dda05d35a25ae839bb1a603cca1b1c5c0340` |
| 67 | `theorem` | [toConvexCone_top](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/toconvexcone-top.md) | 470 | `result-track:70c444241294e8ee5d72c3c355d1aed5189284558e09b8e5d66718ce6520d74e` |
| 68 | `theorem` | [toConvexCone_inf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/toconvexcone-inf.md) | 474 | `result-track:19d5d57ee2e3b8dce633d74f7bf2b3efa9ccf7f6185d7e00650399166c54ab6d` |
| 69 | `theorem` | [pointed_toConvexCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/pointed-toconvexcone.md) | 479 | `result-track:eebb9cb1d36c0bb56b805028aacb4430f8153b3e698476a1ace32cbf7ea3860a` |
| 70 | `def` | [positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/positive.md) | 501 | `declaration-track:2e844c4eb3d9b3062d7c08320f68d8c1fa1bc705e096cf4cd61d40f2b4f1fb74` |
| 71 | `theorem` | [mem_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-positive.md) | 507 | `result-track:f739d41b4e500816fc9ee5acd04a3a52e5d4a68ed5db2d845ce7a333329b4d70` |
| 72 | `theorem` | [coe_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/coe-positive.md) | 511 | `result-track:3ec303ab83d0b0c358d11740726a7bf03aaa5c5f12a12ecfee00b32f9a3ae486` |
| 73 | `theorem` | [salient_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/salient-positive.md) | 515 | `result-track:a536d57b01f285b9a9c8cd5b1d2f01f7644ef71c3f714ab1137432a43d04cf1c` |
| 74 | `theorem` | [pointed_positive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/pointed-positive.md) | 524 | `result-track:de8dd09e758e635ef0b49db26dd1fe0383da991a53ea73fd19a1828a280d6bb9` |
| 75 | `def` | [strictlyPositive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/strictlypositive.md) | 531 | `declaration-track:b0f1f206fc77ecdc7cc22c3b83d4f64cfc8eec5cf8db519e4b835ea298f8c01b` |
| 76 | `theorem` | [mem_strictlyPositive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-strictlypositive.md) | 537 | `result-track:b24b191d443e81ba9f75518999d61e607581ca0660dc00826217c5a959d56b1f` |
| 77 | `theorem` | [coe_strictlyPositive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/coe-strictlypositive.md) | 541 | `result-track:42e13e33f99cf74ce8a672fcb362a1b2dcb0da25e1f95db4795a7b3882a38937` |
| 78 | `theorem` | [positive_le_strictlyPositive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/positive-le-strictlypositive.md) | 544 | `result-track:bab8744a1d27ccc9bdf5fd57924409bc4d2a08004eff17ce548ec74f03d523e9` |
| 79 | `theorem` | [salient_strictlyPositive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/salient-strictlypositive.md) | 547 | `result-track:9fc8bcd87f8dc9b8043712b22b71dc07b76832d3ee6289c384894bdefabf9a8b` |
| 80 | `theorem` | [blunt_strictlyPositive](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/blunt-strictlypositive.md) | 551 | `result-track:960a0ba67405b8adf63ac81705b948d0b364cc8e93324c294593d2808d01b0e6` |
| 81 | `def` | [toCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/tocone.md) | 568 | `declaration-track:c91bff51b3ff78043beb88dd2d2f28606c2c7fff0c1e0e810cd9e8fececdc6b1` |
| 82 | `theorem` | [mem_toCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-tocone.md) | 579 | `result-track:0f9f3f803ed35bcf9fa39456a1dbde6f1a0d3396f3bcac99e2c1c79d8c6714a3` |
| 83 | `theorem` | [mem_toCone'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/mem-tocone-source-edition-2.md) | 582 | `result-track:f1aabb52555c61330a6335d199e8526beccf4414e4e8eab75bcf697eb46b56e3` |
| 84 | `theorem` | [subset_toCone](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/subset-tocone.md) | 589 | `result-track:07ce76edcc75301d0baa338ad92dd2760f29cc2f60cb49e01f49dd3db27c31f8` |
| 85 | `theorem` | [toCone_isLeast](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/tocone-isleast.md) | 593 | `result-track:cc78b3c2605f4e02bbbff24bc5030a783b9a8222a7e316e6de9959062bb71f6d` |
| 86 | `theorem` | [toCone_eq_sInf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/tocone-eq-sinf.md) | 598 | `result-track:e7e59eee9a6ee7d564f66f6523146de33468287df99983a0f7b41150404efd51` |
| 87 | `theorem` | [convexHull_toCone_isLeast](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/convexhull-tocone-isleast.md) | 603 | `result-track:8a2606718bab49ebd5e1799f705ef2fa2cf0209bc32741e8e1c30f1ad436cb28` |
| 88 | `theorem` | [convexHull_toCone_eq_sInf](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ConeBasicNamespacedSourceEdition2.lean/declarations/convexhull-tocone-eq-sinf.md) | 609 | `result-track:377faf453cb44f4791017813ca79e606ab7bf9cde6b9cc09b6e95b36834435a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f9c834b96d5da271cae38e580b8e629fad58b9badcaf4ecb2121d836f4cf65a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Basic/Variant4bc42a1c2672cee08e1c7c8cde95f8ca62d1b764652f8a70cde39ccc6f8223ce.lean","GRWTSK/_verification/specifications/Geometry/ConvexGeometry/Basic/Variant4bc42a1c2672cee08e1c7c8cde95f8ca62d1b764652f8a70cde39ccc6f8223ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
