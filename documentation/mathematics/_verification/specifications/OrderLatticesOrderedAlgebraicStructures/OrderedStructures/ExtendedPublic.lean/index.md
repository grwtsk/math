# Verification target: Extended Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fccb02fff5c7b7bbf7bcde2dc70a8f5804cb8b4",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extended/Variant4170141e5c266dc100940a00afaf36c3cb1877f2658801339664104ac73a5bcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fccb02fff5c7b7bbf7bcde2dc70a8f5804cb8b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extended/Variant4170141e5c266dc100940a00afaf36c3cb1877f2658801339664104ac73a5bcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extended/Variant4170141e5c266dc100940a00afaf36c3cb1877f2658801339664104ac73a5bcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Basic.ENNReal.Operations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor.md) | 50 | `declaration-track:8476901e6606bd026049e0e78bc6f66df445302ef978c27a90b28f27c7485bac` |
| 2 | `def` | [ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil.md) | 55 | `declaration-track:4b50607f318f18dd58c94eaf1cf11efeb31dc8787cfecc64f03802c5517f1eb3` |
| 3 | `lemma` | [floor_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-top.md) | 62 | `result-track:073811373ab3f2d74ada2192125a449bec3742b0f39674defe240acdcb83bf7a` |
| 4 | `lemma` | [ceil_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-top.md) | 64 | `result-track:24106993dd2593b7e730675eafedb862a506765e342f603c6424ce90dd135ce2` |
| 5 | `lemma` | [floor_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-coe.md) | 66 | `result-track:742142f70ea23d7755dd8fdbf78e1b90a1e75f7c06088631593b192af4375234` |
| 6 | `lemma` | [ceil_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-coe.md) | 68 | `result-track:a517615b05d73d88922e84d6d0e0273da71486a1bf9deec2a4d21db5f9f04970` |
| 7 | `lemma` | [floor_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-eq-top.md) | 70 | `result-track:e437f9bd03cf9f2a391be9fa04bf00b1e8a5f4306690d8bf0ae5bec201edb78d` |
| 8 | `lemma` | [ceil_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-eq-top.md) | 72 | `result-track:d4563a931e548a846ee049548562cb3ec5173cec48c173d17e766a8029f5c807` |
| 9 | `lemma` | [floor_lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-lt-top.md) | 74 | `result-track:7c38f749787faa72f801bdfda42a2a6cddfa7cfb30fba944acd35177f0650e67` |
| 10 | `lemma` | [ceil_lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-lt-top.md) | 76 | `result-track:09b73f4b7c5318e1edc9a65fc12df943d3c2004b1aea1219ef98bf5359bf2e7b` |
| 11 | `lemma` | [le_floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/le-floor.md) | 78 | `result-track:b0f10dcf59b9fb769d2c81a445b619ca458105d50f46f3f82f02b6629c12fbd8` |
| 12 | `lemma` | [ceil_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-le.md) | 80 | `result-track:8cff155bab9f3238805f2c6ba211be59e124974203e78bcd9dbea19e6397e2cd` |
| 13 | `lemma` | [floor_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-lt.md) | 82 | `result-track:25b05764a7ca7f14e90f12dc4bf41b54b549de17918d38b796660704e0f1bad6` |
| 14 | `lemma` | [lt_ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/lt-ceil.md) | 84 | `result-track:e387d9f0bba3ac8a24c28b84bf3cad27341c564e97c08d93595a1cbb40442ace` |
| 15 | `lemma` | [gc_toENNReal_floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/gc-toennreal-floor.md) | 86 | `result-track:22ce89203c0101918802116b5f753a00bb0a4987c9c43b6c69b0dddfab59ac12` |
| 16 | `lemma` | [gc_ceil_toENNReal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/gc-ceil-toennreal.md) | 87 | `result-track:79b7af2fd4bcdcb6e62c05dd83585e7466768370bcc8d1ca990a0c901adbb465` |
| 17 | `lemma` | [floor_le_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-le-self.md) | 89 | `result-track:f6fae1a090a97717089c209e5cae68a0b2fe9ef2e9c39d517194cf0706357526` |
| 18 | `lemma` | [le_ceil_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/le-ceil-self.md) | 90 | `result-track:368315e15940e60a5d2aa28fc17ac3fbf41bacda1692d81da4720b4dad0c87b3` |
| 19 | `lemma` | [floor_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-le.md) | 92 | `result-track:fd1db58e05f9c02478b2a38953472c4e9788345fb0bdc215dbecd12bcce20a24` |
| 20 | `lemma` | [le_ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/le-ceil.md) | 94 | `result-track:7f3de75beb5996894058b143b12a459c355fd93e4403e07f6d0c4722a430bd9a` |
| 21 | `lemma` | [lt_floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/lt-floor.md) | 105 | `result-track:2f3d390f0785fdecd38fcb08b122d0ee0871c18bd443157394dec0a8a6729c9c` |
| 22 | `lemma` | [ceil_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-lt.md) | 107 | `result-track:0afd278ff6e7e8680e7641185e55f5f5312394fd3db617db3d521395e93dc90d` |
| 23 | `lemma` | [floor_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-mono.md) | 110 | `result-track:df8f0a9fd6e4897624a8a5b1fdd31b14a42330731cb98e1eb2616919db3c74ba` |
| 24 | `lemma` | [ceil_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-mono.md) | 113 | `result-track:0cfb85931105451ea880349bd3738c039bec55761d23b9d19f7afd7446505469` |
| 25 | `lemma` | [floor_le_floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-le-floor.md) | 115 | `result-track:28d5a50cd12cb753109a9a9738ada3ea53ad0447226ad722235d79787c16876f` |
| 26 | `lemma` | [ceil_le_ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-le-ceil.md) | 116 | `result-track:c227367087eda75731c6440e9ed42f430cc687c9a7d2de172200e79536f3c858` |
| 27 | `lemma` | [floor_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-natcast.md) | 118 | `result-track:467a9b714e50ac2ff719a667bce446728bced016ca397d48d3040b409031b4f8` |
| 28 | `lemma` | [ceil_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-natcast.md) | 119 | `result-track:e484004193adda60f3a4350e364c5eff37fc69e39b6a75d1a9140a2b1a803f9c` |
| 29 | `lemma` | [floor_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-zero.md) | 120 | `result-track:0aab36e06d7423662a1425a8debe7fd2745bf204220e0ef6fa2462211f4c3313` |
| 30 | `lemma` | [ceil_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-zero.md) | 121 | `result-track:1ad8428d60696779beb135272dc35f622cd6f5d94e9b971a83b372c7f6d12d65` |
| 31 | `lemma` | [floor_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-one.md) | 122 | `result-track:0ba9f22fc713a734ed4aa736a8f39d2e25f3bf067c0e62edd8df974085b18bbc` |
| 32 | `lemma` | [ceil_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-one.md) | 123 | `result-track:faa3d689ea868fb45b129716fecb1a10805226988304b75c485dc876506e7c0f` |
| 33 | `lemma` | [floor_ofNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-ofnat.md) | 124 | `result-track:747c4ede64f166808c075598ada8dbc237136b28cb4e9950a21faba1d6ad0ee7` |
| 34 | `lemma` | [ceil_ofNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-ofnat.md) | 125 | `result-track:5afd44485d2a7eadec89a87e9b3b8eafc9c5ec6f35d52890b8c8362fcb2448a8` |
| 35 | `lemma` | [floor_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-pos.md) | 127 | `result-track:a5b7e81ec03b2852b5a5501b531fd4610559d054f041cd7e921c5aa607c3bc4b` |
| 36 | `lemma` | [ceil_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-pos.md) | 128 | `result-track:966f91ae9708af52f972bc86387307a6d1b1f6d7b99cec7147d77c86c953ca84` |
| 37 | `lemma` | [floor_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-eq-zero.md) | 130 | `result-track:31f3efdd78b442e87df26533ed7aa668bd2eee55d83d3afd5470ac8f352af98b` |
| 38 | `lemma` | [ceil_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-eq-zero.md) | 131 | `result-track:19c1033c459be2da6554881968c3a03f19e634a53979ba0a9928a48f1d271771` |
| 39 | `lemma` | [floor_le_ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-le-ceil.md) | 133 | `result-track:af5d5c43dcf7c92bdaca45701cb9835a4a26173a95294d443b8868f6d5d380f7` |
| 40 | `lemma` | [ceil_le_floor_add_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-le-floor-add-one.md) | 135 | `result-track:f61ae8077b46f1e1655a8839156d028d1c7ec1f7a5d4e9520d887bece7886d2f` |
| 41 | `lemma` | [floor_lt_ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-lt-ceil.md) | 139 | `result-track:d69b453a7dc88e362ce151f0d8acef250fa9b9730ae7db54e69801837121cea8` |
| 42 | `lemma` | [floor_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-congr.md) | 141 | `result-track:30b145fe6c6ce53771ffcad3f3eb397747a584ae97b80fe2dc75e04b27fb4f0c` |
| 43 | `lemma` | [ceil_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-congr.md) | 142 | `result-track:2f3b8a633e91f333b5fb4c08bb7eef43aa868a19fcaaad1795a351d6c49ec8d0` |
| 44 | `lemma` | [floor_add_toENNReal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-add-toennreal.md) | 144 | `result-track:870210e8835be9220cf4a859d8d00c1a02b11a7f0d596f80af59c9fb7982b5bc` |
| 45 | `lemma` | [ceil_add_toENNReal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-add-toennreal.md) | 151 | `result-track:509558c67698b6910f8e1c080c93080f4fd9a0431e081de455f04f1f217ae9f9` |
| 46 | `lemma` | [floor_toENNReal_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-toennreal-add.md) | 158 | `result-track:c2e65e0b067cca587a266217ac1f9356c7e1877924be8003f66a6c5a73b2175a` |
| 47 | `lemma` | [ceil_toENNReal_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-toennreal-add.md) | 161 | `result-track:b3dde296d9cac8afe986dc49b79b360fa46a87f81e92bacd1042af63e2fc75d8` |
| 48 | `lemma` | [floor_add_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-add-natcast.md) | 164 | `result-track:8253f15e7ad2d6a468e865f3d9696bcfd48f3cadd713a0daf45900b65abcf9ff` |
| 49 | `lemma` | [ceil_add_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-add-natcast.md) | 165 | `result-track:acc3d62c37415bb515f33e57ce2d83abea92ddcce3a81fc677e1e4bd82563bae` |
| 50 | `lemma` | [floor_natCast_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-natcast-add.md) | 167 | `result-track:00e5b06349dfa2fe274e29e7817eeb0eac0d3cb4816001e4d17aa17dc13e7a49` |
| 51 | `lemma` | [ceil_natCast_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-natcast-add.md) | 168 | `result-track:000a0a9b7c9c18e69dbc55ea5e6048c89874576be22fc709d70210d85c84395a` |
| 52 | `lemma` | [floor_add_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-add-one.md) | 170 | `result-track:5d0aa2414fba358afc213deb94109e49fa491a23a0cc9c3600210f22e6287877` |
| 53 | `lemma` | [ceil_add_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-add-one.md) | 171 | `result-track:80e6e25e18f4eb9b9c7a044d4a4e15738f27fe636fd55e990ad272a54cc9c75b` |
| 54 | `lemma` | [floor_add_ofNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-add-ofnat.md) | 174 | `result-track:3413b664bc4ca46661162fb637bc0c9d7f09b3dbaa99ba77148d902ea3f800d5` |
| 55 | `lemma` | [ceil_add_ofNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-add-ofnat.md) | 178 | `result-track:ee1c408616a0822d74e86b830191361d55958d89966878a03281a9f06b8288d6` |
| 56 | `lemma` | [floor_sub_toENNReal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-sub-toennreal.md) | 181 | `result-track:192142eb60fd5fb2c5ae352280be6a30b362d60b61e1dda3e04311a58e598442` |
| 57 | `lemma` | [ceil_sub_toENNReal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-sub-toennreal.md) | 189 | `result-track:21afb5b5ab2b288ad805f04f93a79b235697b2af6b0aedeef51f58c9191f9a09` |
| 58 | `lemma` | [floor_sub_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-sub-natcast.md) | 197 | `result-track:cda5ef297d3a80bae8217f810f8ecc84db22211521621501a0775bc557db5928` |
| 59 | `lemma` | [ceil_sub_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-sub-natcast.md) | 198 | `result-track:93a7883703ea7aef431972a80cc0f9255398da25204ef7785029d8cd12927751` |
| 60 | `lemma` | [floor_sub_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-sub-one.md) | 200 | `result-track:e6d9c4f4f74e50820dadcadf1f9b5d4e6578324519a338d35f3a4c94d6b9f415` |
| 61 | `lemma` | [ceil_sub_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-sub-one.md) | 201 | `result-track:2569d87f7aaa98cb984cde433e619f132663e8f248e848e3c6fe0f6411780cc8` |
| 62 | `lemma` | [floor_sub_ofNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/floor-sub-ofnat.md) | 204 | `result-track:181979cc492af3cc85a8db3381ddc4f40029afc0eb29b5faff44581c2f214f54` |
| 63 | `lemma` | [ceil_sub_ofNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-sub-ofnat.md) | 207 | `result-track:c98b0acca4214c97b115ac12932ecb01f2b5b8250f1b4921d1ace3d5fd62a9f8` |
| 64 | `lemma` | [ceil_lt_add_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-lt-add-one.md) | 211 | `result-track:7cdda8177e063b1abee42c21160e9f337068aec9572ccc850f70bffd1c9814b7` |
| 65 | `lemma` | [ceil_add_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/ceil-add-le.md) | 215 | `result-track:35d6719d9bcc95cc677e77152540ca43be8457fd413dac3d3f60f05249128fb4` |
| 66 | `lemma` | [toENNReal_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/toennreal-isup.md) | 220 | `result-track:3fd538b1dcf40d060664dc3333baca4344fe6f2cf96551f6259ebb9db8d13a1e` |
| 67 | `lemma` | [toENNReal_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/toennreal-iinf.md) | 223 | `result-track:8c8e9169f46ae47d7e9f016f36fd39ef143fb0ee84fc544a3fdeb1b6a2d8470d` |
| 68 | `lemma` | [preimage_toENNReal_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/preimage-toennreal-ioi.md) | 226 | `result-track:14326767e877aace2aaa45ae235b618395a34e34491808001127e8828d193d24` |
| 69 | `lemma` | [preimage_toENNReal_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/preimage-toennreal-iio.md) | 229 | `result-track:6774f6f0a12fccc01f3808ea0aa20658414bf2c7a7772cce053c5f4cb4ee1a95` |
| 70 | `lemma` | [preimage_toENNReal_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/preimage-toennreal-iic.md) | 232 | `result-track:b89120bd08b13b2334bc471505ee67c806403340b251318c963d6f2791966e94` |
| 71 | `lemma` | [preimage_toENNReal_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/preimage-toennreal-ici.md) | 235 | `result-track:126406fb0ac411fddb71cc7cf4d012bb68617be640c7dcda21bf33e5048566b2` |
| 72 | `lemma` | [preimage_toENNReal_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/preimage-toennreal-icc.md) | 238 | `result-track:8e61f149918e64b6d6d3d56cf46af63b3c185a8fa8f2e852689e79c723f5a118` |
| 73 | `lemma` | [preimage_toENNReal_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/preimage-toennreal-ico.md) | 241 | `result-track:ce3a9581ce0ccf5d18743a31e405e1417bc609e2c7c3cfe0c52f2fc754905bc8` |
| 74 | `lemma` | [preimage_toENNReal_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/preimage-toennreal-ioc.md) | 244 | `result-track:3004ba5df1786b34ede71880bc4a02caf02fb2179a9fd9c7de60027bad1656d7` |
| 75 | `lemma` | [preimage_toENNReal_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/preimage-toennreal-ioo.md) | 247 | `result-track:cf2108bc418b90061c3e8926b3d8356096b57071cc4cd1ad5fe6ea09fbef7a8f` |
| 76 | `def` | [evalENatCeil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/evalenatceil.md) | 259 | `declaration-track:5a13a550880be969e6ece7c8ab7b1310493ca3fcff5d0ec3ef06fe75dafb2ad6` |
| 77 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedPublic.lean/declarations/example.md) | 270 | `declaration-track:a235ac4d6ea57301dd3ba089f31568a52392083d9d7e6077030dba83a823c60c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7dfe210fed82f0a7c22120be2eff82bb754b7cb3ecd396f1f097ded22f6442d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extended/Variant4170141e5c266dc100940a00afaf36c3cb1877f2658801339664104ac73a5bcc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extended/Variant4170141e5c266dc100940a00afaf36c3cb1877f2658801339664104ac73a5bcc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
