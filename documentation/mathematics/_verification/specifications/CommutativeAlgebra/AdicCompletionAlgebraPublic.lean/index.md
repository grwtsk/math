# Verification target: Adic Completion Algebra Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bcc672bd83bdf455bcf785a7c57df8a01a68f0b",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Algebra/Variant9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bcc672bd83bdf455bcf785a7c57df8a01a68f0b`.

Source path: `GRWTSK/Algebra/Algebra/Variant9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Algebra/Variant9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean.json)

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
| 1 | `theorem` | [transitionMap_ideal_mk](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/transitionmap-ideal-mk.md) | 48 | `result-track:c5eb8b248050708e72b51bae2c82b517706240eccd560f7201dfbab31d302d64` |
| 2 | `theorem` | [transitionMap_map_one](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/transitionmap-map-one.md) | 54 | `result-track:78657942f5efe3ee6c073e2264e20b6bd74d48be158e5e75d032ebc3335767f9` |
| 3 | `theorem` | [transitionMap_map_mul](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/transitionmap-map-mul.md) | 58 | `result-track:c4f1dd76a0c71e9621b9ed1449898b4cb9a5ab44bde28373a60c936cb07fbc88` |
| 4 | `theorem` | [transitionMap_map_pow](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/transitionmap-map-pow.md) | 63 | `result-track:c439a277b28271312fc9a1b9585ec675def20570907f129b4748664d6f5af5b1` |
| 5 | `def` | [transitionMapₐ](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/transitionmap.md) | 68 | `declaration-track:ec2a74832c19abc3353ea5b4ac7c7721b72442dd4a58a33cb69808f0c3b6e952` |
| 6 | `def` | [subalgebra](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/subalgebra.md) | 73 | `declaration-track:82075bc3261ad6fdac80cfb5a86adc236c6ebc0dfe18576e968975c207508d27` |
| 7 | `def` | [subring](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/subring.md) | 78 | `declaration-track:7fc031ea4085850c90b40d82d004a56a138ae2774b4e555fdd77967fdbdbdcb1` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-12.md) | 81 | `declaration-track:4bea37be08a1d41551d80c1f6b10015065f371210f67fa42f453b6ccead364a1` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-9.md) | 85 | `declaration-track:39569ed5313e298b66ee98d475c8716129e3bb705bf813ede57df0ff5210437a` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-3.md) | 88 | `declaration-track:0bdfa1192e032a14063f8825d7e4b7852b100b02b1ee0b0a6baea83ffbdc17f8` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-8.md) | 91 | `declaration-track:36944ba32922fa3e2576c13ce9935fda3ea8a436418634d2c122db96a327ba98` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-2.md) | 94 | `declaration-track:09bb4a0f9c4fd8a873b5647c99b50845e8a8c639659cf19c90ad46ec11a762f1` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-10.md) | 97 | `declaration-track:3ebc4a66b06ea92b3a86ad6efc57d3817f840e99ddfede77d097a7062a4170a7` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-7.md) | 103 | `declaration-track:2545d28507f6dfb79a25a5eeee9b54b41c2730d0fb8241aa6f9ac8a506ab6faa` |
| 15 | `theorem` | [algebraMap_apply](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/algebramap-apply.md) | 117 | `result-track:7ca9bc5aaa35fb8bd0ebfe3eaa96b5c9a525ebc9928c70c3ca684307339867cb` |
| 16 | `theorem` | [val_one](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/val-one.md) | 121 | `result-track:ff6d921baf598b85478efbbc95f54beb4bd7dbd215b244ff29e54b0fdf9d39cb` |
| 17 | `theorem` | [val_mul](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/val-mul.md) | 125 | `result-track:979e5b6f12cc7cf49c6e4b918668988464c6d10c7f5c1f3799b345e8e6324057` |
| 18 | `def` | [evalₐ](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/eval.md) | 132 | `declaration-track:6d178ff9754d3edd34b1194eb7a1d4e3ddb32cede85d0428c0585cc24a3e2e3f` |
| 19 | `theorem` | [factor_evalₐ_eq_eval](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/factor-eval-eq-eval.md) | 139 | `result-track:634786a6b74b0a101f24218df35f619c15c203c6d344bf07e7d9a1b9ad160ecc` |
| 20 | `theorem` | [factor_eval_eq_evalₐ](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/factor-eval-eq-eval-source-edition-2.md) | 144 | `result-track:cbe2324b79cb818ab5cff9b5ac162cd1a6557b2ce879a610c34d7b6f0faa6058` |
| 21 | `theorem` | [evalₐ_of](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/eval-of.md) | 153 | `result-track:53eb52c735a277402eeeb3acc66c2578524e35a54c469430e03981d2104d4e86` |
| 22 | `theorem` | [surjective_evalₐ](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/surjective-eval.md) | 157 | `result-track:caef368aab9a97a0603a27ddbeddbd3351cd3a32f677dfcca1755e4afa505fea` |
| 23 | `theorem` | [evalₐ_mk](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/eval-mk-source-edition-2.md) | 166 | `result-track:ffde94416374783418534346ca63fbf0e4acc59fefa1e927d6cda4f36dca0d75` |
| 24 | `lemma` | [ext_evalₐ](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/ext-eval.md) | 171 | `result-track:b2ed309f154f95daa2d84f3d1b10eec06376a30f905e9ee082f4e9cb4693a92b` |
| 25 | `def` | [evalOneₐ](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/evalone.md) | 177 | `declaration-track:ed066346e83c07964d91b104f46c4f719ac3e22454acb86d9205e43d95f4cf83` |
| 26 | `lemma` | [evalOneₐ_of](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/evalone-of.md) | 181 | `result-track:41940b17c5cce16a0c271a81223168f329a8f8c30726e8b0d05b44918c7c7d49` |
| 27 | `lemma` | [factorₐ_evalₐ_one](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/factor-eval-one.md) | 184 | `result-track:16a521502bb3cbe01907be2047f510af34ad22606adbcf00f0f89e3fd4d25a4a` |
| 28 | `lemma` | [evalOneₐ_comp_algebraMap_eq_mk](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/evalone-comp-algebramap-eq-mk.md) | 188 | `result-track:37c44169b3bbf52c76933dd5e0288c084f075e6daae555507cf960f4cb3616bc` |
| 29 | `lemma` | [evalOneₐ_surjective](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/evalone-surjective.md) | 193 | `result-track:9e9c9ac838dfd3e3f9595d24f4ee188e39fcf590735fa07d1e75c7af1f54a83c` |
| 30 | `def` | [AdicCauchySequence.subalgebra](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/adiccauchysequence-subalgebra.md) | 199 | `declaration-track:1bb9a690a6fa38c6451de63b350f6e51bd74e96b6f8265d7c6d1cc466a1e1b16` |
| 31 | `def` | [AdicCauchySequence.subring](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/adiccauchysequence-subring.md) | 207 | `declaration-track:03db39bcab287405ef5c9fffda56b604669c644aaa4f2e11fa79b492c0552114` |
| 32 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-18.md) | 210 | `declaration-track:f8d1410f23b5bb629e81b3007f26388802757350e22421fa6582815551b4f675` |
| 33 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance.md) | 213 | `declaration-track:06cbe26d66c6456b96c4787a6448379e6db929e3860e450c0f248574f48847e8` |
| 34 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-4.md) | 216 | `declaration-track:0c6d983d15c784bdacd84d5f5fb8aa5c587fcee76df38873e046f8f6ab1d87f8` |
| 35 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-17.md) | 219 | `declaration-track:bb6780c8366cc2500ac803ee921229b7c1ff599ee752b8e961144522a15bf091` |
| 36 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-14.md) | 222 | `declaration-track:8deeda49300b6b0d76009e62d89b57ca11867a026e666958672361e474049092` |
| 37 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-13.md) | 225 | `declaration-track:846e885db3cbcd44d0e5d08b38a714a1a753911d2812ad8fc47a86f22aa4c544` |
| 38 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-16.md) | 231 | `declaration-track:aa53d14495a21eccbba9a3f2d5cb51793e562ab7acaf87d0255b92cc12418577` |
| 39 | `theorem` | [one_apply](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/one-apply.md) | 242 | `result-track:d021f9aa40844f5bf98746ca39186b545ae246545ec848f750e5eb8dc363a40d` |
| 40 | `theorem` | [mul_apply](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/mul-apply.md) | 246 | `result-track:a50e87d0bb858639415e85285c725cd08203d0a462262f920393be2172e1ef6b` |
| 41 | `def` | [mkₐ](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/mk.md) | 251 | `declaration-track:112ad5f81c01ae776d357277c1c1dd4d066994fa76941ac465350cb99255e8fb` |
| 42 | `theorem` | [evalₐ_mkₐ](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/eval-mk.md) | 256 | `result-track:82a10ae9372665720e50b269e4cc56591772c3b3d85e22c3dce1fad3bee456ba` |
| 43 | `theorem` | [Ideal.mk_eq_mk](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/ideal-mk-eq-mk.md) | 260 | `result-track:6e308c6ab71c333886306c10eb26012943652c8797b808e7e941fd37b61b3ab7` |
| 44 | `theorem` | [smul_mk](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/smul-mk.md) | 266 | `result-track:dde54996c9cd74709d2c616e6040bb8abad2cd758fd44d5f9433e3db905f8437` |
| 45 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-6.md) | 276 | `declaration-track:2468a6e60477df02848d12c6d8e9a85d2cf24574ab18c25843be8194a0784bf3` |
| 46 | `theorem` | [mk_smul_mk](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/mk-smul-mk.md) | 287 | `result-track:d2295e0415af721126873391e7eeab3ade24a782e4ea5f6a02b5d95075e8da39` |
| 47 | `theorem` | [val_smul_eq_evalₐ_smul](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/val-smul-eq-eval-smul.md) | 292 | `result-track:7a007940b02c50811d1470ef545b1b238e580556f02093ff43706530f5cfc056` |
| 48 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-11.md) | 296 | `declaration-track:43710ad813255fc296855b08ca47251e24a6aef373e34de79db1c4bb023869b0` |
| 49 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-5.md) | 300 | `declaration-track:1219ac16a1daaaf69d025221027aba4b7bbb91c52baf06bc98d853566115c524` |
| 50 | `instance` | [smul](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/smul.md) | 307 | `declaration-track:744797c27d95e9c85f737878609a617ef3a4d9563b78f05647ac5d84a5a826cd` |
| 51 | `theorem` | [smul_eval](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/smul-eval.md) | 319 | `result-track:d2cea05dd6a744ec655cc13b9f78ba4a01a269e1db8d18292bde4f246662c8f1` |
| 52 | `instance` | [module](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/module.md) | 324 | `declaration-track:a68fc05768b45c07229209f0a7255077f4e657155ef806fbd30c79234cf6a459` |
| 53 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/instance-source-edition-15.md) | 336 | `declaration-track:9ff066de318464cc681c5c53de7346ad64dababe11f1c51f93a770ecf88121e1` |
| 54 | `example` | [(anonymous)](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/example.md) | 344 | `declaration-track:6e8fba95563c4d38545ccad9f696ca08550c388ea5bd1d2881584e17a26fa863` |
| 55 | `def` | [liftRingHom](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/liftringhom.md) | 358 | `declaration-track:28a28b01a2610322fb6954c93da03b6139c058bbd1163181a54581fe684b1092` |
| 56 | `theorem` | [factor_eval_liftRingHom](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/factor-eval-liftringhom.md) | 380 | `result-track:0621f7c5f43a8bd66d06fa85e2114b83e0135bbc3297c28edbea2b626b6fff0f` |
| 57 | `theorem` | [evalₐ_liftRingHom](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/eval-liftringhom.md) | 386 | `result-track:70c7f29642aa67bbf2a64f28aad776a1225c99e540e30dcb3cc75b909a7e1495` |
| 58 | `theorem` | [evalₐ_comp_liftRingHom](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/eval-comp-liftringhom.md) | 392 | `result-track:c5f3fdb916307b6cdb1f4c0e062e783510fbb6d1e4487091901a11e42c34850e` |
| 59 | `def` | [liftAlgHom](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/liftalghom.md) | 401 | `declaration-track:48b81a0ea8f0cc0f2a62a93dd004c463949b62f171e7200b0e7320d416b33cf5` |
| 60 | `lemma` | [evalₐ_liftAlgHom](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/eval-liftalghom.md) | 414 | `result-track:5d5258f2f30b5b5cc83f97c7b29372e2a0f7bc8fc7d2901d905f0a640e7a6d94` |
| 61 | `lemma` | [evalOneₐ_liftAlgHom](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/evalone-liftalghom.md) | 419 | `result-track:62f65a5694e0f0876378e0b51dda0b1922b8702827cbbeec00eb7008b6cad00a` |
| 62 | `def` | [ofAlgEquiv](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/ofalgequiv.md) | 431 | `declaration-track:25694a87987f8a7fef05d2293ff7bbeda8d65ae86368e0f7e66dee32682defd1` |
| 63 | `theorem` | [ofAlgEquiv_apply](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/ofalgequiv-apply.md) | 437 | `result-track:2bccea1461d14d3e12e442c71e91b2be311509f42086a6113d9207b63591a3cc` |
| 64 | `theorem` | [of_ofAlgEquiv_symm](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/of-ofalgequiv-symm.md) | 441 | `result-track:c0dde5a19b717c3ad5de9f72554e2f3cfa9f40e3ec21f8e2f3227b53088fdaa4` |
| 65 | `theorem` | [ofAlgEquiv_symm_of](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/ofalgequiv-symm-of.md) | 446 | `result-track:4f51869be60788ecfca617af8de291ddeb6f36b5a085f5fc1826b3ed731532f6` |
| 66 | `theorem` | [mk_smul_top_ofAlgEquiv_symm](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/mk-smul-top-ofalgequiv-symm.md) | 450 | `result-track:0de7c73633990769f804928f8242c0e16e1fab66fd2c9145ebd7af65e9766872` |
| 67 | `theorem` | [mk_ofAlgEquiv_symm](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/mk-ofalgequiv-symm.md) | 457 | `result-track:ddab0eb2d3cc8c1e5fbb2002539b5635d32aaf569e7dce3c0af90d47b7f480c5` |
| 68 | `lemma` | [mk_ofAlgEquiv_symm_eq_evalOneₐ](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/mk-ofalgequiv-symm-eq-evalone.md) | 464 | `result-track:1f129a9f92ba980ddaa0be10eb1a4a883798133d2e0afb8314f0bad89a51602a` |
| 69 | `def` | [kerProj](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/kerproj.md) | 476 | `declaration-track:2d68628f6b4ee84de5aae037ce0ededd1cf53d97974aa14d37a166d5540c1873` |
| 70 | `lemma` | [kerProj_of](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/kerproj-of.md) | 482 | `result-track:9bd5a2eb916cc70b6b20b2186d60ae64cc6bbae1d746b8a0363c981ec6e085f8` |
| 71 | `lemma` | [kerProj_surjective](../../../../CommutativeAlgebra/AdicCompletionAlgebraPublic.lean/declarations/kerproj-surjective.md) | 486 | `result-track:66a5ef087783987d6457caa524accbad7a63cecdfb4fc2dd71ca4d0a31c178ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2fada5dadce7f93933e8fdb9e869adb59deaceeb986ad55691a2008e99b79197 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Algebra/Variant9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean","GRWTSK/_verification/specifications/Algebra/Algebra/Variant9d503f44dd4c990becfefc79af9f1d6ac369d4e50d9fa53e94b7a36856cf2c54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
