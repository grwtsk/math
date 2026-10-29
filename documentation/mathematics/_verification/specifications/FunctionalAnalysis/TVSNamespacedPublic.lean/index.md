# Verification target: TVSNamespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e63d2fe0ba18b4bef643d14ef335e32f12d9de78",
  "lexical_observation_count": 107,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e63d2fe0ba18b4bef643d14ef335e32f12d9de78`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Peel` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsLittleOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs.md) | 100 | `declaration-track:c426e8ada63f4dd586617ec3d3baa30955a9ee3fb5285098d2b4ded50a7d20f4` |
| 2 | `structure` | [IsBigOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs.md) | 118 | `declaration-track:4d3861d9319c4b808b324b257b202679bc2a18bfb7aa8d86b961f6c88689c016` |
| 3 | `def` | [IsThetaTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isthetatvs.md) | 127 | `declaration-track:721f6f2530f13d71582b1f53677486a616179255959979076b07065d1b77ff24` |
| 4 | `theorem` | [isLittleOTVS_iff_tendsto_div](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-iff-tendsto-div.md) | 148 | `result-track:adb1a96b4d080cea4904b27297639aeccd8e8f12a17693169c9458dcb9b91623` |
| 5 | `theorem` | [IsLittleOTVS.exists_eventuallyLE_mul_ennreal](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-exists-eventuallyle-mul-ennreal.md) | 159 | `result-track:92aec072b12d9e5a96e045a61481c7878b016f9124b006161e71a1a93445f8c6` |
| 6 | `theorem` | [isLittleOTVS_congr](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-congr-source-edition-3.md) | 167 | `result-track:5972c982e041801e96ff5082c0ee91bbff1e36e25d3467dde4aba795d7d5e39d` |
| 7 | `theorem` | [IsLittleOTVS.congr'](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-congr-source-edition-2.md) | 175 | `result-track:3336f678954684beb23538ba847085a1f23881051b47ea48a0de577657cc5056` |
| 8 | `theorem` | [IsLittleOTVS.congr](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-congr.md) | 179 | `result-track:01cd9aed8251ed1ef85efc84f4b6b005b893c19b90e51188d55aee6a784225bd` |
| 9 | `theorem` | [IsLittleOTVS.congr_left](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-congr-left.md) | 183 | `result-track:6d307ec80c63aac5a4c6d53a4d73a802e29c0a1f8ca8bab3a6d8c0431d72223a` |
| 10 | `theorem` | [IsLittleOTVS.congr_right](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-congr-right.md) | 186 | `result-track:734183d4ef28ba62aef6d6927a5829fe934e2802ac7e1b4f64ab17bd14b24480` |
| 11 | `theorem` | [isBigOTVS_congr](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-congr.md) | 189 | `result-track:9eb288a6ed53063f199c1143ad0f18ed1dc2e39df49cf229b6eaff000ee3f8cf` |
| 12 | `theorem` | [IsBigOTVS.congr'](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-congr-source-edition-3.md) | 197 | `result-track:ed52319eb5682db4720f8287ee742370c108faf277ea22929e6b1f98bf2497e8` |
| 13 | `theorem` | [IsBigOTVS.congr](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-congr-source-edition-2.md) | 201 | `result-track:df712758029fde2fe30e1fefcd4856b7bd98c2a6af826dd2c97315149c864ad0` |
| 14 | `theorem` | [IsBigOTVS.congr_left](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-congr-left.md) | 205 | `result-track:de4cd24f6a1462abd92a770afa58c5e2bc837a2db4bd1eecabda4ae03b86b09f` |
| 15 | `theorem` | [IsBigOTVS.congr_right](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-congr-right.md) | 208 | `result-track:7d5c0dada556f504450609fc0fa0e7d7b3f92c2709197837d42cc60dcd61c0e2` |
| 16 | `theorem` | [IsBigOTVS.refl](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-refl.md) | 215 | `result-track:1209c7873f886ef7d4c68a9be9de0b8a9e28638fd22a4dd8518e2a0929b5665a` |
| 17 | `theorem` | [IsBigOTVS.rfl](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-rfl.md) | 219 | `result-track:2328b896b4e96328ce361c6c8d230e8202a72aaa10485a943d2c1f27013926ec` |
| 18 | `theorem` | [IsThetaTVS.refl](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isthetatvs-refl.md) | 221 | `result-track:fbd4ff29c13540b6324ea68e19a755619f764a764eee2073f0cbd517845a1ba8` |
| 19 | `theorem` | [IsThetaTVS.rfl](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isthetatvs-rfl.md) | 224 | `result-track:2d748292785eb4f39339069bcf6e1a5fdc3fbd2c9513e53377da2926a9a04c23` |
| 20 | `theorem` | [IsLittleOTVS.isBigOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-isbigotvs.md) | 226 | `result-track:c8456ad419aa5e716165a1d39c44ebb2f333b5ed789f827d91b8d9488362831a` |
| 21 | `theorem` | [IsThetaTVS.isBigOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isthetatvs-isbigotvs.md) | 232 | `result-track:c157545823b0fb138a4ae094e50f811b010e1462255936dcd4fe2452cfeb7cbf` |
| 22 | `theorem` | [IsThetaTVS.symm](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isthetatvs-symm.md) | 235 | `result-track:0dc6d804b344a8820ca987043890844b0a3ba6c7920b29145b086986cba6a54d` |
| 23 | `theorem` | [isThetaTVS_comm](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isthetatvs-comm.md) | 237 | `result-track:f5407590a83b437667b67885153e7e89aad45f51b215198712828850a3b99a6b` |
| 24 | `theorem` | [IsBigOTVS.trans](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-trans.md) | 248 | `result-track:f47acf1af17a4a87e9faab50950b9232beaf543167715d9455f50a41c67aa980` |
| 25 | `instance` | [instTransIsBigOTVSIsBigOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/insttransisbigotvsisbigotvs.md) | 255 | `declaration-track:d4412e428e534d08065d99f48d62240449feeda901e2e3e86029c9ed5c0ff6b8` |
| 26 | `theorem` | [IsBigOTVS.trans_isThetaTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-trans-isthetatvs.md) | 259 | `result-track:32c1e3f0af6f6171bdf0b31fb08facd1417da2b2d590d6bd87c44a2c3615e338` |
| 27 | `instance` | [instTransIsBigOTVSIsThetaTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/insttransisbigotvsisthetatvs.md) | 263 | `declaration-track:2105b3fa110e17bdc8c9a112235ff24d4c080aef5ede6baa502ae30c78a373e2` |
| 28 | `theorem` | [IsThetaTVS.trans_isBigOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isthetatvs-trans-isbigotvs.md) | 267 | `result-track:25f1b864d084b3c98f53aa8263742243c041111312b146a0b607d455dff8ebd3` |
| 29 | `instance` | [instTransIsThetaOTVSIsBigOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/insttransisthetaotvsisbigotvs.md) | 271 | `declaration-track:8d4536a0fb6062e8e8e526b480914e990f5dc5937342d812f647bd9cafe4e1ab` |
| 30 | `theorem` | [IsThetaTVS.trans](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isthetatvs-trans.md) | 276 | `result-track:0dd76ccb44c317023e3db296716cb0f7cf9b11d421b9dfbc9859d9dc9c01b3df` |
| 31 | `instance` | [instTransIsThetaOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/insttransisthetaotvs.md) | 279 | `declaration-track:e1f5118033ccb52db3a78ad1a4265ab5db67be2fd5374afa614bc021557a3579` |
| 32 | `theorem` | [IsLittleOTVS.trans_isBigOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-trans-isbigotvs.md) | 283 | `result-track:c5b497410c0d388963336de83b01311eba7917ea1c3a1ed2501178954d03c8e4` |
| 33 | `instance` | [instTransIsLittleOTVSIsBigOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/insttransislittleotvsisbigotvs.md) | 291 | `declaration-track:0850d49542d5d647fcb0b70cd25ad76e7d3e27a8c4f87805f32cbb8c1ca90f64` |
| 34 | `theorem` | [IsLittleOTVS.trans_isThetaTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-trans-isthetatvs.md) | 295 | `result-track:eb272b87507b94249014d6fabca3b97350334f12a50bd7927814f1a5bde357a5` |
| 35 | `instance` | [instTransIsLittleOTVSIsThetaTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/insttransislittleotvsisthetatvs.md) | 299 | `declaration-track:c89af5b29507442c70f002ba37149e8f57e264da9b522d67a453b0f55b99506f` |
| 36 | `theorem` | [IsBigOTVS.trans_isLittleOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-trans-islittleotvs.md) | 303 | `result-track:da1d718a0d12a662ff93831fd6e7980d5027a6f37173a49f43e6dc3fa562bd88` |
| 37 | `instance` | [instTransIsBigOTVSIsLittleOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/insttransisbigotvsislittleotvs.md) | 311 | `declaration-track:6d5249c296ad5d3a266c03d58462003a69989d6c5d22ad015eb475f6d480a977` |
| 38 | `theorem` | [IsThetaTVS.trans_isLittleOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isthetatvs-trans-islittleotvs.md) | 315 | `result-track:12b950d3cb0e938ea42a56ae95a5b91389d46f3efa4b1c71db4abbf50cc1279b` |
| 39 | `instance` | [instTransIsThetaTVSIsLittleOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/insttransisthetatvsislittleotvs.md) | 319 | `declaration-track:1088593b02db0a5d8ed2232c797d0fb35b4eb33099d63a2769285fd02c549f2b` |
| 40 | `theorem` | [IsLittleOTVS.trans](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-trans.md) | 324 | `result-track:0f0cb0ee79bfe42445a1854379954c01d6bf4893fbe56bb8af056cabe683fd3a` |
| 41 | `instance` | [instTransIsLittleOTVSIsLittleOTVS](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/insttransislittleotvsislittleotvs.md) | 327 | `declaration-track:c8779e9b33a87fb5af3311fc66b97302725f654a713aca2a7dea6950114208b3` |
| 42 | `theorem` | [TVSNamespaced Public](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-iff.md) | 333 | `result-track:566fbc8d4bffb7626ad1c81e4a8ff82439e1363d61eeb9b9045708e13477f4f8` |
| 43 | `theorem` | [TVSNamespaced Public](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-iff.md) | 347 | `result-track:78a150b81a4c4c8c94aaf4421220db2c8950d6b2d07751aeb0c602d06a877c1b` |
| 44 | `theorem` | [IsBigOTVS.of_egauge_le_mul](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-of-egauge-le-mul.md) | 365 | `result-track:e8bade83a6f6cf6dd76525e57a8cce37913d5daefa734fdc1811b5235137306b` |
| 45 | `theorem` | [isLittleOTVS_iff_smallSets](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-iff-smallsets.md) | 381 | `result-track:63ab0f38253938731a0d8cf65be0fde30a91840c8e3544ac90d4250ffbf2b191` |
| 46 | `theorem` | [isBigOTVS_iff_smallSets](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-iff-smallsets.md) | 389 | `result-track:3508ffabd164192e2abc7267984a5f7063f59a0c4b59cc7fb7e53b867b213982` |
| 47 | `theorem` | [isLittleOTVS_map](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-map.md) | 398 | `result-track:848246fedf9eb1cb5f0bfdbf36338d738d6b7c0bfa1ec43f92b25021c95aa734` |
| 48 | `theorem` | [isBigOTVS_map](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-map.md) | 403 | `result-track:f4f878165234583c2f8111d70245d4035644175b5b037384852f17cfcda3d24f` |
| 49 | `lemma` | [IsLittleOTVS.mono](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-mono.md) | 407 | `result-track:390ca5a4e3ce10666a0c3a605b22c47c3c3d371176d72aafff8df89e20dd9afa` |
| 50 | `lemma` | [IsBigOTVS.mono](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-mono.md) | 410 | `result-track:adee4ba6f0430406515c3087c3e989d0d4682d2d743b2ff67f88bb79ed099271` |
| 51 | `lemma` | [IsLittleOTVS.comp_tendsto](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-comp-tendsto.md) | 413 | `result-track:b8ec2ae66dd775402ecdfd1865418351da72232cbfd258198fb654980cd5fd8b` |
| 52 | `lemma` | [IsBigOTVS.comp_tendsto](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-comp-tendsto.md) | 417 | `result-track:3d19c3e74493748fce1902abc8877286f87e08c55756d6d4868cb8c93c2ecb6d` |
| 53 | `lemma` | [isLittleOTVS_sup](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-sup-source-edition-2.md) | 421 | `result-track:fdc95981dd5848da35b49611b2e9bfac9ba047b6c12c4e1f891f1236227f3e98` |
| 54 | `lemma` | [IsLittleOTVS.sup](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-sup.md) | 424 | `result-track:7244e087440fa53b091dd2d0336abfe9000e0a8fc920f2f1b23d928fd3d3fc10` |
| 55 | `lemma` | [TVSNamespaced Public](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-id.md) | 427 | `result-track:e6ddf28d3dd77ee3e48c375fd3b236b41c2698ae27bdb8670534db734d95f2fb` |
| 56 | `lemma` | [TVSNamespaced Public](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-comp.md) | 431 | `result-track:b06308dedce4f6a27669595607d1e184186f4906764b7e0bbe4202290d7f9de2` |
| 57 | `lemma` | [TVSNamespaced Public](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-fun-comp.md) | 434 | `result-track:8df7a90425e96b9020a356ec8730d36d924c335bee12838476f40604a3f4e91d` |
| 58 | `lemma` | [TVSNamespaced Public](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-rev-comp.md) | 437 | `result-track:9ff7656aa5e3c1da5098748a1c061a785748392692608f12bcd40f0d8b068c2a` |
| 59 | `lemma` | [TVSNamespaced Public](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isthetatvs-comp.md) | 449 | `result-track:beaf8b45a6e328491096e401a118a89c07d25fdf93663ef41f5b8f2e8ae3956c` |
| 60 | `lemma` | [IsLittleOTVS.zero](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-zero.md) | 454 | `result-track:6b0247b765fbcb0dc160f0d7c0154eeeb120669f10a2cf55c125182b59b3db18` |
| 61 | `lemma` | [isLittleOTVS_insert](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-insert.md) | 459 | `result-track:dcb199457fd3491e0d8ad9c39abeeb2833b3b7759c1a0ce33105d8d00e78f2b3` |
| 62 | `lemma` | [IsLittleOTVS.insert](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-insert-source-edition-2.md) | 464 | `result-track:e4332813cecceaee53b44efaba69f35044472aa606a529027e7edfd4109438ee` |
| 63 | `lemma` | [IsLittleOTVS.bot](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-bot.md) | 470 | `result-track:46ac7908abb55afc4edbec00f01a33a20c73b11015b9f8312cb2afa9362af717` |
| 64 | `theorem` | [IsLittleOTVS.prodMk](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-prodmk.md) | 473 | `result-track:3fb6d11f6ff3bb757fb796225bcc8ec2cf36556fb40a3bdff070e3e50ceeb255` |
| 65 | `theorem` | [IsLittleOTVS.fst](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-fst.md) | 484 | `result-track:7f78d341afcdaaee0608706b574c7774e98a393e16ae9d4ce0588ff83b2f7189` |
| 66 | `theorem` | [IsLittleOTVS.snd](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-snd.md) | 488 | `result-track:c4d06aadf00705322077120ddb85e4db380d8ad5fee74f3f15ed6046a2e1417f` |
| 67 | `theorem` | [isLittleOTVS_prodMk_left](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-prodmk-left.md) | 493 | `result-track:8011f1f606c492885de94febe140fc9475bdf466af43fef86878f649e603ea50` |
| 68 | `theorem` | [IsBigOTVS.prodMk](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-prodmk.md) | 497 | `result-track:158fd05ec7ac3d14c696938df668b1e064fae32548bf5d465efedde64aceac33` |
| 69 | `theorem` | [IsBigOTVS.fst](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-fst.md) | 507 | `result-track:d45b83a4ccebd7c69a2f47ff892437b317ba0d0c66a206f62a8aa18bc8674dc6` |
| 70 | `theorem` | [IsBigOTVS.snd](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-snd.md) | 511 | `result-track:be2f1f9d3fce9a49fe423ab518dae38f4f3f4d0f67dbf0fc32f070ebf2abb9fe` |
| 71 | `theorem` | [isBigOTVS_prodMk_left](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-prodmk-left.md) | 516 | `result-track:c913f4efe9e0702d9b48030076cb45d0260b2c4615bb4565ce346496f159e032` |
| 72 | `theorem` | [IsLittleOTVS.add](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-add.md) | 521 | `result-track:283527af82241fe37957e375432e5d7dbebab3129e568be202b405466a3a793a` |
| 73 | `theorem` | [IsBigOTVS.add](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-add.md) | 528 | `result-track:b7a0f9e7c4fa8451cd12eb7762ae700bd4b958a6fe166e2d5f9f096293240890` |
| 74 | `theorem` | [IsLittleOTVS.triangle](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-triangle.md) | 534 | `result-track:d16e3d9bfff9e37e1a554b9c007a81f2f7e994b7ffa7f5dac135fedc63215819` |
| 75 | `theorem` | [IsBigOTVS.triangle](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-triangle.md) | 539 | `result-track:5e25aa6a4b5f976d8184027c0e3efd86a235d4603fc8df2afdf0d9aa9a452e97` |
| 76 | `theorem` | [IsBigOTVS.neg_left](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-neg-left-source-edition-2.md) | 548 | `result-track:d52cf593037cb66b26a8d10a22c1f668528a239f79e713ff5d9d8b0038d7475a` |
| 77 | `theorem` | [isBigOTVS_neg_left](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-neg-left.md) | 552 | `result-track:be0df951ec9c03c9463fdb86d2e58badc06583790bed8856b38e0d93737f9b45` |
| 78 | `theorem` | [isBigOTVS_fun_neg_left](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-fun-neg-left.md) | 556 | `result-track:61cc4f76ca75f22267aeb7648770d2bdca9c00d3c0a65b196effbd8ef8225ae1` |
| 79 | `theorem` | [IsLittleOTVS.neg_left](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-neg-left-source-edition-2.md) | 559 | `result-track:a3c97319cbce2c4ef0c9d2d701ff259e55cbdaf8489ad0faba4046459b8a6c7e` |
| 80 | `theorem` | [isLittleOTVS_neg_left](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-neg-left.md) | 563 | `result-track:563aa9d92191215883f6305ed33699f6969dd3b0e780fc62380750fded492779` |
| 81 | `theorem` | [isLittleOTVS_fun_neg_left](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-fun-neg-left.md) | 567 | `result-track:f98c44105c8327ce8dc77b38dca28f9ca636c027f4eaf4bde71c44a4bb5fc889` |
| 82 | `theorem` | [IsLittleOTVS.symm](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-symm.md) | 571 | `result-track:0152f966470029227715f9ba4377e1a1338d4d073396ed861f9b1f97fe41551b` |
| 83 | `theorem` | [isLittleOTVS_comm](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-comm.md) | 575 | `result-track:b92e3699971393955a5303831598751d1088f3b388a6db08a4a7841b0b080005` |
| 84 | `theorem` | [isLittleOTVS_fun_comm](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-fun-comm.md) | 579 | `result-track:74383cbde0db08d1c0d762d89c13ea69c0047e7054af1a43f23d914a71cef97d` |
| 85 | `theorem` | [IsBigOTVS.symm](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-symm.md) | 584 | `result-track:970cf593395f7315bb7074405c001a50000e0dc813efaff9b6c21062cd8357fe` |
| 86 | `theorem` | [isBigOTVS_comm](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-comm.md) | 588 | `result-track:c0c9e72e14782aad8cabb5ad5d7f1dec752a1f9dfbaba652af6dede71ae174c7` |
| 87 | `theorem` | [isBigOTVS_fun_comm](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-fun-comm.md) | 592 | `result-track:a0b770bccf5f0f7be3bfd29fb6d33a71e16b12963601b051d3570205bc07e086` |
| 88 | `theorem` | [IsBigOTVS.neg_right](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-neg-right.md) | 602 | `result-track:a26f9b22fcece2b8078468157360f9c84bbea0f8aa8f92b7c9bbb87c9a86f7b1` |
| 89 | `theorem` | [isBigOTVS_neg_right](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-neg-right-source-edition-2.md) | 606 | `result-track:b60d6536c7e2d2139941522ce72af69f819b38d36f4da74cfa839a7f02a067ef` |
| 90 | `theorem` | [isBigOTVS_fun_neg_right](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-fun-neg-right.md) | 610 | `result-track:8d1c333d3b5c25af971c324a6414475f1ae6c03db5034500008f2959b18e0226` |
| 91 | `theorem` | [IsLittleOTVS.neg_right](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-neg-right.md) | 613 | `result-track:124a00430d6df179229c83eacf0b5f55f9794544a8324421b44a074823ad015b` |
| 92 | `theorem` | [isLittleOTVS_neg_right](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-neg-right-source-edition-2.md) | 617 | `result-track:86735cbff5fadd504a4a1a2b3ee0be2eb2317e57749bdcc167ccb13c7b570c48` |
| 93 | `theorem` | [isLittleOTVS_fun_neg_right](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-fun-neg-right.md) | 621 | `result-track:def620ce8ca7e05d2622d08d86283f6dee3016ae1935b3791fbdbb3283feb6ff` |
| 94 | `theorem` | [IsLittleOTVS.pi](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-pi-source-edition-2.md) | 626 | `result-track:7fc71d5beb71e6b1593dd4d5e224b658edcbe9ef4b270740072e81c2300d72bc` |
| 95 | `theorem` | [IsLittleOTVS.proj](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-proj.md) | 639 | `result-track:b13026452bb72598fd6846f257312326b40b83cd0756e3fde5ec630137df6a49` |
| 96 | `theorem` | [isLittleOTVS_pi](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-pi.md) | 644 | `result-track:4e85c8ac5af46c1e18c028d7a3b9e61c128270c3f9f2e663d21e395c6ae10d48` |
| 97 | `theorem` | [IsBigOTVS.pi](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-pi.md) | 649 | `result-track:94247be21d138684ed584f6bca0d57a20b9b11e0641bd05146d8516d4c2053ef` |
| 98 | `theorem` | [IsBigOTVS.proj](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-proj.md) | 662 | `result-track:5b1b846dc555b7bc68ff055005956e4c0fb2eff09a2f7270c983346debc6810f` |
| 99 | `theorem` | [isBigOTVS_pi](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-pi-source-edition-2.md) | 667 | `result-track:f6c583a64eefe2a6ef0dc67ca4c54715bf2903faedcb66e965b4591ce12faf80` |
| 100 | `lemma` | [IsLittleOTVS.smul_left](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-smul-left.md) | 672 | `result-track:a7d0370282fd4aaeb3401aa42d3f08af18995437c572f838a379bc05a7390bd1` |
| 101 | `lemma` | [isLittleOTVS_one](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-one.md) | 680 | `result-track:3037ea836eff5f556b08bd6aece36fdbfa7a9e55e3ef990d08b49eff4ba71000` |
| 102 | `lemma` | [IsLittleOTVS.tendsto_inv_smul](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-tendsto-inv-smul.md) | 715 | `result-track:ebfa956c602d1b9cde03a4fe827a309380973679d75b81304f40d4e154d4f8f5` |
| 103 | `lemma` | [isLittleOTVS_iff_tendsto_inv_smul](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-iff-tendsto-inv-smul.md) | 723 | `result-track:9115080e236437000dcfff8b13d3f5cea5f6c82cb8fcdc865bda6dd7e90f91af` |
| 104 | `lemma` | [Filter.Tendsto.isBigOTVS_one](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/filter-tendsto-isbigotvs-one.md) | 732 | `result-track:4aac23d5b85ecf27dd0c2b318648eb0c65681c3c61475d89ad1121c1d34f46ec` |
| 105 | `lemma` | [isLittleOTVS_iff_isLittleO](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/islittleotvs-iff-islittleo.md) | 764 | `result-track:7919e788916977f7f09152b9b8ff1733ec130a9814b9674629cc5cf47543887d` |
| 106 | `lemma` | [isBigOTVS_iff_isBigO](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isbigotvs-iff-isbigo.md) | 799 | `result-track:9dd6389dd149c84912e4970b5b23e8e5c6fce4ffa2bd99a09e6ea3df0b14e9fb` |
| 107 | `lemma` | [isThetaTVS_iff_isTheta](../../../../FunctionalAnalysis/TVSNamespacedPublic.lean/declarations/isthetatvs-iff-istheta.md) | 838 | `result-track:d12c4f258a0d8d57a4a8b741885b4dd7c0901963ee9890bbc6b06fe1e76d059e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f567f6aa8381b443ab64fae89359ca7909680b916e5d9fa2f151255c108d3aa5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/TVS/Variant275fe7bfc2944f5b51b15a4c0bccc226183f0fdad7a33cabd0e406c07b06aec5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
