# Verification target: Mul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f6575ea6c83c743e9281d990dc8e1d8542cc479",
  "lexical_observation_count": 151,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant3f7aa5065166718e2200229a3d9fd4b123efab238b9e394b75aaedcebbd9cefd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f6575ea6c83c743e9281d990dc8e1d8542cc479`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant3f7aa5065166718e2200229a3d9fd4b123efab238b9e394b75aaedcebbd9cefd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant3f7aa5065166718e2200229a3d9fd4b123efab238b9e394b75aaedcebbd9cefd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Diagonal` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct.md) | 63 | `declaration-track:f7b58ef7869bef2362e7279bebbbeacd30834ad1104018e20d088ef805ce1071` |
| 2 | `theorem` | [dotProduct_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-assoc.md) | 73 | `result-track:f13fd227f3e7dce72f718c5753d16b9fd4f9ee7e3481c32edd96eaf784ec54c9` |
| 3 | `theorem` | [dotProduct_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-comm.md) | 79 | `result-track:a38bf54139df89e35320c9ca49096bd8d75d1f922ae058eb5b41a772fc4dfad2` |
| 4 | `theorem` | [dotProduct_pUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-punit.md) | 85 | `result-track:409843822115a21667516b23dbea8af636481f0b8b63a58f34c531051860861c` |
| 5 | `theorem` | [dotProduct_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-one.md) | 94 | `result-track:fccd668f0a3ede43eb5b681c4a3ec47da1a92156a778a3457b9c91fac76dc5bf` |
| 6 | `theorem` | [one_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/one-dotproduct.md) | 98 | `result-track:505517c477bb8d04c4ddb6bd4377b92a6364ad38fd1e1c307e083e77761c41de` |
| 7 | `theorem` | [dotProduct_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-zero-source-edition-2.md) | 109 | `result-track:bfebb4456eb25ceaf5a6c131461f3b2deaa38783796836f76769ffa20c6603b5` |
| 8 | `theorem` | [dotProduct_zero'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-zero.md) | 114 | `result-track:4ec4572e585a572dbee637d2160541b67e9173c3bfa273039348c2cbcd1eeaaa` |
| 9 | `theorem` | [zero_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/zero-dotproduct.md) | 120 | `result-track:9ac83f0d7c6d9dda84cfb88311eba22e7e87bf40b99e062805ff56f50cf5d3ca` |
| 10 | `theorem` | [zero_dotProduct'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/zero-dotproduct-source-edition-2.md) | 125 | `result-track:f61b41ab701ec668c3411cdca8563f1ef8e4c988a83ce2f1fb47cfd9ac9bbbfe` |
| 11 | `theorem` | [add_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/add-dotproduct.md) | 131 | `result-track:349dbf5c531b8d97554080aaa87e67840089e67ad5cbeb887ada01bac3250d11` |
| 12 | `theorem` | [dotProduct_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-add.md) | 137 | `result-track:302f95d56a9b6c06c9b3746844cc5e5b983c4ac5bb1edc4142d7c46628ee9644` |
| 13 | `theorem` | [sumElim_dotProduct_sumElim](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/sumelim-dotproduct-sumelim.md) | 143 | `result-track:623179a1f7f67e110a56747f1d6c7b0126a32bb84349d16585d77b05bbe653aa` |
| 14 | `theorem` | [comp_equiv_symm_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/comp-equiv-symm-dotproduct.md) | 153 | `result-track:5640f434b866e7e5a10b29c742630a6f03288080b0aab7dcb2a64bce62d3604d` |
| 15 | `theorem` | [dotProduct_comp_equiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-comp-equiv-symm.md) | 162 | `result-track:b88dbb2df4d1099ffdeaaff45541314e162b2d5f6315fbb9f28948c9fa2f0a49` |
| 16 | `theorem` | [comp_equiv_dotProduct_comp_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/comp-equiv-dotproduct-comp-equiv.md) | 170 | `result-track:7e50d517896dee2029668563c64eb17e4e59e6915bcae439bc89054ca6a6cd48` |
| 17 | `theorem` | [diagonal_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/diagonal-dotproduct.md) | 183 | `result-track:12fd9f36e3844405ade5ba514b11e624ed663a1d9a330b50038fbf53239ae32d` |
| 18 | `theorem` | [dotProduct_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-diagonal-source-edition-2.md) | 192 | `result-track:ba2ea0c91f5d12e5f447ccea2108aea453bb20daa0b8c5dcfacb06b8e321477f` |
| 19 | `theorem` | [dotProduct_diagonal'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-diagonal.md) | 201 | `result-track:76f4feb936a7266d74608c965dbb4e541e4690930409f2e497522ac6df1d3a22` |
| 20 | `theorem` | [single_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/single-dotproduct.md) | 210 | `result-track:c2a1a77481f7152d0efe72adcd4201d84fc8941179354d6fffa80aa84197d2ee` |
| 21 | `theorem` | [dotProduct_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-single.md) | 219 | `result-track:ed458a20c56690a786a6196050ae3cad9cb524e16de3de451bec1afc451eba3e` |
| 22 | `theorem` | [one_dotProduct_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/one-dotproduct-one.md) | 234 | `result-track:2bb841852373d0973e35038b2e215e59b29778ad2a987e550eef0a30c8499c84` |
| 23 | `theorem` | [dotProduct_single_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-single-one.md) | 240 | `result-track:0918fe34ff4a80cc13cad663e2bc81effe3bc46cc97c80f080fbdc7714d64bf6` |
| 24 | `theorem` | [single_one_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/single-one-dotproduct.md) | 247 | `result-track:5fddf727d7aec1eeb2feaaaf40b6e1552838787385b4c9a8024aa0c882595d76` |
| 25 | `theorem` | [neg_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/neg-dotproduct.md) | 261 | `result-track:0585d26bd5903d363bf718f9c43dcc2fad00b37f5a546907287ec018c02b71eb` |
| 26 | `theorem` | [dotProduct_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-neg.md) | 266 | `result-track:1e04684af5636d7e0c0ef6657dedbd5645c7151f6afad5976a8ac10f87dfa8a0` |
| 27 | `lemma` | [neg_dotProduct_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/neg-dotproduct-neg.md) | 270 | `result-track:390e6d82775f03e31a1074adf1e1822511235acd6c1bdf77baee202dcbfd4950` |
| 28 | `theorem` | [sub_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/sub-dotproduct.md) | 277 | `result-track:6e36f4bdc571398aa603400bf9534b6a4605a0ea9f82e39954d0bce68927fa97` |
| 29 | `theorem` | [dotProduct_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-sub.md) | 282 | `result-track:c4fe26a12221a560168a7263140fd30ae415a9a6d436cd0c8c6623d0f329a52c` |
| 30 | `theorem` | [smul_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/smul-dotproduct.md) | 293 | `result-track:9ffd207cc68526a73bc1dcc1a724585cf602c6be44a63f41e610299a968b646f` |
| 31 | `theorem` | [dotProduct_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-smul.md) | 299 | `result-track:c5a7c6030482c6b48cab7610978d840f6ae460b335b1073b886d85717e6e1661` |
| 32 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/instance-source-edition-2.md) | 318 | `declaration-track:5dd508dcfcb4dc42b9675a96314b02cc3f44837d49e8200a8882a000ef05e0a4` |
| 33 | `theorem` | [mul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-apply-source-edition-2.md) | 322 | `result-track:f44f86b79906a7df678ce070acf25125bba6846e4720230e2e310ba630936df7` |
| 34 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/instance.md) | 326 | `declaration-track:1f38231cd99ac9542d49dc430e57bfaccbc53db25c3714f3cb315b59f6daf723` |
| 35 | `theorem` | [mul_apply'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-apply.md) | 328 | `result-track:7489bd795ad607728d76edf1161346b2de6136c93ae71ee2755dc1a27bae56a0` |
| 36 | `theorem` | [two_mul_expl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/two-mul-expl.md) | 332 | `result-track:633b50fc15cbaf269a8d8a691c065dd221337b9e528a0c1fe63ee6a3e4aab743` |
| 37 | `theorem` | [smul_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/smul-mul.md) | 346 | `result-track:0b89cfff229db8af0b911fcec144aba7c5b775a09672e57da0dd8e098d5beda7` |
| 38 | `theorem` | [mul_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-smul.md) | 352 | `result-track:6a6b77cb3387a723a11f30e7cff6048b0dc4d01f4651cafeba3c0a6448b8f3c7` |
| 39 | `theorem` | [mul_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-zero.md) | 364 | `result-track:89234becc866ea4e38f8b312e8ec15d251d14b9e6c881e6ba77b506e12607579` |
| 40 | `theorem` | [zero_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/zero-mul.md) | 369 | `result-track:e18eead9364c0f5f654b531ff47fc43d1e9bff95895e3fc033e19b9f3d0ddc66` |
| 41 | `theorem` | [mul_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-add.md) | 373 | `result-track:7b41dcfffd6ce03a2b65925544f61ccada72538d6e52b25dcd898b8b0c78e3ac` |
| 42 | `theorem` | [add_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/add-mul.md) | 378 | `result-track:caa548153660c12837b4fad24c3ed7d25b2efdcf8fe4162f1d23e6cc0e980f96` |
| 43 | `instance` | [nonUnitalNonAssocSemiring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/nonunitalnonassocsemiring.md) | 383 | `declaration-track:973b7686fff3193d0d69927b2ac1db03fbd05530f58834d4fb3503322e590181` |
| 44 | `theorem` | [diagonal_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/diagonal-mul.md) | 391 | `result-track:1271cdff4d06c968b2944df1da1c9d312aa371f391b24a41bf00dcc8e24d7ae9` |
| 45 | `theorem` | [mul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-diagonal.md) | 396 | `result-track:11abf78fe55f1552c69e5b5543f36a71276f89cb05be68d2a5aa90bae3080ac1` |
| 46 | `theorem` | [diagonal_mul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/diagonal-mul-diagonal.md) | 402 | `result-track:82eeb3da1aeeb89149378dcd86606ecdaf76661fce620ba4f8abcf6bdf83565b` |
| 47 | `theorem` | [diagonal_mul_diagonal'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/diagonal-mul-diagonal-source-edition-2.md) | 408 | `result-track:839c2b1bb945564ddc2c608ab71228d62d227ec1c94dc726db6183b5cb8242e0` |
| 48 | `theorem` | [smul_eq_diagonal_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/smul-eq-diagonal-mul.md) | 412 | `result-track:de50d09c3d2062069e77cc8f08c118d37524af5d8d241018d5968014907ee933` |
| 49 | `theorem` | [op_smul_eq_mul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/op-smul-eq-mul-diagonal.md) | 417 | `result-track:81dabaa54060b91debb657fc385ebcaf993a28b17ec186fa4e31d8d3116b3b3e` |
| 50 | `def` | [addMonoidHomMulLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/addmonoidhommulleft.md) | 424 | `declaration-track:329a00f902f61e4d7ce446ef0407c058a2b197e0f23fe9dd9b64b05f8f3a9660` |
| 51 | `def` | [addMonoidHomMulRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/addmonoidhommulright.md) | 431 | `declaration-track:966c0d67568c0664a2818907883a280d637890f6b837f094bfda5e579b88f8b3` |
| 52 | `theorem` | [sum_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/sum-mul.md) | 436 | `result-track:eeda076ff1dbc7cf35e7501e2ee79d1b8f19929ff9ad11cd41fe0f695db9169a` |
| 53 | `theorem` | [mul_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-sum.md) | 440 | `result-track:9b6c0dd6d12b3a7f3087496973ecd95704e066fb3189766047cec240fdeb7bd1` |
| 54 | `instance` | [Semiring.isScalarTower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/semiring-isscalartower.md) | 445 | `declaration-track:f6b3ac921fb62e7be483520de66efa2e5acc3317859b23ceaf7708595d72f4ab` |
| 55 | `instance` | [Semiring.smulCommClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/semiring-smulcommclass.md) | 450 | `declaration-track:d9ede970e1e60049b566036702d9f068feb86ef5e86dd9ebf59013e88875b120` |
| 56 | `theorem` | [one_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/one-mul.md) | 461 | `result-track:0cae81f596abd7111cd3a95e816d79ad39e1abaa334b3b76f8c5ae3d325c3b65` |
| 57 | `theorem` | [mul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-one.md) | 467 | `result-track:efccc46955e8d11dfba2254c9cbb0f51f9e63537b8d7405a39761590592aa128` |
| 58 | `instance` | [nonAssocSemiring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/nonassocsemiring.md) | 472 | `declaration-track:f74abe359384801d94e49c3da1a9bc4ee14450cc21beb702264a622b62e5e2a9` |
| 59 | `theorem` | [map_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/map-mul.md) | 479 | `result-track:6ab4121026c633f3fd3f41fd0efcc37cf22c4fb2b00921947092543d49122beb` |
| 60 | `theorem` | [smul_one_eq_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/smul-one-eq-diagonal.md) | 484 | `result-track:1403c9ac42cded8c1b3cf9828f60581b79dab9e16e1f60e93afcb91a2de3c55f` |
| 61 | `theorem` | [op_smul_one_eq_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/op-smul-one-eq-diagonal.md) | 488 | `result-track:67985e3539ff8b95d516d2b9fe6815d1b91dbe3d159017583178414d68eac44c` |
| 62 | `theorem` | [mul_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-assoc.md) | 500 | `result-track:429375d7dea16451111540bc81b96ec8c516fbb954b358cad5adb717c1141507` |
| 63 | `instance` | [nonUnitalSemiring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/nonunitalsemiring.md) | 505 | `declaration-track:5d9be833d4695d9295479682a54821cc9abf35ef07f308e3c0165ebf481cf628` |
| 64 | `instance` | [semiring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/semiring.md) | 514 | `declaration-track:edcb1ffbc8497f5d0188a96e7e0cd1743d85e7d8e3100525aa361051592ccf8d` |
| 65 | `theorem` | [neg_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/neg-mul.md) | 524 | `result-track:e170b1ff4dcc265de06e59ee5a93d8b61192469526884d9af70c8bb41c7d7f41` |
| 66 | `theorem` | [mul_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-neg.md) | 529 | `result-track:0804a6c1b4fdd4d99e3106da74ef55797470aadea2e08605a4d0e2bab6768e63` |
| 67 | `theorem` | [sub_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/sub-mul.md) | 533 | `result-track:6027e097701cded82b1ade596ed93e002b037869e4dae90d03ce014cde473c6b` |
| 68 | `theorem` | [mul_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-sub.md) | 537 | `result-track:bdbba104464e67cdd7068c1ee71cfdbc2a2dd783918bd67154430ac0d9c251e2` |
| 69 | `instance` | [nonUnitalNonAssocRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/nonunitalnonassocring.md) | 541 | `declaration-track:21e844e19f6a5b95b7a1de056f7dd366d463011f5f8b63a03653117872e4aefa` |
| 70 | `instance` | [instNonUnitalRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/instnonunitalring.md) | 546 | `declaration-track:a2ab3670f15bf9763f69f6e61a7eed61fe3de04da25e0d34b6250814a149dfa6` |
| 71 | `instance` | [instNonAssocRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/instnonassocring.md) | 549 | `declaration-track:b1ad167c3b222d1157438f6dc84268fbb0c543802a556eac21de4b63ad839cf0` |
| 72 | `instance` | [instRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/instring.md) | 553 | `declaration-track:63be6403bed95bdb3ebdb94e69e32bdb5a1acc7eb5a66fd05247eb15da320cf3` |
| 73 | `theorem` | [mul_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-mul-left.md) | 561 | `result-track:67b7d1af3d1fde966727edcd91c96643cbe0114938b69dc20f999acb45408434` |
| 74 | `theorem` | [smul_eq_mul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/smul-eq-mul-diagonal.md) | 571 | `result-track:e3f4ffb1abd92b5b5a8cfe9e6bb2a381c9a376695358e3142b066922be02a114` |
| 75 | `theorem` | [mul_mul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-mul-right.md) | 577 | `result-track:b0823785aba2ec33a3467e52e6d7ce7bf5d304c51467634b0ac32d9212c8b754` |
| 76 | `def` | [vecMulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmulvec.md) | 591 | `declaration-track:f6cd6ca43d637a25830ccd228d3b68027edcf28011c2b38bad50d287dbf842ab` |
| 77 | `theorem` | [vecMulVec_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmulvec-apply.md) | 595 | `result-track:5820c3c530db8425f456f0456556aa114abe7519ec827fcb567b5735eff2cb2d` |
| 78 | `def` | [mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec.md) | 610 | `declaration-track:76da79516da8df8603d37581a05fcf3a82f12e309fddc46c3d1c228fce8d194c` |
| 79 | `def` | [vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul.md) | 624 | `declaration-track:98fc8e709f42be449c8320f3c7a5a6092f9abb66dd94cb5351006e747a9ad419` |
| 80 | `def` | [mulVec.addMonoidHomLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-addmonoidhomleft.md) | 632 | `declaration-track:136fb401d93516970d30a8ba053314c58c112bc705160aa54cab6d415aa5de7b` |
| 81 | `theorem` | [mul_apply_eq_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-apply-eq-vecmul.md) | 642 | `result-track:b5a9d3e14650aec33e456ac113821bf9042a9fef381ae4e5ee8b7abefc71c628` |
| 82 | `theorem` | [vecMul_eq_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-eq-sum.md) | 646 | `result-track:0196d5fe83cd694b7e22c125508ba7e245c0d09321c03da29c58ef0367b24939` |
| 83 | `theorem` | [mulVec_eq_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-eq-sum.md) | 649 | `result-track:21c1d38b07850b70594c0bd613c9f5d9b301374d08c7e7125693fc777db619b8` |
| 84 | `theorem` | [mulVec_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-diagonal.md) | 653 | `result-track:8188d4c605f9efc0a4ad1e572707d64e7e9872c7309af510dba5a5d5642f5227` |
| 85 | `theorem` | [vecMul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-diagonal.md) | 657 | `result-track:4b53811e9f55744cff2080643609261992d820bc0e2ddda56d04309f7e2c8869` |
| 86 | `theorem` | [dotProduct_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/dotproduct-mulvec.md) | 662 | `result-track:9ce8cbdca60d2d188d293949cee4a0afda97f9589f96f9795c6ddb6cd9348cdc` |
| 87 | `theorem` | [mulVec_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-zero.md) | 668 | `result-track:ae817c4397bdc2f17160dc89668bd94dac74a128dad222bd8f0743f579ee1531` |
| 88 | `theorem` | [zero_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/zero-vecmul.md) | 673 | `result-track:c4c4d1aabf330092510c084e80ea666c9887c2b07bc9fbc5643fef698f94fd87` |
| 89 | `theorem` | [zero_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/zero-mulvec.md) | 678 | `result-track:f4472fed8b790a81271c3a834bac7d002ee285f4ee7d0bee1a9a7a078d7d87c5` |
| 90 | `theorem` | [vecMul_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-zero.md) | 683 | `result-track:a9f66f32ea53ecf48b3a7bef54618192cd0d161551679f615a9ee40f5333240a` |
| 91 | `theorem` | [smul_mulVec_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/smul-mulvec-assoc.md) | 687 | `result-track:26de9f5247b6765adab74acec07836db97c90d278ed67ab737b79b305c348ec5` |
| 92 | `theorem` | [mulVec_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-add.md) | 692 | `result-track:85500327f642cd726bb7a96e45499fffe03dc340a880648b2de641b0e13adfaa` |
| 93 | `theorem` | [add_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/add-mulvec.md) | 697 | `result-track:dfd045640166e8465f90cfbc6b10692f29051787fac1eeaa5f22028598f87d48` |
| 94 | `theorem` | [vecMul_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-add.md) | 702 | `result-track:026a278ef9592cd16335421bfa8d18b9268ec9391e7ed10d9a957af4132d0857` |
| 95 | `theorem` | [add_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/add-vecmul.md) | 707 | `result-track:385e556e1e1e7d3dd37cb49da6185db0b34ed212cbcd86c4d5e551814e7adefb` |
| 96 | `theorem` | [vecMul_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-smul.md) | 712 | `result-track:28b43e6084764cc44fa360393f4eb3dcf1fb95917c44f8fda7b1002ed4e5278f` |
| 97 | `theorem` | [mulVec_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-smul.md) | 718 | `result-track:66d6301db80ac9135c4b69265509f46554de638536cf19eb525c08e7a45db495` |
| 98 | `theorem` | [mulVec_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-single.md) | 725 | `result-track:4e6514ac1fe34ba672b50c0f4851cb23dd6f8dfeae06429a169696fc12eb44ef` |
| 99 | `theorem` | [single_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/single-vecmul.md) | 730 | `result-track:c3552d16214fd3ea6228676c053e20c3fc1611aca11a3682738e61bc75ebd88d` |
| 100 | `theorem` | [mulVec_single_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-single-one.md) | 734 | `result-track:863bd890388b6a25aa4ee041204bdc49454d2998096003b3bf27d4c969ae2fca` |
| 101 | `theorem` | [single_one_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/single-one-vecmul.md) | 738 | `result-track:87e73a166840bc1529fb546bfafa3552c8170234f71f971f485bba59b1447b7b` |
| 102 | `theorem` | [diagonal_mulVec_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/diagonal-mulvec-single.md) | 742 | `result-track:b99ebc7bd27574d42e15077bb9b271825b3d08c47a09b1dd872b0c033caa312b` |
| 103 | `theorem` | [single_vecMul_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/single-vecmul-diagonal.md) | 748 | `result-track:54ea55a2139d1f12e8b13950be14e1e8c42887b6d90d16abe07378df7f803676` |
| 104 | `theorem` | [vecMul_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-vecmul.md) | 761 | `result-track:1d994093b307a89f5e3e9b44706dbaece0b56f92ebd5a28aae9bedde4cedf2e2` |
| 105 | `theorem` | [mulVec_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-mulvec.md) | 767 | `result-track:71c0e7e1591a4605cb582ad7e61de0ad2fa5a5a325636c1d7c1efae50358aeb1` |
| 106 | `theorem` | [mul_mul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-mul-apply.md) | 773 | `result-track:60e52237df3dcf9d4d5291a3405b7b326a39ead12faccbd92759f8269fc4412a` |
| 107 | `theorem` | [mulVec_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-one.md) | 785 | `result-track:2448d82488a11211d5617c0fac00fe30567606a1e586df407fcc7cbf634eec4b` |
| 108 | `theorem` | [one_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/one-vecmul.md) | 788 | `result-track:660fac68802ffa632775ca1721b253374ce5b2162034f63c0a9265f51feefd4b` |
| 109 | `lemma` | [ext_of_mulVec_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/ext-of-mulvec-single.md) | 793 | `result-track:5be42e2dcd67502206d6d4225157d5f21b7d9cd49e1e3139a6b268ceebcdc271` |
| 110 | `lemma` | [ext_of_single_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/ext-of-single-vecmul.md) | 800 | `result-track:ebcd71c14514007ef3cc1ea5d0aad497e3a0ff32e6a89ca17fdc2e443a7a9e4b` |
| 111 | `theorem` | [one_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/one-mulvec.md) | 810 | `result-track:5157effef3cdb33d38fa44770c68236c61330f1f42a993b913bb1c5910870d88` |
| 112 | `theorem` | [vecMul_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-one.md) | 815 | `result-track:89d79d135487a1c1757ccc057e17d1afffd5dcb49ca0d057ccfb341c85e8e17f` |
| 113 | `theorem` | [diagonal_const_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/diagonal-const-mulvec.md) | 820 | `result-track:6ed4fcfafdd64b55041473d41c24f52bf9390277a778741b5d2f8860cfe364cf` |
| 114 | `theorem` | [vecMul_diagonal_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-diagonal-const.md) | 825 | `result-track:4a01bd3917a15effc22fada94fef54f264da085a339ba67f8ba019c59761fd30` |
| 115 | `theorem` | [natCast_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/natcast-mulvec.md) | 830 | `result-track:edc6b8a852ab4461bf9e2b729bb01af0fb436e39da441e488fdf278526d20c28` |
| 116 | `theorem` | [vecMul_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-natcast.md) | 834 | `result-track:d37ca738d524adc503241716fe05eed7dc9857d864c1d60efd7857def077627b` |
| 117 | `theorem` | [ofNat_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/ofnat-mulvec.md) | 839 | `result-track:e847e36079c61030d87af9fbc67df57c748585cada29cb24ed533fbd53c7e80d` |
| 118 | `theorem` | [vecMul_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-ofnat.md) | 844 | `result-track:2db6a3bf1554221261f1528df13c247c135d164ab42afb4f149d00db33c8878b` |
| 119 | `theorem` | [neg_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/neg-vecmul.md) | 854 | `result-track:080eacd8523d10c4b4502cce3f3d1c3c55c84beae4eef917c8680821c74e48cb` |
| 120 | `theorem` | [vecMul_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-neg.md) | 858 | `result-track:4a27c3aa5ca6e4decf2e442d3fbe92c2087661d6882ca5ab1832e77fa465149f` |
| 121 | `lemma` | [neg_vecMul_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/neg-vecmul-neg.md) | 862 | `result-track:c9d6da8d37510c743e7c905665e52305584afdfa9de1ababf9f8815878fc5727` |
| 122 | `theorem` | [neg_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/neg-mulvec.md) | 865 | `result-track:84f6eb54769f8951a7a0d6dc87ecddc15d7891846559ed28e93e211f580e1208` |
| 123 | `theorem` | [mulVec_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-neg.md) | 869 | `result-track:a6c705d3fe04191765f9a730a41ded8ebe425c01fcb7f1bdeab7d66732a83482` |
| 124 | `lemma` | [neg_mulVec_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/neg-mulvec-neg.md) | 873 | `result-track:c4a83831a925a3b9d1b26275ec137caf35d5d017f34b0907a098cb9f87256d8f` |
| 125 | `theorem` | [mulVec_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-sub.md) | 876 | `result-track:dc3748a99974e66bbd2527b1f2c896876606a822d081bfda802a4b1793a42225` |
| 126 | `theorem` | [sub_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/sub-mulvec.md) | 881 | `result-track:070572c047a33cd976dad1e5aa0676cf14fbbec9551efca3034d45c8056fdd57` |
| 127 | `theorem` | [vecMul_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-sub.md) | 884 | `result-track:fd95b18564cdedfcd80e3db605e718fee8705d3b3634a6bdf06ef99fd3ba03d9` |
| 128 | `theorem` | [sub_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/sub-vecmul.md) | 887 | `result-track:d47916684e4d1ff6ade38955d9ecaa98ad53931c6dbcda191fb9cc531661d208` |
| 129 | `theorem` | [mulVec_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-transpose.md) | 898 | `result-track:4241fdcd3c7e3e570cc4604d8ebef9daba7790c702f30337d9411d2a0ebd36f1` |
| 130 | `theorem` | [vecMul_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-transpose.md) | 902 | `result-track:dc7570a85114be3158491eea69aea8b60b1358d2848808d20bed28f0f8857d68` |
| 131 | `theorem` | [mulVec_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-vecmul.md) | 906 | `result-track:75bf8380f0ff5217e272a079999ddf965904e4af914bc18a39e5ad21ac457a5d` |
| 132 | `theorem` | [vecMul_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-mulvec.md) | 909 | `result-track:1459a534bee397d5baff7b7281ed49713be0498833d928037165eff0e8434f4e` |
| 133 | `lemma` | [mulVec_injective_of_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-injective-of-isunit.md) | 918 | `result-track:f9d3946662948c520f1daf2e053f56498a6fc08b1d01fd098af58bf3443ba55c` |
| 134 | `lemma` | [vecMul_injective_of_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-injective-of-isunit.md) | 924 | `result-track:d9a4915b077e29f2561a620f550618a8f0116b7aa815ed40070ebb326c3e6ac9` |
| 135 | `theorem` | [mulVec_smul_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mulvec-smul-assoc.md) | 936 | `result-track:6e1198ac317627c90d5c08bf9e20c58f90e90b4403d96ed9c3d20343fd451ac0` |
| 136 | `theorem` | [intCast_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/intcast-mulvec.md) | 950 | `result-track:ec2b8bc29aa3006365e1b9e84bb40df86ae72c3ac62943999da35977f89ee934` |
| 137 | `theorem` | [vecMul_intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/vecmul-intcast.md) | 954 | `result-track:ae23ce1abbbd707f4db17db620f25fae4fedb2b18cba4a35b5857a63b9684ee1` |
| 138 | `theorem` | [transpose_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/transpose-mul.md) | 964 | `result-track:e8a12af29f308d8cb64c5bfeec741e0911448a342d27d0417009f3074c7f2e3c` |
| 139 | `theorem` | [submatrix_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/submatrix-mul.md) | 973 | `result-track:a1e15aa6340b8b9c80fbc501606fb2b6002fba178acf33cf1a4fb171ae79ee5d` |
| 140 | `theorem` | [submatrix_mul_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/submatrix-mul-equiv.md) | 983 | `result-track:f1085a8dcad88c0ba801a941dd49117a392d79a35a33d6d82aae28c714e5bf3c` |
| 141 | `theorem` | [submatrix_mulVec_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/submatrix-mulvec-equiv.md) | 988 | `result-track:cfb8a238b04f57a2121a8804898514af679d3ae764e1866ba4ecd2ecfec94c07` |
| 142 | `theorem` | [submatrix_id_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/submatrix-id-mul-left.md) | 994 | `result-track:73efde81e756e880511ba38bce0074561094fc9fd691c8143b465a14513b9a60` |
| 143 | `theorem` | [submatrix_id_mul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/submatrix-id-mul-right.md) | 1000 | `result-track:f20fc6c6a0bddbbdefaedd15e7961c507d629303e1a482980a00b71d44cfb955` |
| 144 | `theorem` | [submatrix_vecMul_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/submatrix-vecmul-equiv.md) | 1005 | `result-track:e8c5341076330196db5fda74820784b8e3c4dc5ae9f1c324c49bff20d2f10c67` |
| 145 | `theorem` | [mul_submatrix_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/mul-submatrix-one.md) | 1010 | `result-track:d8a6facf5cdf191d1c36042dde6472424dd43af464e6f8ce6c0c917f4b8342dd` |
| 146 | `theorem` | [one_submatrix_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/one-submatrix-mul.md) | 1021 | `result-track:387352d3dae32354843469724d8f5366920ca7cd13c7ad3ff46e9aa1b7857bb3` |
| 147 | `theorem` | [submatrix_mul_transpose_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/submatrix-mul-transpose-submatrix.md) | 1032 | `result-track:d42e9a925aca37c215412bba28c08f301664bb5aab695028119cb0bc0613c618` |
| 148 | `theorem` | [map_matrix_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/map-matrix-mul.md) | 1042 | `result-track:27a45e5563dd349f1360a0b2a3981d6270f9496214085ae8f50edfd9284063a2` |
| 149 | `theorem` | [map_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/map-dotproduct.md) | 1046 | `result-track:9b7bb759db3edeeea98a9d0e566a900f3d59feff421a5c85924532bb1123d40f` |
| 150 | `theorem` | [map_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/map-vecmul.md) | 1050 | `result-track:1585d9387c1681977d262d2f9410b3c58ccb084d11d28edab8f82ad143a2f008` |
| 151 | `theorem` | [map_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Mul.lean/declarations/map-mulvec.md) | 1054 | `result-track:fedc2b8b69ece582080b6cfc49eb525f8a371bcc6e4f624e78ec1959d3a99a75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81d893801a1b581c8f2e07baf9eb129f1b06ebeff7e42e4e794e4536a13f2c28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant3f7aa5065166718e2200229a3d9fd4b123efab238b9e394b75aaedcebbd9cefd.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Mul/Variant3f7aa5065166718e2200229a3d9fd4b123efab238b9e394b75aaedcebbd9cefd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
