# Verification target: Weierstrass Preparation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59c43bbb59ec74834ac61a9c2be0611ce79a0489",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59c43bbb59ec74834ac61a9c2be0611ce79a0489`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean.json)

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
| 1 | `structure` | [IsWeierstrassDivisionAt](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivisionat.md) | 124 | `declaration-track:0f2b26c919a3283ec38f4e3944e0fc001382dfb3de35493fdc39d2e437da0fd6` |
| 2 | `abbrev` | [IsWeierstrassDivision](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivision.md) | 130 | `declaration-track:4fb6896f2cae72d3f40182c08111cc4850928b83a18a26c18629b8185ad189bd` |
| 3 | `theorem` | [isWeierstrassDivisionAt_zero](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivisionat-zero.md) | 133 | `result-track:0f7dfda5f8dcb3145e9520f7136b24f10889875db55e82baaa726c66186e0ad7` |
| 4 | `theorem` | [coeff_f_sub_r_mem](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/coeff-f-sub-r-mem.md) | 143 | `result-track:f516eafad4ff708d1699497d9c37d82600570d336cf25255a360a36c746fd550` |
| 5 | `theorem` | [add](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/add.md) | 153 | `result-track:1f2a9aed29d5aad956282f0f0e10f6f85c16e984d3d6039349941dd6ad5562ad` |
| 6 | `theorem` | [smul](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/smul.md) | 159 | `result-track:085e013b269ba46c829689dce781923bb4282e987e86bed9f0dce2205557376b` |
| 7 | `def` | [IsWeierstrassDivisorAt](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivisorat.md) | 179 | `declaration-track:c9ceba5d0762b75b8d69e2197e91b477aa783684675e016b8f12c838aed8fc3e` |
| 8 | `abbrev` | [IsWeierstrassDivisor](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivisor.md) | 184 | `declaration-track:147ed8ea4d2fb41349d768f6f62355dc5d89b39365313bfe47ac035315c81a01` |
| 9 | `theorem` | [IsWeierstrassDivisor.of_map_ne_zero](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivisor-of-map-ne-zero.md) | 190 | `result-track:d02ff00f253be0d1a434a1060f9040272ea19c7fc0f6c632cc7c55871d03e3f7` |
| 10 | `theorem` | [Weierstrass Preparation Namespaced Public](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivisorat-source-line-197-occurrence-2.md) | 197 | `result-track:c640ebe63e967462b91f14d429dd1e2d4a1b33cf59a9e60d7a9f4825f7560167` |
| 11 | `theorem` | [Weierstrass Preparation Namespaced Public](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivisorat-source-line-203-occurrence-2.md) | 203 | `result-track:c42d90bff107970b9d515d1655d395d74c3f2873d9b0ce2a86f34ea708d4048c` |
| 12 | `theorem` | [coeff_trunc_order_mem](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/coeff-trunc-order-mem.md) | 210 | `result-track:eb6601f791b226eb1577bb1d8123e2197ef5f96dfaf69e5960c205a233c67c0a` |
| 13 | `theorem` | [isUnit_shift](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isunit-shift.md) | 222 | `result-track:f671a428234971a4edb599f2822d397ff6470a45e88bf85ea179afcccd962603` |
| 14 | `def` | [seq](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/seq.md) | 227 | `declaration-track:32c42da662f70d491b4e96d7ca4e1d90f4dbde829eff6485549691c1908014b0` |
| 15 | `theorem` | [coeff_seq_mem](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/coeff-seq-mem.md) | 235 | `result-track:5fb5f4b9b3e920b25e56834ef4fb62a296dc7b81b3138e0581f069adc7cffc59` |
| 16 | `theorem` | [coeff_seq_succ_sub_seq_mem](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/coeff-seq-succ-sub-seq-mem.md) | 264 | `result-track:ed5d278eb99bdfada84d7c35cfae0cd1aa4d138e05ce1f80fa36efdbaaf7cc9e` |
| 17 | `theorem` | [seq_zero](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/seq-zero.md) | 272 | `result-track:4bcb7c58c641ac93400d9e698ba620d697069fe278387741f7938d6fae4d91c1` |
| 18 | `theorem` | [seq_one](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/seq-one.md) | 274 | `result-track:3ffe78cec4a39c5337d1973256dae25a2c194055c907a0af032da03b89b6d6c5` |
| 19 | `def` | [divCoeff](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/divcoeff.md) | 280 | `declaration-track:e35ce5f370187897b849e59e9d8e3e1742597801904befea21a380466f99d91c` |
| 20 | `def` | [div](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/div.md) | 292 | `declaration-track:7c98215487a2226af9584616cb56bdf39436c72ba014b0bc1acdf143de6d581d` |
| 21 | `theorem` | [coeff_div](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/coeff-div.md) | 294 | `result-track:18940dec3ef90c7c52f39ab5832d01714ebcbc8c3c2a6fe6e992f528dedb0ba0` |
| 22 | `theorem` | [coeff_div_sub_seq_mem](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/coeff-div-sub-seq-mem.md) | 297 | `result-track:0bac8096b0417e5769109a93559734b7a45873bfcae79b3e08d51b7227946859` |
| 23 | `def` | [mod](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/mod.md) | 302 | `declaration-track:1db300164cadd74e8be2aed2ec17e0a026789a012be5a27c06151a8666ca4fdf` |
| 24 | `theorem` | [isWeierstrassDivisionAt_div_mod](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivisionat-div-mod.md) | 306 | `result-track:47fd6be8f0a1c9184bafbfddd547e38449786eff1829a9e1bb42d3d6bfc2febe` |
| 25 | `theorem` | [eq_zero_of_mul_eq](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/eq-zero-of-mul-eq.md) | 327 | `result-track:c0c2af6919c43ce005e80a5f04efe0277e5657f6159d65f27f1fc27f62f6a0d9` |
| 26 | `theorem` | [eq_of_mul_add_eq_mul_add](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/eq-of-mul-add-eq-mul-add.md) | 368 | `result-track:b568e6b0dd4bde5d4029275e53ddcfe8df49d4b992812c0bf5f94583e844ab2d` |
| 27 | `theorem` | [div_add](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/div-add.md) | 381 | `result-track:ccb6d0c0d197ddfe781d8767131b7e39f0c0ecd0ed7ca37dd4d698ff29141e55` |
| 28 | `theorem` | [div_smul](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/div-smul.md) | 388 | `result-track:4f6d1b2390592474a5a78728f685e0c62a8ae525afc5197faa945ff9e132721b` |
| 29 | `theorem` | [div_zero](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/div-zero.md) | 395 | `result-track:79dd0f527dbb3d34d430715feba6dbceb711dfd51fd7e55c0c9869bd9196a6a2` |
| 30 | `theorem` | [mod_add](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/mod-add.md) | 399 | `result-track:bbbd97ec1f9cc780d34e1ca08208458695ee02c66db4327690fc86048eec6fab` |
| 31 | `theorem` | [mod_smul](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/mod-smul.md) | 406 | `result-track:334d66dcbb7748c8065deb17a3d88d9f3a3e60a8a8eeafff70e2f77190cd9030` |
| 32 | `theorem` | [mod_zero](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/mod-zero.md) | 413 | `result-track:e12dd11c2900334a41a6f3c3c3b4a470128e72da4806a3799d5469b0e191f7cb` |
| 33 | `def` | [mod'](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/mod-source-edition-2.md) | 418 | `declaration-track:f216af1d8dc950837da2244e30911806f57ced75b79f3e838ef05d7fa047069e` |
| 34 | `theorem` | [mod'_mk_eq_mod](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/mod-mk-eq-mod.md) | 436 | `result-track:7a0f5807ec49ccbc9fe8522c52e84e629ab52697b68cb031f95b006d428642ce` |
| 35 | `theorem` | [div_coe_eq_zero](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/div-coe-eq-zero.md) | 439 | `result-track:d52b66a01d531cf7d58479f9a65ecc6afaa4e0f6e68150e29e3206d29088e8fe` |
| 36 | `theorem` | [mod_coe_eq_self](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/mod-coe-eq-self.md) | 444 | `result-track:474f24996c091544a15fddab8d89c193ef6c92af506dacee3e14feb531d9db70` |
| 37 | `theorem` | [mk_mod'_eq_self](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/mk-mod-eq-self.md) | 450 | `result-track:398b9a3c51bbf48023484a1d1628cb50e9b1dd267e16b31d6559a38e83e88cdc` |
| 38 | `def` | [Weierstrass Preparation Namespaced Public](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/algequivquotient-source-line-466-occurrence-2.md) | 466 | `declaration-track:6d6c259093318e08ec8237b6a8766fe50101516b5fc687f56b6bdf1fa3c379b7` |
| 39 | `theorem` | [exists_isWeierstrassDivision](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/exists-isweierstrassdivision.md) | 512 | `result-track:a4931170ea2834790599c58f9e92c9bc3f0747773491e5cf94486b4d689c2607` |
| 40 | `def` | [weierstrassDiv](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/weierstrassdiv.md) | 520 | `declaration-track:bc9e48b9eb647a97654004601af21f516ff158dacf834580638b879f033bb932` |
| 41 | `def` | [weierstrassMod](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/weierstrassmod.md) | 529 | `declaration-track:d542799efb042923500635ddc219e6a9ad74695e57d9c67c907620c0856fdaeb` |
| 42 | `theorem` | [weierstrassDiv_zero_right](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/weierstrassdiv-zero-right.md) | 543 | `result-track:6188fe7af89939169f1e8f9ebab1e586ca859130e5026e2da9887117e68290ed` |
| 43 | `theorem` | [weierstrassMod_zero_right](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/weierstrassmod-zero-right.md) | 549 | `result-track:66d4d1c75e8860bfefaa665abf081bde308c476cd61e28ca0a28a09190884863` |
| 44 | `theorem` | [degree_weierstrassMod_lt](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/degree-weierstrassmod-lt.md) | 554 | `result-track:5b6f0dd6400154b14982275178eddc0117843ca90b0d6b431cf3bd08877e447c` |
| 45 | `theorem` | [isWeierstrassDivision_weierstrassDiv_weierstrassMod](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivision-weierstrassdiv-weierstrassmod.md) | 568 | `result-track:1108e8c08363ff673b7f21c7ee8acca32f724afd7ec1a4cbf94c354c850d6eba` |
| 46 | `theorem` | [eq_mul_weierstrassDiv_add_weierstrassMod](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/eq-mul-weierstrassdiv-add-weierstrassmod.md) | 574 | `result-track:767a7a92d5fd9433762274fde4d5ba823c9c933050cbd00ea7077361c1d14d82` |
| 47 | `theorem` | [IsWeierstrassDivision.elim](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivision-elim.md) | 587 | `result-track:60348fe71c70d8dc7cd046ead75ba79e4c1022751927a100af75106d5072aa49` |
| 48 | `theorem` | [IsWeierstrassDivision.eq_zero](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivision-eq-zero.md) | 594 | `result-track:52a972010cbd64b96ebb975afbd1cd819f8eb89c86713bf4da37f566a025fb58` |
| 49 | `theorem` | [IsWeierstrassDivision.unique](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivision-unique.md) | 602 | `result-track:5125de2089297fecce757c659c53bb0d97167fa55d64352dbb7fbd9ac5dc25ee` |
| 50 | `theorem` | [add_weierstrassDiv](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/add-weierstrassdiv.md) | 610 | `result-track:6c2249c3dd7bf87ae5fddb5e500437102325c3a53076792246f56a37913d8c32` |
| 51 | `theorem` | [smul_weierstrassDiv](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/smul-weierstrassdiv.md) | 616 | `result-track:bea9086c2a205047dcce8b8850723ccc8642399a2d988adfcef415257e02efc6` |
| 52 | `theorem` | [weierstrassDiv_zero_left](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/weierstrassdiv-zero-left.md) | 622 | `result-track:71c0b43c26a5a5928a063c3cf035ea68554407c343e64216ff952c1d7a7bf31b` |
| 53 | `theorem` | [add_weierstrassMod](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/add-weierstrassmod.md) | 629 | `result-track:3dadcff5f4d9f04a399f5d5c57dc19ec4f7367646efc34a72e10433d94b4236c` |
| 54 | `theorem` | [smul_weierstrassMod](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/smul-weierstrassmod.md) | 635 | `result-track:647364de0d157b06b5365d609d8ad2be4e2469acd9bf3aa50664efe17755d6f2` |
| 55 | `theorem` | [weierstrassMod_zero_left](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/weierstrassmod-zero-left.md) | 641 | `result-track:2d5147168fffb8ee3f5288394014a6129f88df5d8f2b01cc23736fb2494a3c0f` |
| 56 | `structure` | [IsWeierstrassFactorizationAt](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassfactorizationat.md) | 659 | `declaration-track:129194e1ababee6814a0282e5a012c325839517abacef1f1117faf9eca6c2789` |
| 57 | `abbrev` | [IsWeierstrassFactorization](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassfactorization.md) | 666 | `declaration-track:d2fb3d6f113f792a5fad7f6753e0e3c86017bab78c87ed96d1910aed6d9723a1` |
| 58 | `theorem` | [map_ne_zero_of_ne_top](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/map-ne-zero-of-ne-top.md) | 674 | `result-track:fb516f09c1b7406d7c3158ac3cdde235e2bdbc3c610ee4888ba8f5dc248a415a` |
| 59 | `theorem` | [degree_eq_coe_lift_order_map_of_ne_top](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/degree-eq-coe-lift-order-map-of-ne-top.md) | 680 | `result-track:234ade4d8b09a5631ec7d40d33978c88b60640f9428d01807fc9ab6f6237c63a` |
| 60 | `theorem` | [natDegree_eq_toNat_order_map_of_ne_top](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/natdegree-eq-tonat-order-map-of-ne-top.md) | 687 | `result-track:bcd736ed9fde62cf7f5d3d4108640045885e07a17676b6377e04e6af6b1cb4a5` |
| 61 | `def` | [algEquivQuotient](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/algequivquotient.md) | 696 | `declaration-track:7cc13341b4489dce11072d35820203e279264c02809d18f69aaf12864a96cd88` |
| 62 | `theorem` | [algEquivQuotient_symm_apply](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/algequivquotient-symm-apply.md) | 702 | `result-track:d1808880cfb7400e57399ab8a56498c1120d206184379b80e98d3aada4cf93d1` |
| 63 | `theorem` | [mul](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/mul.md) | 708 | `result-track:6d1708667088465eb7012b3ace09806d1784a24f81135d0c4b3c3b05c503215e` |
| 64 | `theorem` | [smul](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/smul-source-edition-2.md) | 713 | `result-track:865179e0644a2c7dd1b4f35aeb91fd5ca424a05ef72dc7c0dc92be57b20ad32d` |
| 65 | `theorem` | [map_ne_zero](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/map-ne-zero.md) | 728 | `result-track:777d40e1367c9fa72db79238bf1d66c44e5969e2aa201febccefae1c66862c11` |
| 66 | `theorem` | [degree_eq_coe_lift_order_map](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/degree-eq-coe-lift-order-map.md) | 731 | `result-track:5c05d2c3fc909066f7461c588ec74409b2cfcd01057f0badf4db2973657792ab` |
| 67 | `theorem` | [natDegree_eq_toNat_order_map](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/natdegree-eq-tonat-order-map.md) | 735 | `result-track:91db4d010ece55c47de7ce4b898f1c5611aea60546545ee06afb8a301f3b5544` |
| 68 | `theorem` | [IsWeierstrassDivision.isUnit_of_map_ne_zero](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivision-isunit-of-map-ne-zero.md) | 741 | `result-track:702c31106be4c1146221cd0904a5ffdb0ff622836b2bb9e331a0278a1acf4051` |
| 69 | `theorem` | [IsWeierstrassDivision.isWeierstrassFactorization](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassdivision-isweierstrassfactorization.md) | 761 | `result-track:ac840d61e03c50f853509baccd8b376a2a18e20b01b21bcb963c247f36f7d62b` |
| 70 | `theorem` | [IsWeierstrassFactorization.isWeierstrassDivision](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassfactorization-isweierstrassdivision.md) | 785 | `result-track:3f62511da5ec033ff7600b02c181b856c101d0d307d23178d7eba4437a93e62f` |
| 71 | `theorem` | [IsWeierstrassFactorization.elim](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassfactorization-elim.md) | 806 | `result-track:380cad33688ee5e83a839c4efe0facc1cb98e18c736bf7205b1132600f8faee6` |
| 72 | `theorem` | [exists_isWeierstrassFactorization](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/exists-isweierstrassfactorization.md) | 821 | `result-track:9e2c87d72b399d11bfcd63f6099573d36ae76df419f3239decfbd5a73562d6cd` |
| 73 | `def` | [weierstrassDistinguished](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/weierstrassdistinguished.md) | 829 | `declaration-track:5230b8d9c35a0c8863975877ef613bbf70f0cc3d5a3ee32b1491b50c2ac3de56` |
| 74 | `def` | [weierstrassUnit](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/weierstrassunit.md) | 834 | `declaration-track:19769dae6ef70d611bde8691d4832e4cb5de193b3b096ef57265fc2d61978225` |
| 75 | `theorem` | [isWeierstrassFactorization_weierstrassDistinguished_weierstrassUnit](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassfactorization-weierstrassdistinguished-weierstrassunit.md) | 837 | `result-track:f621b081cc3bef55a0decbfb0c1f1b38cf12d250e7e4414c39598c18d9242d53` |
| 76 | `abbrev` | [algEquivQuotientWeierstrassDistinguished](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/algequivquotientweierstrassdistinguished.md) | 845 | `declaration-track:623fd4498d1ac4c0fbde5c20f6ce4171113c5527369906b8fbbc340c1853cdb7` |
| 77 | `theorem` | [isDistinguishedAt_weierstrassDistinguished](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isdistinguishedat-weierstrassdistinguished.md) | 849 | `result-track:24f49cc859526e6f2a191ea6d97cf5b2b0c7af4720cdf8e5a93507640b242e82` |
| 78 | `theorem` | [isUnit_weierstrassUnit](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isunit-weierstrassunit.md) | 853 | `result-track:37853673e37613efa3266727c2a978fb254e624afba6f680b4896781841683e7` |
| 79 | `theorem` | [eq_weierstrassDistinguished_mul_weierstrassUnit](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/eq-weierstrassdistinguished-mul-weierstrassunit.md) | 857 | `result-track:5c28af947e2a97367e7b6aa001009b0f1ab15abac3ac8cb8b352dce027ec56d0` |
| 80 | `theorem` | [IsWeierstrassFactorization.unique](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/isweierstrassfactorization-unique.md) | 863 | `result-track:1677c272a4c0f76b8b799702a0cdbafc73e2bdbf0910fb79c8933a3ea491b5d0` |
| 81 | `theorem` | [weierstrassDistinguished_mul](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/weierstrassdistinguished-mul.md) | 869 | `result-track:a388116bf547e28973da76acb8ede67fe4818220568cc50e63cbec636746fb2f` |
| 82 | `theorem` | [weierstrassUnit_mul](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/weierstrassunit-mul.md) | 881 | `result-track:d7e261b6cc6355dbb21f2b9ca517e103d992fb7aa9d460011456247c48d4d933` |
| 83 | `theorem` | [weierstrassDistinguished_smul](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/weierstrassdistinguished-smul.md) | 893 | `result-track:f8d3385a07119cf8a9d9ebcb18807d34290463f9186cd06fc580a281fcd1d930` |
| 84 | `theorem` | [weierstrassUnit_smul](../../../../CommutativeAlgebra/WeierstrassPreparationNamespacedPublic.lean/declarations/weierstrassunit-smul.md) | 903 | `result-track:ec76b5c108b70cd90311b5457e7845f27e2699257d2066512196b692b6d9b064` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45cc85fc9e184f5a555c58a13b9d7a534dfbe04e59a97e3e3ac7dd26592a2dd0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant1be80b2cbe43fc42a8cb36b555f0ed5ca0e231ddc410d479edfec4d108b9b160.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
