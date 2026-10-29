# Verification target: Multiplication Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ca27e0f35af81586b042c3765c44f16d309d137",
  "lexical_observation_count": 125,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ca27e0f35af81586b042c3765c44f16d309d137`.

Source path: `GRWTSK/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-23.md) | 73 | `declaration-track:d17c4498bdfb01f10699a5a51496406dd283bed64e91d69d65eb4e4a3dbd03c5` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 74 | `declaration-track:1296ca621aafd35f91a6827b0f990ad33ec2a62cbe393395e129fe768cf6aaf9` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 75 | `declaration-track:12f9be792e8cefe495a6690e90b189c23fb6f796bdbcfbcb2d44fc894dc90c69` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 76 | `declaration-track:679cba8bd2cb9bbb2ce89905ef7e59dd3c03b5111113cd7bf9be1ae672c519ac` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 77 | `declaration-track:1d17096e87d0816be69aae67b001f29136f6a2d67f10df281b901640a0d8c9dc` |
| 6 | `theorem` | [coeff_one](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-one.md) | 81 | `result-track:bc2c5e3cceb9ddf4683bf37b86c2b5a7954abe367147e649a96b12dde3c12abb` |
| 7 | `theorem` | [single_zero_one](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/single-zero-one.md) | 84 | `result-track:5a62a9e1355fc2d9e5b6113b5d640090ca6a71b7f3488b521e7c3e535937163f` |
| 8 | `theorem` | [single_zero_natCast](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/single-zero-natcast.md) | 85 | `result-track:6bfc37b53e17e6c21bf6ec4ee00c03e4369df5d67f88237e87ddc9e8370351cd` |
| 9 | `theorem` | [single_zero_intCast](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/single-zero-intcast.md) | 86 | `result-track:c0bce5c32e5d7c35631cc6a994aa7a0582c0cef92d3ed863889fe152f660e3d3` |
| 10 | `theorem` | [single_zero_nnratCast](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/single-zero-nnratcast.md) | 87 | `result-track:3bc17b224676bb76c5f7793abfeb25b0b479da5e273a52b85c0646a9989dd07e` |
| 11 | `theorem` | [single_zero_ratCast](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/single-zero-ratcast.md) | 88 | `result-track:e8f57f4e9689f94b6f57c627d1ee3bf0781391c2041aedb1bc6a8db837ea2168` |
| 12 | `theorem` | [single_zero_ofNat](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/single-zero-ofnat.md) | 90 | `result-track:1cc245013a6080516be18ef545e0502dd3e13d96c2a73d131eee7e6b56ab32aa` |
| 13 | `theorem` | [support_one](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/support-one.md) | 94 | `result-track:5499851d10263bddfe14225e13cf5303d662a0b4e6a05a22b9765f6bf79bcff7` |
| 14 | `theorem` | [orderTop_one](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/ordertop-one.md) | 98 | `result-track:714c0b2f1278fa29ff0ae7841d9946ba113acffdc748d910146687936c8689d3` |
| 15 | `theorem` | [order_one](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/order-one.md) | 102 | `result-track:0394c1d367412891c0d969d65466d2c3288607e48cdb3faaf22baac3cf8c38a0` |
| 16 | `theorem` | [leadingCoeff_one](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/leadingcoeff-one.md) | 108 | `result-track:5b0ce4ab2e7e7ac2a366965245386184bde5b1f28456a735c1b8b11080d2e88e` |
| 17 | `lemma` | [map_one](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/map-one.md) | 112 | `result-track:65f01be8661dc5657c90bfa7b176ef0ed048945765e7e3b166885e56a623222c` |
| 18 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-27.md) | 116 | `declaration-track:ed400ecb744000aaec12769b81cff231942fa6728c58738bac05ea8ffa081c65` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-26.md) | 120 | `declaration-track:e9f6572f13118cc2b9d0eb84da52685fbd904c7e7a75ff72c51efc1054b50d40` |
| 20 | `def` | [HahnModule](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/hahnmodule.md) | 131 | `declaration-track:7b3f25bbca8d3c305d2ef649699ceaaf13b415e341fba0f101ff47e85a548016` |
| 21 | `def` | [of](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/of.md) | 141 | `declaration-track:db312682e7b37cf7fdd2d59fde80ee3014f1cba5c42fa3a8d2828bf9ad2eddd9` |
| 22 | `def` | [rec](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/rec.md) | 146 | `declaration-track:b4c08f91b70fc5d35596b1bf94c4e1924e8a01640df5cf75b900f126953c0d49` |
| 23 | `theorem` | [ext](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/ext.md) | 151 | `result-track:ab6e3f6a473efb850507f80511d75c73cbf62a39062cf01ef9e24c964f8240fe` |
| 24 | `instance` | [instZero](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instzero.md) | 160 | `declaration-track:d67e8c4fcfe5d85ceab8282901f50543b662e334dadfd03d2b9dde19e267e927` |
| 25 | `instance` | [instAddCommMonoid](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instaddcommmonoid.md) | 162 | `declaration-track:3b8d2d4ed198d1262e0559f2843f276ed6d50f07d2a11d4e39dcb9ad6a48415c` |
| 26 | `instance` | [instAddCommGroup](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instaddcommgroup.md) | 164 | `declaration-track:93884c4d28cefc907e51b8ba42059e23224f99966aaf16be61da884ac4649f14` |
| 27 | `instance` | [instBaseSMul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instbasesmul.md) | 166 | `declaration-track:8b6a197d6bb899f4561bb94406754c98ee587220c15afdeccccca85564c8c555` |
| 28 | `theorem` | [of_zero](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/of-zero.md) | 170 | `result-track:fb9b54fc1c0021b96710a3378b276c767115b56da39845c8bcf3afe1a49039b6` |
| 29 | `theorem` | [of_add](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/of-add.md) | 171 | `result-track:d71da49fbe7a18f2099cfc4c4bb139adddc0be56b9f51069aca7b8295b4af3d1` |
| 30 | `theorem` | [of_sub](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/of-sub.md) | 173 | `result-track:6cd76018df632a82a830e0685d494e91de5a065a4b4e63de9d5548bb4db6ab97` |
| 31 | `theorem` | [of_symm_zero](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/of-symm-zero.md) | 176 | `result-track:563e66f93f56701a3cf3c2875e2acfca0c3df36dce193c62615feb961799a139` |
| 32 | `theorem` | [of_symm_add](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/of-symm-add.md) | 177 | `result-track:07cd56045c8ad7cbc6843738fa2986369cfcbc52c6af5abad2657e4e8203d933` |
| 33 | `theorem` | [of_symm_sub](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/of-symm-sub.md) | 179 | `result-track:080a4ab5bbed69dfee570df2961a7c4b846c15a2d7a8b9d5e81208abaafbce8d` |
| 34 | `instance` | [instSMul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instsmul.md) | 184 | `declaration-track:33a776734dda8e8722cf9e22654b10e754ed3fb291e76eb6ff84e181d4dd5da0` |
| 35 | `theorem` | [coeff_smul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-smul.md) | 202 | `result-track:fe8ee037b4b307714c9a84fa9a3832722b48e9b9ca879b587653f5cf5d939ec8` |
| 36 | `instance` | [instBaseSMulZeroClass](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instbasesmulzeroclass.md) | 216 | `declaration-track:a5712670f0e4073875c0cf42490c7aa94891b0dd5548c9fdeb78e7d1f2a6880a` |
| 37 | `theorem` | [of_smul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/of-smul.md) | 220 | `result-track:660f55b11464ccc8fa9984c6b1901177fe76c23ba8e7639d8a2549c433c0cf1f` |
| 38 | `theorem` | [of_symm_smul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/of-symm-smul.md) | 222 | `result-track:b22ac610b3e35718adaf1286192afbdef8d950da9f94e00f1cd83f89dedd00b4` |
| 39 | `instance` | [instSMulZeroClass](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instsmulzeroclass.md) | 227 | `declaration-track:f3caea190af498b26483c72f43d27d081379a4cd32059e13b6f2c58780339e5c` |
| 40 | `theorem` | [coeff_smul_right](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-smul-right.md) | 233 | `result-track:fdaaf5e1a34fc58adcdc3d0d3a967a0f3a6af5dc7ec7a6660694a6901b95927a` |
| 41 | `theorem` | [coeff_smul_left](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-smul-left.md) | 245 | `result-track:39bd27389cfb201ec73c31495db5bbc0e856dfd48a59b32566d97da63ed0ebff` |
| 42 | `theorem` | [smul_add](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/smul-add.md) | 265 | `result-track:2dd08230c61ae3d848c5f30ba3d8e26704365c7a801a6ae46dbb0a7a3c4b72d1` |
| 43 | `instance` | [instDistribSMul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instdistribsmul.md) | 281 | `declaration-track:03f55515359479e6ece0846c4a0f31b43da5c2343304782e4356697ea71f9248` |
| 44 | `theorem` | [add_smul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/add-smul.md) | 285 | `result-track:dc6382f0ff99e3518d0a6aea542abadad041f6c45ddb3a1d85ca0abf91f202e6` |
| 45 | `theorem` | [coeff_single_smul_vadd](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-single-smul-vadd.md) | 297 | `result-track:1aff4a3e6a82bc6db18c13b382d7871d598ddaa032d15f32ffd1cda29fd53452` |
| 46 | `theorem` | [coeff_single_zero_smul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-single-zero-smul.md) | 325 | `result-track:5513e571e1277081c8d9f2c36c3dc050909cab2e7da38e7748591651b5868d4d` |
| 47 | `theorem` | [single_zero_smul_eq_smul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/single-zero-smul-eq-smul.md) | 334 | `result-track:6c4a23cb1caf5d52ed7aaf5786c99547560fc8791975055dd0486be5ef9909ea` |
| 48 | `theorem` | [zero_smul'](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/zero-smul.md) | 342 | `result-track:50d1de9dee5d0ab91bb92a6800676bbbac3fd507e41456bca9c005da489760d8` |
| 49 | `theorem` | [one_smul'](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/one-smul.md) | 347 | `result-track:a1293c5f81416275e75e86956707ddee53786f5887a9d0b12ded09e266290ee8` |
| 50 | `theorem` | [support_smul_subset_vadd_support'](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/support-smul-subset-vadd-support.md) | 352 | `result-track:40852dc851fe57295e9adaf933cab64c44a967c92bbb45bcfa4c4969e2a64bb0` |
| 51 | `theorem` | [support_smul_subset_vadd_support](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/support-smul-subset-vadd-support-source-edition-2.md) | 361 | `result-track:fa5470b84a211a7cec488fc03963ac9e1f8cb00a56d06cad49cc9b98ddec3a4d` |
| 52 | `theorem` | [orderTop_vAdd_le_orderTop_smul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/ordertop-vadd-le-ordertop-smul.md) | 366 | `result-track:33924f33e6691035f4a0eef4baa5d3c82baf2449e726c7274f04a3658b1ec34c` |
| 53 | `theorem` | [coeff_smul_order_add_order](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-smul-order-add-order.md) | 382 | `result-track:b2caf7b61c0873eca4100aac22ae507b0abcff015e7237b56fafad3d7bfffa71` |
| 54 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-24.md) | 404 | `declaration-track:dd0298935691283ac9da05fedb67a3f3464f1979de8c80c1526ad6c2eb817ec1` |
| 55 | `theorem` | [of_symm_smul_of_eq_mul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/of-symm-smul-of-eq-mul.md) | 407 | `result-track:919a540b09d0b52effb62d760f27a9d6c84e9a71a8c557e1f0c22abfc72f9fcb` |
| 56 | `theorem` | [coeff_mul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-mul.md) | 410 | `result-track:2edec2770f857f9a4ad908edf64d1a9ed0786c96d3c33b966de12c762d41d314` |
| 57 | `lemma` | [map_mul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/map-mul.md) | 415 | `result-track:dda6928bf8b0c2efc2849e8de2534e502571327130bdb821e6d5abe9f48ce8f9` |
| 58 | `theorem` | [coeff_mul_left'](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-mul-left.md) | 428 | `result-track:ca1d2060813a1945bc3d394dd980854598c827e3b78435ed14c213aa46c2b62e` |
| 59 | `theorem` | [coeff_mul_right'](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-mul-right.md) | 434 | `result-track:b30a8a45c52d5ccdb224e405975ccddf8ebd7294fd2972f8c502b87189bd5c60` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-22.md) | 440 | `declaration-track:ce03a7e2efe7409b17b58375a05ac26472695e41a75db35e21928d6b69f00338` |
| 61 | `theorem` | [coeff_single_mul_add](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-single-mul-add.md) | 450 | `result-track:f8b28815681ec6797f42363b0c6531fc7585d0beae114d39c9a47bd40b5d152e` |
| 62 | `theorem` | [coeff_mul_single_add](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-mul-single-add.md) | 455 | `result-track:84ca54d6a920451843a09305f2acb454e4c31cfe8c98cd7d8c60a6753a277200` |
| 63 | `theorem` | [coeff_single_mul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-single-mul.md) | 480 | `result-track:2f8a1b42ff85b3338c490a42a3c65d12f756cc6ff1eab2a9c43ceac6f548a8ae` |
| 64 | `theorem` | [coeff_mul_single](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-mul-single.md) | 485 | `result-track:f2188f90ef904cc34f9c30fb3ea26ce93f982728ecdff81e475c9f2c06a99af4` |
| 65 | `theorem` | [coeff_mul_single_zero](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-mul-single-zero.md) | 491 | `result-track:b33ea964c87c43d05100d319205be2cd174643f8307fd09b66112f625bd9ddca` |
| 66 | `theorem` | [coeff_single_zero_mul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-single-zero-mul.md) | 494 | `result-track:a9a8d8df13db23048697facd1a0fc58f2010877193e647bcd689149caaa72d8b` |
| 67 | `theorem` | [single_zero_mul_eq_smul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/single-zero-mul-eq-smul.md) | 499 | `result-track:82120aa0a93b4abb1c1f98d38af9c7383c37f0f56e70cf9757a170edbe479df8` |
| 68 | `theorem` | [support_mul_subset](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/support-mul-subset.md) | 503 | `result-track:f178eec4d7e0411f825ca65480d4c0b4654bfd738fb3ca2f2e6f2757ec273c6d` |
| 69 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 508 | `declaration-track:9ce65344c8944c783303586a2074b0e4382590cf5694be637546d49838eaa167` |
| 70 | `theorem` | [coeff_mul_order_add_order](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/coeff-mul-order-add-order.md) | 523 | `result-track:c3d87f754e9e4e2b6910c04f9b88dec3e00b848c699c393994adc9a9868b9941` |
| 71 | `theorem` | [orderTop_mul_of_ne_zero](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/ordertop-mul-of-ne-zero.md) | 528 | `result-track:10e993c412d87f229a4d68b72a417970642d54d684f89f7af05b0288bccbd39c` |
| 72 | `theorem` | [orderTop_mul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/ordertop-mul.md) | 542 | `result-track:80fdf594ebae2f011dc681bb32c022d2a34a004457d594267932d45f150c480b` |
| 73 | `theorem` | [orderTop_add_le_mul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/ordertop-add-le-mul.md) | 549 | `result-track:c62969097fada4060c8a7580473637a9d6162b662e54edcda2e1f57ffb1d226f` |
| 74 | `theorem` | [order_mul_of_ne_zero](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/order-mul-of-ne-zero.md) | 553 | `result-track:9429d14bea929be6a82712f2bbb305d4c344d614f7b1363b831d8399209d85c7` |
| 75 | `theorem` | [leadingCoeff_mul_of_ne_zero](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/leadingcoeff-mul-of-ne-zero.md) | 565 | `result-track:01fc2508630f627fda01dd780156121ad46df1461d3b09a8de19f71dcc6836d1` |
| 76 | `theorem` | [leadingCoeff_mul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/leadingcoeff-mul.md) | 570 | `result-track:ca077b5bcf41d88364d564cadab4fb717742d829892acfe94a04a7b658ec28d1` |
| 77 | `theorem` | [order_single_mul_of_isRegular](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/order-single-mul-of-isregular.md) | 577 | `result-track:fbb52fed43af2a6ec66eab5d606e4e46a75c67d1d609c9a82841fe0ff15b17ea` |
| 78 | `theorem` | [mul_assoc'](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/mul-assoc.md) | 592 | `result-track:b89c177a55a32685ab014e9d20f943cb3e538852539cdbc2bc869cdfde5d7f69` |
| 79 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-25.md) | 603 | `declaration-track:e672fbd86842f7c5482c12454728b631893ce5c8473adda20026ac5837e88299` |
| 80 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 606 | `declaration-track:226b1b49f7adbbaddadcaad239e77205daa8cbd62e749954de22d367ed007658` |
| 81 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 614 | `declaration-track:86f0e460ec933173b81157044f565694d64edea191f1948af05dfae824485b89` |
| 82 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 616 | `declaration-track:6eb5b3eedc2906bfbd4bfe0e28177990dd0ea987230a4bea65a899cc4c809250` |
| 83 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 623 | `declaration-track:506a866ff33c0bb49f81bcc43a3c403198ec384d263ed335e623d650a10ad0f6` |
| 84 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-19.md) | 624 | `declaration-track:a03b75c2145dc222061e97af918896e4574f374eb8c26892c2a8e95ca972b3e9` |
| 85 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 625 | `declaration-track:8014a0f45d68b8d6db2123fea4652a5201d807f6ab3d8afa22463b2f0099a67b` |
| 86 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 626 | `declaration-track:602f0db0ec96784dd6a4dcd13161ecfecfb2ed3a07e04d11fd85616f746c7aed` |
| 87 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 627 | `declaration-track:1bd97b2d8e9bfdaffbd14dad980b9592e29cb338649d618301cd0bc989850ac8` |
| 88 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-28.md) | 628 | `declaration-track:fd7f2eceb2c88c8caf91d15ee1e24bd56628b06a9ceb5916d2ee911aebbfecc7` |
| 89 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-21.md) | 629 | `declaration-track:b57b9e4b0cec16ac8941e776000622b4c315f96238308630301a8b05d7aa2e4e` |
| 90 | `theorem` | [orderTop_nsmul_le_orderTop_pow](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/ordertop-nsmul-le-ordertop-pow.md) | 633 | `result-track:b2d05e7e744d91414985ca13e02120ebe6edfb8f41f5626bb1f61763935caea8` |
| 91 | `theorem` | [orderTop_self_sub_one_pos_iff](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/ordertop-self-sub-one-pos-iff.md) | 651 | `result-track:9eadb96be42dbc8674c98e260158a41fe6be10f2f2bef36f0eba90d0f6e60e08` |
| 92 | `theorem` | [orderTop_sub_pos](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/ordertop-sub-pos.md) | 667 | `result-track:b0528da899cf3b5a45acd29dfb64f135c3ccd509db0d5cb83992a8712186b7c0` |
| 93 | `def` | [orderTopSubOnePos](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/ordertopsubonepos.md) | 674 | `declaration-track:2f9587f303eacd313d5b80d10c75de69490fed96d975eb0017b71fea60067f7b` |
| 94 | `theorem` | [mem_orderTopSubOnePos_iff](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/mem-ordertopsubonepos-iff.md) | 701 | `result-track:1f5abf993cd1ad31ecbc15180def7455658665d657d1b0d8ea7c1e3d0afd6583` |
| 95 | `theorem` | [mul_smul'](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/mul-smul.md) | 712 | `result-track:ce7b479ff02125c2ef53d74a4d0197d6b9cb8f86cb5c3e727dbbf1c9ca789405` |
| 96 | `instance` | [instBaseModule](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instbasemodule.md) | 723 | `declaration-track:c0fe8698f07c6b1907f1a14eeef779c7fd76756ed6162dd8ac43e8bcf0537d7f` |
| 97 | `instance` | [instModule](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instmodule.md) | 728 | `declaration-track:78812188ac3fa3bfdd2c86d81f74dd2779a9b07acc269d9b5545d0f2eee50aaf` |
| 98 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 736 | `declaration-track:21e999473851081ea064794d3cd82eb44182bf43ba91d7b3161ce2fcfe056251` |
| 99 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 743 | `declaration-track:281a6f98772f0b13813a9b13060e2c8b2f77e1f3a317849a4ec60ba1b1089611` |
| 100 | `instance` | [SMulCommClass](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/smulcommclass.md) | 748 | `declaration-track:f1a5c0702f698cfbb263993eb7d7e4d61e9a91fc4a562d8537b30d190da023f3` |
| 101 | `instance` | [instIsTorsionFree](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instistorsionfree.md) | 753 | `declaration-track:6fdbd98cfac33e11d9aa13e1ec2bc00bf5deb858e2ab7dd6fe81615748567731` |
| 102 | `theorem` | [single_mul_single](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/single-mul-single.md) | 773 | `result-track:962ea519c33e4a868273fdfccef2a028677fa2688ad42dd391ab7237ad64d3fe` |
| 103 | `theorem` | [single_pow](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/single-pow.md) | 792 | `result-track:a4cd1aa33b8e47e9d14bdc6dd41cf9b3acf5489fcf6481b13cb3f558d98e5186` |
| 104 | `def` | [C](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/c.md) | 805 | `declaration-track:bf22dd1860df1bcc3c78197a9f1768eb786c93b1f750af567799b9b5eccd8478` |
| 105 | `theorem` | [C_zero](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/c-zero.md) | 814 | `result-track:d3dcfeee37ba060416c8c9b5d4985d2d26901543b781aa2f53859fb077805550` |
| 106 | `theorem` | [C_one](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/c-one.md) | 817 | `result-track:78f82fd779957517024ab31010de6aac56d7c4a198ac151e6070e83ea22a4020` |
| 107 | `theorem` | [map_C](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/map-c.md) | 820 | `result-track:661ccc0e2c9ee1e72610117b1bd8850e68db8827e25bb0d0afc3201be5c6c16c` |
| 108 | `theorem` | [C_injective](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/c-injective.md) | 825 | `result-track:99d43a71f838830c5f35498222477b3b8a56e7e7796c947119f5973eb2228685` |
| 109 | `theorem` | [C_ne_zero](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/c-ne-zero.md) | 831 | `result-track:5bfe75487a7654d469d7ffe95751b4328a5d3f294ff0c41b3f2b75253b999448` |
| 110 | `theorem` | [order_C](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/order-c.md) | 834 | `result-track:99859653a2799ee70d56b8ee32c0e7f6c9122c5ac961574d055e6a5408b9348e` |
| 111 | `theorem` | [C_mul_eq_smul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/c-mul-eq-smul.md) | 845 | `result-track:5fe185f409167aaab39289b505079974a835bedf994ce393e971ac8a30ac120f` |
| 112 | `theorem` | [embDomain_mul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/embdomain-mul.md) | 854 | `result-track:851ec6b0f7a0263773d89c50fda28266a1408cef7b8d17bd95174201ef565429` |
| 113 | `theorem` | [embDomain_one](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/embdomain-one.md) | 890 | `result-track:508f91ff53f55dd328a5ab746386882fc64613c392ba409d7bfbfb3843f763f7` |
| 114 | `def` | [embDomainRingHom](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/embdomainringhom.md) | 896 | `declaration-track:19e1b7cbb513fb1f687513aabc1fd09fc0e6920280e1b39260b3ef00f2caedf4` |
| 115 | `theorem` | [embDomainRingHom_C](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/embdomainringhom-c.md) | 904 | `result-track:d22cd915675424f0dadc6aa2c138fbfc7c9a0c601234743372379981b14e0e49` |
| 116 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance.md) | 914 | `declaration-track:118014dcb3e6f7b8504a31a4af73cf209cfa149d50913d1913c4f21bf97e7eed` |
| 117 | `theorem` | [C_eq_algebraMap](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/c-eq-algebramap.md) | 925 | `result-track:25a285ec980eb0f8b4bac8cab67267e62d9eb8f4eac806e89a9b8cbd490f7b4e` |
| 118 | `theorem` | [algebraMap_apply](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/algebramap-apply.md) | 928 | `result-track:14e2deb54595aff77c224abc2f69f079e3843fc57563812cb63b9d560a0b2e85` |
| 119 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 931 | `declaration-track:338a3de956ce53e5f56c60fa4106c65e8211a8e32633747f4b7e9caf6a9dbada` |
| 120 | `def` | [embDomainAlgHom](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/embdomainalghom.md) | 949 | `declaration-track:bb15caff9b9ac054d2ea3a61b9266d412a4cce34d66367962344ae0332b17d12` |
| 121 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-20.md) | 963 | `declaration-track:ab5f069a61c8096cdfbc7048ad83011405722f86cd64f0885819b6d4b67d8d5e` |
| 122 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 1013 | `declaration-track:69457dacfd7fc89b4b4c307db134a97d390f34a16e00749838670fb4204dc952` |
| 123 | `lemma` | [order_mul](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/order-mul.md) | 1020 | `result-track:7e6ac38a869879c6626bc1187762baf0d30cd65d28013a2f9c7d40bf66d12fc2` |
| 124 | `lemma` | [order_pow](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/order-pow.md) | 1032 | `result-track:10a0cacc0783c0840379abeafd4d8750c8b692e0b193318786dca9e04c2d9ca0` |
| 125 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/MultiplicationNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 1037 | `declaration-track:9775b183d2c63e54fb03a26175f1f18260c658192d7d7bd7948be3c01b64d0ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb7233e173d3449f7cf8008864a9f3a31c6d83a4a363a0970ee68cc616cc98d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/Multiplication/Variant6cfee3b41dd0fe36dfc26db565750311fe97808ac57ea367ca9bacff440045e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
