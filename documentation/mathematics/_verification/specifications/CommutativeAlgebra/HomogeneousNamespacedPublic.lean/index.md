# Verification target: Homogeneous Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cc1e1350ebe2badf24fe982c2f16290f8aeb006",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant6216b9052a79b33236c2952745cb2c9c436a321a93cf59ec183f599d78303ee4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cc1e1350ebe2badf24fe982c2f16290f8aeb006`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant6216b9052a79b33236c2952745cb2c9c436a321a93cf59ec183f599d78303ee4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Homogeneous/Variant6216b9052a79b33236c2952745cb2c9c436a321a93cf59ec183f599d78303ee4.lean.json)

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
| 1 | `def` | [IsHomogeneous](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ishomogeneous.md) | 56 | `declaration-track:c3fc6df60c992c5b1ef63b3061d42f16ca6d8f7840ae40fcc955efb3353c4e5d` |
| 2 | `theorem` | [weightedTotalDegree_singleton](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/weightedtotaldegree-singleton.md) | 64 | `result-track:8409974c2c6ee230edd6322a86b1af81ee3ae40d2cd31fa4d1c403fd7c2cf9ff` |
| 3 | `theorem` | [weightedTotalDegree_one](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/weightedtotaldegree-one.md) | 70 | `result-track:1965b1bce847c73be381bc2547a2603c2967270ca239ec7129362e76279ee89d` |
| 4 | `theorem` | [weightedTotalDegree_piSingle](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/weightedtotaldegree-pisingle.md) | 79 | `result-track:ca6d0afebf949f2e4266fe10a3965ed95e9742522f07b96097e1fa8e2b2e83d4` |
| 5 | `theorem` | [weightedTotalDegree_rename_of_injective](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/weightedtotaldegree-rename-of-injective.md) | 86 | `result-track:55f7781b58be8e4c6d57bf1afdea3d7328f7da620d64fd1d7867c4a448a2d6b7` |
| 6 | `def` | [homogeneousSubmodule](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneoussubmodule.md) | 97 | `declaration-track:21186ea39a074f6e51044560abda13c181a42c3c05e3770cfd853c53614078d1` |
| 7 | `lemma` | [weightedHomogeneousSubmodule_one](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/weightedhomogeneoussubmodule-one.md) | 102 | `result-track:dde6c90763a30cca0077ab2dffad8d1c50e6093148afa0132e6b7e02968636a1` |
| 8 | `theorem` | [mem_homogeneousSubmodule](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/mem-homogeneoussubmodule.md) | 108 | `result-track:51f817dd5c04b1a04132ac9d4a30b697141044afbaf9345425790e024a1362ac` |
| 9 | `theorem` | [homogeneousSubmodule_eq_finsupp_supported](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneoussubmodule-eq-finsupp-supported.md) | 114 | `result-track:abb861d2fbc545117bc3a71298de62af677d28991d7fcf146b563d46d29203f9` |
| 10 | `lemma` | [homogeneousSubmodule_fg](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneoussubmodule-fg.md) | 119 | `result-track:ed96b341be960a5c1f74a95965c4ae27f5328c58f9d0000102907be9ded0d4ba` |
| 11 | `theorem` | [homogeneousSubmodule_mul](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneoussubmodule-mul.md) | 125 | `result-track:2358d3a0d796d3b9724b93a96cdd8eb84dc9f8ca2b624df9cfaf53e052645550` |
| 12 | `lemma` | [homogeneousSubmodule_one_eq_span_X](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneoussubmodule-one-eq-span-x.md) | 129 | `result-track:fee001e9a8c641c559b54fe2383d98b6cbcc1221e220680e638409f5fc21556a` |
| 13 | `theorem` | [isHomogeneous_monomial](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ishomogeneous-monomial.md) | 137 | `result-track:99e243a632079885bd2b0ba9dece134842ca48797c38994811334dc8220e8edd` |
| 14 | `theorem` | [totalDegree_eq_zero_iff](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/totaldegree-eq-zero-iff.md) | 144 | `result-track:a04e56c9ccf1f533de556d1606791b6456a5eb4ceb00c829159492d4a049a3ad` |
| 15 | `theorem` | [totalDegree_zero_iff_isHomogeneous](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/totaldegree-zero-iff-ishomogeneous.md) | 149 | `result-track:98f50e0408b8a2711e5d95dcd4056b2d58b2b669d75b23a98cf318e0dfe180d4` |
| 16 | `lemma` | [homogeneousSubmodule_zero](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneoussubmodule-zero.md) | 157 | `result-track:609f59f48cb2b0c2c979502b456fddc4edc2eb98a0c3c07725e3eec06e382507` |
| 17 | `theorem` | [isHomogeneous_C](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ishomogeneous-c.md) | 165 | `result-track:4f6da6c1ea31cbb829aa1b19a08a5443c136196d3f88d603b117e356cd70a200` |
| 18 | `theorem` | [isHomogeneous_zero](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ishomogeneous-zero.md) | 171 | `result-track:b500b4a833d0b619d91f43f022219384cab3f8316bb7e01556d5e125a06bd2a0` |
| 19 | `theorem` | [isHomogeneous_one](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ishomogeneous-one.md) | 174 | `result-track:87d263a549bff2887cd424b5f7a3a77e0ab35a76730b6183f4c05db1e7fc8da1` |
| 20 | `lemma` | [isHomogeneous_of_isEmpty](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ishomogeneous-of-isempty.md) | 177 | `result-track:a5012b043379534d592ae8113e38ec4e0af9cdc5ca31e81c16fd46816a3fd56f` |
| 21 | `theorem` | [isHomogeneous_X](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ishomogeneous-x.md) | 183 | `result-track:d84fa846bb8309ad286482b6d48e1061de1cd1fd5b2fcc2b3fd2cb0dde8cff71` |
| 22 | `lemma` | [monomial_mem_homogeneousSubmodule_pow_degree](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/monomial-mem-homogeneoussubmodule-pow-degree.md) | 189 | `result-track:854383bac68f36b56f973d678df44fd2970da091f669680178eb5151e6a43ad1` |
| 23 | `lemma` | [homogeneousSubmodule_one_pow](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneoussubmodule-one-pow.md) | 199 | `result-track:a26d7d84832e1cdee8bf80118ff4fc81c5834bd86abbb8e1ccec3d3defbc2257` |
| 24 | `theorem` | [coeff_eq_zero](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/coeff-eq-zero.md) | 221 | `result-track:9e07c5ef85e7c6cfd241a79b9521f36ebf923ab64ab64a21353d82370addfb1b` |
| 25 | `theorem` | [inj_right](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/inj-right.md) | 226 | `result-track:3e774e29fd114391b09d43290ff1ce9535e5c247aa7197deb2770c5d7dbe0f05` |
| 26 | `theorem` | [add](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/add.md) | 230 | `result-track:b996ea9d611f82989c858cd8aae5aeb72924049aa007d344c8be5642741a5b33` |
| 27 | `theorem` | [sum](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/sum.md) | 233 | `result-track:064b80788cfd5c7ae9b23c2324d56c7d54921246da478604547433e42f64b5c1` |
| 28 | `theorem` | [mul](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/mul.md) | 237 | `result-track:f5d6bcdf222ebe360cce391ddcab2285b972ecf76a8fbe9ab5bc21ad27f00ef9` |
| 29 | `theorem` | [prod](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/prod.md) | 240 | `result-track:aff738474f166307f1f51e1757cbeb40287b2a266a93fc696621b9789dbf594f` |
| 30 | `lemma` | [C_mul](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/c-mul.md) | 252 | `result-track:8c2e88ef50bc63c588c9dd22f9efcfcb27c0629bc2f0c3af6b068a056bce1bfb` |
| 31 | `lemma` | [Homogeneous Namespaced Public](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ishomogeneous-c-mul-x.md) | 256 | `result-track:2b1677c99604cc0ffbe1ada79e4f4bd70498fe7bef5cac28a8de9d1051fa6b1d` |
| 32 | `lemma` | [pow](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/pow.md) | 260 | `result-track:9392b57650c6b2a440c6830ac6cc992052e4217bcd6a1837437617f2253907b6` |
| 33 | `lemma` | [Homogeneous Namespaced Public](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ishomogeneous-x-pow.md) | 265 | `result-track:983bcacef028e5d7d8a203a9b010269029fe823f7e8fd63c0dd16ce3702afc46` |
| 34 | `lemma` | [Homogeneous Namespaced Public](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ishomogeneous-c-mul-x-pow.md) | 269 | `result-track:315eca29b83d8eca35caa1fb39c5ebde3485d9884dd8e71fcc4b71c960e818b6` |
| 35 | `lemma` | [eval₂](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/eval.md) | 273 | `result-track:3ccd3572d29f2bcf6f3e376d61277afd8b8117846ca2b522e24d0c4b90c1bf17` |
| 36 | `lemma` | [map](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/map.md) | 287 | `result-track:c20e8eed078d1e6eb461bab848209cd335ad44de74d66462c25438fcb3cf34f6` |
| 37 | `lemma` | [of_map](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/of-map.md) | 291 | `result-track:9df773b640c6292e87c00f96122cdd026d3b4ff0864ef986f8e9ec2930ef1591` |
| 38 | `lemma` | [aeval](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/aeval.md) | 295 | `result-track:accb5b53ef719ccfb5336bef1274b33d59312e98fe9c183a6e35d590e4be9705` |
| 39 | `theorem` | [neg](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/neg.md) | 305 | `result-track:447901d92b43e8784ed3af70b3eaf4084154cd941c48f4d5ef7caeb5d91dcc33` |
| 40 | `theorem` | [sub](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/sub.md) | 308 | `result-track:406fe78aa01556e4f5a712ef422daa3dc2691cb7209cfc44b7690d23aa036ab3` |
| 41 | `lemma` | [totalDegree_le](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/totaldegree-le.md) | 316 | `result-track:b162bc0f6dbe4ff6c3a645e5e80951e8a06b6f00f0a784f5d8110c9e7279f4fd` |
| 42 | `theorem` | [totalDegree](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/totaldegree.md) | 323 | `result-track:60cf8604c6fe144cee3645d7e5a80da17daa4067995adc454b34e04b9290e5a1` |
| 43 | `lemma` | [degree_eq_sum_deg_support](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/degree-eq-sum-deg-support.md) | 332 | `result-track:5c07264c083ae11050c94098c8cd4ab77c9508746b81648ec7ca2730b5dc1235` |
| 44 | `theorem` | [rename_isHomogeneous](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/rename-ishomogeneous.md) | 336 | `result-track:8caec868862faefd49b567582c27bb565940a2c470103cf051dff162907c6249` |
| 45 | `theorem` | [rename_isHomogeneous_iff](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/rename-ishomogeneous-iff.md) | 345 | `result-track:e1e4390759193ce2b825cb3befb36ba82529831dfbb796352c5476b44e41fe34` |
| 46 | `lemma` | [finSuccEquiv_coeff_isHomogeneous](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/finsuccequiv-coeff-ishomogeneous.md) | 353 | `result-track:fe9f654b5a55eb546ce4d50132123b192fbdd21e068ff1b6f88055ba2a9506af` |
| 47 | `lemma` | [coeff_isHomogeneous_of_optionEquivLeft_symm](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/coeff-ishomogeneous-of-optionequivleft-symm.md) | 367 | `result-track:64c6dad72e2922bd36c71c221e1ef274870b14a10c29a041072f1aa85212a8d0` |
| 48 | `lemma` | [exists_eval_ne_zero_of_coeff_finSuccEquiv_ne_zero_aux](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/exists-eval-ne-zero-of-coeff-finsuccequiv-ne-zero-aux.md) | 386 | `result-track:6195139621da75362604ddc8c0ba568e0182524eaa919d1fe2d0fe7ed9dc6367` |
| 49 | `lemma` | [exists_eval_ne_zero_of_totalDegree_le_card_aux](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/exists-eval-ne-zero-of-totaldegree-le-card-aux.md) | 426 | `result-track:b9a3be7d51208e363cecd82b90aaff4683cf4ae140346e68aeaad23187e92606` |
| 50 | `lemma` | [eq_zero_of_forall_eval_eq_zero_of_le_card](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/eq-zero-of-forall-eval-eq-zero-of-le-card.md) | 468 | `result-track:49efd8a5350284d5371f85f643efd6744ab9b3f402dc9259279675dbabc24297` |
| 51 | `lemma` | [funext_of_le_card](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/funext-of-le-card.md) | 483 | `result-track:e5f40e0ddb65a2d33eb6632253007c1cf6e7886308e1fe7fe18e52cf317ed9bb` |
| 52 | `lemma` | [eq_zero_of_forall_eval_eq_zero](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/eq-zero-of-forall-eval-eq-zero.md) | 492 | `result-track:1b01c463c6e82b55a33c0e7bcd0bb842a2a0cddc70a85fb065cbffbf6db78aef` |
| 53 | `lemma` | [funext](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/funext.md) | 499 | `result-track:0856f40766d24f6dd87c935066a37a478f2d2771fabd8b2f32ecd4a5abd517e0` |
| 54 | `instance` | [HomogeneousSubmodule.gcommSemiring](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneoussubmodule-gcommsemiring.md) | 509 | `declaration-track:6d859a279f15c268834e0a8e61066b539bf21f448979903f2cf7c369be112a94` |
| 55 | `def` | [homogeneousComponent](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneouscomponent.md) | 522 | `declaration-track:56b57b24b846fe58288e99faedc8bde65957cb0d6d00c0bad08d7bcf66395e21` |
| 56 | `theorem` | [homogeneousComponent_mem](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneouscomponent-mem.md) | 531 | `result-track:7639635a016a70614da7535ef25af9bd38c20a35ca3b3eb51731e01d61b0e704` |
| 57 | `theorem` | [coeff_homogeneousComponent](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/coeff-homogeneouscomponent.md) | 535 | `result-track:40882484407f2af9e2545ca30cbee11ed97ab3fb1b45babff192db6edb78e968` |
| 58 | `theorem` | [homogeneousComponent_apply](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneouscomponent-apply.md) | 540 | `result-track:901e463cb83c7d758cdb2cf5a0698449d2b0a98187b6709301ec22c7c1db0d38` |
| 59 | `theorem` | [homogeneousComponent_isHomogeneous](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneouscomponent-ishomogeneous.md) | 545 | `result-track:7552551cc5219cbae519a831fcde0b82f0ac118a5b0ea3599b7e83828f67b559` |
| 60 | `theorem` | [homogeneousComponent_zero](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneouscomponent-zero.md) | 549 | `result-track:c82cbb4c184695b07e7f41a90db0044d7121d4e701b05825a0798f8a2990fc27` |
| 61 | `theorem` | [homogeneousComponent_C_mul](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneouscomponent-c-mul.md) | 553 | `result-track:7867ff611a240c529afb3ace1ce7a935c2344f2c479a154ca67b219c1067768b` |
| 62 | `theorem` | [homogeneousComponent_eq_zero'](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneouscomponent-eq-zero-source-edition-2.md) | 557 | `result-track:8dcf7447a55276b431723f6ed915775ef2362068774b3ee06ca255aa9a65d443` |
| 63 | `theorem` | [homogeneousComponent_eq_zero](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneouscomponent-eq-zero.md) | 563 | `result-track:3a2636c740518eef88178153747ababcd86199d1a77a746d2952ce2531d840bc` |
| 64 | `theorem` | [sum_homogeneousComponent](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/sum-homogeneouscomponent.md) | 568 | `result-track:c070f1c664305b1c47735bd0c64a9bac4c7b6c44086dc73d04b9c2bc2cef11db` |
| 65 | `theorem` | [homogeneousComponent_of_mem](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneouscomponent-of-mem.md) | 575 | `result-track:cf344fa4da75480dabcfbe23ef2a125366268b5506777122ee76623fbd0684e6` |
| 66 | `lemma` | [homogeneousComponent_eq_self](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneouscomponent-eq-self.md) | 580 | `result-track:b7ca911ddd240f5b286214549de9197d31c19585c324fc0a5bbc7c700ac03da9` |
| 67 | `lemma` | [support_homogeneousComponent](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/support-homogeneouscomponent.md) | 584 | `result-track:eb26e30b62e1eb4439ed4124e8bde31f1e819bfa9edb3cfd317742573462732e` |
| 68 | `lemma` | [rename_homogeneousComponent](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/rename-homogeneouscomponent.md) | 589 | `result-track:ab88f8c6f9887b1d9a37d8be5db85496857d26a0da17e0ab89a14ae08fff7ee0` |
| 69 | `lemma` | [HomogeneousSubmodule.gradedMonoid](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneoussubmodule-gradedmonoid.md) | 608 | `result-track:ef6642ef3ffd95b99c294a96b4253888c23dd35d43b536914122e8d92e7f37c5` |
| 70 | `abbrev` | [decomposition](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/decomposition.md) | 613 | `declaration-track:5f9ed1191cdfae6bd23517733dcee53d5b1434e2b732bf97be7fc1d10847f7c2` |
| 71 | `abbrev` | [gradedAlgebra](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/gradedalgebra.md) | 623 | `declaration-track:3e5395c002f7363097ee87f9ac34faf678a71f62396141a049ddb4f56e0dfb08` |
| 72 | `theorem` | [decomposition.decompose'_apply](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/decomposition-decompose-apply.md) | 626 | `result-track:10404f07d4663b8878c48416d2f50511e44e207990fa175c4e423d28261472a9` |
| 73 | `theorem` | [decomposition.decompose'_eq](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/decomposition-decompose-eq.md) | 630 | `result-track:d5200011f4d0c185c690b2bd53aacecbff7d25ac07f53d4538e93bb2f1569f68` |
| 74 | `lemma` | [mem_iff_homogeneousComponent_mem](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/mem-iff-homogeneouscomponent-mem.md) | 639 | `result-track:4a6e031bcfbbf7cd266b4dee158a9b8f80175cf93644bfa65ad95b50965dccf4` |
| 75 | `lemma` | [homogeneousComponent_mem_of_mem](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/homogeneouscomponent-mem-of-mem.md) | 644 | `result-track:9e2933ecd0589133ed3b64a2c68ca4aae7b92cda3f4bac188a259e0ba1499534` |
| 76 | `lemma` | [Ideal.span_eq_map_homogeneousSubmodule](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ideal-span-eq-map-homogeneoussubmodule.md) | 655 | `result-track:22d3a8231279544db2eae6e28bb4ee1c01011304d9e46608a6d35daedaefb4e2` |
| 77 | `lemma` | [Ideal.span_pow_eq_map_homogeneousSubmodule](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ideal-span-pow-eq-map-homogeneoussubmodule.md) | 665 | `result-track:88462dc75b003d3527dc53aa7bec3c9129d6d0cea114ba489569c9d62ebc742e` |
| 78 | `lemma` | [Ideal.mem_span_pow_iff_exists_isHomogeneous](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ideal-mem-span-pow-iff-exists-ishomogeneous.md) | 675 | `result-track:ea1cd947844d1e96274d2be967242674ab33521d6f4d30173d4e48aed9f0aaf7` |
| 79 | `lemma` | [Ideal.mem_span_iff_exists_isHomogeneous](../../../../CommutativeAlgebra/HomogeneousNamespacedPublic.lean/declarations/ideal-mem-span-iff-exists-ishomogeneous.md) | 683 | `result-track:a2f4948951e3e0daccf4f9967828c325fe071c1e251f8c18012e0074e7499c66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f65ebb1c48ead08bb7336a4777bd535f5e4772bf067b8d0f7ad50354670d980c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variant6216b9052a79b33236c2952745cb2c9c436a321a93cf59ec183f599d78303ee4.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Homogeneous/Variant6216b9052a79b33236c2952745cb2c9c436a321a93cf59ec183f599d78303ee4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
