# Verification target: Algebra Equiv Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44033ff7ce29ae0558975b8be8c7b4a118113fa8",
  "lexical_observation_count": 169,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variant09fea0a541abd3f72f9bcf3ae62b797de07dc459174e9547c54a2d4784d77356.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44033ff7ce29ae0558975b8be8c7b4a118113fa8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Equiv/Variant09fea0a541abd3f72f9bcf3ae62b797de07dc459174e9547c54a2d4784d77356.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Equiv/Variant09fea0a541abd3f72f9bcf3ae62b797de07dc459174e9547c54a2d4784d77356.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/algequiv.md) | 39 | `declaration-track:4254e30279020512f34f190acf7180cbc65a27029ecc6f1ea020a7d66559fbf6` |
| 2 | `class` | [AlgEquivClass](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/algequivclass.md) | 54 | `declaration-track:22652fa2fb22b217a4a297e9390758777ed2a61a8631781a1a4162682c994771` |
| 3 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 63 | `declaration-track:d12defc82020bdd98c0e885b2b786c40c8f80c4953988e10835686acdfa55d3f` |
| 4 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 68 | `declaration-track:ba53b0fdba5549ec254c526a9f2096853d63ca36854e76be3414b6a4df78e928` |
| 5 | `def` | [Algebra Equiv Namespaced Public](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/ofclass.md) | 76 | `declaration-track:9cf19cd3ef1963f97ac3b4bb885fb8a72050e5308412537891aababea3a8b307` |
| 6 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 103 | `declaration-track:bd9b8a6db7079822188c2e44278aedfaec8e7cdefab376e5612a70776a04ec77` |
| 7 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 115 | `declaration-track:3eb84bb0f6f5497de5ff81a2c0c6d71911876abdeb84a0270458db7541a6a22f` |
| 8 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 119 | `declaration-track:63097ca4afb423795c9bc7e60ca43839e2a90c47502d56b807f654223f044aed` |
| 9 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/ext.md) | 125 | `result-track:f40b561f0ace492eeb4577ea8b3d9b22690a9de387fdb9475b8922586e5c69f2` |
| 10 | `theorem` | [congr_arg](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/congr-arg.md) | 128 | `result-track:2f1b6564f07171ca4aeb85968c929bc68504226170f0424157fb560691d5ad89` |
| 11 | `theorem` | [congr_fun](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/congr-fun.md) | 131 | `result-track:1de97b3217adb6676b65ba430b02daf75898decd9364764ba20072ce30b05067` |
| 12 | `theorem` | [coe_mk](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-mk.md) | 135 | `result-track:6f5aaf6a858ff1f16bd21762e5f83125e264ced803898fa0d42faf78813a09fe` |
| 13 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/mk-coe-source-edition-2.md) | 140 | `result-track:6c10fae784237e3cd54d92ef48a93aed1e7c410078bc468007734364f4260c3c` |
| 14 | `theorem` | [toEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toequiv-eq-coe.md) | 145 | `result-track:6add2ba94d93a1a15f35e64ab03dd56ab5db8b6990b3d0a207c8028c7e668a62` |
| 15 | `theorem` | [coe_ofClass](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-ofclass.md) | 149 | `result-track:e4c2457a93b4b1c9faf5220df8255c6cab36d86a88a898ea91cd1ec97e9bb9e7` |
| 16 | `theorem` | [coe_fun_injective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-fun-injective.md) | 155 | `result-track:4facc832f1e120f057b7becfe234001177529633e3f8fc6b736f69f93fb10968` |
| 17 | `def` | [toLinearEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tolinearequiv.md) | 159 | `declaration-track:dcfae18ded24693216f3a186c1ea12bf0711b2b8dda62dff2958658bfc40eed1` |
| 18 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 163 | `declaration-track:5aa2af95b14122261c89510864aa2423e624f007a7b82606a60a3cc436effeea` |
| 19 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 164 | `declaration-track:940ea2754ee847e592b9b403389d4b8cf54c2140c08603b1b8acec1263bb0ea9` |
| 20 | `theorem` | [coe_toEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-toequiv.md) | 167 | `result-track:5354082e064a1b95a22f44528cb992c3fd2a49c714511a2d3c1514010d245f96` |
| 21 | `theorem` | [toRingEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toringequiv-eq-coe.md) | 171 | `result-track:2c5d6db940f16c9692156b27d280e8e7d2525dc31d1c752e89253ca3a949278f` |
| 22 | `lemma` | [toRingEquiv_toRingHom](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toringequiv-toringhom.md) | 175 | `result-track:7a85c4c62fb72da77760d2ac96d7b6d09b0ac399922170f230914e86020eeb49` |
| 23 | `theorem` | [coe_ringEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-ringequiv.md) | 178 | `result-track:219dd17d8d5c4aee9e9a90b645ace6627ec1ebca7408fd3716ede1907a835971` |
| 24 | `theorem` | [coe_ringEquiv_injective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-ringequiv-injective.md) | 182 | `result-track:6f51b2c4e48cea5d2651123ecb55a3bafd507513bb7ecf1bb79b67129d56196a` |
| 25 | `def` | [toAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toalghom.md) | 190 | `declaration-track:bffe54e5dab3c887d73ccd1a0a8e1369eca11bb345b7f62a06c5fb50e28da5df` |
| 26 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 195 | `declaration-track:fb46fab44a87be2864d27ec8504dca5d1ccca3067b370ba9d548f4561577f62d` |
| 27 | `theorem` | [toAlgHom_eq_coe](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toalghom-eq-coe.md) | 198 | `result-track:e1b2c7d59696fb73b5c2eba6dab443d9ce0d0921ab84e7eb50c0dfc61d9cdcbd` |
| 28 | `theorem` | [toAlgHom_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toalghom-apply.md) | 201 | `result-track:4ceb2022e14986a7d70897aa44c91963410fdce1f628d2c049b95e8652fadb54` |
| 29 | `theorem` | [coe_toAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-toalghom.md) | 205 | `result-track:ab53411f30751432b95a84f10e55e905000d1ea02f8f2f0c9eb401cb6ce080d5` |
| 30 | `theorem` | [coe_toAlgHom_injective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-toalghom-injective.md) | 207 | `result-track:200e8c31508f216ed86dedb94fc64f274ca5a98a79e9e595564b7a6b86693970` |
| 31 | `lemma` | [toAlgHom_toRingHom](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toalghom-toringhom.md) | 214 | `result-track:dd692fee0f328e20d79e71a33c14948c395cdf2f533fbdf1a56dbbafd4864b43` |
| 32 | `theorem` | [coe_ringHom_commutes](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-ringhom-commutes.md) | 218 | `result-track:a4bea6b8263a45f73de2d1ed237750a97581ec4d8fff2460ad74197bd05dd569` |
| 33 | `theorem` | [commutes](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/commutes.md) | 222 | `result-track:095ef619f8565c49852ef408601e0229ede475a35317682b429eeaec5f2400cb` |
| 34 | `theorem` | [bijective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/bijective.md) | 229 | `result-track:4b5154ec25c0eb1df506a6ca5153d7f3a08ba602c34ccdaad2e1dc3f1a67c753` |
| 35 | `theorem` | [injective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/injective.md) | 232 | `result-track:dd4b415ebbb1392473e4368bb15bef066ee136817a5d3fd816fbcad6d499b976` |
| 36 | `theorem` | [surjective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/surjective.md) | 235 | `result-track:d7bec0c2598749c4f244dd0e5028f3e299dcfe158786f071b873305f1764f900` |
| 37 | `def` | [refl](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/refl.md) | 244 | `declaration-track:a4f45705eb3fae891b82885228b55f81f398a9730709d3a84fc0b5eb46628da0` |
| 38 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 247 | `declaration-track:7129c710cb5dc4a8022f3b669921c50efd6211cc80caf024dd39eccee7a5e78c` |
| 39 | `lemma` | [refl_toAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/refl-toalghom.md) | 250 | `result-track:8998515a3957e2017eb235db3399bbc70630b7313da7c9129f20a314a0a90fd6` |
| 40 | `lemma` | [refl_toRingHom](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/refl-toringhom.md) | 251 | `result-track:b9dd55be1da77db6932842b1a2c2ce655c4ee72ecddef740245d200013924ae3` |
| 41 | `theorem` | [coe_refl](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-refl.md) | 254 | `result-track:01bedcdd5804b5b82d74056ec1cc5c322949e170d417d1776671ff773e1835ac` |
| 42 | `def` | [symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm.md) | 263 | `declaration-track:1f6043ee129aef0fb42d7636ffe644552f673598bf78e099b224e8301572cdf0` |
| 43 | `theorem` | [invFun_eq_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/invfun-eq-symm.md) | 270 | `result-track:1a4b595e57d068b14462a445c9691f64beded5e99d9deedb354b06d44d25cdd4` |
| 44 | `theorem` | [apply_ofClass_symm_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/apply-ofclass-symm-apply.md) | 274 | `result-track:f1bcb552d1a99e5d3e2c2403806fbc1bfe89be196ea9cdc98aa408bd7b436b22` |
| 45 | `theorem` | [ofClass_symm_apply_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/ofclass-symm-apply-apply.md) | 280 | `result-track:84823f359ba9fb0dd6e7295f1791a882526ee5e223517e0d04417c856ab4780b` |
| 46 | `theorem` | [symm_toEquiv_eq_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-toequiv-eq-symm.md) | 292 | `result-track:002a76bce4a7d75694b7cd62cb5a2d3221e81b018e48444a1685f151088d866a` |
| 47 | `theorem` | [symm_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-symm.md) | 296 | `result-track:04947cbcb9790a1a3b8705de65987b881f2cb024f8e59e931baa759c115951de` |
| 48 | `theorem` | [symm_bijective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-bijective.md) | 298 | `result-track:9f4aa12a9bc423ec6e3ae33df305c989763b1177e7bf875e4e80c7197b313dd7` |
| 49 | `theorem` | [mk_coe'](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/mk-coe.md) | 302 | `result-track:5c176bfc6df583ff19ff0e0d8fb965ae04314efd5dd6ca80102f4c698ea696af` |
| 50 | `theorem` | [symm_mk](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-mk.md) | 307 | `result-track:127bd70632877f58fc18c062ab439e7b3c343ed699f6ef07f193fb0f0bcbc724` |
| 51 | `theorem` | [refl_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/refl-symm.md) | 314 | `result-track:559c3710a9c5cb9d61679138156772cc3ab944aac7053249c96774da987bf690` |
| 52 | `theorem` | [toRingEquiv_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toringequiv-symm.md) | 317 | `result-track:a8bed0253e3242170100696a57ba9ac51edc6617692c1636b51f07b2563e2070` |
| 53 | `theorem` | [symm_toRingEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-toringequiv.md) | 321 | `result-track:f7106db604cbfcad5563a164363641a56a1fe81814a9ef73eeb74a8ca34abddf` |
| 54 | `theorem` | [symm_toAddEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-toaddequiv.md) | 325 | `result-track:df962a98a02fd72939d5a3ec70fffa18094ea5117701cc68f78627f213f8657c` |
| 55 | `theorem` | [symm_toMulEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-tomulequiv.md) | 329 | `result-track:3f616ce2b3379d5f1be53554118b78eac44966f01d0f87e493336a27318128e6` |
| 56 | `theorem` | [apply_symm_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/apply-symm-apply.md) | 333 | `result-track:2832591087477df327f6808986c686640eb1562a0f4053dbed83b660b46adec7` |
| 57 | `theorem` | [symm_apply_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-apply-apply.md) | 337 | `result-track:e6be3419a12642d931ec2ffd6cf440a84e1ee1cade25210cda8661886af71619` |
| 58 | `theorem` | [symm_apply_eq](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-apply-eq.md) | 340 | `result-track:7c5e8802d5bd91c4be05e03b8b7805ebc2b11d3453565eaf062ccbf432416f7d` |
| 59 | `theorem` | [eq_symm_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/eq-symm-apply.md) | 343 | `result-track:f4a212972cb5aa2b18d6e7bb1d588692b1efe4484215deaa223155c7e89dcce7` |
| 60 | `theorem` | [comp_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/comp-symm.md) | 347 | `result-track:041e530ad5ba814b5c4a19c087b81feaf54f1d501649799c4ea8db3e38cd7533` |
| 61 | `theorem` | [symm_comp](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-comp.md) | 352 | `result-track:c651e1f63c85cae1f32aa901c4867a3c032a75119e09006c360fa53b8d8cd2da` |
| 62 | `theorem` | [leftInverse_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/leftinverse-symm.md) | 356 | `result-track:e73e2cc2fa98c54b62f0d390c2686b9e8a5f9fe398872504631ca30ae62a5a82` |
| 63 | `theorem` | [rightInverse_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/rightinverse-symm.md) | 359 | `result-track:97fce4aec93708152e6f19bb5948f19e679740edcbe8c178439fc74ee8d5daf6` |
| 64 | `lemma` | [image_symm_eq_preimage](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/image-symm-eq-preimage.md) | 362 | `result-track:bc29daab7ecac4b017f058d38f51d2c7d1be176bf206d3142e7208ae82b264fe` |
| 65 | `def` | [Simps.apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/simps-apply.md) | 370 | `declaration-track:13456d0e028156932052ec487f5631baa77c94d2b49d56bb7d4ccbe0b9e476ba` |
| 66 | `def` | [Simps.toEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/simps-toequiv.md) | 374 | `declaration-track:ea78aa58224db2af3c7211cdaa1c4a93c626aa2f7528e58ff01e963ce77b61b9` |
| 67 | `def` | [Simps.symm_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/simps-symm-apply.md) | 378 | `declaration-track:969b039861096d3a17b183afc240c6cddf30bdcba14e34126986bdcd5fbbbaf8` |
| 68 | `def` | [trans](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/trans.md) | 389 | `declaration-track:233b800de23c06c69520f3e042fa4087957fd13b092eb50c91d6ebae7c9f0142` |
| 69 | `theorem` | [coe_trans](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-trans.md) | 394 | `result-track:4180b399cf798c9f336e335d609d3845383edbecc97effdfa45b5de1053dbc5b` |
| 70 | `theorem` | [trans_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/trans-apply.md) | 398 | `result-track:94908639502ae5362756acdb6774d5d27c1fe0e4140bc1721bdb5ec96035fcbc` |
| 71 | `theorem` | [symm_trans_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-trans-apply.md) | 402 | `result-track:aa515814a931b3dbaf35f9deda3f0671a553ee201a6e391947df553339ce81d3` |
| 72 | `lemma` | [self_trans_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/self-trans-symm.md) | 406 | `result-track:d17744502bac22c81b53c2bdc751b373fd5173d9819a3a02eb916e95c95bd4d3` |
| 73 | `lemma` | [symm_trans_self](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-trans-self.md) | 407 | `result-track:2e667e28652f238842b3f22967f3d540638d48b4f4b56e9c2b533abb6173eb96` |
| 74 | `lemma` | [toRingHom_trans](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toringhom-trans.md) | 410 | `result-track:3ea23c3633ee21e9ddae87bb7d69841e30777c5639247b0d594c23defb963388` |
| 75 | `def` | [cast](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/cast.md) | 420 | `declaration-track:69e5f0290214e98b3026c8cb990c7e620a607972a22bafb8dd0921ec8b2e81be` |
| 76 | `def` | [arrowCongr](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/arrowcongr.md) | 429 | `declaration-track:2f5bf4b5accf84c80a5cc468fc8712107a8b57db12df4fa7f817a193513736ed` |
| 77 | `theorem` | [arrowCongr_comp](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/arrowcongr-comp.md) | 439 | `result-track:f54566028f9551403ca2ad75728c8028513d1df7fb092eecfae472e85f12d4db` |
| 78 | `theorem` | [arrowCongr_refl](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/arrowcongr-refl.md) | 446 | `result-track:519961f04ffb600ee30f062269bcf060156efb01b1e3d373d845b5e298e746a1` |
| 79 | `theorem` | [arrowCongr_trans](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/arrowcongr-trans.md) | 450 | `result-track:e811359939cf1459d0f621d698c3a75b75b7639452b38183f68a06bca1b8b4e3` |
| 80 | `theorem` | [arrowCongr_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/arrowcongr-symm.md) | 456 | `result-track:1aaf5a696bff2bd3159c2179e286f26b43b897b7e54c4bc89b0d1ecfea9b1863` |
| 81 | `def` | [equivCongr](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/equivcongr.md) | 465 | `declaration-track:de69a668f11dbb3265d9c2690fd0d6e10e2a49fa9f434e8ec4f195c4a375ae61` |
| 82 | `theorem` | [equivCongr_refl](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/equivcongr-refl.md) | 476 | `result-track:3a4265e320df889142f0b609d3ad0fa49c33f3c41b2357e576675857acf27d29` |
| 83 | `theorem` | [equivCongr_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/equivcongr-symm.md) | 480 | `result-track:cb9b7466c5074f9e4f64a73ef92b2a9a7e9b631cf0d40853021657b716bcb779` |
| 84 | `theorem` | [equivCongr_trans](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/equivcongr-trans.md) | 485 | `result-track:3b9f7190c5a0ac379625595f9fafdf60ba9e18a6fed5e2800e43f8723e677b29` |
| 85 | `def` | [ofAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/ofalghom.md) | 493 | `declaration-track:9f49490e98bc4c73a7848157922a36fff069ebcb395ac9faedd3a9de98ec3437` |
| 86 | `theorem` | [toAlgHom_ofAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toalghom-ofalghom.md) | 501 | `result-track:98f1a26b04aad941ee295b3a9079edd4f0ebc014f23562a084053213470e983a` |
| 87 | `theorem` | [ofAlgHom_toAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/ofalghom-toalghom.md) | 506 | `result-track:4e4d1d22badac4fb7e0db4a8ad51aff05405fe98aa35606fce58b56ac590e802` |
| 88 | `theorem` | [ofAlgHom_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/ofalghom-symm.md) | 513 | `result-track:b8d170cdc891998285d6e9d4cdff127924da7e2c30f16b779e6267bc0277c3a2` |
| 89 | `theorem` | [toLinearEquiv_refl](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tolinearequiv-refl.md) | 518 | `result-track:5f02038b73b55cf80a2dfc9fd051e654eaee702e6b98e28efd0d0d92585cb058` |
| 90 | `theorem` | [toLinearEquiv_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tolinearequiv-symm.md) | 522 | `result-track:eea915a8a04abcb7f72785a8d9d6fa39828e4995dd14b47c72b1264830dbf44a` |
| 91 | `theorem` | [coe_toLinearEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-tolinearequiv.md) | 526 | `result-track:cf7793e389a604e395bf885a1e48f238267c944c5122903908233ae10df98147` |
| 92 | `theorem` | [coe_symm_toLinearEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-symm-tolinearequiv.md) | 529 | `result-track:d4b42ff62c3aa90f59a042a0524d941f95bf73a0391af6f1c1aaab791e3f014d` |
| 93 | `theorem` | [toLinearEquiv_trans](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tolinearequiv-trans.md) | 532 | `result-track:8e9026c12e63425611e42deb4921b2911ac5ca7824979b5a24755fbeafbefe09` |
| 94 | `theorem` | [toLinearEquiv_injective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tolinearequiv-injective.md) | 536 | `result-track:54dcdea1ea4f736ee0f263db01ace5a1859f2db07c17a654d0af36e3daa8e03c` |
| 95 | `abbrev` | [toLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tolinearmap.md) | 540 | `declaration-track:5d2f26e54411765d8704b11f24e76016795940652bafc1760b96f9cabd98ed51` |
| 96 | `lemma` | [toAlgHom_toLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toalghom-tolinearmap.md) | 544 | `result-track:8cf64aff49c41a620f09b3b32209bc99b0a2271dd057fb5a82690c2bd3af614f` |
| 97 | `theorem` | [toLinearMap_ofAlgHom](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tolinearmap-ofalghom.md) | 546 | `result-track:8de41d1eecf43aa0ef4cf1b94b4cecd0114412da1fc0c0b24de38bec1b6e6ad8` |
| 98 | `theorem` | [toLinearEquiv_toLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tolinearequiv-tolinearmap.md) | 550 | `result-track:efa100f12bd4d49df7f24adfe301c8ce36cd4721254e31456b6c9969884fb838` |
| 99 | `theorem` | [toLinearMap_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tolinearmap-apply.md) | 554 | `result-track:408758794768b6bec4e19c83606d5cddcc4b19dfed2bfe352327cac298b61027` |
| 100 | `theorem` | [toLinearMap_injective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tolinearmap-injective.md) | 557 | `result-track:df29414c4b5c7f77ee88429f24bed7dc7743e496583af30d2fb6c17b818850b2` |
| 101 | `theorem` | [trans_toLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/trans-tolinearmap.md) | 561 | `result-track:fc1bb716845107454297999ff0b8aa5660154285d6271d406b23ddf5b3fd587a` |
| 102 | `theorem` | [linearEquivConj_mulLeft](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/linearequivconj-mulleft.md) | 565 | `result-track:c7cb31558892984a4b72955681b255dfc4a061abfae95f9aa1ae51dba22fc810` |
| 103 | `theorem` | [linearEquivConj_mulRight](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/linearequivconj-mulright.md) | 569 | `result-track:313e7d0aa724cc1e237ede5539eb91bb77f50c31c845a51b7f6def196d2f692c` |
| 104 | `theorem` | [linearEquivConj_mulLeftRight](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/linearequivconj-mulleftright.md) | 573 | `result-track:c4e8f226dc6b763bbb383078636717be185f8849f5d6bdb332cfcb9fcaee868a` |
| 105 | `def` | [ofBijective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/ofbijective.md) | 578 | `declaration-track:ea9b9cac6e1d3b6a923d83f455df31814b97f2eb9ad5d100e63d0ce4040d2141` |
| 106 | `lemma` | [coe_ofBijective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-ofbijective.md) | 582 | `result-track:3429410a6bc4f578ea5da808d6aa8f3f80a3ad5b425d2f733fef6a3e033b029a` |
| 107 | `lemma` | [ofBijective_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/ofbijective-apply.md) | 585 | `result-track:5ea2263a6af93c531373742141f7e371a1bbb2ed9a5c132eff727eccadcf7dc2` |
| 108 | `lemma` | [toLinearMap_ofBijective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tolinearmap-ofbijective.md) | 589 | `result-track:fcfd19b1cdef8f6f947438b85c42635a77a6a55904882f1c97a526685cba5bf9` |
| 109 | `lemma` | [toAlgHom_ofBijective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toalghom-ofbijective.md) | 593 | `result-track:33b691701b12058858565419c78ce8284a5ee91d465568a70495bb3389aa0e92` |
| 110 | `lemma` | [ofBijective_apply_symm_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/ofbijective-apply-symm-apply.md) | 596 | `result-track:1f88a76a0775e7160e885db730571cccf94569bd807c9f6bb436d8d968eec2c2` |
| 111 | `lemma` | [ofBijective_symm_apply_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/ofbijective-symm-apply-apply.md) | 601 | `result-track:1da54c1457b263eed3caa56b548a422f3001fe5d9bab04898ea264b9302e0716` |
| 112 | `def` | [ofLinearEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/oflinearequiv.md) | 614 | `declaration-track:cc92f97895ed6ad2fd0acfc84fcde60cdcf9d211aeb384742107c45fe27b9fb7` |
| 113 | `def` | [ofLinearEquiv_symm.aux](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/oflinearequiv-symm-aux.md) | 622 | `declaration-track:a27243bf5e9df8a7d4fb1e6dcf693cd0b03cf9580f6d31ca99c17f602ed25ded` |
| 114 | `theorem` | [ofLinearEquiv_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/oflinearequiv-symm.md) | 625 | `result-track:ce0388c983b53a4626af337ab545f58c256c27c3591a8d0fa266de0bfbdb3690` |
| 115 | `theorem` | [ofLinearEquiv_toLinearEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/oflinearequiv-tolinearequiv.md) | 633 | `result-track:da3f5e74879cbf4e6e15a169ae1ed37a8742791be8b8c2b12694d1a40e4ec63a` |
| 116 | `theorem` | [toLinearEquiv_ofLinearEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tolinearequiv-oflinearequiv.md) | 638 | `result-track:fc87eab0ed8bc272ad3ec8a3841ad0550f0d3235086dc9004ff27e0092b98a40` |
| 117 | `def` | [ofRingEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/ofringequiv.md) | 647 | `declaration-track:c11431d938c3619cb5de3248e2a279e21660857aac2c8652a2765cfce6451936` |
| 118 | `instance` | [aut](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/aut.md) | 657 | `declaration-track:feb97c24e0a2ffb69d3d9fe7f0db2547b8b31d4a6b23e16b58efd0f04f35033a` |
| 119 | `theorem` | [one_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/one-apply.md) | 667 | `result-track:6a9e26f3315dded5185aa286c72b9182a8d0eb9566f4d23e7123564cc600ebd6` |
| 120 | `theorem` | [mul_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/mul-apply.md) | 671 | `result-track:a95f5f6b2c0ec899c6af7cff9dfdbfd471bff7c67a2fa5f41aeb63b0440f73a8` |
| 121 | `lemma` | [aut_inv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/aut-inv.md) | 674 | `result-track:5a5d2b063206bf0b2acf9283340d5e8ad4d9061628ec628b7d481da4a924fab1` |
| 122 | `lemma` | [coe_inv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-inv.md) | 676 | `result-track:c0121c1d4f0d14015bdf30c8d32c9cb5a4d51be9bbd7e9dcc243a7f24bb3bd45` |
| 123 | `theorem` | [coe_pow](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-pow.md) | 678 | `result-track:290207c9eead7cccdb766f567bd8b277a15b71741f5a88917ab6198d5f0b6d89` |
| 124 | `def` | [autCongr](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/autcongr.md) | 685 | `declaration-track:d3db976edc25f6de3c06337462deab9300b2aebd0ea94d44ade3434e8ce9fa18` |
| 125 | `theorem` | [autCongr_refl](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/autcongr-refl.md) | 694 | `result-track:05adfc035e16136e9566e80897f90099e5cc4f2b3757a3c10140bcf0c3713a7d` |
| 126 | `theorem` | [autCongr_symm](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/autcongr-symm.md) | 697 | `result-track:b1941edaea7a6fc925afe3f505e78742948a796caee706ca747769bbb8b348c7` |
| 127 | `theorem` | [autCongr_trans](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/autcongr-trans.md) | 701 | `result-track:68a359dacf183308f3f4a02f1123e11f80e9844e01445d44f8b6ba0306c8926d` |
| 128 | `instance` | [applyMulSemiringAction](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/applymulsemiringaction.md) | 708 | `declaration-track:77492ad5ba70aab83e83770d6c99bb05716a7ebb2714116920e33b7d69f9be91` |
| 129 | `theorem` | [smul_def](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/smul-def.md) | 718 | `result-track:604a2aa1ae23bf4ae3814862e227facc48b4ada32b97a178f5c0dc53cd091575` |
| 130 | `instance` | [apply_faithfulSMul](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/apply-faithfulsmul.md) | 721 | `declaration-track:01f32c29119e6ae5500f423dd6ef4d41523efd818abf752db7394b7a908ce189` |
| 131 | `instance` | [apply_smulCommClass](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/apply-smulcommclass.md) | 724 | `declaration-track:06a7f200e88a70883eef81e13a9ae686e65e0ef5213b31c9a43039916176ad98` |
| 132 | `instance` | [apply_smulCommClass'](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/apply-smulcommclass-source-edition-2.md) | 728 | `declaration-track:8655f170c31c93acc3e503569d0b35b5ca2228136487cb972c43458919346565` |
| 133 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/instance.md) | 732 | `declaration-track:1eeeb1bd710a23ea13791c12d2fa82c528f763c4869ea2de5bbdefb7e3319afc` |
| 134 | `theorem` | [smul_units_def](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/smul-units-def.md) | 740 | `result-track:3d9c191d8f91aea8200c0387658764daa44522333faf0a58326ceec548bb057f` |
| 135 | `lemma` | [Algebra Equiv Namespaced Public](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toringequiv-algequiv.md) | 744 | `result-track:7d60219960cb0175ff8dcdc82c42717ed5e05a3cc68f8637c3f9d12785943fd4` |
| 136 | `theorem` | [algebraMap_eq_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/algebramap-eq-apply.md) | 748 | `result-track:25e134e6555d9b618c6459aa0d43f34fd887b287fe256a85f677b7595ff4c129` |
| 137 | `def` | [toAlgHomHom](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toalghomhom.md) | 754 | `declaration-track:6df76c648f1b718d63bb58be00b4b45dde3c843c3590451f2d252a3de296f7b4` |
| 138 | `def` | [toLinearMapHom](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tolinearmaphom.md) | 762 | `declaration-track:0d3e5e43df5a6117b2022a056a8c06f7b715d55b450d43e7b1414f40863a594b` |
| 139 | `lemma` | [pow_toLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/pow-tolinearmap.md) | 766 | `result-track:a558f224c4c108b1068db506e7a657a40142f594df26823f14667206a5bf2fd3` |
| 140 | `lemma` | [one_toLinearMap](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/one-tolinearmap.md) | 771 | `result-track:b28031515b5ff2689cbd824e0d3402df01535a07992d61e5efdcd6c347ab9803` |
| 141 | `def` | [algHomUnitsEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/alghomunitsequiv.md) | 777 | `declaration-track:2dbe9610774833ef784798446f6ef1fcebfb4b4ecbf2cdb7cbcd25f3ee45b84f` |
| 142 | `instance` | [Algebra Equiv Namespaced Public](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/algequiv-source-line-788-occurrence-2.md) | 788 | `declaration-track:7d6d699283d5265ceaaaa346f0a710910b39bbb95fff16f166034d2add60506a` |
| 143 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 792 | `declaration-track:f4a07617d21c3303d75592f79fecf7f50de1b3c15729e9c25ffa86b6f2342733` |
| 144 | `def` | [toNatAlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tonatalgequiv.md) | 806 | `declaration-track:3cc37f6f4f0300588533e74e92e84df29410438121320ffc1de24d23988bb1f5` |
| 145 | `lemma` | [coe_toNatAlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-tonatalgequiv.md) | 811 | `result-track:5ff5c8b359c6386717aa47feeeaf75eff604e3d0747d2da92616febbfab87d6e` |
| 146 | `lemma` | [toAlgHom_toNatAlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toalghom-tonatalgequiv.md) | 814 | `result-track:ab5b3a62ce6e98dcaf3da40e32010dd4a5cd5b6f1a26199dc338ea7bb7f078e4` |
| 147 | `lemma` | [symm_toNatAlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-tonatalgequiv.md) | 818 | `result-track:831a1306dfbc676daaf176cdb452193b3787361c5fb72343cfc1d55f6225fd68` |
| 148 | `def` | [equivNatAlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/equivnatalgequiv.md) | 824 | `declaration-track:29e0edaa7bbb9fd78f3a6eed68140d80e76265835381b9774b1a0c7ab7d02b5b` |
| 149 | `lemma` | [toNatAlgEquiv_injective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tonatalgequiv-injective.md) | 828 | `result-track:081b883c3405de1b11a38de1c73abbe0bbc356a3f7d8c3222155906ba49d3e21` |
| 150 | `def` | [toIntAlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tointalgequiv.md) | 834 | `declaration-track:08e8832443fbd64fb404f20307ae5dd55ed98c901d4dd1371c8dc96b38aa04bf` |
| 151 | `lemma` | [coe_toIntAlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/coe-tointalgequiv.md) | 839 | `result-track:7f0d4e6a020b5f7759d76144e3325be6a5f3199ea776a8f04a49185e2acaa398` |
| 152 | `lemma` | [toAlgHom_toIntAlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toalghom-tointalgequiv.md) | 842 | `result-track:1a8b2d3c36fa31a4f3f4b5352d4567d5194b0b69963eced4d76d7bb0c78450c0` |
| 153 | `lemma` | [symm_toIntAlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-tointalgequiv.md) | 846 | `result-track:0cea41d3a2c4ce6e88cdd279a4be57a91b3316e765ed6b6097c87603acd844d4` |
| 154 | `def` | [equivIntAlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/equivintalgequiv.md) | 852 | `declaration-track:c77245a6279407b734d3859eb44d4813d456da91ae52a3bcf87475544dcaa98e` |
| 155 | `lemma` | [toIntAlgEquiv_injective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/tointalgequiv-injective.md) | 856 | `result-track:971ee4091c60d9de662d116e17bdb6224342c33d8dce2cf6a064ffa8e263e17a` |
| 156 | `def` | [toAlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toalgequiv.md) | 875 | `declaration-track:3a313be5b881abf31145a4779f176ed78ef69f84db9af6588085323ee9e03ec2` |
| 157 | `theorem` | [toAlgEquiv_injective](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toalgequiv-injective.md) | 878 | `result-track:245f988b9d7af37ba60236a4c344a5d82b48148ffa2bd8b8a07c9893e1072d8e` |
| 158 | `def` | [toAlgAut](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/toalgaut.md) | 889 | `declaration-track:feadb12b8a38381bb853deb2ac83b8af39c5068f123ec42716641cfaf10715e4` |
| 159 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 902 | `declaration-track:c697ff234ebb9383d1e7eba9cf1eec58a56faea4324d2ece36e5ca057b032e48` |
| 160 | `lemma` | [AlgEquiv.default_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/algequiv-default-apply.md) | 909 | `result-track:4d2a7bec0fbb14ecdaae599e3eed1912594ba58ed8dc6dfac027117537336e33` |
| 161 | `def` | [ULift.algEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/ulift-algequiv.md) | 917 | `declaration-track:afc35a1abed432c90cf1eaa12a10b93873e811e0c3d3173df9ac59ae776e11b5` |
| 162 | `lemma` | [ULift.down_algEquiv_symm_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/ulift-down-algequiv-symm-apply.md) | 923 | `result-track:f1324349a35d32a944dae2cbc97e0329135d8775b9b5066e0a2332d6a04b51bd` |
| 163 | `def` | [AlgHom.ulift](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/alghom-ulift.md) | 936 | `declaration-track:bf4330ea6664ac5ddf550826da94df40dbdbde01be6faaa168dfc8f3ddc18d7e` |
| 164 | `lemma` | [AlgHom.down_ulift_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/alghom-down-ulift-apply.md) | 942 | `result-track:0f170525c3afd559a046c96f7f01806c1860816847c3e639526de14074e4c05e` |
| 165 | `lemma` | [AlgHom.ulift_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/alghom-ulift-apply.md) | 946 | `result-track:a4cbfbd9756cda98e241dd17f31e9ee58d8ac1ab60460ce219d031d2c08b6bc6` |
| 166 | `def` | [LinearEquiv.algEquivOfRing](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/linearequiv-algequivofring.md) | 957 | `declaration-track:83ee0b965af262a80f83eeaaee08c2a2509f92c166698cb8f8be0c517354e47f` |
| 167 | `def` | [conjAlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/conjalgequiv.md) | 983 | `declaration-track:030e8f289db63d6b0174ba566fcf9d45a5734ed50b7041fbcb2c2364a08e43ec` |
| 168 | `theorem` | [conjAlgEquiv_apply](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/conjalgequiv-apply.md) | 987 | `result-track:89e903472480a71add3806020d41be6c9e1706de06e37061d263355035d21eae` |
| 169 | `theorem` | [symm_conjAlgEquiv](../../../../AssociativeRingsAndAlgebras/AlgebraEquivNamespacedPublic.lean/declarations/symm-conjalgequiv.md) | 990 | `result-track:895641f2eb7d96d71dab119ab24b16a939f4e69a0b41035b2988b82019450428` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16a257535c3aa142fec7f12184cd9f0e1754bbc93637e734a266e39654ccef60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Equiv/Variant09fea0a541abd3f72f9bcf3ae62b797de07dc459174e9547c54a2d4784d77356.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Equiv/Variant09fea0a541abd3f72f9bcf3ae62b797de07dc459174e9547c54a2d4784d77356.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
