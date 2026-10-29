# Verification target: Group With Zero Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc6a5a0bb40df0aa897b454826f945b2a9d7b9e8",
  "lexical_observation_count": 90,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf176077f985340113f932c938b34ebe59a73aa2cb9d38d76ed78d9c4a4a4672e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc6a5a0bb40df0aa897b454826f945b2a9d7b9e8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf176077f985340113f932c938b34ebe59a73aa2cb9d38d76ed78d9c4a4a4672e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf176077f985340113f932c938b34ebe59a73aa2cb9d38d76ed78d9c4a4a4672e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [left_ne_zero_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/left-ne-zero-of-mul.md) | 63 | `result-track:b41f0a8fd75cd7a9258fe256b664f52e3253f3bef0a9476eba769ee539373b63` |
| 2 | `theorem` | [right_ne_zero_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/right-ne-zero-of-mul.md) | 66 | `result-track:5e962e5d5bbad1996bb22d617335af17a50dda8d4c377c58490af1d5315e6cbe` |
| 3 | `theorem` | [ne_zero_and_ne_zero_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/ne-zero-and-ne-zero-of-mul.md) | 69 | `result-track:08d464c2327d3050f022ec30d0d1f9c5f7e9dc44a986949d28357d28c0d7e0a0` |
| 4 | `theorem` | [mul_eq_zero_of_ne_zero_imp_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/mul-eq-zero-of-ne-zero-imp-eq-zero.md) | 72 | `result-track:897fa0748d78d9de0d29df229f12be5eb6485782045723a95301479647658a6e` |
| 5 | `theorem` | [zero_mul_eq_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zero-mul-eq-const.md) | 77 | `result-track:e9e178ccf80fb92509fef4095f8659b119a002840f62ee0783c20fa3ab8b03a1` |
| 6 | `theorem` | [mul_zero_eq_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/mul-zero-eq-const.md) | 81 | `result-track:fb3ed9c5bb7b1790e587a7df3e66f0917158cabd795cf30ba56074126b4a6b78` |
| 7 | `theorem` | [eq_zero_of_mul_self_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/eq-zero-of-mul-self-eq-zero.md) | 90 | `result-track:6868eea5a0861bc5c67ef7e8af1942e5fe8dbf9bea68f6e6acb921c6a80f1216` |
| 8 | `theorem` | [mul_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/mul-ne-zero.md) | 93 | `result-track:85a046cc68d0dab7043804f2f3344cfb599381fc798c08f73bb5e1269021d4b8` |
| 9 | `instance` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/mul.md) | 100 | `declaration-track:f0c366dcb561a2854b5121e9d081dd0e54f0d740ba171e31bd6d17dc78c19d0e` |
| 10 | `theorem` | [eq_zero_of_zero_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/eq-zero-of-zero-eq-one.md) | 113 | `result-track:ba907208e22e0720082cb2fe731d5650e7ea699c2711b62bad1e160104db42f2` |
| 11 | `def` | [uniqueOfZeroEqOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/uniqueofzeroeqone.md) | 121 | `declaration-track:892544bc0fd36435fedba8496729f77a203616862f90c4ac013dd82cabe600fb` |
| 12 | `theorem` | [subsingleton_iff_zero_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/subsingleton-iff-zero-eq-one.md) | 127 | `result-track:8f5eb03c8ddabe5be280fe64ef4db78643f471533e328b6aceded9782027cbf9` |
| 13 | `theorem` | [eq_of_zero_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/eq-of-zero-eq-one.md) | 132 | `result-track:00dc57fbc616a3e7d3700ae97f3f31fca2993bdc167b7532d16cf16eca9b8449` |
| 14 | `theorem` | [zero_ne_one_or_forall_eq_0](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zero-ne-one-or-forall-eq-0.md) | 136 | `result-track:c7fe20da9b562df6e3fd06912c758fd5caa616c4b26454725b2f070d9f0bdcd6` |
| 15 | `theorem` | [left_ne_zero_of_mul_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/left-ne-zero-of-mul-eq-one.md) | 145 | `result-track:815aebdbebc23fdd0bbb7f91697ccf2db687f9509973e3db675c47565d4294f7` |
| 16 | `theorem` | [right_ne_zero_of_mul_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/right-ne-zero-of-mul-eq-one.md) | 148 | `result-track:f199eeb6cc4b49841c7892ad7ed9b018f4207366b20c35a48890319ba6fd7faa` |
| 17 | `def` | [IsNilpotent](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/isnilpotent.md) | 162 | `declaration-track:d905fa20a68350ff117fc6eebb07bb3e83de30742448745176614d08e2034b1e` |
| 18 | `theorem` | [IsNilpotent.mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/isnilpotent-mk.md) | 165 | `result-track:4a52851182d50aac9fd21bac8fa9175dae6605219056f292a2d50df83dd380e4` |
| 19 | `lemma` | [isNilpotent_of_subsingleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/isnilpotent-of-subsingleton.md) | 168 | `result-track:13ca96ed35ad77f198e6b3dc02afa366b0a125ee655617e85c85b4c126cf204e` |
| 20 | `theorem` | [IsNilpotent.zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/isnilpotent-zero.md) | 171 | `result-track:0c6fec6d84838a027278189983959a0e5e742678f09354738995df16c06ab004` |
| 21 | `theorem` | [not_isNilpotent_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/not-isnilpotent-one.md) | 174 | `result-track:f88c7cf6a9816519af479d433278443cc3098ad35d7bbd07fe1265678baa485f` |
| 22 | `lemma` | [IsNilpotent.pow_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/isnilpotent-pow-succ.md) | 177 | `result-track:81f89e12c7e6b502e7f74422f46190ecc5decb45951bfe288a7b0bb8ac265562` |
| 23 | `theorem` | [IsNilpotent.of_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/isnilpotent-of-pow.md) | 182 | `result-track:cc6464473ae93a7646c3fb67ee795cd9c1c73c20aae0e81bc5255acc9fa5cbcc` |
| 24 | `lemma` | [IsNilpotent.pow_of_pos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/isnilpotent-pow-of-pos.md) | 187 | `result-track:15015a6de37ccc3a3b745a7b8a1c6035a43c559efc76b88c8841de6451cf549a` |
| 25 | `lemma` | [IsNilpotent.pow_iff_pos](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/isnilpotent-pow-iff-pos.md) | 194 | `result-track:383b62510c3f45e882bfc2bf2fa88a4420533fa4ce6831fe37b300499423f2ef` |
| 26 | `class` | [IsReduced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/isreduced.md) | 200 | `declaration-track:b76357170d08ea590777171250c3798d28f10987746c1aefa21c5bed43a08d95` |
| 27 | `theorem` | [eq_zero_of_pow_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/eq-zero-of-pow-eq-zero.md) | 204 | `result-track:6cb5a0720ff29bd463bd92c943e40a11c6c3fc6ee902ca073aea77a31fffb32d` |
| 28 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 207 | `declaration-track:cfb735788653f0715641d23271a956fdc5c9a5ab750b3760a40ed87ee7918841` |
| 29 | `theorem` | [IsNilpotent.eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/isnilpotent-eq-zero.md) | 211 | `result-track:6f99cd019f33ff675c25e9de11c6b30c94542b4c76edc218f43b15d6dde3105b` |
| 30 | `theorem` | [isNilpotent_iff_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/isnilpotent-iff-eq-zero.md) | 215 | `result-track:3b06f62655871a254ea829046e6dc828c59ccf8c60dc7c5dc9024cd1e0df9380` |
| 31 | `lemma` | [exists_isNilpotent_of_not_isReduced](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/exists-isnilpotent-of-not-isreduced.md) | 218 | `result-track:e79e8bd23caee28df15c315653695adc9dffdba6bf9a67c8b452ab3eba8fd83f` |
| 32 | `lemma` | [zero_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zero-pow.md) | 227 | `result-track:ee9fcfceb7be5d23d3e53351e9591ad15a939b037d1a8859ea35684197d279e4` |
| 33 | `lemma` | [zero_pow_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zero-pow-eq.md) | 230 | `result-track:56ac57028b57fa3ae52db545f32ffcb5883f0e0e1e5395a98748455f003ca9ba` |
| 34 | `lemma` | [zero_pow_eq_one₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zero-pow-eq-one.md) | 235 | `result-track:7402e7a84b69a47549ee422f12df88e84b120b79c2fb9179e9101500cb9ea642` |
| 35 | `lemma` | [pow_eq_zero_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/pow-eq-zero-of-le.md) | 238 | `result-track:fee5df9f92948a9f34a1b5534e4832c7bbc2e3e1cdb33886c045967aa566a76e` |
| 36 | `lemma` | [ne_zero_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/ne-zero-pow.md) | 242 | `result-track:677dc0327cf0b14f08b53c36afd78b8ca5f31b8086777c7633e9f86d01256ad4` |
| 37 | `lemma` | [zero_pow_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zero-pow-eq-zero.md) | 245 | `result-track:a41c5f091f53dab11eaac523addefc6b86ec51f2584773e789bc92dd5e4d5864` |
| 38 | `lemma` | [pow_mul_eq_zero_of_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/pow-mul-eq-zero-of-le.md) | 248 | `result-track:b51d1f74f35955b5aec81e51af53fb3edfddf0f0e863980d2636f0659a9376ae` |
| 39 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 253 | `declaration-track:ea6e4c5e0d955e02801f243f73d3184223171ffe62f2191dfc42dd6eabe2c5fc` |
| 40 | `lemma` | [pow_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/pow-eq-zero-iff.md) | 262 | `result-track:949fcb43216e4eacf8303b196a4a2e8976b51ff832184991c04cec41397f7b80` |
| 41 | `lemma` | [pow_ne_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/pow-ne-zero-iff.md) | 265 | `result-track:f5ea6e91607c09a6cb72dd091ccd04f76bfded32c7d158e9369e6b7472e62b99` |
| 42 | `lemma` | [pow_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/pow-ne-zero.md) | 267 | `result-track:8e64a4f4bb69ce54a71d91e8a9984a03be96e7e0160474f2568c9f9082b8623d` |
| 43 | `instance` | [NeZero.pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/nezero-pow.md) | 269 | `declaration-track:b81fa7895da4e3a2b3aae170e204cc072eef3c58d215713c0ec75cddad66507c` |
| 44 | `lemma` | [sq_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/sq-eq-zero-iff.md) | 271 | `result-track:2289701d4afb3bc21bcdb5480a0b05948fc9eed03de50168907e1be10a69ff99` |
| 45 | `lemma` | [pow_eq_zero_iff'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/pow-eq-zero-iff-source-edition-2.md) | 274 | `result-track:9e97d6dfa2f0ea665d98a9968254566d75da7888251052473ca6d82988f02a1f` |
| 46 | `theorem` | [exists_right_inv_of_exists_left_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/exists-right-inv-of-exists-left-inv.md) | 277 | `result-track:89505cd7f3e1bfa0a57e56e3b25d8616f7a273599ab5296a1ff63c4e3b8babe0` |
| 47 | `theorem` | [mul_right_eq_self₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/mul-right-eq-self.md) | 293 | `result-track:e1328ffa60bd6189acb7da3e4e36cba2e17fb700768dffdaa85f3d0036406788` |
| 48 | `theorem` | [mul_left_eq_self₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/mul-left-eq-self.md) | 298 | `result-track:71d9a5c02e6071943cbfe6668ef30a8aed1fcd556d8a2bd9137fc16d5d83a89d` |
| 49 | `theorem` | [mul_eq_left₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/mul-eq-left.md) | 304 | `result-track:3a1b8b8f16f72c38c54d5fe4a01a6ff0d0b79d2995ad5cc73c4dc13527b16552` |
| 50 | `theorem` | [mul_eq_right₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/mul-eq-right.md) | 308 | `result-track:ea1a4586ea41713938d2c580389625a7d2cf1597c24068ce240e37ba65c7a282` |
| 51 | `theorem` | [left_eq_mul₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/left-eq-mul.md) | 312 | `result-track:d09f68f30cda21184210b8f940978fcc946c316b9b15a1017d929867ef8eaac7` |
| 52 | `theorem` | [right_eq_mul₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/right-eq-mul.md) | 316 | `result-track:568aa6f07b74fa919f1018e7c0c3d8051fa0cd66217eb7f1b6943c56f3e98e0c` |
| 53 | `theorem` | [eq_zero_of_mul_eq_self_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/eq-zero-of-mul-eq-self-right.md) | 321 | `result-track:c8691908ebd4c986cddd446adc3dbfcfbc849b73d333b61d60c69214a69030f6` |
| 54 | `theorem` | [eq_zero_of_mul_eq_self_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/eq-zero-of-mul-eq-self-left.md) | 327 | `result-track:57d6bbd8d1861e47ccc6a35a28a0a6a58c96528c9a7049f168eda04ea0d463e3` |
| 55 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 333 | `declaration-track:f660d2dbb68271c5c43dc6ba4df32b28e0b8fcd924c69fb91049e2b3d88304f5` |
| 56 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/instance.md) | 340 | `declaration-track:0a54636a19d2e520aa979ea9621ef72d7523244e613c6a0615ff41cb9a65dfc7` |
| 57 | `theorem` | [GroupWithZero.mul_right_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/groupwithzero-mul-right-injective.md) | 353 | `result-track:65b85349c80d024893db8d07f627d2028294aa9780c884ef325dd5b018ed0346` |
| 58 | `theorem` | [GroupWithZero.mul_left_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/groupwithzero-mul-left-injective.md) | 357 | `result-track:cb0c6219534d942fabe27d55a8a4fcc4bd0b61d026118c20b54ea2886121ef51` |
| 59 | `theorem` | [inv_mul_cancel_right₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/inv-mul-cancel-right.md) | 362 | `result-track:5aea24f599ac16668b4d82be244f15acfe3389321eda627acb2fa90b8045ea84` |
| 60 | `theorem` | [inv_mul_cancel_left₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/inv-mul-cancel-left.md) | 369 | `result-track:7705a9f23fa5ea99f38ffbba8d6b67382c56214f4cf198a19350fe12c3010288` |
| 61 | `theorem` | [inv_eq_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/inv-eq-of-mul.md) | 375 | `result-track:da79087974fee947e00f5bb2059ea181eb70e47cc0c88fd3dedb375d96a04e13` |
| 62 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 379 | `declaration-track:ef6ce3cdb85247038d6cf74aad4dacaf20d99b5249ad51bccc320387c97392f9` |
| 63 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 394 | `declaration-track:edd11b563825b6c74f3df0540583e608e28bc7e0c7a2cbdd52d70a61f648a70e` |
| 64 | `theorem` | [zero_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zero-div.md) | 407 | `result-track:6994b74b5e92e7b9f5581951b81ee6c990e760f340f1d7925041e60374c7cdb5` |
| 65 | `theorem` | [div_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/div-zero.md) | 410 | `result-track:2edadcc8618f29d49dd7f1aeb85b95f80fda78197513497ffd4bd916d382d411` |
| 66 | `theorem` | [IsSelfInv.zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/isselfinv-zero.md) | 413 | `result-track:128a2ea550fc58c2d3eee5f41db97ae5e718660a70509e40075c8e13e20d382d` |
| 67 | `theorem` | [mul_self_mul_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/mul-self-mul-inv.md) | 418 | `result-track:ec137d45b1518f08f798bc0bae6d58f04b0358821937919c50e4d14f4f5f3d21` |
| 68 | `theorem` | [mul_inv_mul_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/mul-inv-mul-cancel.md) | 427 | `result-track:0064f5182858698b8774653a7e4dbceade1ed6d00d05a5231cfd03ef7feaa0c2` |
| 69 | `theorem` | [inv_mul_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/inv-mul-mul-self.md) | 436 | `result-track:cce93601d12e4e22c6769b6c650f62aa2b45b3b09b74e9cbbf4eded7166ded1a` |
| 70 | `theorem` | [mul_self_div_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/mul-self-div-self.md) | 445 | `result-track:22f7e07c0f51759f9438b95f2c85366f4b8a90c83c71ec8206b176498be696f7` |
| 71 | `theorem` | [div_self_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/div-self-mul-self.md) | 450 | `result-track:66790f46aa5b6c50e5baec80d9b8b05c59d07947d67525c10fc904880e4f4a4a` |
| 72 | `theorem` | [div_self_mul_self'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/div-self-mul-self-source-edition-2.md) | 455 | `result-track:84e8095b3ddce3ce13d45c72eede737163b07caf499908414f9f067b0d7b6d57` |
| 73 | `theorem` | [one_div_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/one-div-ne-zero.md) | 461 | `result-track:b157fb67c9df1e8530bb50cde7e917e99256126fc347fd4fa14e9e7e6817155b` |
| 74 | `theorem` | [inv_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/inv-eq-zero.md) | 465 | `result-track:f371da8b33ff8855a952e98e58753d934bef8b1e5594f6d74e7324c7af192c03` |
| 75 | `theorem` | [zero_eq_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zero-eq-inv.md) | 468 | `result-track:f7c2f88b05a2a85b5fad99dff4332317d88ba991b5312a349f5f19792b7eddb2` |
| 76 | `theorem` | [div_div_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/div-div-self.md) | 474 | `result-track:350535880a62a49805d21e3c9628c5346ef84589446b48551e4f8d45907f559d` |
| 77 | `theorem` | [ne_zero_of_one_div_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/ne-zero-of-one-div-ne-zero.md) | 478 | `result-track:eb79b3f67da423532ae9f3cd49e3b645aa9c68ce70847098c050a52d1cd8c160` |
| 78 | `theorem` | [eq_zero_of_one_div_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/eq-zero-of-one-div-eq-zero.md) | 482 | `result-track:0a4aa2e5b324b68a2faa927dbccc967a87df39ea0af02251ad57f072e3a2a242` |
| 79 | `theorem` | [mul_left_surjective₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/mul-left-surjective.md) | 485 | `result-track:f11d22ce1873b3c3e5e5dff569e495ffcd37612bee36ba202b94cfe89da5ff08` |
| 80 | `theorem` | [mul_right_surjective₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/mul-right-surjective.md) | 488 | `result-track:ad1fe43d6127742fd70a9a9dac44bd26a4391945d3d12c2be53a3f7a429ad748` |
| 81 | `lemma` | [zero_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zero-zpow.md) | 491 | `result-track:c8c63eb0644b4a5e59b9aa7872ed5dcc659d73330d121d9450f8b2093e8fb0f4` |
| 82 | `lemma` | [zero_zpow_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zero-zpow-eq.md) | 495 | `result-track:52596edfb8397f1aaf258acc89948e68ffe586b79d7e20e29a9a42c26eac9d26` |
| 83 | `lemma` | [zero_zpow_eq_one₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zero-zpow-eq-one.md) | 500 | `result-track:950701bb08e933ba4c265f335581c1ad90f9cc9b4b7ed22d04da92c2f83e310b` |
| 84 | `lemma` | [zpow_add_one₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zpow-add-one.md) | 503 | `result-track:362cbcf85ade7891c6673be4aa7ac1468b073b9dffd8fd1181b4222a28886cb7` |
| 85 | `lemma` | [zpow_sub_one₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zpow-sub-one.md) | 511 | `result-track:c10223ff2dd343d1250d7d2430e2b701d33fa080eb2d4354b6e7a2a4a90e533e` |
| 86 | `lemma` | [zpow_add₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zpow-add-source-edition-2.md) | 516 | `result-track:7ee4f4edd0e9f15e687805d1e903e6cebf2731257f03d792db893a47abb4bbb6` |
| 87 | `lemma` | [zpow_add'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zpow-add.md) | 522 | `result-track:78a7a5e88470144c24c1238206f19c93a6169d63b3391ceec4b61bf270e892c5` |
| 88 | `lemma` | [zpow_one_add₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/zpow-one-add.md) | 534 | `result-track:96cd206ae6eaa862446a15a46f8a24df7a0747c401a3c0b6eb9c90f81bfb2c8b` |
| 89 | `theorem` | [div_mul_eq_mul_div₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/div-mul-eq-mul-div.md) | 542 | `result-track:e4f63cab5f2cf6b0a55b9c8825d368d1cf474bc23d4d506e6d37c94d5c0a7e6c` |
| 90 | `lemma` | [div_sq_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicNamespacedPublic.lean/declarations/div-sq-cancel.md) | 545 | `result-track:dde2f5d3bb288df18ddaead60c266fedf20c64df369103236e939072bfd29544` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c022fb2994ac2d1df355ae671989cd9b07357f502f02e07744e78c79f698dda9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf176077f985340113f932c938b34ebe59a73aa2cb9d38d76ed78d9c4a4a4672e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf176077f985340113f932c938b34ebe59a73aa2cb9d38d76ed78d9c4a4a4672e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
