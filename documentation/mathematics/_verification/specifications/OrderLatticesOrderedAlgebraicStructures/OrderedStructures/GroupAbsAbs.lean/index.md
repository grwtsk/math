# Verification target: Group Abs Abs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "018135c67a63f3e143642dd02c3b29c916da8089",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Abs/Variantfb053ba0a4c9be2656a402b716d449adb0a27b91662f1581b9c2f90b7a32d8c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `018135c67a63f3e143642dd02c3b29c916da8089`.

Source path: `GRWTSK/Algebra/Abs/Variantfb053ba0a4c9be2656a402b716d449adb0a27b91662f1581b9c2f90b7a32d8c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Abs/Variantfb053ba0a4c9be2656a402b716d449adb0a27b91662f1581b9c2f90b7a32d8c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.OrderIso` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/instance.md) | 28 | `declaration-track:74626dc6344a75d9144d175bc3eaec6c990f2599ba8b7a0d481eedfe22abfe84` |
| 2 | `theorem` | [abs_eq_sup_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-eq-sup-inv.md) | 34 | `result-track:ee4e50d956248e603f138a5c4f90ccd37a1fe643719ba319284ce715f1ba4ac5` |
| 3 | `theorem` | [abs_eq_max_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-eq-max-neg.md) | 41 | `result-track:a5ae34b8b5b89090cba0cc6588e179aabdf0890f184059d99260913183a02143` |
| 4 | `theorem` | [abs_choice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-choice.md) | 45 | `result-track:03f3033178679c69c08608c5db14c38c0d8e42b5a5e9f11519eab95ded3b0cec` |
| 5 | `theorem` | [abs_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-le-source-edition-2.md) | 49 | `result-track:7290d3dd196f5d6e72748a1d79b2c3f473be05c5c88703cd84296b97bf43ce33` |
| 6 | `theorem` | [le_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/le-abs-source-edition-2.md) | 53 | `result-track:7b15175565f64f9fa3841d36d34dd3e472e08fa01cbd5c97aa9d6f9209f17847` |
| 7 | `theorem` | [le_abs_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/le-abs-self.md) | 57 | `result-track:302acdd8d964b8502ff0133d19e910ad717d26b06ea805640d325710cc73b0c1` |
| 8 | `theorem` | [neg_le_abs_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/neg-le-abs-self.md) | 61 | `result-track:9dd2148265b12930978cff5c382a8499d4c978884fd142b2d6dd68a0b99c0af1` |
| 9 | `theorem` | [lt_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/lt-abs.md) | 65 | `result-track:e002eee7f0655244f6472e7456f8f0f38067faac6ac12fbe0a846031e75269df` |
| 10 | `theorem` | [abs_le_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-le-abs.md) | 69 | `result-track:affefecba1362f8b53af7bf12a687794b24804fba58c8b202be8ad46f254f970` |
| 11 | `theorem` | [abs_by_cases](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-by-cases.md) | 73 | `result-track:0c57d283cd14d7805f65e65ac762683e4e4102359ca4a0d56f6d50394e0354bd` |
| 12 | `theorem` | [abs_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-neg.md) | 84 | `result-track:bedb4f6d73a75d7a21ab1da2586be819d14900880fb128c32cb564f91c0bdf1e` |
| 13 | `theorem` | [eq_or_eq_neg_of_abs_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/eq-or-eq-neg-of-abs-eq.md) | 87 | `result-track:ba5e0006fece00065f0c2503cd7b357be18095f9d39af4ff447dd10fbd163385` |
| 14 | `theorem` | [abs_eq_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-eq-abs.md) | 91 | `result-track:3454b410dc622f748a4a6cedd73dc4cc8b8a7eafc32f9688fb5be3497b1e24ac` |
| 15 | `theorem` | [abs_sub_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-sub-comm.md) | 99 | `result-track:e7184bf2637aa4b8979f145fbcd4bc7cced3d79fad8a823632e6660379e5ae1b` |
| 16 | `theorem` | [abs_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-of-nonneg.md) | 107 | `result-track:afdf82cb8921dd403bcc95dd5ce9a7fc7d9b2c5fdb0f58374e8be6f407a38bd6` |
| 17 | `theorem` | [abs_of_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-of-pos.md) | 111 | `result-track:c7cbd2e5af1c4fb67f8c0b2f910c18202f3c1dda25d4685e37bf7b5de8a3640d` |
| 18 | `theorem` | [abs_of_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-of-nonpos.md) | 115 | `result-track:5ef5d552efbd5ca239a3f4032520a0c9b8aeb59c30691d23c4e0e8eb44f463fd` |
| 19 | `theorem` | [abs_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-of-neg.md) | 119 | `result-track:be017c981dc05ca175a82eef7513a11e7c9a903d118700079e250ea4f71cd98d` |
| 20 | `theorem` | [abs_le_abs_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-le-abs-of-nonneg.md) | 123 | `result-track:e1c4cac71c74d91f2c4d7b54f690a7ebb27e8214a57807f99270a1940b77ccc7` |
| 21 | `theorem` | [abs_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-zero.md) | 128 | `result-track:19b8a4759c97c91e21e66bfc1984dedc5cfb7557ac45c25734e2996aec06b7ba` |
| 22 | `theorem` | [abs_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-pos.md) | 133 | `result-track:6c2143b5c8f1f1009623995a2e91caab51d6a85fa7f84863b8f084e2b4c14998` |
| 23 | `theorem` | [abs_pos_of_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-pos-of-pos.md) | 140 | `result-track:6df32f04c9bdabafbb42044d572be52a028b0863aeea84f44895a8af5c4f1c0d` |
| 24 | `theorem` | [abs_pos_of_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-pos-of-neg.md) | 144 | `result-track:0ec659e48dfff084cc2b20893140c1e7a80994584357f3966aec78b22a6c6f07` |
| 25 | `theorem` | [neg_abs_le_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/neg-abs-le-self.md) | 148 | `result-track:856cb52cad167a35b35b4c622e83d1af412d78227687703dc329645f5f3a6db0` |
| 26 | `theorem` | [add_abs_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/add-abs-nonneg.md) | 159 | `result-track:d78eb043c7666a1bcbdd100ea05835faa868f4183b7574673d37c216a475d450` |
| 27 | `theorem` | [neg_abs_le_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/neg-abs-le-neg.md) | 165 | `result-track:f1b76b1fb05299cd53408c20a837128c5407198e39cf0a53f981e01412ce1985` |
| 28 | `theorem` | [abs_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-nonneg.md) | 169 | `result-track:352f94196d565a5c8af64bafa2d24c05133e5ec74019d92e7b398c21ceb1a432` |
| 29 | `theorem` | [abs_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-abs.md) | 175 | `result-track:edd030cccccba871abb34d7b831ce2158966498b2bb600973f5bda093585ee29` |
| 30 | `theorem` | [abs_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-eq-zero.md) | 180 | `result-track:e0afda12742f7dcaff138f8fef85d5cab0a9299758823287b1679389795f9ff9` |
| 31 | `theorem` | [abs_nonpos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-nonpos-iff.md) | 185 | `result-track:f6e5cb93f7db33a4fd9e36cca51957af7ba585991c83819f5d498046119be6ab` |
| 32 | `theorem` | [abs_le_abs_of_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-le-abs-of-nonpos.md) | 191 | `result-track:e7d36b4121df19bb8a0123c40df5661b78c2c5fe4d52119f820b810284e6b881` |
| 33 | `theorem` | [abs_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-lt.md) | 196 | `result-track:c831178e3d5b0ec71bffecddc4c8df36ccc44f649e34e12e7e804db90bd71592` |
| 34 | `theorem` | [neg_lt_of_abs_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/neg-lt-of-abs-lt.md) | 200 | `result-track:92e0efd1af24073f607f59d1b1c56874fbd0fc20076a2f21093b0aa220b6ac35` |
| 35 | `theorem` | [lt_of_abs_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/lt-of-abs-lt.md) | 204 | `result-track:2c0db72538e04384cf2070a390d49c14048ee9b9f694ce3ebad9c9f72d6d29a5` |
| 36 | `theorem` | [max_sub_min_eq_abs'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/max-sub-min-eq-abs-source-edition-2.md) | 208 | `result-track:2a074f13a34302d454aecda3a0dc170cdd254d90494e848bc2e56752524711d2` |
| 37 | `theorem` | [max_sub_min_eq_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/max-sub-min-eq-abs.md) | 216 | `result-track:03668eb89160ed983ef1d1d103d14bd7fabfe51a93d5047f3fe339b041163896` |
| 38 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/example.md) | 232 | `declaration-track:9743e1562ddd2f9608ee3b5685718b2e1bfb23d023e919c778bbc5f86c630003` |
| 39 | `theorem` | [abs_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-le.md) | 234 | `result-track:02e5409978f8d3dec4341eba04ab3937a46730fdef4c6f179d63c5e457ff2dd6` |
| 40 | `theorem` | [le_abs'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/le-abs.md) | 237 | `result-track:10cb5f758718bf9a7fee67ff2209749522e0283ae019a395d131bbbcc572aaf0` |
| 41 | `theorem` | [neg_le_of_abs_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/neg-le-of-abs-le.md) | 240 | `result-track:1409a6ec7ddbb92f499251977a0ed1b79a6e1408616ba04c0c18f140199ac158` |
| 42 | `theorem` | [le_of_abs_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/le-of-abs-le.md) | 244 | `result-track:521d43952e3a959179b37b9e659f0173c85209229e20b387d741cc461badda32` |
| 43 | `theorem` | [apply_abs_le_mul_of_one_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/apply-abs-le-mul-of-one-le.md) | 249 | `result-track:13567a92785db8f46c6e8955e8a939708f9e52428a8e509de9e406d3ad65a963` |
| 44 | `theorem` | [apply_abs_le_mul_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/apply-abs-le-mul-of-one-le-source-edition-2.md) | 258 | `result-track:af6549e4d4b66fae0cb794450db187ae57d778e4a2bf670c37c97299fa13fb5c` |
| 45 | `theorem` | [abs_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-add-source-edition-2.md) | 266 | `result-track:4c9b8e8094197ccd3d3e87bfa46cfc96a17b4fd5f7955eb0e29b328e79e3bb41` |
| 46 | `theorem` | [abs_add'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-add.md) | 273 | `result-track:4b9ab410122bb534b2bfb33a0a79a8ec237be5bc866ceab211d6cf41a9296666` |
| 47 | `theorem` | [abs_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-sub.md) | 276 | `result-track:3a58519fc0975011af09c2090a7ba7b913f08ba18b8a944661050b902277a950` |
| 48 | `theorem` | [abs_sub_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-sub-le-iff.md) | 281 | `result-track:77a11a42cac23b0c3fa6d73d73eb8cf15801be31b4a68d6fc6c13c089250b2d9` |
| 49 | `theorem` | [abs_sub_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-sub-lt-iff.md) | 285 | `result-track:d16bcdb6af42fa58c1e78374e126d82cb7e8662bc1e51a58fe116d499cdd07a9` |
| 50 | `theorem` | [sub_le_of_abs_sub_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/sub-le-of-abs-sub-le-left.md) | 289 | `result-track:69ca6695bef3f4049ea812839dee7212a8f38e3051806b386082dd17668f78a0` |
| 51 | `theorem` | [sub_le_of_abs_sub_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/sub-le-of-abs-sub-le-right.md) | 293 | `result-track:a261378c01c2b3490a29418892577c5dcdea4605027ce728555a8ecf64953c2d` |
| 52 | `theorem` | [sub_lt_of_abs_sub_lt_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/sub-lt-of-abs-sub-lt-left.md) | 297 | `result-track:4ca75e967d54043f43dac09b447187206940f16bba8905f464eebb0335f3dfa0` |
| 53 | `theorem` | [sub_lt_of_abs_sub_lt_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/sub-lt-of-abs-sub-lt-right.md) | 301 | `result-track:e91bc4118529da97f34a1ebdae80fab1bb276b30215cf7c0981dd747bb798770` |
| 54 | `theorem` | [abs_sub_abs_le_abs_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-sub-abs-le-abs-sub.md) | 305 | `result-track:6fa71b8893b7b9d15da8b0fdf61dd7dfcfdba093bbcefdc67c09140fc9b38231` |
| 55 | `theorem` | [abs_abs_sub_abs_le_abs_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-abs-sub-abs-le-abs-sub.md) | 312 | `result-track:c75e0a6955c4acc5d0ef2bdb38e81a4115f8178c18775de050af0de7ed089efd` |
| 56 | `theorem` | [abs_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-eq.md) | 317 | `result-track:22a3fe6937d0e4fc9ac2f25ef27a5e5946073201973b65372543ed4dcaf50cbf` |
| 57 | `theorem` | [abs_le_max_abs_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-le-max-abs-abs.md) | 322 | `result-track:7a05c368a6f36a652aa0ccb5ad4a2b8569483a0ca7cd64649a37ba855a932ec3` |
| 58 | `theorem` | [min_abs_abs_le_abs_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/min-abs-abs-le-abs-max.md) | 328 | `result-track:a4d8562728ba809ae9263af8faaae3cf46a190adbdc1fcbf2c4ef0195bda5b5c` |
| 59 | `theorem` | [min_abs_abs_le_abs_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/min-abs-abs-le-abs-min.md) | 333 | `result-track:50d09fffedc011d4ecac76542b73b6d3dc14283aa05cb00a90be3b0b17836874` |
| 60 | `theorem` | [abs_max_le_max_abs_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-max-le-max-abs-abs.md) | 338 | `result-track:04be00131fecebba350f7595a6001d89c83533f54c3a0d22a80329c15cf96ace` |
| 61 | `theorem` | [abs_min_le_max_abs_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-min-le-max-abs-abs.md) | 343 | `result-track:b60dab33f87c847edf6bf9eddb099dd67d3df342575c8468465eed0b3aad1db3` |
| 62 | `theorem` | [eq_of_abs_sub_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/eq-of-abs-sub-eq-zero.md) | 348 | `result-track:674aea4fe9d2cf5370d2d9a68b23bc90aac777055a6a4d312eac68bc5b38947c` |
| 63 | `theorem` | [abs_sub_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-sub-le.md) | 352 | `result-track:2f6e949469f9910c3fc7b2b34fa61754b9be7f581fb15d78e39c21dc9ec227fc` |
| 64 | `theorem` | [abs_add_three](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/abs-add-three.md) | 358 | `result-track:6992d759fd783f5953e45ad9e03e2b8cece3fc63be77c7b4b8fec09074fc1c55` |
| 65 | `theorem` | [dist_bdd_within_interval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/dist-bdd-within-interval.md) | 362 | `result-track:8390cc2b3690f5b43ba2ffa8959117bb80352dcfee36d0212c95b7aeba19d2af` |
| 66 | `theorem` | [eq_of_abs_sub_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupAbsAbs.lean/declarations/eq-of-abs-sub-nonpos.md) | 367 | `result-track:ef1c2108fb3e4cb7a57cce3eebb6c043a96ea75ca0a6fe7a93d8563d8b2b2bf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e942b25792d943d8500acbf085acbc039570fe18f3e4637844d13218c481bb73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Abs/Variantfb053ba0a4c9be2656a402b716d449adb0a27b91662f1581b9c2f90b7a32d8c8.lean","GRWTSK/_verification/specifications/Algebra/Abs/Variantfb053ba0a4c9be2656a402b716d449adb0a27b91662f1581b9c2f90b7a32d8c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
