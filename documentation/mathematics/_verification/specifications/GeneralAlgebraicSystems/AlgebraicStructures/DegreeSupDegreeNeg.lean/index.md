# Verification target: Degree Sup Degree Neg

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18c8f54990af58cc52db2c3a94bb8661daa3dba2",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant5b4363392b470be002574bf06d827c6501b67fdda4c56b3dd478df80ba0e8bf2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18c8f54990af58cc52db2c3a94bb8661daa3dba2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant5b4363392b470be002574bf06d827c6501b67fdda4c56b3dd478df80ba0e8bf2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Degree/Variant5b4363392b470be002574bf06d827c6501b67fdda4c56b3dd478df80ba0e8bf2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subsemigroup.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Support` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Extr` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sup_support_add_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/sup-support-add-le.md) | 85 | `result-track:faa76ecf1c0ab100eb03f250eebb38aa138a3e2b75e3d21105b7be6671f4fc16` |
| 2 | `theorem` | [le_inf_support_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/le-inf-support-add.md) | 90 | `result-track:19960fe4fd3779958e589fd8e0ff21c0e0068f52179cd62a66c81301ac7e6492` |
| 3 | `theorem` | [sup_support_mul_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/sup-support-mul-le.md) | 100 | `result-track:cc0c052cd526d0d3e6a24e4d19dfdae6b81d6e48905cb2661cc70719d80852ab` |
| 4 | `theorem` | [le_inf_support_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/le-inf-support-mul.md) | 107 | `result-track:75525831433ffe8f7ee33827798e4e0d3b7a5835a075868f8be01d3da56e7024` |
| 5 | `theorem` | [sup_support_list_prod_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/sup-support-list-prod-le.md) | 120 | `result-track:64557f4ec308d3945b014cd68193865d4a9b6f99fd720a2b381a371139414508` |
| 6 | `theorem` | [le_inf_support_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/le-inf-support-list-prod.md) | 132 | `result-track:e023524d4c69359ff8e41a671a4a4b29c0624dafc8595d5b64ed7b3b3e2c7b0b` |
| 7 | `theorem` | [sup_support_pow_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/sup-support-pow-le.md) | 142 | `result-track:16c2d1581af20b035c70e18299fbf5294eb1c8a74e1325a6b3a38ac3884bb8df` |
| 8 | `theorem` | [le_inf_support_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/le-inf-support-pow.md) | 148 | `result-track:51491d2b73d378be8f5ef7787314ce959ba9cdf60ffd245af869906f4fcc56e4` |
| 9 | `theorem` | [sup_support_multiset_prod_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/sup-support-multiset-prod-le.md) | 165 | `result-track:c802a138410acc2621f5eb7bced3cc835a6e363d7b45b3a1cb4b8b90c829c425` |
| 10 | `theorem` | [le_inf_support_multiset_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/le-inf-support-multiset-prod.md) | 172 | `result-track:c4ecdd65fcf00bcb1fdbbc099f0ce45344707b4f2a3041ec991e3839a0dc23fe` |
| 11 | `theorem` | [sup_support_finset_prod_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/sup-support-finset-prod-le.md) | 181 | `result-track:f67408c9b69bce53b4c72d8d78316869f7c04db7d2d6c04e9df384400a019bcc` |
| 12 | `theorem` | [le_inf_support_finset_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/le-inf-support-finset-prod.md) | 186 | `result-track:a7ea1c9c506ea511f3c53d658333995bb496ca3eaebc18894c053d50b9e7ad7d` |
| 13 | `abbrev` | [supDegree](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree.md) | 223 | `declaration-track:434ac6cff6635f41774848e4311f65a6c27fcd3e8a935b5debe7589b0f2971d6` |
| 14 | `theorem` | [supDegree_add_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-add-le.md) | 228 | `result-track:3094c4440d77eac4b42d2d2d39364304cd99548e941f7c202a516005a623a7c3` |
| 15 | `theorem` | [supDegree_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-neg.md) | 233 | `result-track:ee340dca399621bc022102684ed45e86930ae2b46b3ee5f93f81a7dc342adc74` |
| 16 | `theorem` | [supDegree_sub_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-sub-le.md) | 237 | `result-track:a7768a091b2bc5dca51da3b656f10fd33ebabdff115756ff64e0ce3f4cce8178` |
| 17 | `theorem` | [supDegree_sum_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-sum-le.md) | 241 | `result-track:e2e8fdc8fe67ca1d193c16b096aa7bc892598f2bb2ae7ec5fb86501bd456aeac` |
| 18 | `theorem` | [supDegree_single_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-single-ne-zero.md) | 246 | `result-track:9098e7b9b046371e3c99d3362cafb0d84355b7bcc23ebe5b7ca3c79a499d15f9` |
| 19 | `theorem` | [supDegree_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-single.md) | 251 | `result-track:4ec545b6a1f806fbbd5163d3058aa8d05f1d9f1d837bad4e96d61259c8a5d1cb` |
| 20 | `theorem` | [apply_eq_zero_of_not_le_supDegree](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/apply-eq-zero-of-not-le-supdegree.md) | 255 | `result-track:54e7a571dfe6bee90b98055a283dd52bfb34287339150c02118668bf92e37ad9` |
| 21 | `theorem` | [supDegree_withBot_some_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-withbot-some-comp.md) | 260 | `result-track:9007213182671f3b764056440bf60adc03bd9147f82556c311cd381bd1897e21` |
| 22 | `theorem` | [supDegree_eq_of_isMaxOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-eq-of-ismaxon.md) | 265 | `result-track:2699392fd739ab5a7b21c1423d195c2c3a2329b77d036745f23adcd58d59ab70` |
| 23 | `theorem` | [supDegree_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-zero.md) | 272 | `result-track:4defab4d8bf5b858107417f28b2b87e8bd50e256bf53802da852ebbc7f8178a7` |
| 24 | `theorem` | [ne_zero_of_supDegree_ne_bot](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/ne-zero-of-supdegree-ne-bot.md) | 274 | `result-track:84769309d5524a335b7a935eaf77960075e299d61f6e26aad58159cdef3a8247` |
| 25 | `theorem` | [ne_zero_of_not_supDegree_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/ne-zero-of-not-supdegree-le.md) | 276 | `result-track:9ed2b373df0c1a8d7673c0123abc0fdc0217fa3d6893c63409087be5b16ef7c8` |
| 26 | `theorem` | [supDegree_eq_of_max](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-eq-of-max.md) | 279 | `result-track:53e4190c2a21e1ace62788dd3c679b1bae55f5e6d65c0d96a8003de7f1f24f1a` |
| 27 | `theorem` | [supDegree_mul_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-mul-le.md) | 285 | `result-track:bc263fa7a1beb924aa28120e40935eed9823d45c9e7556fe4dd5b844fdc704e0` |
| 28 | `theorem` | [supDegree_prod_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-prod-le.md) | 290 | `result-track:232a4217b01e940916242d24f8ada04007df2cb6416b744602f51b43d26de79e` |
| 29 | `theorem` | [apply_add_of_supDegree_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/apply-add-of-supdegree-le.md) | 304 | `result-track:325eb05bc03d2778258da589623ac401bd6a306390854ea9d6e82e951df1c602` |
| 30 | `def` | [leadingCoeff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/leadingcoeff.md) | 333 | `declaration-track:65c75cc0f84abcd6922cb7f4221a3d5655e371dfcd5ee57fffcaafc98582939a` |
| 31 | `def` | [Monic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/monic.md) | 337 | `declaration-track:26025921ca40b8c2636f81e38606fdec600e66273f02219ebe98e33c2e0f3171` |
| 32 | `theorem` | [leadingCoeff_single](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/leadingcoeff-single.md) | 343 | `result-track:4997d87f56b34b171ac13f1c2b6dd82453ebce8577fdb9ad38c7d312018d67ee` |
| 33 | `theorem` | [leadingCoeff_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/leadingcoeff-zero.md) | 352 | `result-track:42a91ad944280d5280d86127306638dfefde75d674df0d27eb00b330a4dda9c2` |
| 34 | `lemma` | [Monic.ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/monic-ne-zero.md) | 354 | `result-track:827dfc20393a7a3dba51992d3a96cea87c4ed1602432e48111a829a53632f775` |
| 35 | `theorem` | [monic_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/monic-one.md) | 358 | `result-track:6cb96bc8579445a65292ae458703207679e6778dd75665a8c42943dcf9347b20` |
| 36 | `lemma` | [exists_supDegree_mem_support](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/exists-supdegree-mem-support.md) | 362 | `result-track:a7a4bb92b83b12507d39a09c6a1cdae3e779bd651dc3154a4ee39ce779d0fd0e` |
| 37 | `lemma` | [supDegree_mem_range](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-mem-range.md) | 366 | `result-track:e3fd306b56057dd49dbff905c9f30fced29564309b7ac25e87d92626341db9f9` |
| 38 | `lemma` | [supDegree_sum_lt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-sum-lt.md) | 371 | `result-track:df70a42ebd20780d9aa9f162c15a6010d2f5a7ea07c98a387e61394afefa66b7` |
| 39 | `lemma` | [supDegree_add_eq_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-add-eq-left.md) | 379 | `result-track:54b4a2bd67f3f0085611602242209576414ca8952619496252fa2ad4268a0863` |
| 40 | `lemma` | [supDegree_add_eq_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-add-eq-right.md) | 388 | `result-track:0a3b5bfe86fcc634a39f2d5f3afe264243f0af0bbf7913f0e2fe90126f870334` |
| 41 | `lemma` | [leadingCoeff_add_eq_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/leadingcoeff-add-eq-left.md) | 392 | `result-track:31ab23f8e66ace3c642b1bdf3fea58592429a62eaa5ecee2e532e81068837944` |
| 42 | `lemma` | [leadingCoeff_add_eq_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/leadingcoeff-add-eq-right.md) | 399 | `result-track:be4a60fa167423e8ec4cd5b118e129a136306d0896bb88a86e3813a8a3d54be3` |
| 43 | `lemma` | [supDegree_mem_support](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-mem-support.md) | 403 | `result-track:5d1c75fd7830d4aff45d6cbe4695b2849ba8afa564ecd8ff6ab89ad41817cb16` |
| 44 | `lemma` | [leadingCoeff_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/leadingcoeff-eq-zero.md) | 409 | `result-track:6b7ad70bc7a6837259dd6ea1e84a5d85b118ee59e41d62961d089dd1b5a4601e` |
| 45 | `lemma` | [leadingCoeff_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/leadingcoeff-ne-zero.md) | 414 | `result-track:552e98fb27529adc7d68866ce1df12fea074cd755eff86c19e606d271b60371d` |
| 46 | `lemma` | [supDegree_sub_lt_of_leadingCoeff_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-sub-lt-of-leadingcoeff-eq.md) | 417 | `result-track:4e1d3fecef213762f33b4d7394c5212df5a2425302c5ffca025adcc16896d577` |
| 47 | `lemma` | [supDegree_leadingCoeff_sum_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-leadingcoeff-sum-eq.md) | 427 | `result-track:3110164e6d9617dbcb524a27c6305a01e0e8cde168524b5de1394371323f9f86` |
| 48 | `lemma` | [sum_ne_zero_of_injOn_supDegree'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/sum-ne-zero-of-injon-supdegree-source-edition-2.md) | 441 | `result-track:eaf4f99c2754162bb2b84ca64654c3625806e07d91f509459ca1c2382ff1842c` |
| 49 | `lemma` | [sum_ne_zero_of_injOn_supDegree](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/sum-ne-zero-of-injon-supdegree.md) | 456 | `result-track:0fc6bdd64a4802b3c581e10705da016ffe86cb3fa248c246d168b734c7310bf7` |
| 50 | `lemma` | [apply_supDegree_add_supDegree](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/apply-supdegree-add-supdegree.md) | 465 | `result-track:3ea40912882e3e181b3cf2de47bb396e856145aa3e58ec5ff4f3f5a9a79dfb87` |
| 51 | `lemma` | [supDegree_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/supdegree-mul.md) | 476 | `result-track:81647326fe3bd40e77fabb83b049b1028d7da5bd1014ed9f9a3ab3ea77a2b2f5` |
| 52 | `lemma` | [Monic.supDegree_mul_of_ne_zero_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/monic-supdegree-mul-of-ne-zero-left.md) | 491 | `result-track:8348c97401658c8552b786f7e9b9eade36395487808bcb444994e05702081ae1` |
| 53 | `lemma` | [Monic.supDegree_mul_of_ne_zero_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/monic-supdegree-mul-of-ne-zero-right.md) | 499 | `result-track:bf1b4bd12f660900dafcb598c66e55e141bf65e04f173ac1a3407bef7daef398` |
| 54 | `lemma` | [Monic.supDegree_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/monic-supdegree-mul.md) | 507 | `result-track:14b77f1a860d079240ddd6459c18e1bbdf8d3efa317a86257a50bd2acccb899f` |
| 55 | `lemma` | [leadingCoeff_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/leadingcoeff-mul.md) | 515 | `result-track:fe2f3a69cfb68db4f86d4a82ea49a9848f0e200382b2c8e6029924c335b69e86` |
| 56 | `lemma` | [Monic.leadingCoeff_mul_eq_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/monic-leadingcoeff-mul-eq-left.md) | 525 | `result-track:f06c6b1bdd7a2c03b967e16f7712d7b12acec5d194e6f3392b783f5c0b780b78` |
| 57 | `lemma` | [Monic.leadingCoeff_mul_eq_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/monic-leadingcoeff-mul-eq-right.md) | 533 | `result-track:717996004d21cfc38fdbc14591ea3dfc0d9653484d2c8ce89be45a40828aabca` |
| 58 | `lemma` | [Monic.mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/monic-mul.md) | 541 | `result-track:b495aca798ea28a4508f491ad818a308bd80233d9a53b62ecf24b7e11f893857` |
| 59 | `lemma` | [Monic.pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/monic-pow.md) | 552 | `result-track:1eb0c7dc86e4ddcc5c81a3951e012e9fff9eaab6f46cfffe9a86d59077a9dd58` |
| 60 | `lemma` | [Monic.supDegree_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/monic-supdegree-pow.md) | 559 | `result-track:31a226ad8d8b5402e986bb0f7c4b99aab4504a79b5ed754b8e479a143fc59598` |
| 61 | `abbrev` | [infDegree](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/infdegree.md) | 583 | `declaration-track:29699286a37320280d97ceb5b7c4975674fb3d0461b47994d55e382f0b4d15c4` |
| 62 | `theorem` | [le_infDegree_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/le-infdegree-add.md) | 586 | `result-track:d1405102ed59608fb1084d051cda41691c91aba5afab137b75e204b2b5a0e70d` |
| 63 | `theorem` | [infDegree_withTop_some_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/infdegree-withtop-some-comp.md) | 591 | `result-track:6e7701640b91c2d6a7ae180b4c0f8cf5d40594ecd3af81a5290fc127a5529112` |
| 64 | `theorem` | [le_infDegree_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DegreeSupDegreeNeg.lean/declarations/le-infdegree-mul.md) | 596 | `result-track:0381b19d9aaa6b3758ded6ecd4a42e5aaf45df17e4839bc5a3543360d3a68948` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5dc02810ba32f397c5eb42ebc03a8afe56ac06d38db00c8557f0bf3c4de7f8db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant5b4363392b470be002574bf06d827c6501b67fdda4c56b3dd478df80ba0e8bf2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Degree/Variant5b4363392b470be002574bf06d827c6501b67fdda4c56b3dd478df80ba0e8bf2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
