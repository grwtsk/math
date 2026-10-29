# Verification target: Luroth Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4567a817b4413394977204cac0a659ea01a08673",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4567a817b4413394977204cac0a659ea01a08673`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean.json)

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
| 1 | `abbrev` | [φ](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/anonymous-source-edition-2.md) | 61 | `declaration-track:1078bdab615bf78947b5acea00049e8ce0f6b7837ef1bfc0b854acfd8847dcc0` |
| 2 | `lemma` | [φ_ne_zero](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/ne-zero.md) | 63 | `result-track:557b542e810af87b70e09ec5f4e2062f769cef05e62d9bb40767adc7b7972542` |
| 3 | `lemma` | [φ_monic](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/monic.md) | 66 | `result-track:4c0118020f13e6dab850bfe8ca62d563d0fe4f1acf230de198d59c898f1aba19` |
| 4 | `lemma` | [φ_natDegree](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/natdegree.md) | 69 | `result-track:246f3dbdea81f2902f1bac25c4d6e2eb07b9c198b95ef6039bc6143aaa926580` |
| 5 | `lemma` | [exists_φ_coeff_not_mem](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/exists-coeff-not-mem.md) | 74 | `result-track:5ca7369df46ec03e1a5d276ba74fc5da3d7d343ad50895d476729e1335d2df80` |
| 6 | `def` | [generatorIndex](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/generatorindex.md) | 85 | `declaration-track:ac1785afdc622125612bba4f4bf9defa24659c2a89fdf96e937837d99f66c821` |
| 7 | `def` | [generator](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/generator.md) | 91 | `declaration-track:bc6607858c57b6df0c6940f347c6122380007eb06dc0571f5e2dcb483f57b479` |
| 8 | `lemma` | [generator_eq_zero](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/generator-eq-zero.md) | 94 | `result-track:6901b8839e8168fd841f25b94c18c5b8139e9c6c31909870e54ce8d97a66e46b` |
| 9 | `lemma` | [generator_eq_coeff](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/generator-eq-coeff.md) | 97 | `result-track:4575cb9017b1810203b2494146ed5a29136325995ac78c633fa92327e88cbb58` |
| 10 | `lemma` | [generator_mem](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/generator-mem.md) | 100 | `result-track:5ef69a80eec95ea935c80b0459da5b36a9a5a3f0c602384048401eb5f52387c3` |
| 11 | `lemma` | [generator_spec](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/generator-spec.md) | 107 | `result-track:47331a8312082119a887060dcd9e7b134974bf014991b199e0c6d4234fd3986b` |
| 12 | `lemma` | [generator_ne_C](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/generator-ne-c.md) | 112 | `result-track:b2e2418a299be83f23f084a0356bac46e17689e1b8aca1e79ab7e73a8db80635` |
| 13 | `lemma` | [transcendental_generator](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/transcendental-generator.md) | 115 | `result-track:76161e56e15047d170aebfa99b91044d17fc70c502d6eca794c1cba83d902754` |
| 14 | `lemma` | [generator_ne_zero](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/generator-ne-zero.md) | 118 | `result-track:ed41cf8a6faf164ed36058f5507ce6939f0e27137f5c103c12edb47551b01305` |
| 15 | `lemma` | [adjoin_generator_le](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/adjoin-generator-le.md) | 121 | `result-track:a766fd38d8b708c8a484e0606510006fcd0baec8ef38d21c281d93a32eaacb28` |
| 16 | `abbrev` | [f](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/f.md) | 126 | `declaration-track:927e9ed805cf1beeb6a62eca39a182e8fd9fa03d5554648e54f108ca54553f63` |
| 17 | `abbrev` | [g](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/g.md) | 130 | `declaration-track:9816fdcea9f93c4d42b06c4e2685a083dd845abca0ba47573faeba6a49643842` |
| 18 | `abbrev` | [Φ'](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/anonymous-source-edition-3.md) | 139 | `declaration-track:8587fe8378c6242219ae26719918e3a4730310fb72f15c9971e4ee354acc13bb` |
| 19 | `lemma` | [Φ'_ne_zero](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/ne-zero-source-edition-3.md) | 142 | `result-track:e26a0585703186bb16498cf5505b5caf636f291992cb808916d802adfadccf7c` |
| 20 | `def` | [b](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/b.md) | 147 | `declaration-track:9b543a3a64bf960276150411363364a1a7919c3a6ad27ee58dc6820d099d53c1` |
| 21 | `lemma` | [b_ne_zero](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/b-ne-zero.md) | 151 | `result-track:c41fe03afac1e9553717541e5959960d1f492b45b346e5ce3b76acfa4b58f861` |
| 22 | `lemma` | [Φ'_map](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/map.md) | 155 | `result-track:dba487414e38965e99697c7e01634a6fcf030f97c372b5d828ca66811aa1278c` |
| 23 | `abbrev` | [c](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/c.md) | 162 | `declaration-track:e4c05a022e470a13b2bf05f08ade638b6b00f5a0345264b784dc42f035fbe826` |
| 24 | `lemma` | [c_ne_zero](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/c-ne-zero.md) | 166 | `result-track:4a58c2c4054c1bd964a7b3970f630a91eea0d8b07301cf5c634e355b37e6da77` |
| 25 | `abbrev` | [Φ](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/anonymous-source-edition-4.md) | 174 | `declaration-track:8cc11f5c0b91cdc38c3132a65cd82aabfc80b6ecc6eed1284b154b9532c26f49` |
| 26 | `lemma` | [C_c_mul_φ](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/c-c-mul.md) | 178 | `result-track:43f14c58a6fb9bf0bd1214324d6a4cea00bfc9341c953d3ddd044da9563277ef` |
| 27 | `lemma` | [Φ_natDegree_eq_φ_natDegree](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/natdegree-eq-natdegree.md) | 189 | `result-track:86828d38a05d12ee265fd36050f105017d2c3f3f8cf1be2e3d1740c9827120a1` |
| 28 | `lemma` | [Φ_coeff_φ_natDegree](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/coeff-natdegree-source-edition-2.md) | 194 | `result-track:b46e4d975ae9516949301f45d9a678fe7bf965c5b3bc83f96213ac6fb64b5e85` |
| 29 | `lemma` | [c_denom](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/c-denom.md) | 201 | `result-track:828270c6aea80054d65c9769f70c8312bbe9257f481aac6abc32b8d3bfcfacaa` |
| 30 | `lemma` | [Φ_coeff_φ_natDegree'](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/coeff-natdegree.md) | 205 | `result-track:87554680e3e25cb935b3f8105552c6fd47fc9511be7b01c0d15e5f697e713970` |
| 31 | `lemma` | [Φ_coeff_φ_natDegree_ne_zero](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/coeff-natdegree-ne-zero.md) | 211 | `result-track:be39e9106b0c430b392d7aa32435d054ae5b8fe69312c0911e3bd96d55f36800` |
| 32 | `lemma` | [Φ_coeff_generatorIndex](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/coeff-generatorindex.md) | 216 | `result-track:d310729953cc42dc0aa5243d9abaf4375e4aac5ee19316cb9f374e09270b8ba8` |
| 33 | `lemma` | [Φ_coeff_generatorIndex_ne_zero](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/coeff-generatorindex-ne-zero.md) | 225 | `result-track:e20790f04425d8f6a9bbe034426bfb6785bc3c646f2483cfe0eaa9d173c6d2a9` |
| 34 | `lemma` | [generator_denom_dvd_c_num](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/generator-denom-dvd-c-num.md) | 231 | `result-track:81b1371385f9a8cd46fac0f03f623c0bb863610a8089a6a31830ba3f5cf146a2` |
| 35 | `lemma` | [Φ_ne_zero](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/ne-zero-source-edition-2.md) | 237 | `result-track:b2873e085332b23a8c6e013851f5b1b57cec658e0a4910ca260bd4877041b83a` |
| 36 | `lemma` | [le_Φ_coeff_generatorIndex_natDegree](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/le-coeff-generatorindex-natdegree.md) | 250 | `result-track:e7408736eab276210670e3fc5060f043ed0486ca1e302ad85053fc2042f24da7` |
| 37 | `lemma` | [le_Φ_coeff_natDegree_natDegree](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/le-coeff-natdegree-natdegree.md) | 261 | `result-track:55cbfe0eb269f754d60f9c81163250a800ea975cf20365e32fc6392255aff97d` |
| 38 | `abbrev` | [m](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/m.md) | 268 | `declaration-track:2d065c7b880097bfa32358523e96c2c166f0e5c21952e93b8c3d1620166b1be2` |
| 39 | `lemma` | [m_le_swap_Φ_natDegree](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/m-le-swap-natdegree.md) | 270 | `result-track:4267660ef19c90e41793d07c95b6241c6680d806d3ce8d4c3118a2fbc9d9bc67` |
| 40 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/instance.md) | 287 | `declaration-track:71ff73f47c02dd7f14f6a2aab35a259a59327bf9ab9f7cbb7810e87ceef2374d` |
| 41 | `lemma` | [φ_dvd_generator_minpolyX](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/dvd-generator-minpolyx.md) | 292 | `result-track:962f4459692d08884d0d50de0f4a4ac689c399de2aa2a6cc3d61ee8c795038d7` |
| 42 | `abbrev` | [q](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-source-edition-3.md) | 300 | `declaration-track:4ac57c15d69157d00883a537e07d84a2e7ae58e5fcac52349c30836210a4de20` |
| 43 | `lemma` | [φ_mul_q](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/mul-q.md) | 302 | `result-track:dba813f48716fd64f215d99c9e5b9513f0d0cfbc5b90506bc0fa592df4e5f316` |
| 44 | `lemma` | [q_ne_zero](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-ne-zero.md) | 306 | `result-track:3750479cdac2041760b8fd8378d66a81e2d672617623ccbde56474c16327ac60` |
| 45 | `abbrev` | [Q₀](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-source-edition-4.md) | 319 | `declaration-track:6aa37e5b3702da655d2e30a9a0a28b33721d0f32683585db920b0c4142495da0` |
| 46 | `lemma` | [Q₀_ne_zero](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-ne-zero-source-edition-4.md) | 322 | `result-track:caf6a311561d5f1c511cb8d0a10a256079d4eb5bed8a3645318de10bcec56ff3` |
| 47 | `abbrev` | [θ](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/anonymous.md) | 331 | `declaration-track:03b4f5358055976351ac1da172cfaae4c0dc5db7844a80813ea3d0e2a940daef` |
| 48 | `lemma` | [swap_θ](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/swap.md) | 334 | `result-track:84e88404d93d6315dae0956bf9d212b2cab61eb4668d4be44cf256f83727d334` |
| 49 | `lemma` | [θ_natDegree_le](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/natdegree-le.md) | 339 | `result-track:b0f2f64db35e4f3d7e1f164aa688f14570b809692e90d4322ef6ac2709376005` |
| 50 | `lemma` | [Q₀_mul_Φ](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-mul-source-edition-3.md) | 349 | `result-track:32233fb3fd6768477485fe2c809f5a35016fc6659eca881b6605d02355605764` |
| 51 | `lemma` | [Q₀_mem_lifts](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-mem-lifts.md) | 367 | `result-track:505ea8a5eb52bf5c0d6cd0edd2955bb42d18b788eb3c1a619e3b2705b9cffc07` |
| 52 | `abbrev` | [Q₁](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-source-edition-2.md) | 374 | `declaration-track:4521e8816177a64d05786b68d64e381253a2cb967e67569bf741086f2fe164ce` |
| 53 | `lemma` | [map_Q₁](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/map-q.md) | 376 | `result-track:c49c84472b81a1f0157444cfe7459d12e2bdb2262aaea281dae68a108613efc7` |
| 54 | `lemma` | [Q₁_ne_zero](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-ne-zero-source-edition-3.md) | 379 | `result-track:728ed35b85a44aec091f3e786c1fbfd30f661f6a43296ffbaea6be43df7559b6` |
| 55 | `lemma` | [Q₁_mul_Φ](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-mul-source-edition-4.md) | 385 | `result-track:fc3797892f2eadacd44760f01004f1a0cb8ccc1faa5a9ed7634ca3b1c7f0757b` |
| 56 | `lemma` | [swap_Q₁_natDegree](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/swap-q-natdegree.md) | 390 | `result-track:a5738a70aeb1e2b132319daf242bf70b6bae01e07d3466e483b8bebe43981030` |
| 57 | `abbrev` | [Q₂](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-source-edition-5.md) | 404 | `declaration-track:7e9edf520c2c9dcddc6cd4395379caefb5e61300787f763d737331ed5d54cdce` |
| 58 | `lemma` | [Q₂_map](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-map-source-edition-2.md) | 406 | `result-track:b28a10321f072e1f26a323403a94883746e2458fdd7de272231dc440a564e01c` |
| 59 | `lemma` | [Q₂_ne_zero](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-ne-zero-source-edition-2.md) | 412 | `result-track:6cde8c859e72394b444a84efc5ab301ff2130eb2a0d245a8ea83b1374db99027` |
| 60 | `lemma` | [Q₂_mul_Φ](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-mul.md) | 418 | `result-track:0411cfd3b692155d244411d913508e64fd28bd37331c3edadfbbaa1b133eb95b` |
| 61 | `lemma` | [Q₂_natDegree](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-natdegree.md) | 422 | `result-track:2418313ef74489ec672c8c0b971da23890becce7bafe1c487e6a322bb5f4c19d` |
| 62 | `abbrev` | [Q₃](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q.md) | 464 | `declaration-track:0b2343ddaa60f530746ab517b2f51fe85364e842d2e6358d96f41e814d8a5a1e` |
| 63 | `lemma` | [Q₃_map](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-map.md) | 466 | `result-track:53a1eabc2b8669e5e10bbab105f79ac492d1c316fe30d8532f0a84df2b3ae00c` |
| 64 | `lemma` | [Q₃_mul_Φ](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/q-mul-source-edition-2.md) | 470 | `result-track:0bafcf2ed049dc11ab20980bc82f5264945739ab6c1e977e648ac1fd2842ac08` |
| 65 | `lemma` | [Φ_natDegree_eq_θ_natDegree](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/natdegree-eq-natdegree-source-edition-2.md) | 473 | `result-track:8afd42b79601ca4e1a065e8ba3d96181f1103765df545c7fd602f4269ec6ce34` |
| 66 | `lemma` | [swap_Φ_natDegree_eq_θ_natDegree](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/swap-natdegree-eq-natdegree.md) | 479 | `result-track:f3042224e6e2c6b1f57ce9af06ab3f1ca080bfc2a2f634b5146ac8d970fbbe65` |
| 67 | `theorem` | [eq_adjoin_generator](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/eq-adjoin-generator.md) | 490 | `result-track:0a3ad1c31a70ff42b873a8d63dbc7cfaf18427326df936f372ff78d86f80d5b8` |
| 68 | `def` | [algEquiv](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/algequiv.md) | 504 | `declaration-track:da6729dec8767ac7a43f65d813557e63920b10b364d930c111b3a8248f645ccd` |
| 69 | `lemma` | [algEquiv_algebraMap](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/algequiv-algebramap.md) | 509 | `result-track:e4e25d8a627ec11b1de45c3cde7e4bb71a192d760f1febda1bf715a166127213` |
| 70 | `lemma` | [algEquiv_X](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/algequiv-x.md) | 514 | `result-track:a913501cae66459989566c4a3a5d9b27e90ce6d0d9a10f40292cd0351a6cd932` |
| 71 | `lemma` | [algEquiv_apply](../../../../FieldTheoryAndPolynomials/LurothNamespacedPublic.lean/declarations/algequiv-apply.md) | 517 | `result-track:5ab5f0966e79f4c3b67bb026b2a37aed6ca4834ea7d4f188717516ce04e5c1b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be8062853bdd93c3265d8ad4955da16cc37d4ab650475fcdf62f5fc1d8009d79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
