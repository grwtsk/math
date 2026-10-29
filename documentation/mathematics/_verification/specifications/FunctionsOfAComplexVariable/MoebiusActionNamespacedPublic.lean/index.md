# Verification target: Moebius Action Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39588f3c545afbf205e9750dfa3f24170e247b6b",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variant654604e82a8ead63f8cc53b550a1e8f80a69df417b44f2739553947a37458557.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39588f3c545afbf205e9750dfa3f24170e247b6b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variant654604e82a8ead63f8cc53b550a1e8f80a69df417b44f2739553947a37458557.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MoebiusAction/Variant654604e82a8ead63f8cc53b550a1e8f80a69df417b44f2739553947a37458557.lean.json)

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
| 1 | `def` | [num](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/num.md) | 38 | `declaration-track:b8aeb5f9c422e38be9b757f9157418ecabbe75ba53233acc4bf51e5216da9683` |
| 2 | `def` | [denom](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom.md) | 41 | `declaration-track:048a89d73050bb07db2e534660719d508914ef6dc29b61765bd16d415d5fe9e9` |
| 3 | `lemma` | [num_neg](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/num-neg.md) | 44 | `result-track:d6e7407c04811c74effab2f92878eb12a9213aa772741b2ebb64eac6cffccac3` |
| 4 | `lemma` | [denom_neg](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom-neg.md) | 48 | `result-track:eb9e43cdd789dd6afc61d8ababa3a3d674b12914de666f11eaadc47ee4e5ce22` |
| 5 | `theorem` | [linear_ne_zero_of_im](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/linear-ne-zero-of-im.md) | 51 | `result-track:ce3843e859ea426b33dac370ac05a94c9bdf374bc3692b4d1495566e390b1d29` |
| 6 | `theorem` | [linear_ne_zero](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/linear-ne-zero.md) | 63 | `result-track:693944ff0197d49a3c66734e4222dca6a4ea1b864fbe081850e735ee4d3d6643` |
| 7 | `theorem` | [denom_ne_zero_of_im](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom-ne-zero-of-im.md) | 67 | `result-track:59d4762176a18bd1c5933c5a399a4e026cf2e08bf6c37d7a63d61445b3336a7a` |
| 8 | `theorem` | [denom_ne_zero](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom-ne-zero.md) | 72 | `result-track:f05cd5b547f27bde80febabd3a9ed206fc7bcf315225d0d9b20c24df499c2658` |
| 9 | `theorem` | [normSq_denom_pos](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/normsq-denom-pos.md) | 75 | `result-track:2022f92b02ed3230336eb84f5395d32365f3814cb21ecfdc6b5505812e6e3c9c` |
| 10 | `theorem` | [normSq_denom_ne_zero](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/normsq-denom-ne-zero.md) | 79 | `result-track:d663bfc76971f6c51d864055a81d2c07a9e5c5f2c6ccc7a8ffde52fdc71c4a75` |
| 11 | `lemma` | [denom_cocycle](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom-cocycle-source-edition-3.md) | 83 | `result-track:ee2ef20d0dd71cf0f15f8e41937ad6ff9c391c7e020826c542bca3ca34de5cb1` |
| 12 | `lemma` | [moebius_im](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/moebius-im.md) | 92 | `result-track:7a0d5fbdc80b810f9f8cf2d3ec680edf7ed4c1cf1751a1dbb5af42e29a36b808` |
| 13 | `def` | [σ](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/anonymous.md) | 100 | `declaration-track:a8396fe0a236b6159b99726ccca55927d0968ced39873956106bd15dd12c6872` |
| 14 | `lemma` | [σ_conj](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/conj.md) | 103 | `result-track:270d9a5d5fc3e0fc31622aef497dbebef54567f525c27ea2487742b96d1d983c` |
| 15 | `lemma` | [σ_ofReal](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/ofreal.md) | 108 | `result-track:30ae80341bbc3803b162e8ab1ea3e8dcf014d47f68e4ed3f70480d44938f49c2` |
| 16 | `lemma` | [σ_num](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/num-source-edition-2.md) | 112 | `result-track:ee6c5cc335b50614cb9c52ca231434d78da55bb93388cd88d0116b99863463aa` |
| 17 | `lemma` | [σ_denom](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom-source-edition-2.md) | 115 | `result-track:62f7d59761f4e3a86e32eba1ed21e6640679895c0629dd1ebd435d3eea538928` |
| 18 | `lemma` | [σ_neg](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/neg.md) | 119 | `result-track:bbc46c7b964aed882076b7583bf0685f5ef40b7843256918b5ab26ceabebaef7` |
| 19 | `lemma` | [σ_sq](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/sq.md) | 123 | `result-track:094d6eff70d9b128dad5dafbba3cbda71da33b90123a8ca1a052b34a5848cb0b` |
| 20 | `lemma` | [σ_im_ne_zero](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/im-ne-zero.md) | 127 | `result-track:a1ddf6be1b28fe37cc0402ccea2450ece603f8f5d67e7fe09732314a2d1dfcfd` |
| 21 | `lemma` | [σ_mul](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/mul.md) | 131 | `result-track:2a48d298f96eb8204de033aa214e3efc4f7c9290df2b048ce8adc961f0a0cbe0` |
| 22 | `lemma` | [σ_mul_comm](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/mul-comm.md) | 140 | `result-track:be0b36ae87bef1fba86cf9af44c3b658209a5cf45a676a594bff05560596d20c` |
| 23 | `lemma` | [norm_σ](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/norm.md) | 144 | `result-track:03775c9a724e314d521351cb263532c40544f6e13a518a169184133c283d4794` |
| 24 | `def` | [smulAux'](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/smulaux.md) | 149 | `declaration-track:712715fe4fca95d28f3a7c57cd95090cfdcdd50163f82edd06a29728c638cf70` |
| 25 | `lemma` | [smulAux'_im](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/smulaux-im.md) | 151 | `result-track:45c1f0799583d9d59e4e0a93b09bb00e8afaa4b57a8a04a2ccb1c8befebef632` |
| 26 | `def` | [smulAux](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/smulaux-source-edition-2.md) | 160 | `declaration-track:beaf8dff7ade9a2975a89c1dc4c00b1e2a491dd3c09470c9f7f1242454b01f71` |
| 27 | `lemma` | [denom_cocycle'](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom-cocycle.md) | 165 | `result-track:30fd52585af4e20a06de9e5d701a0b7ccc919368aac9ab90a26e2a8276ff5e41` |
| 28 | `theorem` | [mul_smul'](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/mul-smul.md) | 169 | `result-track:8887f6e73c08a578d9ceb8968ad67a5b32c45bcd5b7caa3deb27b2c2425b72e1` |
| 29 | `instance` | [glAction](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/glaction.md) | 190 | `declaration-track:9732eea140878a157793cb6497fcc5e495e7d4bc02765674018b96d24d294e12` |
| 30 | `lemma` | [coe_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/coe-smul.md) | 197 | `result-track:9a5143a48863d827991478300de30254bdeb8e65e07d941bfe25337564fa74b1` |
| 31 | `lemma` | [coe_smul_of_det_pos](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/coe-smul-of-det-pos.md) | 200 | `result-track:ee75ddb00fd861762bc3ea9bf96f8122e2e925a7feced3ce3bb25d8de5443781` |
| 32 | `lemma` | [denom_cocycle_σ](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom-cocycle-source-edition-2.md) | 205 | `result-track:56c797b4b514c7e11f84e2d68534e868554a153de408b288f8905e0f63d478a1` |
| 33 | `lemma` | [glPos_smul_def](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/glpos-smul-def.md) | 209 | `result-track:673eac81c9e0251b761acada99262ccd2bf87c54b2375f102bc0a8a5d8df9c83` |
| 34 | `theorem` | [re_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/re-smul.md) | 216 | `result-track:76eab081e75e375ca7968aa047ae76566d34fa377a9d56f030d2f99a285f01cd` |
| 35 | `theorem` | [im_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/im-smul.md) | 220 | `result-track:de9607e25bf7f5297777a1ba9e96bee434427179632a6d31ec3c983a562fbd85` |
| 36 | `lemma` | [im_smul_eq_div_normSq](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/im-smul-eq-div-normsq.md) | 228 | `result-track:0508f9ba73c4a8655a5215605f23286efceacb33a0707c52201deb675f64045f` |
| 37 | `theorem` | [c_mul_im_sq_le_normSq_denom](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/c-mul-im-sq-le-normsq-denom.md) | 231 | `result-track:4e661e5c7415cd7d5474ae12c19b0a5837f96577a18f0aba09568cc88c51cf1e` |
| 38 | `theorem` | [neg_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/neg-smul.md) | 239 | `result-track:13973f8ea3d76b91b04392652435ff23fa25410c484dd9f726ac8e0562c04ef9` |
| 39 | `lemma` | [num_one](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/num-one.md) | 244 | `result-track:2d93e541db361e35e2210ff67e90ca17b28053d18e2eb096dadde4e949cd5c87` |
| 40 | `lemma` | [denom_one](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom-one.md) | 247 | `result-track:ce145a34ded54f1bae94e7caea920e5a68a2917d012ed58fb97bbe81f6e1528f` |
| 41 | `theorem` | [num_scalar](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/num-scalar.md) | 251 | `result-track:62ac30dce31c0b421a98a36e68c44cf5808ab255ac9ad158a6ca842cfefa971d` |
| 42 | `theorem` | [denom_scalar](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom-scalar.md) | 255 | `result-track:fb00d48bc647c013411c6718dbc9ddc59f68e3a1d94cf1fb02f8fe9ba8e348c4` |
| 43 | `theorem` | [glScalar_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/glscalar-smul.md) | 259 | `result-track:ce6e1496352c2f7e3afdac8a954cbb1db2e542b7bf6c9119fc278717cd79bbf0` |
| 44 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/instance.md) | 265 | `declaration-track:58f5bf12cf418250a50b12f761f546654babb66da5a7cb873d0b1d0f7a183249` |
| 45 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 276 | `declaration-track:d17f702ab0448b7d39c1f3d13499571c30b616c879a850d7e9eda93a8540751b` |
| 46 | `theorem` | [pglMk_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/pglmk-smul.md) | 280 | `result-track:dcbbf54024b1b9d577193dfc310e999045ebcf73eadf312b7a0a8e6823bd265e` |
| 47 | `instance` | [(anonymous)](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 284 | `declaration-track:dbffb3a3a1b3ad5ecf04699301e4b033a2b9bae4505854fcd6234677263cbd2a` |
| 48 | `instance` | [SLAction](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/slaction.md) | 291 | `declaration-track:7fa44eff5ea3d3410fe86fb4854f9447e7d1937759bb3f50a29596c59c48a495` |
| 49 | `theorem` | [coe_specialLinearGroup_apply](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/coe-speciallineargroup-apply.md) | 294 | `result-track:fe935af2dc27f37f147a6e68a86222c4a04cc080556041433f0ac5af17af04f8` |
| 50 | `theorem` | [specialLinearGroup_apply](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/speciallineargroup-apply.md) | 301 | `result-track:61466b2007121cef031211f030a44df83d9f9fecafbeac4ed1112d6d9964ed89` |
| 51 | `theorem` | [modular_S_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/modular-s-smul.md) | 311 | `result-track:07d43c443a021f6297a8958226d3665c49b87c885a9e5889a1a164af6a6d3100` |
| 52 | `theorem` | [modular_T_zpow_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/modular-t-zpow-smul.md) | 316 | `result-track:1eb3b331e5b12d067b23b82b1d6d701d1855112d79f69270a2083b761c8d33dd` |
| 53 | `theorem` | [modular_T_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/modular-t-smul.md) | 322 | `result-track:af7263ca4be979b89371a55fe1b472cc7422f87dab7acad18e48f0deb0a59008` |
| 54 | `theorem` | [exists_SL2_smul_eq_of_apply_zero_one_eq_zero](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/exists-sl2-smul-eq-of-apply-zero-one-eq-zero.md) | 326 | `result-track:bf93a954fd4a211364091aad2e8342da7de053e6e582e04262c0ccc2fb60c481` |
| 55 | `theorem` | [exists_SL2_smul_eq_of_apply_zero_one_ne_zero](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/exists-sl2-smul-eq-of-apply-zero-one-ne-zero.md) | 335 | `result-track:d15435d6b8a7d373859436c2bf480cfb6f32811b0d20ae0199c42e98c42c90d5` |
| 56 | `def` | [toSL2R](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/tosl2r.md) | 356 | `declaration-track:d4f22d934227b558cda7c6e43aa647d35f35d820fb3965ea44a62b2d3dae8546` |
| 57 | `lemma` | [toSL2R_apply](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/tosl2r-apply.md) | 360 | `result-track:0ea34128892372253cd9b840b1a83ccdbe77f79a2f5949d011e928427e8be3cf` |
| 58 | `lemma` | [coe_toSL2R](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/coe-tosl2r.md) | 364 | `result-track:86473e4addd81d7c8734f02d6c0c9436ad0dd4d94f928aec6dfff7baa9383820` |
| 59 | `lemma` | [toSL2R_smul_I](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/tosl2r-smul-i.md) | 366 | `result-track:d290c0a12fb82151a3b2f1e44dd2bf6c799ec7a3066ac8d53ee5e0ccaefbb6f2` |
| 60 | `instance` | [isPretransitiveSL2R](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/ispretransitivesl2r.md) | 376 | `declaration-track:36223d7383db2d32fb350eff2d329ca69e738b7108ea7294b9adbbbe61602322` |
| 61 | `instance` | [isPretransitiveGL2R](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/ispretransitivegl2r.md) | 380 | `declaration-track:e801975a5a57424a9fa2fcbc8e21ef8a8ad6e79d9846c6ce52d52c14ccb7ef55` |
| 62 | `def` | [J](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/j.md) | 389 | `declaration-track:411ae70c898ae2516068a5a05aa36a54cfce92b3e6b111f65981abaab5d7fe07` |
| 63 | `lemma` | [coe_J_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/coe-j-smul.md) | 391 | `result-track:9b7e7f9325f01b488f3bf44c2f3b39cf0fdf1cca3b8b691daec045605008f2ca` |
| 64 | `lemma` | [val_J](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/val-j.md) | 394 | `result-track:041180e602880fbf51a940fd12f151fc2c1034d93bfd5c7d44c34bb4b5f19433` |
| 65 | `lemma` | [J_sq](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/j-sq.md) | 396 | `result-track:b5e8de5dbd867882ed3b0cc2c567bb4bc71fd82e4fee5a1c5a17bcac08f1fd33` |
| 66 | `lemma` | [det_J](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/det-j.md) | 398 | `result-track:81e5cefb04ada2dc087112b85c157e92ef8dc61bbf0074e817f5f4c4338a947d` |
| 67 | `lemma` | [sigma_J](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/sigma-j.md) | 400 | `result-track:ff64ee177a27d86bcbe87fae57104841a87b8c627ad752e3d49dd283a9a395fb` |
| 68 | `lemma` | [denom_J](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom-j.md) | 402 | `result-track:12c4c675a5f4670736932edaf19fd924bf7f4602bf5eb20344f21ee38b59a5b8` |
| 69 | `lemma` | [denom_J_mul](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom-j-mul.md) | 405 | `result-track:15ee86d5d3ebd659a3a6a617695176709d001654799e79e8543be557513c334e` |
| 70 | `def` | [coe](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/coe.md) | 419 | `declaration-track:78d89338e5eeef2c85ecc7d95a290437a954206b828a3b74fa0f622b508078bf` |
| 71 | `lemma` | [coe_inj](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/coe-inj.md) | 422 | `result-track:378e46bf6c27bc1c04a26bab0af4f878195b0693b92117c4546544205ed47997` |
| 72 | `def` | [coeHom](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/coehom.md) | 429 | `declaration-track:c53b35e3aee3b3398827119513b132993fc4d2a818a88a236f17a8d29a198617` |
| 73 | `lemma` | [coeHom_apply](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/coehom-apply.md) | 432 | `result-track:16dd0fb94daa2dd86cd0758b33ca6405f0b1086cd6e33b4d72988bf0bd8fba3a` |
| 74 | `theorem` | [coe_apply_complex](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/coe-apply-complex.md) | 435 | `result-track:e1d2d0d62528f5dc2c54dfc8d96f53fb56c0632f255dd95c158080991562cb2f` |
| 75 | `theorem` | [det_coe](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/det-coe.md) | 440 | `result-track:84f643ef7bb8a297721efb6718ea5fb762473fe4cdc76deb591e26247827b5b2` |
| 76 | `lemma` | [coe_one](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/coe-one.md) | 444 | `result-track:a3f18c65a9db3d8ecc4722d488ec1f8b3bffb01a98f69dd57779db3aefcc2576` |
| 77 | `def` | [SLOnGLPos](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/slonglpos.md) | 449 | `declaration-track:023842fd04b7b9142c714c39bc1c44d2d90b68adcbf99a1b097ac3a9ff7d61fb` |
| 78 | `theorem` | [SLOnGLPos_smul_apply](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/slonglpos-smul-apply.md) | 455 | `result-track:21d274ab1e913ce77bfcb0650b474b4003124311f255c2f3d1793ea8caa615ec` |
| 79 | `lemma` | [SL_to_GL_tower](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/sl-to-gl-tower.md) | 460 | `result-track:b6bc4e7b72d553c942aae3c59306e53f0635375a57cb45dc7981f439029f0688` |
| 80 | `theorem` | [sl_moeb](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/sl-moeb.md) | 472 | `result-track:8b6addd8b6d0bb07c8ac2a56d87d919e1a3f94f49ef30590f07c576083bdb0db` |
| 81 | `theorem` | [SL_neg_smul](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/sl-neg-smul.md) | 475 | `result-track:13ebb58174b4d22c750a5875a0111ca6e741912c309e2016415e3ff1440eee9c` |
| 82 | `theorem` | [im_smul_eq_div_normSq](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/im-smul-eq-div-normsq-source-edition-2.md) | 480 | `result-track:53ee39ecb49230e8510b380104faf949bf0204a7d9b5dfa492c44ddafe41036c` |
| 83 | `theorem` | [denom_apply](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom-apply.md) | 483 | `result-track:0ee81f7bbac9b309741412c9ca84b9bd1ea0370a2b2632fc8ec769492ca79b4e` |
| 84 | `lemma` | [denom_S](../../../../FunctionsOfAComplexVariable/MoebiusActionNamespacedPublic.lean/declarations/denom-s.md) | 486 | `result-track:4c7840733dfee66f41e7118e318c98e7dac6c2b9bb7af21c8538ad47011b0906` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fe221f518513b51850699c5be0e2fbfc453a122529bb90d34d62909c67da26e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variant654604e82a8ead63f8cc53b550a1e8f80a69df417b44f2739553947a37458557.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MoebiusAction/Variant654604e82a8ead63f8cc53b550a1e8f80a69df417b44f2739553947a37458557.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
