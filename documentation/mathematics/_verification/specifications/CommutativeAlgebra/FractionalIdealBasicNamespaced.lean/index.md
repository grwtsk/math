# Verification target: Fractional Ideal Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b8c9e88682f6664eeab52c297dc0c72b42c94c2",
  "lexical_observation_count": 104,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantfbe7c34ab934c3342c8a02ee1da0a733646348241c3d8e90cf9fa245d3346885.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b8c9e88682f6664eeab52c297dc0c72b42c94c2`.

Source path: `GRWTSK/Algebra/Basic/Variantfbe7c34ab934c3342c8a02ee1da0a733646348241c3d8e90cf9fa245d3346885.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantfbe7c34ab934c3342c8a02ee1da0a733646348241c3d8e90cf9fa245d3346885.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.Integer` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFractional](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/isfractional.md) | 74 | `declaration-track:571eef2d87ae2208ccfed54729deaab5e182c78dcb721be1e204c7719ab2139a` |
| 2 | `def` | [FractionalIdeal](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/fractionalideal.md) | 85 | `declaration-track:183c1d99eb8534237dde21682de3cc7738b07f35527da2e747d606c3a7ad0d88` |
| 3 | `def` | [coeToSubmodule](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coetosubmodule.md) | 102 | `declaration-track:c5a8d2f34ea0ae04a66071b9a60fd3f3ec3c462ae2df5dba1aa12011f471f864` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 112 | `declaration-track:9a7d2e93a63f7e5f94d2f902ce0efcc422d0b8edeedd37d2f2d25ab2a19b0c74` |
| 5 | `theorem` | [isFractional](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/isfractional-source-edition-2.md) | 115 | `result-track:d635a5e9793be9f6c9a891dec28925609f6c99dbfb48065da74c791aefe4ee0a` |
| 6 | `def` | [den](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/den.md) | 120 | `declaration-track:a172b0edbd5a7ea6e45d3842c30feeb7d8e0f4b3f4ff1587c758a4bbb0afb3ae` |
| 7 | `def` | [num](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/num.md) | 125 | `declaration-track:cf3a57ada25419c626809c08b81612d6fd627aea9c14690450257823488c7578` |
| 8 | `theorem` | [den_mul_self_eq_num](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/den-mul-self-eq-num.md) | 128 | `result-track:fb42a513736110ba9131f61b4be2029133aa3ded1492d7622a90e9a97fcf4f06` |
| 9 | `def` | [equivNum](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/equivnum.md) | 137 | `declaration-track:53541ebf5d80711ef0c97146caac4ce99cf6ff545d458bd6a368f17a97ba56dd` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 154 | `declaration-track:3bd50b37b281ed2f3d8b93711efc1aa4a82c76d9f5962b06baabfd5ade67af77` |
| 11 | `theorem` | [mem_coe](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mem-coe.md) | 159 | `result-track:b40e986b0ac227cd08103c99d3f92cfd69ce78588129e4f5ff030ddae36c7e9e` |
| 12 | `theorem` | [ext](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/ext.md) | 163 | `result-track:5099a6a82570b6ec48931bf2c98a0032256882741ad7a623b190c024d303f071` |
| 13 | `theorem` | [equivNum_apply](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/equivnum-apply.md) | 167 | `result-track:b2b3b9e0c088eb5bdc6dd51b0609562b5b1201f210ededf2b3680d0bdf6f8acd` |
| 14 | `def` | [copy](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/copy.md) | 177 | `declaration-track:c12b50b4d21a14867e93ec99c0d74a32b479c192a5b0613d0b7f252c8297fefb` |
| 15 | `theorem` | [coe_copy](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-copy.md) | 185 | `result-track:756ab41b40f77e6fe2f320dfcf5c023e7d09a3e80caa2a046dd50fa806975a95` |
| 16 | `theorem` | [coe_eq](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-eq.md) | 188 | `result-track:4c7d95bcfcde0cfa2a7ba6f308c804ec6e1006f2624215b746c33197e698b452` |
| 17 | `lemma` | [zero_mem](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/zero-mem.md) | 193 | `result-track:21f4e017c5694e9adde0c692329e6e06b53f61f641ce5396e984c0ba5880c2a6` |
| 18 | `theorem` | [val_eq_coe](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/val-eq-coe.md) | 197 | `result-track:8a42ac57c648023e6ad9df65923508c8a840718977c191ba8cf1232785283267` |
| 19 | `theorem` | [coe_mk](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-mk.md) | 202 | `result-track:59daac3ddacb6ec22e1a61e2a67d5b39c19ea92de5ab787f950725baed9233da` |
| 20 | `theorem` | [coeToSet_coeToSubmodule](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coetoset-coetosubmodule.md) | 206 | `result-track:3b46bf24142a8dfc49afae070470aedd56afb2831bdd62dbfc025aab4d4d869b` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-13.md) | 212 | `declaration-track:eb73f427fa817e16c925893cc5f0dcd509019ffebe028afada8687ff4f484420` |
| 22 | `theorem` | [coeToSubmodule_injective](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coetosubmodule-injective.md) | 215 | `result-track:5aa0d7cdb8192daf2fe2817f33f9907a53e04dcf8a51673795983b8230fec127` |
| 23 | `theorem` | [coeToSubmodule_inj](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coetosubmodule-inj.md) | 219 | `result-track:978e30f6f7037d416df685f08bfafc6d2ee5c7e07ee66e8ad587a83e5909d26e` |
| 24 | `theorem` | [isFractional_of_le_one](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/isfractional-of-le-one.md) | 222 | `result-track:5f9139ae508292de9321086894cdfcfce8fa0ed2e461753f3d6528b85ece4f8b` |
| 25 | `theorem` | [isFractional_of_le](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/isfractional-of-le.md) | 229 | `result-track:1d9c841d02e0102e0ed22a84e5cd343795b764b4a19d2d4909ac0afba71c789d` |
| 26 | `def` | [coeIdeal](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal.md) | 240 | `declaration-track:d80dcd7ef869c30cc486d408adb012a62d224c609ad88d975d15cf28186a5e12` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 253 | `declaration-track:a987201520cec03769bc7630b64575a0efda032f640cb55aaafcf043436ad7f5` |
| 28 | `theorem` | [coe_coeIdeal](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-coeideal.md) | 257 | `result-track:d1215e1e815bb24731941eef3e5e1380bd6910aaa6339b7ed2f778b567ac1cbc` |
| 29 | `theorem` | [mem_coeIdeal](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mem-coeideal.md) | 264 | `result-track:9ea3b71525804a607cd0b8c25733398503838d8c97b88358a0d616d58b705b64` |
| 30 | `theorem` | [mem_coeIdeal_of_mem](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mem-coeideal-of-mem.md) | 268 | `result-track:d394b1fc5debd537a48b47a083dd947860ff3f6a52ed7ffab0a16bf3a7f7fac2` |
| 31 | `theorem` | [coeIdeal_le_coeIdeal'](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal-le-coeideal.md) | 272 | `result-track:039f1f09d44a072d452adc808f409c2a281ebd26d9318c758f23c4f79e53a56a` |
| 32 | `theorem` | [coeIdeal_le_coeIdeal](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal-le-coeideal-source-edition-2.md) | 277 | `result-track:f54eaaa73335de7fbeaeb213dc277648157d59f33e7a8a4ffcb069a6c9a7af73` |
| 33 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 281 | `declaration-track:421a2caa61eb7fecaf5d295e76835d951f424ee2ca7546216974bab771df4c60` |
| 34 | `theorem` | [mem_zero_iff](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mem-zero-iff.md) | 285 | `result-track:7f6003e10674421663f59c7dcca829f2c8abe23bcb8cc950683627242ff0fda6` |
| 35 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-zero.md) | 293 | `result-track:b3c645a3dc08da903ee96bf01037c72357ec8bc0b5e7e3fd5106bc5d165959c9` |
| 36 | `theorem` | [coeIdeal_bot](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal-bot.md) | 297 | `result-track:78dbcb6aa4e901e06fa7aef1c17a486418175c0ec791966debed847a95b25a95` |
| 37 | `theorem` | [exists_mem_algebraMap_eq](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/exists-mem-algebramap-eq.md) | 305 | `result-track:de0fb5428a495687a61ba204ba52c9f268251d7847c2b7d8ac1be84403c52abb` |
| 38 | `theorem` | [coeIdeal_injective'](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal-injective.md) | 309 | `result-track:75bb87770699e9c5689642f024a8990c43e4646c94e0d98ef7a6934f6221cd4b` |
| 39 | `theorem` | [coeIdeal_inj'](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal-inj.md) | 314 | `result-track:d3430ed1188e1ed8627d2e8aaf333bad896ec31edbb44f0e1a936b8dab8914cd` |
| 40 | `theorem` | [coeIdeal_eq_zero'](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal-eq-zero.md) | 319 | `result-track:a03330c9a468c9c429963ddd9a9fcc2ea24fb8a8e151fdceec67cdd7b711c4ad` |
| 41 | `theorem` | [coeIdeal_ne_zero'](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal-ne-zero.md) | 323 | `result-track:8269ebbb3f9be2aff3e6d53cf3cbe6fda6d62d6972d61966ac9033e02257806b` |
| 42 | `theorem` | [coeToSubmodule_eq_bot](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coetosubmodule-eq-bot.md) | 329 | `result-track:a60a7f5afaba15f2e3a0e35c5b013e47e828198fc262fae9e54134c1ed3b5038` |
| 43 | `theorem` | [coeToSubmodule_ne_bot](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coetosubmodule-ne-bot.md) | 332 | `result-track:a33b6885fcbb6768661e0219ec972be85531a7e1248a7cb91fce8d219ece6ea4` |
| 44 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-14.md) | 335 | `declaration-track:ef09e89a3864789ec4df8f332708b44e50e20de5b8a1e6cc087dd7b62b144587` |
| 45 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 338 | `declaration-track:9bb263d0d2aa5251098a9c77b4d1be31c914639742240b8dcf74b6de8cdcbe72` |
| 46 | `theorem` | [zero_of_num_eq_bot](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/zero-of-num-eq-bot.md) | 341 | `result-track:58e3557a7c5d9fe7bf9d565c9bfd27c8895a5c23e08e4f2b86e066b88010a564` |
| 47 | `theorem` | [num_zero_eq](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/num-zero-eq.md) | 350 | `result-track:5b6781b160fb07a188891310e2db204c1894b2f3c4a79800e128e145547deb2c` |
| 48 | `theorem` | [coeIdeal_top](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal-top.md) | 357 | `result-track:40a17c9dadf54ffdfe0ea80a5a1fdf598e99458cd621b558e962e527c651dab3` |
| 49 | `theorem` | [mem_one_iff](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mem-one-iff.md) | 360 | `result-track:6234eacb47a52be86b9c8d726e5f29a33d23d9ae3736642c185e0544513e1934` |
| 50 | `theorem` | [coe_mem_one](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-mem-one.md) | 363 | `result-track:d0f0016e8639cfd5992e0bbd23a595a07bcd45f20900aac5d311d91025221bfa` |
| 51 | `theorem` | [one_mem_one](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/one-mem-one.md) | 366 | `result-track:c5828139a2530130d15be3719f53d11709d323850c54b83be35c32451f9fd11c` |
| 52 | `theorem` | [coe_one_eq_coeSubmodule_top](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-one-eq-coesubmodule-top.md) | 375 | `result-track:eb123b51847250fa5aadf0d7f08fbdaa8e05b44f9eabad80494f6803933f5215` |
| 53 | `theorem` | [coe_one](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-one.md) | 379 | `result-track:ce9d34c115f00c0914c64ae23479fdbfea44ccb82964f4a80fbb0acdbe61ad19` |
| 54 | `theorem` | [coe_le_coe](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-le-coe.md) | 393 | `result-track:a156ec70dba1459cca2ae613180c7364e3e65ae5d578f6c69c8794b44cdf7824` |
| 55 | `theorem` | [zero_le](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/zero-le.md) | 397 | `result-track:0e17b09ac9d4099fb1191d061d5d1644885a76e9d1a3833e8d7fac4dbda44ed2` |
| 56 | `instance` | [orderBot](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/orderbot.md) | 403 | `declaration-track:a84fd1964f92aacc5162faa43478d3bb4a20b10955ae501d0ca4fc1cf8dda1df` |
| 57 | `theorem` | [bot_eq_zero](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/bot-eq-zero.md) | 408 | `result-track:2780affc82e148f09ad1be2456b1edb3a8762e604485afe91105a259cd6f6ca9` |
| 58 | `theorem` | [le_zero_iff](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/le-zero-iff.md) | 412 | `result-track:8d21a56af87a0f592a6c5a316d72986c12688ea1b96203f0019bc82ee9993869` |
| 59 | `theorem` | [eq_zero_iff](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/eq-zero-iff.md) | 415 | `result-track:10c2a4259520985b809b1d683d70e159c22691a4bcb32357569fe602efb17200` |
| 60 | `theorem` | [Fractional Ideal Basic Namespaced](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/sup.md) | 419 | `result-track:5ca662f6ab5ef561571600323c7dc1819c224409e0602d3ca43ad09a9a9d3775` |
| 61 | `theorem` | [Fractional Ideal Basic Namespaced](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/inf-right.md) | 431 | `result-track:fdd9b39001739b2d06e6e91b8226e4d6839974c1530b6f31e2254295b5b3f7b9` |
| 62 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 438 | `declaration-track:afb8cee8e5ce1b2d54fd037b87b712c916abb7bb266f52ac18dccfd192b0559a` |
| 63 | `theorem` | [coe_inf](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-inf.md) | 442 | `result-track:a4d42dd5a729d05994e3291d3dcd8a6e7c22b5391431d6b4000a566568f6026a` |
| 64 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 445 | `declaration-track:d9a7ad0db09c617537f45a55eec4cc26fc367aac3157e476f350305250bd5a98` |
| 65 | `theorem` | [coe_sup](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-sup.md) | 449 | `result-track:d56df157db221d7b935bceb588f15c06aad55440740832f7e03cc233878c3253` |
| 66 | `instance` | [lattice](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/lattice.md) | 452 | `declaration-track:ca3f27434434158d2df39abeb2bb97fcc54f156d5212aa1693cd99676cff9a5c` |
| 67 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 455 | `declaration-track:1ed9ae15aa8264e0341ed14bec7524718f77e277c8a92511b2478abd406d6eed` |
| 68 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-15.md) | 462 | `declaration-track:f9a387aa6e34d2da6185ee986bdccee76bb26c19b495467b1c950b41432691bb` |
| 69 | `theorem` | [sup_eq_add](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/sup-eq-add.md) | 466 | `result-track:1740a1a5ee0b9499452e43063b849e8e9f2bab2a7c0612c56b3b453fee223eed` |
| 70 | `theorem` | [coe_add](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-add.md) | 470 | `result-track:901363e4f5f26ca6175081fa46f8dbd59a27ba5be2f24be74cd1ed5fb560574e` |
| 71 | `theorem` | [mem_add](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mem-add.md) | 473 | `result-track:99e1e4e83ca6ec6125358d8582f0cbbdae8a1a5e4568d3166ac41cb05906d919` |
| 72 | `theorem` | [coeIdeal_sup](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal-sup.md) | 478 | `result-track:2218f049629e276d2ee47ebdba329464d3bc484684564bd07774b274dc3d4cf8` |
| 73 | `theorem` | [Fractional Ideal Basic Namespaced](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/nsmul.md) | 481 | `result-track:25553f0436e8f7d17a1e5abc3d3532a098d7c5776c0568c50d893c7b0f07802e` |
| 74 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance.md) | 491 | `declaration-track:057363538726ae1eb539f808ec6a35aca3f518c7e5777efae20444a7c70fbd48` |
| 75 | `theorem` | [coe_nsmul](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-nsmul.md) | 494 | `result-track:d4ec7a79f08024032e057098822800895dbb2e0b7e1f004dc4fe19ae6437e286` |
| 76 | `theorem` | [Fractional Ideal Basic Namespaced](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mul.md) | 498 | `result-track:744c2238d9ce1e5c5f0c6c774da73687b8e1c09639c1a712edd1c8cb3754edc0` |
| 77 | `theorem` | [Fractional Ideal Basic Namespaced](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/pow.md) | 512 | `result-track:703b06199f06a4639f7e4c883d8d25deb61439b050c540c8524984bc9f0951ae` |
| 78 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 529 | `declaration-track:4430d89794c40b948936817f26ae1f843bc287e239239ae7a2899cb2d8b0cfde` |
| 79 | `theorem` | [mul_eq_mul](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mul-eq-mul.md) | 533 | `result-track:13326873ac7c228efb295bb0a72694fc6198fb3a54a2806b8c2a5c55e5449cd4` |
| 80 | `theorem` | [mul_def](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mul-def.md) | 536 | `result-track:3e26b466883bad91e62af75e70913afe46b445c77a08588d4600b04f1a5a9fef` |
| 81 | `theorem` | [coe_mul](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-mul.md) | 540 | `result-track:29555c927680d315bd9bad559413003d2731b960c7c63f8807ac9291b6b27e16` |
| 82 | `theorem` | [coeIdeal_mul](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal-mul.md) | 544 | `result-track:8a86c0f455cd26376069ee4544b5afff760fd9e796419300986a56163b8a402d` |
| 83 | `theorem` | [mul_left_mono](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mul-left-mono.md) | 548 | `result-track:808696f3ae563628a00402bfe877671adff6016ef9c1fd5e1a9a881d89b6314f` |
| 84 | `theorem` | [mul_right_mono](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mul-right-mono.md) | 553 | `result-track:7ab7aae559b62ac08169700b1c753b6ad00c62caf5d6604a5c4fea9cec07ad0d` |
| 85 | `theorem` | [mul_mem_mul](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mul-mem-mul.md) | 558 | `result-track:32902f05e4a60b807d251106bd49e4c0f70cc928a411b9ff15f730743e538545` |
| 86 | `theorem` | [mul_le](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mul-le.md) | 563 | `result-track:284c18effb8424eb2f5b14fdafa93c5bdf9fdfa512178b4588b06f5c7a70facf` |
| 87 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 567 | `declaration-track:dbbd9f416476bed940bf5f80d9d3b43be9d21b9ab41ffa474da2801afa1c7e7e` |
| 88 | `theorem` | [coe_pow](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-pow.md) | 571 | `result-track:ef536994f106a45b470754c71746257aabb83b654a38754a4b0df44b0e71acde` |
| 89 | `theorem` | [mul_induction_on](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mul-induction-on.md) | 575 | `result-track:06ddba6e966d07092bfa30240df30e94543b143e918ae929eb877184fba66a8b` |
| 90 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 581 | `declaration-track:49ffb3c0034fdbff1246d49aa5e976c06095216309518d6ad8973e51c62b5d75` |
| 91 | `theorem` | [coe_natCast](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coe-natcast.md) | 584 | `result-track:af2930353f1459f0db613a7535058c32edf13ab884157887636dad7ba7adbdc3` |
| 92 | `instance` | [commSemiring](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/commsemiring.md) | 588 | `declaration-track:513d9511b8f238533d1cbf1c568e62a615fa2a16acd4bbfc37437253c3af1451` |
| 93 | `def` | [coeSubmoduleHom](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coesubmodulehom.md) | 598 | `declaration-track:4c3b4ac24337e701622c976905239ab46f893971298a5d4c14f4fce4cc021b1d` |
| 94 | `theorem` | [add_le_add_left](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/add-le-add-left.md) | 609 | `result-track:b1f1637840ab0244d5fe57f7bbb07d85778a6e7e4201506b7727c24e27663f3d` |
| 95 | `theorem` | [mul_le_mul_left](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mul-le-mul-left.md) | 613 | `result-track:f1585c47ae4d656e1d690fd35787178daace747a25f41c67eb8b880ac55bba95` |
| 96 | `theorem` | [le_self_mul_self](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/le-self-mul-self.md) | 617 | `result-track:6c3cc30b4fc75d67f05590de3d1ff201fbc09c70769fdf1582e27f6a1ae48568` |
| 97 | `theorem` | [mul_self_le_self](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/mul-self-le-self.md) | 621 | `result-track:5cb1e077ab51b7dc29d19f1671a9d00b002fa3babe287b3c430855de53f4518b` |
| 98 | `theorem` | [coeIdeal_le_one](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal-le-one.md) | 625 | `result-track:0aaf59eae46f8cb55e0c186157b856cfd6d3394f972fa6309c2162b497d6924a` |
| 99 | `theorem` | [le_one_iff_exists_coeIdeal](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/le-one-iff-exists-coeideal.md) | 629 | `result-track:79376ace22465d5cdd343d1ddfe5369ee945f4d48b5adccbe4808dd1e582cdb4` |
| 100 | `theorem` | [one_le](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/one-le.md) | 654 | `result-track:d5bfb08ca1c48e5295c5fd221a0dd48587b644fb5d5b3e181fa994ad5ccc286d` |
| 101 | `def` | [coeIdealHom](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeidealhom.md) | 661 | `declaration-track:f0eb0bcf31c298e62dc3e6ce6723bfab0af92b7f1bf4885a463788e844126109` |
| 102 | `theorem` | [coeIdeal_pow](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal-pow.md) | 668 | `result-track:a34cf82ba7e1c4e05f1880cf08a0f60c62d588f10ed5ca1b0659011f91dade95` |
| 103 | `theorem` | [coeIdeal_finprod](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/coeideal-finprod.md) | 671 | `result-track:cab379d462eaaa8a0ac0984449c34ee5928fb45dd21d6c13ee9ecf13d2ef0189` |
| 104 | `lemma` | [fg_of_isNoetherianRing](../../../../CommutativeAlgebra/FractionalIdealBasicNamespaced.lean/declarations/fg-of-isnoetherianring.md) | 684 | `result-track:4cbc47027f84c54d19ce72ee63c78fee1cc9f34ec990b5a1bec75a613bca9140` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa50a85663283dd2e64506f12deca675e068e4cf3cd2ccf2cba7192749296e8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantfbe7c34ab934c3342c8a02ee1da0a733646348241c3d8e90cf9fa245d3346885.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantfbe7c34ab934c3342c8a02ee1da0a733646348241c3d8e90cf9fa245d3346885.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
