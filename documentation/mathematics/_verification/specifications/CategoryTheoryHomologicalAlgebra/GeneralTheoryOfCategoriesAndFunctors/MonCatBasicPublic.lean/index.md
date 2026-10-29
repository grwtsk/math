# Verification target: Mon Cat Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e671d065f5aea09ca6c9b41fdc3478bf631c5358",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant08e9e22ec6e3a59cb94e7320720635b773054b9ee4e1fcc4bfd7b534144d3114.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e671d065f5aea09ca6c9b41fdc3478bf631c5358`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant08e9e22ec6e3a59cb94e7320720635b773054b9ee4e1fcc4bfd7b534144d3114.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant08e9e22ec6e3a59cb94e7320720635b773054b9ee4e1fcc4bfd7b534144d3114.lean.json)

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
| 1 | `structure` | [AddMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/addmoncat.md) | 36 | `declaration-track:7be6b0a6961603cf729d022110e0965fd0f8aeb769bc68e8b300b5562764fcda` |
| 2 | `structure` | [MonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/moncat.md) | 43 | `declaration-track:5cfb50e4398e8a33544f9ba32c22745fe67486ca1209b04bdfff788bfdcb1403` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/instance-source-edition-8.md) | 56 | `declaration-track:d73715561b74d484a23a8cf1e17a2b4b4b18ea40610e3e32a1102bd3b22e7a76` |
| 4 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/of-source-edition-2.md) | 63 | `declaration-track:37daa20d140f022e743a3287afe297a243602666ea435fdc64e0f9376be89c10` |
| 5 | `def` | [AddMonCat.delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/addmoncat-delabof.md) | 73 | `declaration-track:a88387657be8c2ba4cada18d6dec54aa278ea9925c05f0795f1947b211270a57` |
| 6 | `def` | [MonCat.delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/moncat-delabof.md) | 77 | `declaration-track:0b5ccce46ea837da81ea0c892fe772d839d45b172a6b70a557b8a31136b82e74` |
| 7 | `structure` | [AddMonCat.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/addmoncat-hom.md) | 83 | `declaration-track:0c5159857e9c2a86eb73e569aa992a24ad50b403d834ad1ca933d251e418a5b0` |
| 8 | `structure` | [MonCat.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/moncat-hom.md) | 90 | `declaration-track:50b63a14f79db0c72787528a0da6c3635e71f24cbde582a6d5d69b70171fa554` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/instance-source-edition-10.md) | 98 | `declaration-track:d9e4be9720c778fa673eacf15c378baaf30df5894efafabbb67ae871db246351` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/instance-source-edition-4.md) | 104 | `declaration-track:8b384d0a259ef93585f861c513f4f9885b8afdc63b17b90e51fdf0ad87fa7f37` |
| 11 | `abbrev` | [Hom.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-hom.md) | 110 | `declaration-track:0330daf50749971fb1aca6f98edf07a195bd929c22619d05eb363eeff381f46c` |
| 12 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/ofhom.md) | 115 | `declaration-track:65a901f30210a763b0ce95e8628b4d46346bf1a31eb9f076d71056594e3f4130` |
| 13 | `def` | [Hom.Simps.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-simps-hom-source-edition-2.md) | 120 | `declaration-track:ebaad3cde1d5030e442e53ccd30000d9f51a1548b92b5726431febcd407221b7` |
| 14 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/coe-id.md) | 131 | `result-track:465cccc81f3fa8490261bd1b09f9d975806ba495d8a94223a18166f75a91cb51` |
| 15 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/coe-comp-source-edition-2.md) | 134 | `result-track:ea4a5f050a23d639fa9c9822c51402f4cf0557d18f7ec71b8bd9cebfcdb36f71` |
| 16 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/forget-map.md) | 137 | `result-track:d3cc7d9786f048286933ca434ffc4d2b37842e94f72738b831ae50d360ee2f5a` |
| 17 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/ext.md) | 141 | `result-track:ba554d34d6ed7e165b8bff41690003a6d9db9e8f165181ecc3e5bf47423e3288` |
| 18 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/coe-of-source-edition-2.md) | 146 | `result-track:0c24e278a4c625ac596b4346f5c95c117fdd40bc1079ac0226ea86fdb8d379e0` |
| 19 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-id.md) | 149 | `result-track:50b307f60b3727367636cc8e2ede17f74e27e4641f11884a98734b394890a633` |
| 20 | `lemma` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/id-apply-source-edition-2.md) | 153 | `result-track:ae45f1a22935276398a26e35cabc8e34a4816996ede89e202bbc8d1e3e5e201d` |
| 21 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-comp.md) | 157 | `result-track:5c9630511d66576d4dcbff9643428b80da3e3202150411b296d49c94de9a8eb6` |
| 22 | `lemma` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/comp-apply.md) | 162 | `result-track:7d9dd37c9c1260e9575856c2152ca6f91b57413cf43bc22e98fcb750a516b9a8` |
| 23 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-ext-source-edition-2.md) | 166 | `result-track:ff9908f4f9a35b4e4f26482d7af9daa5302495269d3967ed04ac5b8edf51112d` |
| 24 | `lemma` | [hom_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-ofhom-source-edition-2.md) | 170 | `result-track:8f2a057f2ceae8de413f807d11a4a071ebfbbfb83a3d96cb535550a75455099e` |
| 25 | `lemma` | [ofHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/ofhom-hom.md) | 173 | `result-track:46b1b4c0174e8578d4978cf97ccaec289603181423cbb18dfa4ffd9350689ca0` |
| 26 | `lemma` | [ofHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/ofhom-id.md) | 177 | `result-track:29c1039b7c0a1ca9a1f4b8b23feac7cd014d42ce98a1b28d1d5385c0935eef58` |
| 27 | `lemma` | [ofHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/ofhom-comp-source-edition-2.md) | 180 | `result-track:3b300c0381210677130aa810edb977bf38e997b547bc4e373a29d894b791c7d1` |
| 28 | `lemma` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/ofhom-apply-source-edition-2.md) | 186 | `result-track:a9032046396178b56b52c012b876a8d7985026e3339603e706be7d1abb1d98d5` |
| 29 | `lemma` | [inv_hom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/inv-hom-apply.md) | 190 | `result-track:a7b276224f67a48d8ecc0b3e1b2a7a853142c968d8949aef52a97723c23e0bcb` |
| 30 | `lemma` | [hom_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-inv-apply-source-edition-2.md) | 194 | `result-track:9a7cfe1d20f3bb8d8e950ae2f2dcbff2969194420c1e4b5525d062aa117ae13e` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/instance-source-edition-11.md) | 198 | `declaration-track:fcf7e5abffcecf3b64016020ca80807fac1c50c72123bc43477ea213e6c4c653` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/instance.md) | 204 | `declaration-track:21da9b3c12b4ba75d0f8de972e988345f637888d0e87316cef679393fd93240a` |
| 33 | `lemma` | [hom_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-one.md) | 207 | `result-track:b337a6a125b3b94fd650e6ee130fa0c2e375c8462e069fff2ad883a89d428af3` |
| 34 | `lemma` | [oneHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/onehom-apply.md) | 210 | `result-track:3e513118091f5b58bc1ffa2fec6b1768254e6e8017a54564aa061fb821e2ea87` |
| 35 | `lemma` | [one_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/one-of.md) | 213 | `result-track:7da062d0b5485fdcae2d9ea8bf8304b0c821d38d212f1bf49151f624de2e7afb` |
| 36 | `lemma` | [mul_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/mul-of.md) | 216 | `result-track:6fffb09ab456ac544d651d3d77f09ff26eb296990cb309485ba1486bc6125a1c` |
| 37 | `def` | [uliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/uliftfunctor-source-edition-2.md) | 222 | `declaration-track:f8f5f69c7ff26943c9d390c2587909ce7e878306365f07431d6b3dc597437061` |
| 38 | `structure` | [AddCommMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/addcommmoncat.md) | 232 | `declaration-track:6b65691243145c8ac2ad8bc7f52c5c36198b41803e1a2207dcc91792d428c167` |
| 39 | `structure` | [CommMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/commmoncat.md) | 239 | `declaration-track:2f21304f787420c57542e0b06721969450e822164420577e2f5de4d13b982aa6` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/instance-source-edition-9.md) | 252 | `declaration-track:d9b092993ec85fd9b2736f956b2191ce3e3a8c4c720727b6e178a74289e7a488` |
| 41 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/of.md) | 259 | `declaration-track:198db92fe34a2ecb90de378c49fce42d6c408261a5ad8a1c2a96cda22dbdaf04` |
| 42 | `def` | [AddCommMonCat.delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/addcommmoncat-delabof.md) | 269 | `declaration-track:a32f971fa29d4466c339fba1d89c11687f77adab5772e91629221ffaf337cdc9` |
| 43 | `def` | [CommMonCat.delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/commmoncat-delabof.md) | 273 | `declaration-track:8ed8b07157ba11ced6d6808e7d37a07fb1d2be601f1ec5fc8431f77c7938afba` |
| 44 | `structure` | [AddCommMonCat.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/addcommmoncat-hom.md) | 279 | `declaration-track:7edcab9e6a5c9b82f3624f22b276337288fa1404b2f4b250f8b7bf345d9e4021` |
| 45 | `structure` | [CommMonCat.Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/commmoncat-hom.md) | 286 | `declaration-track:a5e0fb1e88c554c08c7e0c91eb9f1d3e97cdcf21e101436b1ba30cf3af592549` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/instance-source-edition-7.md) | 294 | `declaration-track:cdb634abbce7b91c54795f5ee9704f83cb3334a538528122e9b79395bda0dfd6` |
| 47 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/instance-source-edition-3.md) | 300 | `declaration-track:7d209b2f826d9a4236f657c524521ab27b4c08064ad193a774fe04429ab21c81` |
| 48 | `abbrev` | [Hom.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-hom-source-edition-2.md) | 306 | `declaration-track:7d1d5f06d033ec18003da6485f82c01d77695053b1f70cb847f76a836334c86a` |
| 49 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/ofhom-source-edition-2.md) | 311 | `declaration-track:843dc1cd6e2e59d0d046701e73b74535c7b247e5a2d7baa6afac221c84353a38` |
| 50 | `def` | [Hom.Simps.hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-simps-hom.md) | 316 | `declaration-track:1e1a9fc1d9ce6bde6cb7a8ee25ba81dcc794d3fb73379a9de426fd75cc20f56b` |
| 51 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/coe-id-source-edition-2.md) | 327 | `result-track:b79257a4e58d62ac3ba36cf7394da95d4aaf5f8760f1be01d19cc7bb579e9812` |
| 52 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/coe-comp.md) | 330 | `result-track:99a24ba6668cfcc9226f1a096cbb1cafceb93c111bfd3c1e99b296cf3fde3ad6` |
| 53 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/ext-source-edition-2.md) | 333 | `result-track:cfbd8d590420db1bc2f4171d7cf28a0c4bcacae02755abe5cfeddb0e928f305c` |
| 54 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-id-source-edition-2.md) | 337 | `result-track:9288be23f7bb52026d1de0784b41954502f9c3c824cfd0adc34e800b071b8cd3` |
| 55 | `lemma` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/id-apply.md) | 341 | `result-track:93c3470d0ad8a0051ed711c693f0b19e86e3ebd09f1fe1817d87b49e3629486d` |
| 56 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-comp-source-edition-2.md) | 345 | `result-track:b71a8bbd16c21a0e0c0702976d290c91ead6e85ae94dc0e0dfc981495e333c0c` |
| 57 | `lemma` | [comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/comp-apply-source-edition-2.md) | 350 | `result-track:fa243634def97f8f3ec647b9c0789a8c8cb1ab2236366aae03099ac2d487db5d` |
| 58 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-ext.md) | 354 | `result-track:c6c3597d66f2ffe4fd22750a51944dc0adbfc894feb2fd19f9bc0c6660bfbe40` |
| 59 | `lemma` | [hom_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-ofhom.md) | 358 | `result-track:621d90a2085f38f8baaccfd9ff2bd9261474dcd115bf99b7585bd9830f63e53e` |
| 60 | `lemma` | [ofHom_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/ofhom-hom-source-edition-2.md) | 361 | `result-track:55360b2c0547b85814d8f6daf100d0ef11639842f0558eefa2a6abe2e9525da0` |
| 61 | `lemma` | [ofHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/ofhom-id-source-edition-2.md) | 365 | `result-track:a79919e1bccbca7cfee1e1483668ac1187716bea68c6b8ca6dccd1e33a7d0711` |
| 62 | `lemma` | [ofHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/ofhom-comp.md) | 368 | `result-track:37a9e73ed16f12e4f5e35772e59e6617018db3b6ffd34e7f10aed0fea47c3a8f` |
| 63 | `lemma` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/ofhom-apply.md) | 374 | `result-track:6b09f8850271323d2a865fbe52732e761a1f8c171aebe489807e4ad3b5249979` |
| 64 | `lemma` | [inv_hom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/inv-hom-apply-source-edition-2.md) | 378 | `result-track:d8942ad8d853ee54348f4c7df2b966177f0792702f92b1bffe3c1c54653aec11` |
| 65 | `lemma` | [hom_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-inv-apply.md) | 382 | `result-track:20687c6916605ccdbee20b30b2f667798f8c3726fb84fbd067b278e24f4925d2` |
| 66 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/instance-source-edition-6.md) | 386 | `declaration-track:b9430be56cc81ac3e55066c36eee86d756234510b9a96a143b9fda8da9426810` |
| 67 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/coe-of.md) | 391 | `result-track:031374d7a923251730ea4d5a63054524fbd291a561ff01172d1ccbf65f9633b2` |
| 68 | `instance` | [hasForgetToMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hasforgettomoncat.md) | 395 | `declaration-track:6d0a95e2f0d62a9342d63f874e966d5d7d1dd27b21bb1a1ab2ccb481a9b888c2` |
| 69 | `lemma` | [coe_forget₂_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/coe-forget-obj.md) | 400 | `result-track:13c2dd0bd2fcfd3e4a2816014e93f2f08ef616bdf612692b785e7cf48e86b709` |
| 70 | `lemma` | [hom_forget₂_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/hom-forget-map.md) | 403 | `result-track:563d19e8eac08aaa32e392d5f0049d4a9c1b24d6a4d76174a9ec8f42bc3078a5` |
| 71 | `lemma` | [forget₂_map_ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/forget-map-ofhom.md) | 407 | `result-track:68ddb30c1f41b8d032811e4e5aa0f22334de5ef6b69c86c1838954e1a757717a` |
| 72 | `def` | [fullyFaithfulForgetToMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/fullyfaithfulforgettomoncat.md) | 414 | `declaration-track:7ddda9873c90b35baeec9bb125b7c6b288a30d13b82fc3ec5f810023f5dc4fa4` |
| 73 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/instance-source-edition-2.md) | 418 | `declaration-track:342ecef98289aeebf8a3a9025486474a7a23e08d77e6da9a56197b7af6d72068` |
| 74 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/instance-source-edition-5.md) | 422 | `declaration-track:a2f9a73fc20b4d4bf70a8175d1b6a13df4b186c4cd9b8e34fe0b5293f8e98792` |
| 75 | `def` | [uliftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/uliftfunctor.md) | 427 | `declaration-track:0e88c697ae43a5427b6426b99b6a6475c39cefe3601f260f5986bb96e24032bc` |
| 76 | `def` | [MulEquiv.toMonCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/mulequiv-tomoncatiso.md) | 446 | `declaration-track:5059f46d168c70a4a0e7c4cba3cbab98b4094d7551bac10dc6a7e82ffe216e92` |
| 77 | `def` | [MulEquiv.toCommMonCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/mulequiv-tocommmoncatiso.md) | 458 | `declaration-track:1d2174e387fa1dd92faa44ece342371a76d4e262320ed13526da10dbb463702b` |
| 78 | `def` | [monCatIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/moncatisotomulequiv.md) | 474 | `declaration-track:0dcea77ab3a3e744803b677ea2e03debe638c43b4e9486d8158c8c037ddc44b5` |
| 79 | `def` | [commMonCatIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/commmoncatisotomulequiv.md) | 480 | `declaration-track:ae065d4d7d50a69c0bdb1020dfd4b9b6bdf0949a78757484b6ffaf4635f6692a` |
| 80 | `def` | [mulEquivIsoMonCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/mulequivisomoncatiso.md) | 488 | `declaration-track:ee540b278bc877cb632299c5b883f9a6ebb0a2cf0c523f921a9acdeeef883e64` |
| 81 | `def` | [mulEquivIsoCommMonCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/mulequivisocommmoncatiso.md) | 500 | `declaration-track:dd14d311ccadfdb00c5ed38a13bc8e1b1c021298f877998ab718e96acbc77a70` |
| 82 | `instance` | [MonCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/moncat-forget-reflects-isos.md) | 510 | `declaration-track:871f61668b499ff554787fbb57eec727574eb02bc2eea423dab19d8262c0341a` |
| 83 | `instance` | [CommMonCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/commmoncat-forget-reflects-isos.md) | 517 | `declaration-track:93866fdd2783c220eaf917d4003c8d4f345aa4f5c436016b27fbb22d40c99ae0` |
| 84 | `instance` | [CommMonCat.forget₂_full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/commmoncat-forget-full.md) | 526 | `declaration-track:52a3cf8429b557a444afcbc4c53962d31e20172a4d13797f7ee5419c86f61835` |
| 85 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/example.md) | 529 | `declaration-track:5ae1f7ac82b61eef90365c05c9004f2a156c8711f56f1df4134930bc6b26fc40` |
| 86 | `def` | [AddMonCat.equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/addmoncat-equivalence.md) | 537 | `declaration-track:9c5eb45ee8cd7147356c43f180bd1006a3555536b64a49f3a6957769dcc811d4` |
| 87 | `def` | [AddCommMonCat.equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatBasicPublic.lean/declarations/addcommmoncat-equivalence.md) | 545 | `declaration-track:1661a33bbcff161f9cdee98d86ad7757c34a08899d34411552ea1f6888c22766` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52863d4101a4c2e97e9ee7842f5604beb5b793e546651772799b617f71fc93a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant08e9e22ec6e3a59cb94e7320720635b773054b9ee4e1fcc4bfd7b534144d3114.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant08e9e22ec6e3a59cb94e7320720635b773054b9ee4e1fcc4bfd7b534144d3114.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
