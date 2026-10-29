# Verification target: Mul Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cad4bb0b0196e60a4d85388263191e7bb9c5486",
  "lexical_observation_count": 151,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant6070be6cf4300ca73c4916f22331062a219e449c4c6d3062c1fd7fdbb8ebaae9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cad4bb0b0196e60a4d85388263191e7bb9c5486`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant6070be6cf4300ca73c4916f22331062a219e449c4c6d3062c1fd7fdbb8ebaae9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant6070be6cf4300ca73c4916f22331062a219e449c4c6d3062c1fd7fdbb8ebaae9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Diagonal` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct.md) | 71 | `declaration-track:566335fd476dc81ff3bd23f6e80e2dfd78a4c69543b7d427454916ac180d2b73` |
| 2 | `theorem` | [dotProduct_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-assoc.md) | 81 | `result-track:3c644ffc99c0feefef014e7cc7828cab5fa63fc6c78085ca722dab336a7b5ca5` |
| 3 | `theorem` | [dotProduct_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-comm.md) | 87 | `result-track:3b014ae55accfcb1a443a0d3358615b219ebfe6081ad0014054aa79d41d6c3b6` |
| 4 | `theorem` | [dotProduct_pUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-punit.md) | 93 | `result-track:6457e80b35acc28d7d63bac6047867fb8c526a5f284a5cd59564c09598b73d8a` |
| 5 | `theorem` | [dotProduct_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-one.md) | 102 | `result-track:022483d6f9fbd5f8b6dd32177bfa26de7569dafb64e44f75c44462ff52443497` |
| 6 | `theorem` | [one_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/one-dotproduct.md) | 106 | `result-track:ffce4778e05ca9254e114ac9aff0cd5e0a874611a01dd8fdfdce6789dcf19061` |
| 7 | `theorem` | [dotProduct_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-zero.md) | 117 | `result-track:6fafb0681075a957cb07337f35051fd2ca5f4a91c0b7f94b866f2808b3195c2b` |
| 8 | `theorem` | [dotProduct_zero'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-zero-source-edition-2.md) | 122 | `result-track:851470b80d903318ab276e8acc848bc9c32ff8d14450d615309920196acd0563` |
| 9 | `theorem` | [zero_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/zero-dotproduct.md) | 128 | `result-track:0de1e19258b6430ca7a2157bec4cdeb400219a81c31350d52a4c73627dcbc9fa` |
| 10 | `theorem` | [zero_dotProduct'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/zero-dotproduct-source-edition-2.md) | 133 | `result-track:cd94de66758083d75bb2d357d61fd81191b9b10d59b6ce3fd4601058356c91d6` |
| 11 | `theorem` | [add_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/add-dotproduct.md) | 139 | `result-track:aa5efd8f90caf84c5d5922988eecb215711e2a6186c9811edc44c9723c8cc6e1` |
| 12 | `theorem` | [dotProduct_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-add.md) | 145 | `result-track:a002e78e10196a66368ea5a080654f61f9c542f2c22204d8b770c156c3b38f69` |
| 13 | `theorem` | [sumElim_dotProduct_sumElim](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/sumelim-dotproduct-sumelim.md) | 151 | `result-track:d4fdf3e9d030bd94e4ca1c62fd50640749ea05013041924bd6fef7b27ca8babc` |
| 14 | `theorem` | [comp_equiv_symm_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/comp-equiv-symm-dotproduct.md) | 161 | `result-track:0e8a414e93a53ca3fae4d08e0480db2f9c611218d5952fe68dcf328529a64e42` |
| 15 | `theorem` | [dotProduct_comp_equiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-comp-equiv-symm.md) | 170 | `result-track:ed754dbbb1e48b9785a00109274b39242f20c93942c71bf3833eae4776af5fe8` |
| 16 | `theorem` | [comp_equiv_dotProduct_comp_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/comp-equiv-dotproduct-comp-equiv.md) | 178 | `result-track:e831d9286cc41c4f1e80b9a36afda5b5d1b284588ced729a805d58509146aeb4` |
| 17 | `theorem` | [diagonal_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/diagonal-dotproduct.md) | 191 | `result-track:a5f9f05ec6a4f23895d915b13765e9eeb4bf8becf91b87adfb6b74892171a4be` |
| 18 | `theorem` | [dotProduct_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-diagonal.md) | 200 | `result-track:763017d5fd20f1b89173c3669a193b21f790a6c3b9cb06110cfe64169d85a592` |
| 19 | `theorem` | [dotProduct_diagonal'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-diagonal-source-edition-2.md) | 209 | `result-track:e145251d9705eebb7bbb5da45d116533257383519819a5050f2463ff72c3d212` |
| 20 | `theorem` | [single_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/single-dotproduct.md) | 218 | `result-track:7e8f561ab8acfd06d8b208fff1ffd0f7e6175c43897418166b414222b0bfb15e` |
| 21 | `theorem` | [dotProduct_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-single.md) | 227 | `result-track:6cb81b6db376bf615414b0c8645f08f1cb7d0effd396b5487707c19a203c0fc1` |
| 22 | `theorem` | [one_dotProduct_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/one-dotproduct-one.md) | 242 | `result-track:d645705fb7770c24ef56ae47566605fb9bab1c923593f6f584e9e53d944f38bb` |
| 23 | `theorem` | [dotProduct_single_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-single-one.md) | 248 | `result-track:308c73eea242dd3c8271ee353d9eb2ebb1fdc321bedd8387b5c5d42ba8e22234` |
| 24 | `theorem` | [single_one_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/single-one-dotproduct.md) | 255 | `result-track:c1e4076293e32a2c80ca477e82b7f91cc52151f28d1c5a55fc653c723ab04f4b` |
| 25 | `theorem` | [neg_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/neg-dotproduct.md) | 269 | `result-track:cf6163743e7eda9c83c4d9172081df5459868a58a5c748c41c5c7117fb0ffab2` |
| 26 | `theorem` | [dotProduct_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-neg.md) | 274 | `result-track:34898535122db0297d230e143bf269105e5c354904d5d4583dd3b500345a781a` |
| 27 | `lemma` | [neg_dotProduct_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/neg-dotproduct-neg.md) | 278 | `result-track:f2fffd2d7f9d8b4e4bcc6801aa4f85a10cf1f0b19a535d3fdfe85d141f037d72` |
| 28 | `theorem` | [sub_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/sub-dotproduct.md) | 285 | `result-track:b4b5ee15e1576328afcfc4861a71208139fd23647c5fc828521ed1fb97a785a0` |
| 29 | `theorem` | [dotProduct_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-sub.md) | 290 | `result-track:90ec8845c5bdb5a1b6ee606ae334d291f1cd0dc42f1ccdea17b422ebf1d224f2` |
| 30 | `theorem` | [smul_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/smul-dotproduct.md) | 301 | `result-track:be0cc4ffdade3069d854a4a5db27a8fdc7a9b16cdb05ea170a0317f1c0ba9774` |
| 31 | `theorem` | [dotProduct_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-smul.md) | 307 | `result-track:f4d6e3579b1a557dabf9f591f7195aed9ad159a3153c820365f19f487e10eb0c` |
| 32 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/instance.md) | 326 | `declaration-track:16e8c4f05e65df99a6a2cf9249772c655992e5ff54a9fe2e032eab0d677f7ccd` |
| 33 | `theorem` | [mul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-apply.md) | 330 | `result-track:534d0317b62832978eab9d0bc8050b07f6b8c78854a5a49797fd253176fe6be2` |
| 34 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/instance-source-edition-2.md) | 334 | `declaration-track:a26dd5e0499dd1a5705ba1edb1bc541031972397a2bbd8e64a46eb94a8300f5b` |
| 35 | `theorem` | [mul_apply'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-apply-source-edition-2.md) | 336 | `result-track:e8c7f1a43e5f53ef5a795170f8c8093011b9d5d7f6f731c4ffb09fa980eb910e` |
| 36 | `theorem` | [two_mul_expl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/two-mul-expl.md) | 340 | `result-track:3d8303137aa6ac25976b7f8c51dd74e99ad78d89b383f311a638ce08f70f18fd` |
| 37 | `theorem` | [smul_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/smul-mul.md) | 354 | `result-track:e0182a5a28ae01d3a36bad49de2f4afa72168f3f4268a08d3ea05260510ad49c` |
| 38 | `theorem` | [mul_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-smul.md) | 360 | `result-track:f2cff189a83ca155f117328ff96667e15465db822869964a0d13cd17843ffd91` |
| 39 | `theorem` | [mul_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-zero.md) | 372 | `result-track:33710a1a94b5d11937d97eaffb2e979868147a53a5acea28b3d296023efbfa67` |
| 40 | `theorem` | [zero_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/zero-mul.md) | 377 | `result-track:0c3756242a6995b80cfb4ecf106c0da9f2804f831bcc9c94338c0b2b25f47526` |
| 41 | `theorem` | [mul_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-add.md) | 381 | `result-track:7103646a18f9486d88a4d32cd0447b01ee6553240f35219c2b08f10a376b11f5` |
| 42 | `theorem` | [add_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/add-mul.md) | 386 | `result-track:2e4cec939f54003f657bdc9869fa30512461140c594341cf91b3b8a9178de92d` |
| 43 | `instance` | [nonUnitalNonAssocSemiring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/nonunitalnonassocsemiring.md) | 391 | `declaration-track:47d56f53b8fbfc3092ef55e52e9ff5eb614a3659c8911ac5eab45dc8a9d9fc7c` |
| 44 | `theorem` | [diagonal_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/diagonal-mul.md) | 399 | `result-track:a23d99040b2fa2e10f906b9a81fc8ad632a9b6dd4c41473d0a22d0549784aa4c` |
| 45 | `theorem` | [mul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-diagonal.md) | 404 | `result-track:a317cdbfd8290f611cc65a44dbd9e35b1af6a8b7f1fc60cb93e0a0ce9295f96f` |
| 46 | `theorem` | [diagonal_mul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/diagonal-mul-diagonal-source-edition-2.md) | 410 | `result-track:66d1a8e55478b751feae4cc85b02afdfe7d2cfd6699bb7983195bf166dfd1d6a` |
| 47 | `theorem` | [diagonal_mul_diagonal'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/diagonal-mul-diagonal.md) | 416 | `result-track:0fdae698bb44a0379e59e5f41a6eed612d0ac3cd6f7ca597299a558bf5361f9e` |
| 48 | `theorem` | [smul_eq_diagonal_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/smul-eq-diagonal-mul.md) | 420 | `result-track:9ffdefc69cd2e349e311d7ffd29f1a76444d4c0efc13b046f6f7ffdcda9397ea` |
| 49 | `theorem` | [op_smul_eq_mul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/op-smul-eq-mul-diagonal.md) | 425 | `result-track:7e4baa2f630163146f9d2793257f9c582acf4661bb3e3117e915afe754ee1a67` |
| 50 | `def` | [addMonoidHomMulLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/addmonoidhommulleft.md) | 432 | `declaration-track:a0855d7e3c527d3041f82896541535c8cc46e30597c7bae41f9c528fa9c4925d` |
| 51 | `def` | [addMonoidHomMulRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/addmonoidhommulright.md) | 439 | `declaration-track:2966c5ddf7c858514842b24a3d67082236b6f8b746792622fcfd52aa01347243` |
| 52 | `theorem` | [sum_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/sum-mul.md) | 444 | `result-track:ba3e010f6432dfa6d95ea09a29d76804bfa52ea533547579be3d2b6c79ea8cb2` |
| 53 | `theorem` | [mul_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-sum.md) | 448 | `result-track:213e32bdcd7dbab22962f819c74b83d20596a6d62eba7d3dbfd4a898dfe4af29` |
| 54 | `instance` | [Semiring.isScalarTower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/semiring-isscalartower.md) | 453 | `declaration-track:afb27bfef970f0147404ce304951ac5f93b449e1c5a4a4d598a477d429db6d80` |
| 55 | `instance` | [Semiring.smulCommClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/semiring-smulcommclass.md) | 458 | `declaration-track:9cd8c0e8fcac321d83c76a4841637f681e10b8ecfe4074c4a657e0dcaf486221` |
| 56 | `theorem` | [one_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/one-mul.md) | 469 | `result-track:86fe41e1e616db5dc7b8f20ba4375af77a4624d113238ced8df98810075dde6a` |
| 57 | `theorem` | [mul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-one.md) | 475 | `result-track:2ad1f801af1296ec5f9d307fa0fbeca705c0d8b883a0501875caeca8f27b4b72` |
| 58 | `instance` | [nonAssocSemiring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/nonassocsemiring.md) | 480 | `declaration-track:be73f3627926a0271d9ef78d52e892fe80ab98440ce785eb25282309ffec5c4a` |
| 59 | `theorem` | [map_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/map-mul.md) | 487 | `result-track:ab59e5fa0aec2f6142bb00a831a0a6ab797396ce9bbdb4b1309eb796b6e7357b` |
| 60 | `theorem` | [smul_one_eq_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/smul-one-eq-diagonal.md) | 492 | `result-track:d6a2f7ccc39ef400ea33495310085af012d593b9947cdb1cce314270487cc9dd` |
| 61 | `theorem` | [op_smul_one_eq_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/op-smul-one-eq-diagonal.md) | 496 | `result-track:c0ab50347695d4be8ce990665d756e1c9c5bd5b20671a09f27e846ef26e6f8e1` |
| 62 | `theorem` | [mul_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-assoc.md) | 508 | `result-track:d04710d486b920c72256c57e89e682113dc6bf1c1786092939939e3dfd1d0501` |
| 63 | `instance` | [nonUnitalSemiring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/nonunitalsemiring.md) | 513 | `declaration-track:7e9eb3c56689df6951ae666ec85b3d4d5312315c88a9ecfa7ceafbcdaf44c660` |
| 64 | `instance` | [semiring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/semiring.md) | 522 | `declaration-track:efb7849d4b55036dcfbbba7ce4755a57256cddb4e91dc0cb048570fc97b29cbd` |
| 65 | `theorem` | [neg_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/neg-mul.md) | 532 | `result-track:ca83e607aec261b655043262a821ee54692410fd46f74fa679c4a02bb2e421cd` |
| 66 | `theorem` | [mul_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-neg.md) | 537 | `result-track:7128ab9aa5c53bd282ef731990c67270baa1537edf7fb07b01a5fdd7da13c411` |
| 67 | `theorem` | [sub_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/sub-mul.md) | 541 | `result-track:d14bee79519b963612fcff4e40be635d74c86e61ee0b8e9170b31ffc427ff952` |
| 68 | `theorem` | [mul_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-sub.md) | 545 | `result-track:b0de9a73e8ef5b136eefe69c5adc37eb3295a7bafb4eafcfc0be4bb504352277` |
| 69 | `instance` | [nonUnitalNonAssocRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/nonunitalnonassocring.md) | 549 | `declaration-track:b1ea45d7bd1cbd5d08365dc27d840bc65ca660fa04695d8e28f064baaaacf878` |
| 70 | `instance` | [instNonUnitalRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/instnonunitalring.md) | 554 | `declaration-track:b058274248943d62cb807682d12970d01e5d5132f354f680d669eda23afb4fa9` |
| 71 | `instance` | [instNonAssocRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/instnonassocring.md) | 557 | `declaration-track:a513fd20b0025590fafce7a6ddfe0127043ee92996b7f31c8f0ab38372ccac36` |
| 72 | `instance` | [instRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/instring.md) | 561 | `declaration-track:9f52ec33cf43b7ae6bd6743e471f80cd4160f20d4e71c69a298ea62d5ab33ee8` |
| 73 | `theorem` | [mul_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-mul-left.md) | 569 | `result-track:d79d4b26089e9a10868822fdef5b6401a9f2e0f9b84c2a0a0bcc2078f121601a` |
| 74 | `theorem` | [smul_eq_mul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/smul-eq-mul-diagonal.md) | 579 | `result-track:66fbf733838cc239fbc3b2d00522147990b7fcdbac8e9ad81b1b5d99ff762d42` |
| 75 | `theorem` | [mul_mul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-mul-right.md) | 585 | `result-track:a92cb283193a459ba36e73ed44cec9a3afbfc47337e169e855b7a6904ffd0564` |
| 76 | `def` | [vecMulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmulvec.md) | 599 | `declaration-track:aef236a710caa81eb7fd6a9ac2439f33736a51da2cd04e4c527b0828c2ce046a` |
| 77 | `theorem` | [vecMulVec_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmulvec-apply.md) | 603 | `result-track:e82261b35448ae280cec782e91ba3c115fd5ad9b8706fd5b7acb134e533d03e1` |
| 78 | `def` | [mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec.md) | 618 | `declaration-track:1842d1692c50a784d545ab4c1cac1026b2e44d5e02f77f94433d22453b6e8b82` |
| 79 | `def` | [vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul.md) | 632 | `declaration-track:b91aa8ba86951b36c6b3cf6554786ce6c1bd5bd2d638f5a5e5eb9ac6b3281021` |
| 80 | `def` | [mulVec.addMonoidHomLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-addmonoidhomleft.md) | 640 | `declaration-track:d1bbe8d6c903a01ee24c27d49f53ad1febea947dbfc8fbe7cb0ca1d4ef447f01` |
| 81 | `theorem` | [mul_apply_eq_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-apply-eq-vecmul.md) | 650 | `result-track:1e61498a99309be2797d6f9d85b4c589739cf18a07175cc90c7abec23317e9fc` |
| 82 | `theorem` | [vecMul_eq_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-eq-sum.md) | 654 | `result-track:5a28341b2a2bd324da8e78449c7f3613447d457b8924d71bd6288035428919d5` |
| 83 | `theorem` | [mulVec_eq_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-eq-sum.md) | 657 | `result-track:2e14ec04c1adc090e3bb009887a867d59d8e5afd3100f9518a0f0055561fdcb4` |
| 84 | `theorem` | [mulVec_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-diagonal.md) | 661 | `result-track:7829b7acd9eb8a5e947daf4e35461f06e1b43d93e031349d098aefd5790f3859` |
| 85 | `theorem` | [vecMul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-diagonal.md) | 665 | `result-track:84c2ae3fa02f0723879b8df0ab806c25aaec892dce826db4a69b1be8aeb1552e` |
| 86 | `theorem` | [dotProduct_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/dotproduct-mulvec.md) | 670 | `result-track:8238b8257ca4c54b2e2c95a8be61444658a97212eb4d8dc0ccfb41d3fd97e406` |
| 87 | `theorem` | [mulVec_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-zero.md) | 676 | `result-track:be7d3800359683a1eb173a50ba989c266576b455d8f8b701a167e7dd3c292299` |
| 88 | `theorem` | [zero_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/zero-vecmul.md) | 681 | `result-track:319d68e35e3d6b3c6554c6bbca1206fb75fb2d256755cf76e251ccceb095f1e8` |
| 89 | `theorem` | [zero_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/zero-mulvec.md) | 686 | `result-track:00c5ad67e094cb29c7e924a96f6984e06cf3cdc2c9adfa9ee7598afcdd2b0521` |
| 90 | `theorem` | [vecMul_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-zero.md) | 691 | `result-track:c5c5336e21c403c9c2fb518f5ca0507f2029a58f6fa43392934988e2baa8d9a3` |
| 91 | `theorem` | [smul_mulVec_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/smul-mulvec-assoc.md) | 695 | `result-track:5ec2266ea44c92343b52998cde02bdad77b393c5a9df26bfd2a51ca8a17c5d1a` |
| 92 | `theorem` | [mulVec_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-add.md) | 700 | `result-track:a5d89f96f2005c559161d2d5754516e49d4a895f5b9a8df172632d7b46715040` |
| 93 | `theorem` | [add_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/add-mulvec.md) | 705 | `result-track:37af2dd4381c485bc9ad41265e55769bdb765bad528747284bcc7e580d0465b7` |
| 94 | `theorem` | [vecMul_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-add.md) | 710 | `result-track:44e34a0f401d93ea5138f0ad0b12bbf542531b88fea3d712cfe3786d97804163` |
| 95 | `theorem` | [add_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/add-vecmul.md) | 715 | `result-track:91998dc358e6182c8858aba11691cd4274e1ea3ab13710af982957e4a188963a` |
| 96 | `theorem` | [vecMul_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-smul.md) | 720 | `result-track:b4043fd235565162d50b3afd9056e6a5fc47ee09e4f6f87932bd43ee0917a8c5` |
| 97 | `theorem` | [mulVec_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-smul.md) | 726 | `result-track:302edfced58a6a78a74ce39a67a749e599d5a97b803a22cb28a47f73de9a5ac6` |
| 98 | `theorem` | [mulVec_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-single.md) | 733 | `result-track:ead10c1c9e914524a29ffa28ac98540ca40eafc0113472ef47b4478e0dce7251` |
| 99 | `theorem` | [single_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/single-vecmul.md) | 738 | `result-track:7af2e74bb37c2671b63b25cb5347cc1f8185ae0c5dd1cfd1dc9a6239d29af808` |
| 100 | `theorem` | [mulVec_single_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-single-one.md) | 742 | `result-track:83c7de6b8b563504edafec02b7d1359d03cfd056c61f9fe672a8b024929263b1` |
| 101 | `theorem` | [single_one_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/single-one-vecmul.md) | 746 | `result-track:38adc9f6046bdfd3e9d5f822c3f0e2d4414c9d2040c859f8edd67789e4f3a252` |
| 102 | `theorem` | [diagonal_mulVec_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/diagonal-mulvec-single.md) | 750 | `result-track:8549754b94eda1d995faa3a77a950afd47b5917080aacb595edd1d7c1d2f5920` |
| 103 | `theorem` | [single_vecMul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/single-vecmul-diagonal.md) | 756 | `result-track:8732015e64dabe8d31762e685960f62af9877e3fc8c3520f64d4e89dd92c2ada` |
| 104 | `theorem` | [vecMul_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-vecmul.md) | 769 | `result-track:33f3d1c89e2b10b1f2bddc967b2f43fac6740ec7c83b23d0eea43423be73eca6` |
| 105 | `theorem` | [mulVec_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-mulvec.md) | 775 | `result-track:d7d166e9df8d9977a79d66515bb89922bc51e9df99aef7cddc7927332c5bf2ac` |
| 106 | `theorem` | [mul_mul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-mul-apply.md) | 781 | `result-track:b7b1f35689c7b14010f3280490c14563feaeef24984039eedbe35c23da567513` |
| 107 | `theorem` | [mulVec_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-one.md) | 793 | `result-track:897d37e9abb2c7224940a7645f65ff4fc5343b67d0e275ca0dd890261a14e7ae` |
| 108 | `theorem` | [one_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/one-vecmul.md) | 796 | `result-track:46ee658be8069b7d1e70517a9ec8a7eb058fd3afebf19089f3b226fab191ba3b` |
| 109 | `lemma` | [ext_of_mulVec_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/ext-of-mulvec-single.md) | 801 | `result-track:3c59481adf03215c72f80e80e3ab2405a228e2ab4de2c2da58b121f470a0ade3` |
| 110 | `lemma` | [ext_of_single_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/ext-of-single-vecmul.md) | 808 | `result-track:e2e53ba5488417ff613633770c9dc2ed935531295c6158e005f6404eb764621d` |
| 111 | `theorem` | [one_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/one-mulvec.md) | 818 | `result-track:36f29511d40a7bfa19fbacea6542d7f9eb18f511e6a489bc25ed03aa68ffd258` |
| 112 | `theorem` | [vecMul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-one.md) | 823 | `result-track:3f9dd83c70b392f464670dd08f01c9e3705a75c8ad2a3f01baaa45b99c011d48` |
| 113 | `theorem` | [diagonal_const_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/diagonal-const-mulvec.md) | 828 | `result-track:95e5ef1b3ac25978e7dba06fb97b75df475ce9cff1cdc6c9df2cf94f47b9dad7` |
| 114 | `theorem` | [vecMul_diagonal_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-diagonal-const.md) | 833 | `result-track:acf8c36d97c6e22f77dc47005a31c96a596f2d6d8609d0e22373156130a86051` |
| 115 | `theorem` | [natCast_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/natcast-mulvec.md) | 838 | `result-track:e8fb96d40c80417371447a120e8d2e805b9184ffcedbf1749b0ebde8206b5c93` |
| 116 | `theorem` | [vecMul_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-natcast.md) | 842 | `result-track:7e0f9cda28c7defcabbccbfba21dcb7306e65594bea970caebee176faeac3a94` |
| 117 | `theorem` | [ofNat_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/ofnat-mulvec.md) | 847 | `result-track:e0b761616157b7b0367a417041f7b9b593ac81c34a040ceac229cdb6d3176e4c` |
| 118 | `theorem` | [vecMul_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-ofnat.md) | 852 | `result-track:3fe20cea4c1aab4d85e82ffff3e86961e4dfe188931055e3678910dcfcd287da` |
| 119 | `theorem` | [neg_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/neg-vecmul.md) | 862 | `result-track:dbb00fc4fc5da571c274bedc13562ce888891ead2347ecf76b99304fc1c601df` |
| 120 | `theorem` | [vecMul_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-neg.md) | 866 | `result-track:ce19b6b39098bd9b31cf20cbf620838c7ab6c801ed39cc8592eeae77b1763374` |
| 121 | `lemma` | [neg_vecMul_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/neg-vecmul-neg.md) | 870 | `result-track:c8b5cac948523c0ed11e87bf19f1a1d953f03b376159dc39069f637575c2149a` |
| 122 | `theorem` | [neg_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/neg-mulvec.md) | 873 | `result-track:2de70b05063da8bcbde508e5edeaca273fdaef24751e2ef0a9d79db94a491a50` |
| 123 | `theorem` | [mulVec_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-neg.md) | 877 | `result-track:0fd1017a8d7cc578048b6be05a954df2bc0b22d0702e96e03d9e24f0b3e50612` |
| 124 | `lemma` | [neg_mulVec_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/neg-mulvec-neg.md) | 881 | `result-track:58b5d68cc5dcb89a305acb721f0e8d2b5f81a759104dffb94106e132afc04f5d` |
| 125 | `theorem` | [mulVec_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-sub.md) | 884 | `result-track:6bab29ffa8415604b217e86ac32c8daae15e040315e5149b73a0d06b63ddc561` |
| 126 | `theorem` | [sub_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/sub-mulvec.md) | 889 | `result-track:285b1e2075cec56da4a80349edbbeae86b65cc6a00363edf4d54416155a5c2b9` |
| 127 | `theorem` | [vecMul_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-sub.md) | 892 | `result-track:a5c93d113f34159201cff5115b375953990f8ad217cc946e5f9cf6a238640ba6` |
| 128 | `theorem` | [sub_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/sub-vecmul.md) | 895 | `result-track:d9a4fdfcd6223eb1688e995cee11dd3b7a94f549c18fbde18347109f070a1b5a` |
| 129 | `theorem` | [mulVec_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-transpose.md) | 906 | `result-track:3a72b2cd359ac90d70b6153f4ceb6698f6639290320f22bcfa9eb2ce26bfedca` |
| 130 | `theorem` | [vecMul_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-transpose.md) | 910 | `result-track:caea7b8daadc78dc473275c3c0b93d2fcf0c85f7bdf03b65e844a0192e3a53cf` |
| 131 | `theorem` | [mulVec_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-vecmul.md) | 914 | `result-track:5473a7a522775a401f3f63f5fbc69b57efc0c5d629846829e57c3de12f2971f0` |
| 132 | `theorem` | [vecMul_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-mulvec.md) | 917 | `result-track:63a1b57c483fd35fcb9ae254d6f0d1b0fe1ce78e93aee9e835f49a60c4da162e` |
| 133 | `lemma` | [mulVec_injective_of_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-injective-of-isunit.md) | 926 | `result-track:438003bdf721eeade9a4a23655375474cb6f878dc6998f534e94c6923fe59106` |
| 134 | `lemma` | [vecMul_injective_of_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-injective-of-isunit.md) | 932 | `result-track:c2e6741ef9d9fb56abef298f94ce9d918954d37e87afe57cc700e662b4a33418` |
| 135 | `theorem` | [mulVec_smul_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mulvec-smul-assoc.md) | 944 | `result-track:7d4b3f77f20cd73ec3e127f1934e29d5d9343f7cfd5e13b3bc0bc92768a73151` |
| 136 | `theorem` | [intCast_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/intcast-mulvec.md) | 958 | `result-track:b3aaeb8cd101bcd4675c870f04d958c987f3a16b48ec83d3118f3c4104daba8a` |
| 137 | `theorem` | [vecMul_intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/vecmul-intcast.md) | 962 | `result-track:ef75f28fffd777382baa9b8ef4313db473b0944d6cf10e323a4058fb145f99e4` |
| 138 | `theorem` | [transpose_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/transpose-mul.md) | 972 | `result-track:71a72fee2d76ad0dc9904a658b7ff89a5f71bf4ac9551c9114f52ea75938df53` |
| 139 | `theorem` | [submatrix_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/submatrix-mul.md) | 981 | `result-track:abe2b066707e9ad751acc246a47166a4060a7b6d2c351cf0a391d2a3b3435fc6` |
| 140 | `theorem` | [submatrix_mul_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/submatrix-mul-equiv.md) | 991 | `result-track:8cbdcdcbcfe6e60756cdde595ca4d26f4ebc5bdab7b83dda7dc8610632596cdd` |
| 141 | `theorem` | [submatrix_mulVec_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/submatrix-mulvec-equiv.md) | 996 | `result-track:c526f2d402c2193ef3df7d7202054b34bee8cbed579cbcb3b480b968f89a6877` |
| 142 | `theorem` | [submatrix_id_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/submatrix-id-mul-left.md) | 1002 | `result-track:ca8421662d0320e94acdc5dce901320bac2a955c9e0c565f9b6ef93dbcdaa5c5` |
| 143 | `theorem` | [submatrix_id_mul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/submatrix-id-mul-right.md) | 1008 | `result-track:fec028c896aff0ffd4e69cc924f09de221f0bb93b724f57e6c52c4e6f35a6b17` |
| 144 | `theorem` | [submatrix_vecMul_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/submatrix-vecmul-equiv.md) | 1013 | `result-track:95668d4639525a55088159cb9bb19064ee01f22d5d5da46b49544114e97fb1f1` |
| 145 | `theorem` | [mul_submatrix_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/mul-submatrix-one.md) | 1018 | `result-track:46539b4e46f9ae1359fa04c420e5600cc5f7ea43919b363c1149e79daa0cda28` |
| 146 | `theorem` | [one_submatrix_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/one-submatrix-mul.md) | 1029 | `result-track:e9063b77af48c199f27f14a7a4cff9e572d4ac80f6d780cadcc5f02eb488e734` |
| 147 | `theorem` | [submatrix_mul_transpose_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/submatrix-mul-transpose-submatrix.md) | 1040 | `result-track:2e802404576ed6c1cdc17f35b275ad7d9d0b47682325b2ded5691036718f1438` |
| 148 | `theorem` | [map_matrix_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/map-matrix-mul.md) | 1050 | `result-track:acf6f39bda66e974477b43e84f9008a45af342d0091b7605722537b1b025be9b` |
| 149 | `theorem` | [map_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/map-dotproduct.md) | 1054 | `result-track:01dee472c29e39b64b1890167a386ca9993b677441c281d206ea87a74aea5450` |
| 150 | `theorem` | [map_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/map-vecmul.md) | 1058 | `result-track:f79cb0fa879e1316b16932674a877e7e430ae71300478152615611de98f52982` |
| 151 | `theorem` | [map_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MulNamespaced.lean/declarations/map-mulvec.md) | 1062 | `result-track:72b6bb31333a431c43a8ebbcd7f8d879f39410efb8a0f81943aec26bc4ff510b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5733e5c04a69e7db66319d764e58e207d6516c47a282bcf37265d03d54cc881 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant6070be6cf4300ca73c4916f22331062a219e449c4c6d3062c1fd7fdbb8ebaae9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant6070be6cf4300ca73c4916f22331062a219e449c4c6d3062c1fd7fdbb8ebaae9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
