# Verification target: Moebius Action Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39084e4f4ae97c9dc588675a4f50607fdeffcddc",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variantdca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39084e4f4ae97c9dc588675a4f50607fdeffcddc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variantdca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MoebiusAction/Variantdca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean.json)

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
| 1 | `def` | [num](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/num-source-edition-2.md) | 30 | `declaration-track:ac9c09bd915a512a293ebf3aecc9ee34370c67f55d9bf43c493b6567cfb44b15` |
| 2 | `def` | [denom](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom-source-edition-2.md) | 33 | `declaration-track:da97937be76f8a313b42262b33c118c238321050899aef06be5d3482b91dd90e` |
| 3 | `lemma` | [num_neg](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/num-neg.md) | 36 | `result-track:4c5db5dff2f97db5583c4e9da2326b594c394c1f3c77c200da1d158d779b852f` |
| 4 | `lemma` | [denom_neg](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom-neg.md) | 40 | `result-track:83d6a5d85888377ccf6057e923411fb467d5ae9a3897874b4817db4fcd6f4554` |
| 5 | `theorem` | [linear_ne_zero_of_im](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/linear-ne-zero-of-im.md) | 43 | `result-track:f8228f3829ef19d4fec1458984053de96f93647c8c26bf27252dbccd242add68` |
| 6 | `theorem` | [linear_ne_zero](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/linear-ne-zero.md) | 55 | `result-track:6e5fb055fd4707c8263abcdf549d29e37c8bc44aefc818035bc4b300b0da587e` |
| 7 | `theorem` | [denom_ne_zero_of_im](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom-ne-zero-of-im.md) | 59 | `result-track:62c688bc46531159b188cb7cfbca95296d73e04ff5e7d3591b83d4161bb6d999` |
| 8 | `theorem` | [denom_ne_zero](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom-ne-zero.md) | 64 | `result-track:f3a490944cffa7290d3d93ff5c464f402a28a8a5e9eb0f37c8fb943b175ed06f` |
| 9 | `theorem` | [normSq_denom_pos](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/normsq-denom-pos.md) | 67 | `result-track:7302a46e7683752fb0c4d023704e42d8a292f0601d5829b0e7b93f43a7e23400` |
| 10 | `theorem` | [normSq_denom_ne_zero](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/normsq-denom-ne-zero.md) | 71 | `result-track:56104ff675c68901065427ed78a1d2489352ae266e049f534e29f83b07c4fc59` |
| 11 | `lemma` | [denom_cocycle](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom-cocycle.md) | 75 | `result-track:111cb732f6b7748a718ed155d8abe66060a63a610a1e7c4ece89337649a95bfb` |
| 12 | `lemma` | [moebius_im](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/moebius-im.md) | 84 | `result-track:eebee0e830f50472dc50f8aaaf23c33d31257c7abc07ef9880c466efa2711504` |
| 13 | `def` | [σ](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/anonymous.md) | 92 | `declaration-track:d2399b0ec2b581ea5f275d5a363c33cc429e3951462f2657bda0141582c9c5c5` |
| 14 | `lemma` | [σ_conj](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/conj.md) | 95 | `result-track:ce98ca4ea0c954d380f6946044adfdc8f461dfa4fa2c8585286e510d60beaf8c` |
| 15 | `lemma` | [σ_ofReal](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/ofreal.md) | 100 | `result-track:31c6af035c741a6c04e53a3f7b5f36545128e13f04598ffccfbc735c099c19e9` |
| 16 | `lemma` | [σ_num](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/num.md) | 104 | `result-track:0f3be65f283a86b3e9c532930c3c98a39668f1a71c04aefea297a11f311115c9` |
| 17 | `lemma` | [σ_denom](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom.md) | 107 | `result-track:cbc81c9ef3809024e3c7bbb4b8aa1fc074b78c2956eb766c0abf8e5db5d58a92` |
| 18 | `lemma` | [σ_neg](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/neg.md) | 111 | `result-track:21e58c04a8e9c281c6f95f9497ef384026cdb0344e2078ffd7aa151505b9e73f` |
| 19 | `lemma` | [σ_sq](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/sq.md) | 115 | `result-track:5b05121b89d822bc7ee93c5c99dcd38f1a3d1e59d3cbf0a7fc94e22dbf82d75e` |
| 20 | `lemma` | [σ_im_ne_zero](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/im-ne-zero.md) | 119 | `result-track:2ad0c7ef718444ac445f8ed1a0207c6fb9b378476a48ab845851f22d5f345a16` |
| 21 | `lemma` | [σ_mul](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/mul.md) | 123 | `result-track:00ae389e2af68a64760b6dbac2bc3d1a4931052a02e7a38540af96f1f24935d0` |
| 22 | `lemma` | [σ_mul_comm](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/mul-comm.md) | 132 | `result-track:959e594b88fd19e938977d0c3afc32b6f9cf5c23c8050db049b16427721f5314` |
| 23 | `lemma` | [norm_σ](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/norm.md) | 136 | `result-track:3dd96b1962534e4be6872fd2c190d580cf046a7b04c35b689a2708f2f663ac9c` |
| 24 | `def` | [smulAux'](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/smulaux-source-edition-2.md) | 141 | `declaration-track:f4ba6c1386f298b30b7b0d0494aa951ea4303b3fef6b665ec2020adcb3442344` |
| 25 | `lemma` | [smulAux'_im](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/smulaux-im.md) | 143 | `result-track:db4ace95608093e5efb12ea73d4b39d3658337cf7d4ebb0b12b13cee555786b6` |
| 26 | `def` | [smulAux](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/smulaux.md) | 152 | `declaration-track:0ed43eeb98a9f78f9ead9e8c900ad55ba116826120f95ef173719136362b76d2` |
| 27 | `lemma` | [denom_cocycle'](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom-cocycle-source-edition-3.md) | 157 | `result-track:8a129c74ce44c8457dcea4d25c5678c07d26fb7870209d3a0b2e90c24521eee7` |
| 28 | `theorem` | [mul_smul'](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/mul-smul.md) | 161 | `result-track:11d49fe9cd2d616431d7f6a3ebc1590cc0082510e42d91c591acb8d913632535` |
| 29 | `instance` | [glAction](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/glaction.md) | 182 | `declaration-track:767a498ff8b9202c73345157e17b5eb9915a5ff978cd978a3f6c12bbecc1318a` |
| 30 | `lemma` | [coe_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/coe-smul.md) | 189 | `result-track:3d805ead3de679e0627ab007fef7e84a73ded27076130040ecbdf85021e6c972` |
| 31 | `lemma` | [coe_smul_of_det_pos](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/coe-smul-of-det-pos.md) | 192 | `result-track:e876883f547321ca85a465b45d2b35619b0c4bb4954f8606aff29a751a12ce2f` |
| 32 | `lemma` | [denom_cocycle_σ](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom-cocycle-source-edition-2.md) | 197 | `result-track:6fc4bea553d2887380a8318b9d780a87688be25ba238bdc431eab81f8dfa409f` |
| 33 | `lemma` | [glPos_smul_def](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/glpos-smul-def.md) | 201 | `result-track:68f795f03c03bb96a1bb1c3942ec51972bed05e1c841052460e0a52530ff93cf` |
| 34 | `theorem` | [re_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/re-smul.md) | 208 | `result-track:5c658c4ffd9ef7825b42c1d3750061b740b0c7bd33b5558ed4317fdf0ff40c13` |
| 35 | `theorem` | [im_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/im-smul.md) | 212 | `result-track:9bda2bc90d36c19f375af9ac57591c89f1f6ed83723de3683a3e744d8cd8185e` |
| 36 | `lemma` | [im_smul_eq_div_normSq](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/im-smul-eq-div-normsq-source-edition-2.md) | 220 | `result-track:e7d293d84f591d7a9a04799ff6197fc4fd84f6a1fa0b1afbe65d1f97f3432b88` |
| 37 | `theorem` | [c_mul_im_sq_le_normSq_denom](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/c-mul-im-sq-le-normsq-denom.md) | 223 | `result-track:2074a9bff9e5683ca257d1ecc40ad341e3ff8e8335d24b027dda09e773e7618e` |
| 38 | `theorem` | [neg_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/neg-smul.md) | 231 | `result-track:57ae02f6232b2baaee90947022819f9cd763e69c2eb40d8b2e9d19b0df0d95da` |
| 39 | `lemma` | [num_one](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/num-one.md) | 236 | `result-track:b57151154cf4dc6914a6c4c8148ff489275f95d88ee446f1636326d5fbb87e19` |
| 40 | `lemma` | [denom_one](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom-one.md) | 239 | `result-track:f2adb139166b4e04a873c546a38bd8cf43ed2a6de68afc2fe29e15ae7321a720` |
| 41 | `theorem` | [num_scalar](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/num-scalar.md) | 243 | `result-track:3354aa294757429efc2f10c788b32195358f95d7bfee05362fe92ffecbcadc3d` |
| 42 | `theorem` | [denom_scalar](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom-scalar.md) | 247 | `result-track:2b5c5a4ba68fcd129973dad442b666ca2f5c1e96e624fd6f1e5f2eec44b0be96` |
| 43 | `theorem` | [glScalar_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/glscalar-smul.md) | 251 | `result-track:a331228ce02b0b1a4307f1490fabd36386b9753367c5b9c3b7e376c11c7158c1` |
| 44 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/instance-source-edition-2.md) | 257 | `declaration-track:9b5a56f11cc30007c2fd46b72445d47230e1ba9c24e6675a77f370c15f82376a` |
| 45 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/instance.md) | 268 | `declaration-track:47941e35544de7b56b8d0e2659543cff8c614cc62905c832d51270f59736c07b` |
| 46 | `theorem` | [pglMk_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/pglmk-smul.md) | 272 | `result-track:968a1ceb3d59d7e10942e306f99823f862bfbc34504ed8d0309122279de87a33` |
| 47 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/instance-source-edition-3.md) | 276 | `declaration-track:df59d0360d1b0fc38d5ceb790d8b526fa1c06d745e8db35592a67a4f8272364f` |
| 48 | `instance` | [SLAction](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/slaction.md) | 283 | `declaration-track:e29aa5c0359c06064a8454f4057462f09d1a8b5786e573219b6d22ed79fa9f8a` |
| 49 | `theorem` | [coe_specialLinearGroup_apply](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/coe-speciallineargroup-apply.md) | 286 | `result-track:3609c6d277f3ff56a3cb473fab0e60d42f0c62668ad0cccfd8a2190b4764ef60` |
| 50 | `theorem` | [specialLinearGroup_apply](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/speciallineargroup-apply.md) | 293 | `result-track:0b189c67a785c5432e753f4a5c5910972b09595d2bc0a89249a1d0339db086bc` |
| 51 | `theorem` | [modular_S_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/modular-s-smul.md) | 303 | `result-track:5b4fd76a9821862edaf84bf96b2304adbb6a1b217f61a6e560f90639b03c8d56` |
| 52 | `theorem` | [modular_T_zpow_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/modular-t-zpow-smul.md) | 308 | `result-track:b9d91aa8442eef3b85e84ce8c5213aa9f8e83da88fe398facc488a9e6bc6fc04` |
| 53 | `theorem` | [modular_T_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/modular-t-smul.md) | 314 | `result-track:234bbc8efcf7e58287b33dd907484cba5b3ec9178f544f5d81bfaa09ad7aa958` |
| 54 | `theorem` | [exists_SL2_smul_eq_of_apply_zero_one_eq_zero](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/exists-sl2-smul-eq-of-apply-zero-one-eq-zero.md) | 318 | `result-track:aed7ae4442020f19829a459a3c8507802682472054198257b5b43f824db4a1e0` |
| 55 | `theorem` | [exists_SL2_smul_eq_of_apply_zero_one_ne_zero](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/exists-sl2-smul-eq-of-apply-zero-one-ne-zero.md) | 327 | `result-track:5b34180da98b0f2f62bb3afbb4a461df0ec0d11c5030d5af1d2bd0469b6c9ec2` |
| 56 | `def` | [toSL2R](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/tosl2r.md) | 348 | `declaration-track:3752b815ff65a1900927de1311542d78148ec38d23107ef5c5614bf6b2b6f354` |
| 57 | `lemma` | [toSL2R_apply](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/tosl2r-apply.md) | 352 | `result-track:214934d953297129a3b35ebb051bbba1e1e5234822a33ab4c0a7fabcf136cf53` |
| 58 | `lemma` | [coe_toSL2R](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/coe-tosl2r.md) | 356 | `result-track:5447a612e952e31d214f55c22bdea5d328e3840294a12b40609dae95d38c6617` |
| 59 | `lemma` | [toSL2R_smul_I](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/tosl2r-smul-i.md) | 358 | `result-track:139850f232c834eb7eef08c8197c5e634d9971789c4ca20cee92833741b25c58` |
| 60 | `instance` | [isPretransitiveSL2R](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/ispretransitivesl2r.md) | 368 | `declaration-track:38759067d6459889aa4a2baa6cc6157882606f019f6913f25e9bade558d436de` |
| 61 | `instance` | [isPretransitiveGL2R](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/ispretransitivegl2r.md) | 372 | `declaration-track:52e4575e4e6cb75ce87e0719aea02e233ac1dee5c4e429b23be0c01572a3f6b0` |
| 62 | `def` | [J](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/j.md) | 381 | `declaration-track:8ec2ccf9d368be0b148c99ed8bed7c6e0428324a5f2da3ec0749ab5e03bf6b0b` |
| 63 | `lemma` | [coe_J_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/coe-j-smul.md) | 383 | `result-track:f24cb94b33fb435f4bcf27c892a965cf030ab972391f4ddce451d8d925f611b1` |
| 64 | `lemma` | [val_J](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/val-j.md) | 386 | `result-track:f5a3be5e54958da0f779178891b2e2f5d6e040463ceda96637597a5832b0bde0` |
| 65 | `lemma` | [J_sq](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/j-sq.md) | 388 | `result-track:b9840c2ac496dc07316866930b7c93f9f83f1cacd62b383b94090d98c16a32d9` |
| 66 | `lemma` | [det_J](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/det-j.md) | 390 | `result-track:0b92cc653295fb0ef19cc96484b81fff81a365d0a0f314198acbbcaaae118407` |
| 67 | `lemma` | [sigma_J](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/sigma-j.md) | 392 | `result-track:1445e8126f78c83bcf2fbc89adef81998a3d90a8eeb050a5ced03cc6cbbd4737` |
| 68 | `lemma` | [denom_J](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom-j.md) | 394 | `result-track:f31f12326a3794e979ad28abd2aa3e9bca85fadc2034193688ea14d37f1dd792` |
| 69 | `lemma` | [denom_J_mul](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom-j-mul.md) | 397 | `result-track:bf9decbc2def8b7ea81ce216739a2ec6dd2e8fba3d56ba4fe2341971622efcee` |
| 70 | `def` | [coe](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/coe.md) | 411 | `declaration-track:9ec68e99de7aeb59b93faa50825f88f71d0f6fb7a597aba865de07cf3f9f26e1` |
| 71 | `lemma` | [coe_inj](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/coe-inj.md) | 414 | `result-track:08258c223693d5e01bc7363574da31af14da2010aab00feb750f2b3568547800` |
| 72 | `def` | [coeHom](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/coehom.md) | 421 | `declaration-track:d313b4da8e4055241857c5260ed93072fa570ce1e4cd4fd26daaa994f07d4e5f` |
| 73 | `lemma` | [coeHom_apply](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/coehom-apply.md) | 424 | `result-track:400383b4dd85c558184b94d10d319319152e777bfdbf1e03698c6341bb37f3fd` |
| 74 | `theorem` | [coe_apply_complex](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/coe-apply-complex.md) | 427 | `result-track:8ab4a63309cd5569f2716c85e8192185aa6e2a448f25e9c6714f881b521f6c67` |
| 75 | `theorem` | [det_coe](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/det-coe.md) | 432 | `result-track:06c0ba52804f5e672396acc32536d6a86cbe6a602bf8c11e7cf76de80bffdc58` |
| 76 | `lemma` | [coe_one](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/coe-one.md) | 436 | `result-track:57ac1031c01400a94bb89799d4457a94afd008a08a0f28c623b2af96ae35fd7c` |
| 77 | `def` | [SLOnGLPos](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/slonglpos.md) | 441 | `declaration-track:043219a1fde8d4c772dbd19cee57fb2f8a641eb83857f391350fed891269786f` |
| 78 | `theorem` | [SLOnGLPos_smul_apply](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/slonglpos-smul-apply.md) | 447 | `result-track:989c42486b45c24c45d0b0d100343a21c8d37f37a4f455c1a9894af64379d8c7` |
| 79 | `lemma` | [SL_to_GL_tower](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/sl-to-gl-tower.md) | 452 | `result-track:c6bdf1721609e638445e8fce37974cb9b58a40f06fd079791580c536f48ea15f` |
| 80 | `theorem` | [sl_moeb](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/sl-moeb.md) | 464 | `result-track:cb685dacdce53fe6dee021acf311e88136a333b95a654438f37ae49eb608e435` |
| 81 | `theorem` | [SL_neg_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/sl-neg-smul.md) | 467 | `result-track:e624ed02a56f8819c85439e01561594d892fb69a8ad1615d81ba6d1fe71db579` |
| 82 | `theorem` | [im_smul_eq_div_normSq](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/im-smul-eq-div-normsq.md) | 472 | `result-track:315ac2ebe0cc989ca68c9fc8224f61ce2f57cc5b9f7388e82ddaf18da08be59e` |
| 83 | `theorem` | [denom_apply](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom-apply.md) | 475 | `result-track:26ce81cd9297d98a462988690745141759f4409af2f6e1cb35f44068863c7611` |
| 84 | `lemma` | [denom_S](../../../../FunctionsOfAComplexVariable/MoebiusActionPublic.lean/declarations/denom-s.md) | 478 | `result-track:bf8f041c6190b8a75fa01490f1f8c108425878b458922d5d67d74e969dff4539` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3804148309e7deb53802e12fb3eba354ddf9c42a7d478656484f676f215827f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variantdca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MoebiusAction/Variantdca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
