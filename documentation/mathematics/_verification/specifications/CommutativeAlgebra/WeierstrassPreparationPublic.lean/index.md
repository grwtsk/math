# Verification target: Weierstrass Preparation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39591fa44823a1172a5deb70fa1e568723e725e9",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant6bcc30733ae324ba5353994260a7face5b354f46adb1eabb223fd2fca220110e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39591fa44823a1172a5deb70fa1e568723e725e9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant6bcc30733ae324ba5353994260a7face5b354f46adb1eabb223fd2fca220110e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant6bcc30733ae324ba5353994260a7face5b354f46adb1eabb223fd2fca220110e.lean.json)

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
| 1 | `structure` | [IsWeierstrassDivisionAt](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassdivisionat.md) | 116 | `declaration-track:c0405f6dfd5c26974bedcc5928e70a7f99847471870bbcefb26bd4ffcc3ec335` |
| 2 | `abbrev` | [IsWeierstrassDivision](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassdivision.md) | 122 | `declaration-track:9ac0f21b64fdefb52e3a1ef75e66695621ae8fd45fc8ec3a5b9cbba39a5ee258` |
| 3 | `theorem` | [isWeierstrassDivisionAt_zero](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassdivisionat-zero.md) | 125 | `result-track:ff4d08f891e00959d859874f5da225f588d523d638c16550e6ad23777e0e2777` |
| 4 | `theorem` | [coeff_f_sub_r_mem](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/coeff-f-sub-r-mem.md) | 135 | `result-track:ea364e0b84124e5f096212adac119b02753932b71d99a229fb8989f0ad413489` |
| 5 | `theorem` | [add](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/add.md) | 145 | `result-track:5be3c1bcbe640614186312b9cfbe7cf339b5bd208c256c0316251aa6f046e54a` |
| 6 | `theorem` | [smul](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/smul-source-edition-2.md) | 151 | `result-track:b531bf67f6051aebf97e56830d258e22cdc4503302e8279ba74fade053f73aa0` |
| 7 | `def` | [IsWeierstrassDivisorAt](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassdivisorat.md) | 171 | `declaration-track:5906c52335f508d57606cc79f62bcf7ecd7e5b485feb7195324bee394a44cf90` |
| 8 | `abbrev` | [IsWeierstrassDivisor](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassdivisor.md) | 176 | `declaration-track:222763f24b8626b1193f5ab08326167de07b9c81eb4bd88909289e80a89ae108` |
| 9 | `theorem` | [IsWeierstrassDivisor.of_map_ne_zero](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassdivisor-of-map-ne-zero.md) | 182 | `result-track:a71ee8080c0911123938cf3aa915a0cd0c030a712629544c32774d5d1fbad84d` |
| 10 | `theorem` | [_root_.Polynomial.IsDistinguishedAt.isWeierstrassDivisorAt](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/root-polynomial-isdistinguishedat-isweierstrassdivisorat.md) | 189 | `result-track:a628cdc66ca102716fa1b775e11b0317e642867641c471621f10e3a4d70bdf86` |
| 11 | `theorem` | [_root_.Polynomial.IsDistinguishedAt.isWeierstrassDivisorAt'](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/root-polynomial-isdistinguishedat-isweierstrassdivisorat-source-edition-2.md) | 195 | `result-track:b5bf89e27f8afc861205a5649cdd89129ff64f85d22c6f5c6f4bfaf45bff12f2` |
| 12 | `theorem` | [coeff_trunc_order_mem](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/coeff-trunc-order-mem.md) | 202 | `result-track:463b44d7f600d526d7b5b8dc4b70f258b4a2a142a7aea2ee1d5a5ea7db66687c` |
| 13 | `theorem` | [isUnit_shift](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isunit-shift.md) | 214 | `result-track:74229cb3ef1f1e82c5943dec71624080c3afe499218af77b12354423d2defe15` |
| 14 | `def` | [seq](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/seq.md) | 219 | `declaration-track:f87f7829784e0ae2b3f63e023f6b0d311250f4cdbdbd0de859cac54a25a99534` |
| 15 | `theorem` | [coeff_seq_mem](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/coeff-seq-mem.md) | 227 | `result-track:54d05d871c5595c9a2c9aff8f4fa7769b21434b6b4b82b0e53b179c97a00c4a6` |
| 16 | `theorem` | [coeff_seq_succ_sub_seq_mem](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/coeff-seq-succ-sub-seq-mem.md) | 256 | `result-track:5ab0315d8d57b25b84dff7454629d0b4c6b0e716522b3a41d8f8a9d63341d980` |
| 17 | `theorem` | [seq_zero](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/seq-zero.md) | 264 | `result-track:dd9382868330d3fa652f2062074818a1e243f6145ed96b160e000ed50d259545` |
| 18 | `theorem` | [seq_one](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/seq-one.md) | 266 | `result-track:b2a057f85842b27d40311a407cab9af05b391d14f7b75aa8d72c9c7c2caf8d5f` |
| 19 | `def` | [divCoeff](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/divcoeff.md) | 272 | `declaration-track:be578f42c4e33847f934b3c95db42e728e955dcae5b31f5eaffd270fe92c1e1b` |
| 20 | `def` | [div](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/div.md) | 284 | `declaration-track:1035ed935057db468ad020672761d83003422faeac759247c0c8cfedfd02d27e` |
| 21 | `theorem` | [coeff_div](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/coeff-div.md) | 286 | `result-track:3c831ebab837d2b7e866088d7bb325c6ad493239bf8962222682a7f6ad8ef29e` |
| 22 | `theorem` | [coeff_div_sub_seq_mem](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/coeff-div-sub-seq-mem.md) | 289 | `result-track:179a74822343a3172a875e1bf78c55fefb6430a85f6143b3b3e23f1faaccc4b0` |
| 23 | `def` | [mod](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/mod-source-edition-2.md) | 294 | `declaration-track:c121c036d6e563781a983be4e079d3938513e78595ec1ae48eb8a90f4e7176b6` |
| 24 | `theorem` | [isWeierstrassDivisionAt_div_mod](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassdivisionat-div-mod.md) | 298 | `result-track:7e1a1a549ed80eee9f66186b66113af78efd2bde5e8a6557a5f8952bb052ddcb` |
| 25 | `theorem` | [eq_zero_of_mul_eq](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/eq-zero-of-mul-eq.md) | 319 | `result-track:b7fddeda72cff78386286a40bed527d87fc6e8f335c9aa89447074ee10143ca5` |
| 26 | `theorem` | [eq_of_mul_add_eq_mul_add](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/eq-of-mul-add-eq-mul-add.md) | 360 | `result-track:dfcf190d3b3f40564476bd815a24ac533d36be7c81af3eb609fa2dc4927eb695` |
| 27 | `theorem` | [div_add](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/div-add.md) | 373 | `result-track:3f1a5d82d07c330f9c1ad79f7f737b61fdd23bbe790650b0c648fca0122b4d58` |
| 28 | `theorem` | [div_smul](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/div-smul.md) | 380 | `result-track:3a6c1158f0191acd7c76b69057c54ab5c658ce2084432baf5d5e2740b82d2ad8` |
| 29 | `theorem` | [div_zero](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/div-zero.md) | 387 | `result-track:666b3251945daa7f818a7a9014883a87baf7e134dacaa7584f212f5d204b4c04` |
| 30 | `theorem` | [mod_add](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/mod-add.md) | 391 | `result-track:4398b44be3858813dfdefebc7277574a6d14d603bb59e495a3313d53616a480c` |
| 31 | `theorem` | [mod_smul](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/mod-smul.md) | 398 | `result-track:b8d5247f595b518327dac09ec0b72caec50543f84bf2fa9707f2cf1dd1c0f29d` |
| 32 | `theorem` | [mod_zero](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/mod-zero.md) | 405 | `result-track:f5426eedbc291e2f038ed6fa7dc49f0feb6ce49a15a155dae279bfe3e073f66b` |
| 33 | `def` | [mod'](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/mod.md) | 410 | `declaration-track:15db7cfab94afb00bc9d4539110581932beb251a0465366e9918cf0895c1eba3` |
| 34 | `theorem` | [mod'_mk_eq_mod](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/mod-mk-eq-mod.md) | 428 | `result-track:b9e3326d4ce44786612c9f50694967feff86b44e5083e781697f12676e33770b` |
| 35 | `theorem` | [div_coe_eq_zero](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/div-coe-eq-zero.md) | 431 | `result-track:0405df36899291402895434a5a1f1d5bfe1f0d37e0eaf4bfeab420e0210e39f4` |
| 36 | `theorem` | [mod_coe_eq_self](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/mod-coe-eq-self.md) | 436 | `result-track:fac431d7c8aff8bda1d2ee0bedf4714ef1a1f4aff53cd227c1872adb1c11511a` |
| 37 | `theorem` | [mk_mod'_eq_self](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/mk-mod-eq-self.md) | 442 | `result-track:308619971faf24676ef982d8050c88d64f49281c7f3f7aca34970d2436d0d2b5` |
| 38 | `def` | [_root_.Polynomial.IsDistinguishedAt.algEquivQuotient](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/root-polynomial-isdistinguishedat-algequivquotient.md) | 458 | `declaration-track:5ea5a60dc2e2ed53bb6d09fcc45fb2738db1a14cd8bcc2080f6bb731350d3eab` |
| 39 | `theorem` | [exists_isWeierstrassDivision](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/exists-isweierstrassdivision.md) | 504 | `result-track:c87dfa17dc09d360c241c72aa1f3b08922c5df26003debc9494e112049caac81` |
| 40 | `def` | [weierstrassDiv](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/weierstrassdiv.md) | 512 | `declaration-track:9ec082daaf409f0613c7507178d3900904035b541c6f9122837b20f531e1a24b` |
| 41 | `def` | [weierstrassMod](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/weierstrassmod.md) | 521 | `declaration-track:f5735cd1e468943b8e33a0f8a4fbaa7b9ed119145efe91935ec40da0f870a913` |
| 42 | `theorem` | [weierstrassDiv_zero_right](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/weierstrassdiv-zero-right.md) | 535 | `result-track:d803d86d83d8e5b62b8eb1f78433a24aee9afa23246e5224b8024aea2892a12c` |
| 43 | `theorem` | [weierstrassMod_zero_right](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/weierstrassmod-zero-right.md) | 541 | `result-track:6593486278e5e45f05c72bca43757eaf8e8bb440abfb9a628d644e73fc8b7a36` |
| 44 | `theorem` | [degree_weierstrassMod_lt](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/degree-weierstrassmod-lt.md) | 546 | `result-track:a4ed45dc009f04dc559cc6a68d8b8ec45fa8aa2833107ba907f026050046117d` |
| 45 | `theorem` | [isWeierstrassDivision_weierstrassDiv_weierstrassMod](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassdivision-weierstrassdiv-weierstrassmod.md) | 560 | `result-track:98ce37dde7721dc9ef1209641e0fec27e898612c6935e6689c253f05dde4f8e3` |
| 46 | `theorem` | [eq_mul_weierstrassDiv_add_weierstrassMod](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/eq-mul-weierstrassdiv-add-weierstrassmod.md) | 566 | `result-track:38c486071d9d81d5753d4aba54f9d260ab4edd429720ba08b61bf5574a928b1c` |
| 47 | `theorem` | [IsWeierstrassDivision.elim](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassdivision-elim.md) | 579 | `result-track:1988a24e2232ace59dd8fe0ffe0a662c16fbc2f3ead4c18ed553f117d615bbe7` |
| 48 | `theorem` | [IsWeierstrassDivision.eq_zero](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassdivision-eq-zero.md) | 586 | `result-track:0e3f5a95339f466fcb42ad64c3b2b5f8cddb2283230315ad9d08e0017de5b709` |
| 49 | `theorem` | [IsWeierstrassDivision.unique](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassdivision-unique.md) | 594 | `result-track:b1fa529acaf6df36e663d81f366051a2b05bc6ec41ee005569bbba7e90d65e2a` |
| 50 | `theorem` | [add_weierstrassDiv](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/add-weierstrassdiv.md) | 602 | `result-track:bf8ee0e0d664099ce373fce4a2bc5b8e6fc0dac6a28b1fbc069897145eb76b34` |
| 51 | `theorem` | [smul_weierstrassDiv](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/smul-weierstrassdiv.md) | 608 | `result-track:b7a044e69b64d6d22ccea5f7947115e0630edcb0ed10748c27b852c50e0e114e` |
| 52 | `theorem` | [weierstrassDiv_zero_left](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/weierstrassdiv-zero-left.md) | 614 | `result-track:31fe6e639e14bd50667dd05aad52a50ed34c926843750b34c7e0795e5dd7d13c` |
| 53 | `theorem` | [add_weierstrassMod](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/add-weierstrassmod.md) | 621 | `result-track:5965d8455946e282f5ca206b2f5cdedd85cad60104061c7fc13cbfd22bd0db99` |
| 54 | `theorem` | [smul_weierstrassMod](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/smul-weierstrassmod.md) | 627 | `result-track:d9184129a177b321cd574540c51a0a0a9cf83702e0b71de8adb7fda38920fa67` |
| 55 | `theorem` | [weierstrassMod_zero_left](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/weierstrassmod-zero-left.md) | 633 | `result-track:dddecbeff62cb9dd82c61a60cf7989ee56f4e11c4eacbdc32d9e37dcff4695b7` |
| 56 | `structure` | [IsWeierstrassFactorizationAt](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassfactorizationat.md) | 651 | `declaration-track:735e485925679cb68e6043a1628a3b02e7b866bb9d955cf161b3a338dfeb8102` |
| 57 | `abbrev` | [IsWeierstrassFactorization](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassfactorization.md) | 658 | `declaration-track:26dd475453fbf88b3b9d58e59928e80fd2e2e11b35cdd2560ae29c1f58f6b16c` |
| 58 | `theorem` | [map_ne_zero_of_ne_top](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/map-ne-zero-of-ne-top.md) | 666 | `result-track:4a79f8fe8aea9a67fc8a8b750504d2529f7c3f657e0e4c40ba8652577c1d000c` |
| 59 | `theorem` | [degree_eq_coe_lift_order_map_of_ne_top](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/degree-eq-coe-lift-order-map-of-ne-top.md) | 672 | `result-track:d157cac510e94ee990d39adf207ace5c97fb754b6016bab3b98f1cd58dd8b135` |
| 60 | `theorem` | [natDegree_eq_toNat_order_map_of_ne_top](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/natdegree-eq-tonat-order-map-of-ne-top.md) | 679 | `result-track:ebc90eadde7a89ce2a14fa7db9a7784713ba97299c63df6cca6c85e9480cabc3` |
| 61 | `def` | [algEquivQuotient](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/algequivquotient.md) | 688 | `declaration-track:16fb5a376086d2c6da08e7053887801a856f1418f9ddfcf596dcd7e000713f32` |
| 62 | `theorem` | [algEquivQuotient_symm_apply](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/algequivquotient-symm-apply.md) | 694 | `result-track:a339782371c4a9b5ef0e6346838fba54086c835d63b39bd1961450ea911efa27` |
| 63 | `theorem` | [mul](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/mul.md) | 700 | `result-track:2061b83f177c5b357f81f510a829691b44f629371abeef5c1b2d0e068605c918` |
| 64 | `theorem` | [smul](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/smul.md) | 705 | `result-track:a09e40a2c9faf2ba36d4e8349338e6c58f6ded73792d0e906a47bf7b3c9df8e3` |
| 65 | `theorem` | [map_ne_zero](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/map-ne-zero.md) | 720 | `result-track:a5532397c7199ddd92863062c1fb732b3602f8ed923a69c74bb0c80a17efe8c1` |
| 66 | `theorem` | [degree_eq_coe_lift_order_map](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/degree-eq-coe-lift-order-map.md) | 723 | `result-track:798c10db30b298db8322a3d115dd49c96851af345e0347df89e70b19f79a3fb8` |
| 67 | `theorem` | [natDegree_eq_toNat_order_map](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/natdegree-eq-tonat-order-map.md) | 727 | `result-track:82915cac4643f329c35c5f64210a28b8a74a144b4eb8bcfbc32416c36286be51` |
| 68 | `theorem` | [IsWeierstrassDivision.isUnit_of_map_ne_zero](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassdivision-isunit-of-map-ne-zero.md) | 733 | `result-track:802c2b075a6cec2795e7671e75e6d302fc0d28827e92301ed4633f78c421f5ba` |
| 69 | `theorem` | [IsWeierstrassDivision.isWeierstrassFactorization](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassdivision-isweierstrassfactorization.md) | 753 | `result-track:cc06601711fa55e98b77722e456b061f27973d9ff2cad0e73999f2fb7af856b6` |
| 70 | `theorem` | [IsWeierstrassFactorization.isWeierstrassDivision](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassfactorization-isweierstrassdivision.md) | 777 | `result-track:c897d7aba162e20d179de76bc377757f2d12b2c1f67e26c1a522e8cc3646acf3` |
| 71 | `theorem` | [IsWeierstrassFactorization.elim](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassfactorization-elim.md) | 798 | `result-track:99e7529f31b83daf0a1fc29b800917b91d1b0bd37cc58c21c342d23137be1b63` |
| 72 | `theorem` | [exists_isWeierstrassFactorization](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/exists-isweierstrassfactorization.md) | 813 | `result-track:ee4e309f9de183afa05944f08d0d6fac7f8690c51e04393f005a7f122960650e` |
| 73 | `def` | [weierstrassDistinguished](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/weierstrassdistinguished.md) | 821 | `declaration-track:cc39640e5695c7cd2a28272a1887e2d91dd9f9dfe256205bfe12ef19411674fe` |
| 74 | `def` | [weierstrassUnit](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/weierstrassunit.md) | 826 | `declaration-track:1b9bdbf632203f494851804ed1abff3cfefe90e1c0beeb23be61a88e312d557d` |
| 75 | `theorem` | [isWeierstrassFactorization_weierstrassDistinguished_weierstrassUnit](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassfactorization-weierstrassdistinguished-weierstrassunit.md) | 829 | `result-track:badf68ec24b83bda703b42c7264b63eeb6ba265aa6389017137a9aec5c53f714` |
| 76 | `abbrev` | [algEquivQuotientWeierstrassDistinguished](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/algequivquotientweierstrassdistinguished.md) | 837 | `declaration-track:396924736270439db92d2de1e9623f6d9db394a5248fdb33026be2ca09a9e656` |
| 77 | `theorem` | [isDistinguishedAt_weierstrassDistinguished](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isdistinguishedat-weierstrassdistinguished.md) | 841 | `result-track:e4c388072ea9278ce8511c33cdf5e9f5dd28d9d6932bc5c4c3e0feb114d68226` |
| 78 | `theorem` | [isUnit_weierstrassUnit](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isunit-weierstrassunit.md) | 845 | `result-track:00e8a9d9907513e8c222b5cbb4341c9052436fd8d052368977ea12ea1d7e22be` |
| 79 | `theorem` | [eq_weierstrassDistinguished_mul_weierstrassUnit](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/eq-weierstrassdistinguished-mul-weierstrassunit.md) | 849 | `result-track:ced2a39cafe1c3abd000939c9b8225fe882c4b10551b2608d5fb52f0a3b40638` |
| 80 | `theorem` | [IsWeierstrassFactorization.unique](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/isweierstrassfactorization-unique.md) | 855 | `result-track:be32f6a190bc09ec29eb45172f1ffb0ad9a3925c6071e239b0dde26b6f0b0772` |
| 81 | `theorem` | [weierstrassDistinguished_mul](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/weierstrassdistinguished-mul.md) | 861 | `result-track:135827d4e4b02e40cc8244d73632e60480fb6f93342e0939ef64c1f6764f5eeb` |
| 82 | `theorem` | [weierstrassUnit_mul](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/weierstrassunit-mul.md) | 873 | `result-track:3cdfb86426e0d038b5fdc92615e972d04e32d3509ef0dea45a0dd8b168794b4a` |
| 83 | `theorem` | [weierstrassDistinguished_smul](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/weierstrassdistinguished-smul.md) | 885 | `result-track:fdb1db4291c2d027211dd57130af433755362be564a493969b9ff0e89ffe8267` |
| 84 | `theorem` | [weierstrassUnit_smul](../../../../CommutativeAlgebra/WeierstrassPreparationPublic.lean/declarations/weierstrassunit-smul.md) | 895 | `result-track:21b082317e7ac81f82fcb093ad388e6afe6bf53a4ebcc8fb7e0cfcf2f044d6ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e547bbb61f406cb8c13268d98a633098f1a7511d22b039cf9c865d59de1f4df6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant6bcc30733ae324ba5353994260a7face5b354f46adb1eabb223fd2fca220110e.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/WeierstrassPreparation/Variant6bcc30733ae324ba5353994260a7face5b354f46adb1eabb223fd2fca220110e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
