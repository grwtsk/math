# Verification target: Linear Algebra Matrix Pos Def Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07ac8a17c278a43c89ad4a5135c9bd8ceb339714",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07ac8a17c278a43c89ad4a5135c9bd8ceb339714`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean.json)

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
| 1 | `def` | [PosSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-source-edition-2.md) | 68 | `declaration-track:4aa87fdb425fe3560dda24eebd2305cdb594f97436db704defbcc216f38bf77f` |
| 2 | `theorem` | [PosSemidef.diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-diagonal.md) | 71 | `result-track:b4919f334f7e72c15487eb9168e84e290b67faeacc2db384367abda6b544d49f` |
| 3 | `lemma` | [posSemidef_diagonal_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-diagonal-iff.md) | 80 | `result-track:1c0957937d212bc04d15192555ea625a2bbafe17d9943e19d4b2df2ab23a7e99` |
| 4 | `theorem` | [isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/ishermitian.md) | 86 | `result-track:3c336a6e1bcaee12d0cf85be8d6c7829c0036b071b268a20b94a8c33dfde342b` |
| 5 | `theorem` | [submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/submatrix.md) | 89 | `result-track:358aa08b637c0df6e640d5d565d0d9767cf41064b14f2922b1fd2679474702bb` |
| 6 | `theorem` | [transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/transpose.md) | 94 | `result-track:0764fb4d325f9cd71718813730c59a53c66c4146124e2d1572e0af781ba13dd9` |
| 7 | `theorem` | [Linear Algebra Matrix Pos Def Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-transpose-iff.md) | 101 | `result-track:e886c22e9ac215a42fc4842cfcb0453bdcaa4dd4bfee931d430ad0db985add95` |
| 8 | `theorem` | [conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/conjtranspose-source-edition-2.md) | 104 | `result-track:b7795136ff0fc6e8106e047600853dcb47223a5b68528708ccd9bf1cac49ff5e` |
| 9 | `theorem` | [Linear Algebra Matrix Pos Def Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-conjtranspose-iff.md) | 107 | `result-track:78f52a5fb1309d90f1ebcb9f8407feacee24c86aefa793a2b294c3ae72a7dfa0` |
| 10 | `lemma` | [add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/add.md) | 111 | `result-track:57a48238fe32a7a7c1589b8ae49afbb64a23d857fe0c045dde32e1ceac2502bd` |
| 11 | `theorem` | [smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/smul-source-edition-2.md) | 116 | `result-track:89023f1815f5bf632ad46d73ee40a8a0a55d1f0aa2f88ed0f339a48f40c2dbb7` |
| 12 | `lemma` | [zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/zero.md) | 122 | `result-track:bcea6cb50464f16ea236dddba8e79924eeaed24de88f9fc502c1199779a615c1` |
| 13 | `lemma` | [one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/one.md) | 124 | `result-track:61fc857aae58f52941189317dba90c5ff39aa9707fd0a484855c134632c4f6c8` |
| 14 | `theorem` | [natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/natcast.md) | 128 | `result-track:8300e2d8b6da88fe5ee939d71b5cfc3a27e1cb8dd11a991bfe2584f2a94442b7` |
| 15 | `theorem` | [ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/ofnat-source-edition-2.md) | 133 | `result-track:6a239166be36b5bea14704f703e5f9f005e4a59b683a1bb755d1701d6009387a` |
| 16 | `theorem` | [intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/intcast-source-edition-2.md) | 137 | `result-track:c35b29768d23ab116e20e70d08e2d6e04d992aeb82e838e9042b4efb5ea212d7` |
| 17 | `theorem` | [Linear Algebra Matrix Pos Def Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-intcast-iff.md) | 143 | `result-track:e41ced29d1cac1efc4f8be2babcc7d3f9bd4eed75040999ef48a2d4021984b90` |
| 18 | `lemma` | [diag_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/diag-nonneg.md) | 147 | `result-track:936a6c5f8f57889961a8f0bf5f26d90c92e1fe281bec9957129ca96bc0263a6b` |
| 19 | `theorem` | [posSemidef_submatrix_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-submatrix-equiv.md) | 153 | `result-track:2b2fb516d0aa1a9a1e1b316f530970b4842dd9bc1804e4f1317eb1cba642d0b0` |
| 20 | `theorem` | [posSemidef_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-sum.md) | 157 | `result-track:0326653c94d922eccb30af384ff6fb81119cc4554c4132928f0c4a29e1405c88` |
| 21 | `def` | [PosDef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/posdef.md) | 170 | `declaration-track:5c1e4e4fc55cc4a4bd6678cb06e452bb2cc1ba9560dc71e013d78ffa223cbb32` |
| 22 | `theorem` | [isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/ishermitian-source-edition-2.md) | 175 | `result-track:6bcee76da3f15bd3ba91af87299ccc7bda6cb7159b62e24dfba3216b656dc6c4` |
| 23 | `theorem` | [posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef.md) | 178 | `result-track:24d7fde3e8903809c17bb16aade37d61f9e0fadd06b3e1b55d5fa14eb47f23e0` |
| 24 | `theorem` | [submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/submatrix-source-edition-2.md) | 181 | `result-track:a38a449e45f2869725613d5278db9359850f20d91d189d585790c5cd478c3bca` |
| 25 | `theorem` | [transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/transpose-source-edition-2.md) | 187 | `result-track:d8a00466081f79d500be53507fe5e0ad83fd0a51984d4738e24eb681f0444bb0` |
| 26 | `theorem` | [transpose_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/transpose-iff.md) | 195 | `result-track:6a9f8f1c75b3c52977bdab709055e6170cbdecb2a800d2d9d81f2c50e38003a2` |
| 27 | `theorem` | [diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/diagonal.md) | 198 | `result-track:2a5c914b05f03d9622fd3f605c21925a93da0425c1e4cdfb93306feaafecca70` |
| 28 | `theorem` | [Linear Algebra Matrix Pos Def Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/posdef-diagonal-iff.md) | 211 | `result-track:7b30640ff8c08a06e2e4971701ef00fa8ae23841a851edf8fe1ed324f594b944` |
| 29 | `theorem` | [of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/of-subsingleton.md) | 217 | `result-track:036ab170065fac454faec91785ecbb6f94964554f32bb7bd6c317b448a7db89e` |
| 30 | `theorem` | [one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/one-source-edition-2.md) | 220 | `result-track:a51b51179f0b72c8ebfc05278cc3f9e1973c282c69e8bdde1a7f1e1caa314c64` |
| 31 | `theorem` | [natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/natcast-source-edition-2.md) | 225 | `result-track:ba154792806d773a496abf3eedeb5dfae20151c8616aad037609e70bea7353c0` |
| 32 | `theorem` | [Linear Algebra Matrix Pos Def Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/posdef-natcast-iff.md) | 232 | `result-track:74d4076138b26dbdb6205a4a866650fadbc364298123c92a9d4ffc6e054ce2a5` |
| 33 | `theorem` | [ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/ofnat.md) | 237 | `result-track:2385b0a036d41761c49558b1f35e18009ba1b558da09e43cf0e62df07ca5dc53` |
| 34 | `theorem` | [intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/intcast.md) | 242 | `result-track:b7f816945f9aedef75fc8ddd71985c45d066f01911d2239b7dec10dac11f86c9` |
| 35 | `theorem` | [Linear Algebra Matrix Pos Def Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/posdef-intcast-iff.md) | 249 | `result-track:4cded31dcf3512727fdca10a0c75c10c33a13264fc8a97df0188907906e85674` |
| 36 | `lemma` | [add_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/add-possemidef.md) | 254 | `result-track:a9644da8ebe0b27c26bf8f0688c7985ed845691a0acb71b5c8bdcc9b7ed36751` |
| 37 | `lemma` | [posSemidef_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-add.md) | 260 | `result-track:91fbcb691451e11f09413c334ed88ac19191ab513d9599024f4636c059140e8d` |
| 38 | `lemma` | [add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/add-source-edition-2.md) | 265 | `result-track:bf2154888f72acdef8e08e0d0e754ce1fb1bf0926b8ffa535c3716f7043bb296` |
| 39 | `theorem` | [Linear Algebra Matrix Pos Def Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/posdef-sum.md) | 269 | `result-track:63a10aa99c2350a8ad17a099cebaf3a723ddd61836074facd10b95d0625cd8f1` |
| 40 | `theorem` | [smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/smul.md) | 281 | `result-track:6a401950b1a5a0f528f56f3ab759f9acf71dcfc940eaae49170db3c534852d6d` |
| 41 | `theorem` | [conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/conjtranspose.md) | 287 | `result-track:09e628342ad2b132a8bb8de7712401e537b4102f40b8b6d03ca193fa88017e1b` |
| 42 | `theorem` | [Linear Algebra Matrix Pos Def Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/posdef-conjtranspose-iff.md) | 290 | `result-track:3f01926f0a8cd9ecd362fc28fd69d03bb51c3e1b54298c47f36d0eba016dfb79` |
| 43 | `lemma` | [diag_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/diag-pos.md) | 293 | `result-track:aa787f37dff585dc260803b1059836345d54c6aaed50a1ee438b3fb79ee87514` |
| 44 | `theorem` | [posSemidef_iff_dotProduct_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-iff-dotproduct-mulvec.md) | 306 | `result-track:cd81287bef08115f306b9a6fbf526b96ab99038a62b675ca3d77dfe27945ec3b` |
| 45 | `theorem` | [dotProduct_mulVec_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/dotproduct-mulvec-nonneg.md) | 314 | `result-track:0ce18f4f6fe06435c356bff34160e5450546ccc4eeec176e1e9ed4b5be42c1b2` |
| 46 | `lemma` | [of_dotProduct_mulVec_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/of-dotproduct-mulvec-nonneg.md) | 317 | `result-track:6dbe22621e518ff225c43754161d1261eab1687a61b27e5d8e362c6aef9cdc9d` |
| 47 | `lemma` | [conjTranspose_mul_mul_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/conjtranspose-mul-mul-same.md) | 322 | `result-track:0c5b15cc30e56c857cf5f246d19b7d3617e769f619cec619241d0065a48ad48c` |
| 48 | `lemma` | [mul_mul_conjTranspose_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/mul-mul-conjtranspose-same.md) | 330 | `result-track:00bbeb81f6c92b842f3f821c60e7823ea8d6394c34acacf97ebb858da702a9d3` |
| 49 | `lemma` | [pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/pow.md) | 334 | `result-track:cf279741fe08cf42afd9a0de90b1c63d5187bd47af2e9626c74125630d3bba84` |
| 50 | `lemma` | [inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/inv.md) | 344 | `result-track:baaab1795c2c592ee03e9edab75577c70c09b692ae06098d710bab83ff57f986` |
| 51 | `lemma` | [zpow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/zpow.md) | 351 | `result-track:4aaea83d3f78f50424f548de12cd88696378f61b58970ac4ba8d454017945eac` |
| 52 | `lemma` | [trace_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/trace-nonneg.md) | 358 | `result-track:32b40125f34ec846875d65d6a0af96d55cd7ecf5009f0f219b937ee70e2c00d7` |
| 53 | `theorem` | [dotProduct_mulVec_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/dotproduct-mulvec-zero-iff.md) | 362 | `result-track:7296ce05a8a49e487a42bf64845d84ca6c3d353fbcd4b7b681ea9a545efd2f53` |
| 54 | `theorem` | [toLinearMap₂'_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/tolinearmap-zero-iff.md) | 383 | `result-track:46ffb36e09acaff557f9fb1afb3906b66e5d7616b2f8deadd3f5dbda84a475c0` |
| 55 | `theorem` | [posSemidef_conjTranspose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-conjtranspose-mul-self.md) | 392 | `result-track:5ab154c11bddd8e2b5c29f5668d98f132550f6102ce90dc03a0b41578ffc623b` |
| 56 | `theorem` | [posSemidef_self_mul_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-self-mul-conjtranspose.md) | 401 | `result-track:ecacbca6e045755a0f41f2f49a434b52822ff9b25a53fd6ae6451f8e1fca9bf0` |
| 57 | `theorem` | [trace_conjTranspose_mul_self_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/trace-conjtranspose-mul-self-eq-zero-iff.md) | 411 | `result-track:ad13b7aea0ec403059345772e7fe37bbb731dac13ed163dd7def2762a478cfe2` |
| 58 | `theorem` | [trace_mul_conjTranspose_self_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/trace-mul-conjtranspose-self-eq-zero-iff.md) | 415 | `result-track:2f53404244f41beabbc2071ffbb1f6ae78c0ddde2a3398c92d15b292d3ee51f2` |
| 59 | `theorem` | [IsUnit.posSemidef_star_left_conjugate_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/isunit-possemidef-star-left-conjugate-iff.md) | 428 | `result-track:83e2cd2ad6617c81a289474f004e26103db6bef4f5e7be799dab14a7be8c2f7d` |
| 60 | `theorem` | [IsUnit.posSemidef_star_right_conjugate_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/isunit-possemidef-star-right-conjugate-iff.md) | 440 | `result-track:fa57baacd012abe4e754a9c0be8a18e144e2dab28baf738e4a9e9f78316addea` |
| 61 | `theorem` | [posSemidef_vecMulVec_self_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-vecmulvec-self-star.md) | 448 | `result-track:7326f9923d7d95b0f1c324472e470675317e177fdb9880ac219e4e95f903917b` |
| 62 | `theorem` | [posSemidef_vecMulVec_star_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/possemidef-vecmulvec-star-self.md) | 454 | `result-track:bce20efd7d5ac91133373095781bd91ff1a5893694d7880c8843024e801de6ea` |
| 63 | `theorem` | [posDef_iff_dotProduct_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/posdef-iff-dotproduct-mulvec.md) | 462 | `result-track:1643655fc03e79e0cee999b86549a7129eafcc435f4da5c165cede51639743f5` |
| 64 | `lemma` | [dotProduct_mulVec_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/dotproduct-mulvec-pos.md) | 474 | `result-track:499292bc1f3026b82e8ccc6c9faf936a02110e644f5738802b797bcff3b5cee0` |
| 65 | `lemma` | [of_dotProduct_mulVec_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/of-dotproduct-mulvec-pos.md) | 477 | `result-track:948b226625016d8760e14cf43eb11d20e7edb0343e874f301047f7e04b6419bb` |
| 66 | `lemma` | [conjTranspose_mul_mul_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/conjtranspose-mul-mul-same-source-edition-2.md) | 481 | `result-track:ea9658688a422395d41c470aa8603a1b3f9c3a69b943c78bb2d118d8c443fed8` |
| 67 | `lemma` | [mul_mul_conjTranspose_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/mul-mul-conjtranspose-same-source-edition-2.md) | 488 | `result-track:d1ae9456a4b9e1522f1e2d6154a67343505edfc4f019117a69f18806212b2ba6` |
| 68 | `theorem` | [conjTranspose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/conjtranspose-mul-self.md) | 495 | `result-track:dfb374d27cfb9a194622a6ba1f199491a4d69dda8d59446c1696a2af30cfd1be` |
| 69 | `theorem` | [mul_conjTranspose_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/mul-conjtranspose-self.md) | 501 | `result-track:bd092158f5de65d9eb7213a1a1431a47ac69362f96c32f9191fc0afdb185c039` |
| 70 | `theorem` | [of_toQuadraticForm'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/of-toquadraticform.md) | 507 | `result-track:861102173ffd9314b42dc76cc6a2c6a8984d8a4d42dc6826640b8ca6c3a74236` |
| 71 | `theorem` | [toQuadraticForm'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/toquadraticform.md) | 513 | `result-track:715458b3b527b9db7a1c36130ae91300babcbe47132626d9e6029b08666bfc31` |
| 72 | `theorem` | [Linear Algebra Matrix Pos Def Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/posdef-toquadraticmap-iff-matrix.md) | 520 | `result-track:ef4f7370558350a2e02fb316a4eae47707e5e926806a8db5dda4eb8d4cced5b1` |
| 73 | `lemma` | [trace_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/trace-pos.md) | 535 | `result-track:e533d4c205c795563cb8820d536c68224a41ced53d035cd149ffdf3adea1a787` |
| 74 | `theorem` | [det_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/det-pos.md) | 539 | `result-track:26fc70c4ec0e55f46a501e049c7a7cd6a0d0b1fef4627e1a24fe1bed3b89b85b` |
| 75 | `theorem` | [isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/isunit.md) | 565 | `result-track:5337bddcda4618ec88fc20971030852571043fb7a090de67b02b73df9e389a08` |
| 76 | `theorem` | [inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/inv-source-edition-2.md) | 572 | `result-track:bedaa44146e45321af312aa8542f16ce181de0f60536a5f0c0d386dbc7c8c49c` |
| 77 | `theorem` | [Linear Algebra Matrix Pos Def Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/posdef-inv-iff.md) | 579 | `result-track:18da772e7cf0e40a503b843311204dc4a6851665a13cd666988521102758cd89` |
| 78 | `theorem` | [Linear Algebra Matrix Pos Def Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/posdef-star-left-conjugate-iff.md) | 596 | `result-track:0be7764880b7bf2dc3a01b313ebb94e3a9d1ab74f4aea3a0b36d30a9ea142594` |
| 79 | `theorem` | [Linear Algebra Matrix Pos Def Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/posdef-star-right-conjugate-iff.md) | 610 | `result-track:1e08e86780269529033c0dde351e010ccc5afbc1ed577e73d697c9fb42b877e9` |
| 80 | `theorem` | [fromBlocks₁₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/fromblocks-source-edition-2.md) | 621 | `result-track:63add4464e68e3b503ff5798c1314bd06807b6d9f06b3bf19c92eecb3cc035f5` |
| 81 | `theorem` | [fromBlocks₂₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/fromblocks.md) | 640 | `result-track:35fa96a9f1eb26c822aafcf72c40ac530a4a1e3e17f301941dd0c998ec10158a` |
| 82 | `lemma` | [star_dotProduct_mulVec_mul_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/star-dotproduct-mulvec-mul-le.md) | 650 | `result-track:13f7315c7a186164e96a9972fb2bfea56a053c13cf72f55067c83c3142d3714e` |
| 83 | `lemma` | [finite_setOfPred_dotProduct_mulVec_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/finite-setofpred-dotproduct-mulvec-le.md) | 664 | `result-track:6c9e54ec786fe47070ca0f39d413997be6d518e5e9431b3cffcabf7493d89838` |
| 84 | `theorem` | [posDef_of_toMatrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/posdef-of-tomatrix.md) | 690 | `result-track:a8d3cc214edd098429468ec6ab1e3f0df514726d2dd4c39c34297f6decf34c00` |
| 85 | `theorem` | [posDef_toMatrix'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefNamespacedPublic.lean/declarations/posdef-tomatrix.md) | 696 | `result-track:c462ac086856169e94e088e05c48b798832d754691aa6ace88395515b98fbff4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c0d7e9ced5c59068f85b0f853af59ea4cc3487a1024d1a485f44dad0e44c2a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PosDef/Variantce22b1a00b965ec53d72c9575c249e78f9807234adefe1c218ab3f89bc4ba267.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
