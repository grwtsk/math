# Verification target: Matrix Determinant Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c536a6eaffecee5111c064aa0257798c22dc402",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c536a6eaffecee5111c064aa0257798c22dc402`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.PEquiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Block` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Notation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Fin` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Alternating` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [detRowAlternating](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/detrowalternating.md) | 68 | `declaration-track:2cfc420ce8b7de300dd31bf38d81907176cfa1180eda4ca8540efaee3258d962` |
| 2 | `abbrev` | [det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det.md) | 73 | `declaration-track:07f3ce4d737dd7bf576b9ceb4b85dc28ccec68c4c94c14224fe6b8a08c6a621e` |
| 3 | `theorem` | [det_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-apply.md) | 77 | `result-track:9b18298cb4c08493b13af566bcd513b569d17b753a6bd8c6c7dab84fc7aef40f` |
| 4 | `theorem` | [det_apply'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-apply-source-edition-2.md) | 82 | `result-track:cdfa2d1d6cfeb7c10a15b2113f6cf5acca81764226e075a5a62ea4c67c80927e` |
| 5 | `theorem` | [det_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-diagonal.md) | 87 | `result-track:9df45583346fa4d82e9d501f3c9175366c4f8a9da3fd0f9acf28978244e4d040` |
| 6 | `theorem` | [det_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-zero.md) | 100 | `result-track:43a620aeb426a71b010fe0ab9b11f0dfdd964c0ab299f456568f0cf1d30c2f7d` |
| 7 | `theorem` | [det_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-one.md) | 105 | `result-track:cb36da1ed21b3399a4ac94dcd330c2c82864fc9f2875cc6326a39a7973d688ab` |
| 8 | `theorem` | [det_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-isempty.md) | 108 | `result-track:806ef2991dc65c8de57d4761c46bb0cf655df91bb058071ceaa3acc2e6218e45` |
| 9 | `theorem` | [coe_det_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/coe-det-isempty.md) | 112 | `result-track:fa11ca5a53a88d4af9517fbc07250eda3c0faad35b5c45cecb6188b8fbd348ba` |
| 10 | `theorem` | [det_eq_one_of_card_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-eq-one-of-card-eq-zero.md) | 117 | `result-track:4fb22c1fac0c1a13b236ad7a814afd824879e73f9f0483dd2f15b2e3b8de1a80` |
| 11 | `theorem` | [det_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-unique.md) | 126 | `result-track:c3936c83bc2c5647f449baaaa643c9d6dc33584ebb5e0ac42c233861f71c040f` |
| 12 | `theorem` | [det_eq_elem_of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-eq-elem-of-subsingleton.md) | 130 | `result-track:5411a904b0e4a047d59c69d26165d2be4529282af0e57a56a3ef3938b530e86e` |
| 13 | `theorem` | [det_eq_elem_of_card_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-eq-elem-of-card-eq-one.md) | 136 | `result-track:ad18783b7cb53ae3a5dcb578fcc03a4d4384f210dc61b648f2960407d1539c5f` |
| 14 | `theorem` | [det_mul_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-mul-aux.md) | 142 | `result-track:c91efafc3dd1dd12a1f3da2efa900bdfb457bed8940a32485678e2cd5adf8d91` |
| 15 | `theorem` | [det_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-mul.md) | 161 | `result-track:993bc45ddab36628fc1b8cd250a30d8ebbbaaf911a288c9711b60d2d1bc63d28` |
| 16 | `def` | [detMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/detmonoidhom.md) | 198 | `declaration-track:3597eb564d41df99853f968167181dcea56e8c5c0341088da0581a66391c9590` |
| 17 | `theorem` | [coe_detMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/coe-detmonoidhom.md) | 205 | `result-track:e194475c078f8f9c2a583a2b29179d4bfc942449db193e474d0913b6e3a62e0a` |
| 18 | `theorem` | [det_mul_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-mul-comm.md) | 210 | `result-track:4c1270c5363395efe60aa9b264623c20cb6f90a6d0ddbb0896a6fe680c95d5d6` |
| 19 | `theorem` | [det_mul_left_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-mul-left-comm.md) | 215 | `result-track:9ee9ca8619e918c85a49f187d005b4235055c430200c389027936471a4e7c08f` |
| 20 | `theorem` | [det_mul_right_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-mul-right-comm.md) | 220 | `result-track:53ecf5fef65338834aa99d8cf5e3ef18fcb80e6dfbc87faac10bad468425db07` |
| 21 | `theorem` | [det_units_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-units-conj-source-edition-2.md) | 225 | `result-track:b17d7b1f79ff44b830702dfdd58e2c65591a8812110dbeccd7a77be9c10f4c3e` |
| 22 | `theorem` | [det_units_conj'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-units-conj.md) | 231 | `result-track:006476da7cd50161170e4cc5b2424f3a3cf5eba571b540ccb00d634695594712` |
| 23 | `theorem` | [det_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-transpose.md) | 238 | `result-track:6bca9426da7ce301ba003ba9202020d1ef77a30e19d6bc0c9436a8d6db62286f` |
| 24 | `theorem` | [det_permute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-permute.md) | 250 | `result-track:38a5894e6b0b2a89b41b882d3e8bdcd997f1332a8a488e2272c6d58a774dc32f` |
| 25 | `theorem` | [det_submatrix_equiv_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-submatrix-equiv-self.md) | 257 | `result-track:156962a7aa66f689a79fee24726903ca8b8583d0785f39d7086bad1a36fc7434` |
| 26 | `theorem` | [det_reindex_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-reindex-self.md) | 274 | `result-track:d0eac99958763cb0efc87bc6582c7b6f53d07966ef6ededdf2cfcd71e3685bac` |
| 27 | `theorem` | [det_permutation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-permutation.md) | 280 | `result-track:05eba7b06266d3177066bf64bc762d9a7c5ff3e0921ba0d9c3395883d9bbe2c7` |
| 28 | `theorem` | [det_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-smul.md) | 286 | `result-track:a9934c594308e619bc2ceb12db3c3cabc0ab24d42844277e0d5525ccf1666e0d` |
| 29 | `theorem` | [det_smul_of_tower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-smul-of-tower.md) | 294 | `result-track:a62fb182926292beffc903acc3ffa6cbd143da21111a0a2efaac18ca1701c4a8` |
| 30 | `theorem` | [det_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-neg.md) | 299 | `result-track:0f6fe8ee0bd7cb994664fd943b01d3bd565aa6bff7eb256a19c4cfdbe3627bbd` |
| 31 | `theorem` | [det_neg_eq_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-neg-eq-smul.md) | 305 | `result-track:c64492541f8f728b38a70fcf6faf7f4d81f1aa1fb84e3598dcfb2d460e849aa4` |
| 32 | `theorem` | [det_mul_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-mul-row.md) | 311 | `result-track:7440133aab7162d532a6b08f45b06589db69e20d1303c77ebd89406659feee06` |
| 33 | `theorem` | [det_mul_column](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-mul-column.md) | 323 | `result-track:131c0fb788ae8740dd06fa3355724433fa8dcc9c91a702c9e4ae9d0012500dd5` |
| 34 | `theorem` | [det_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-pow.md) | 329 | `result-track:21b54190f6e9bd2dbd5f908e0114f9dca267c0e5fcc1605108c18a091b343c93` |
| 35 | `theorem` | [Matrix Determinant Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/map-det-source-line-337-occurrence-2.md) | 337 | `result-track:827d58a69a4165154530ebe701318df0d420b6a0eb522e41a45fc6cffdf00ae8` |
| 36 | `theorem` | [Matrix Determinant Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/map-det.md) | 342 | `result-track:591c82a9519f953f42d675dbe41d99ba25c6faaa0fa1fe305cfcb2df8b0dd895` |
| 37 | `theorem` | [Matrix Determinant Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/map-det-source-line-347-occurrence-2.md) | 347 | `result-track:e45eeb4b2f343b63b111bbe264eb8d2da5129119fcd24ed7e375b62a4f5e49c4` |
| 38 | `theorem` | [Matrix Determinant Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/map-det-source-line-352-occurrence-2.md) | 352 | `result-track:e4dedb88e3b28ecc964c74602e9a1700eef9048c285fe80a8bfa1d08f010ce55` |
| 39 | `theorem` | [det_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-conjtranspose.md) | 360 | `result-track:f8393f0928cbc34a7f11b9e0c0d1328db0bdc033b97cc03d5cebafd6832acef7` |
| 40 | `theorem` | [det_eq_zero_of_row_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-eq-zero-of-row-eq-zero.md) | 373 | `result-track:9dba6123c0312987b6eb4e19219812aadacc78c3673622c05c60509a0a4d0cf2` |
| 41 | `theorem` | [det_eq_zero_of_column_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-eq-zero-of-column-eq-zero.md) | 377 | `result-track:123ef0546eef1e6237fd581695fa175bb506c7aab62c959e359b261a359a12d8` |
| 42 | `theorem` | [det_zero_of_row_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-zero-of-row-eq.md) | 386 | `result-track:96e1fa9b37c9bfe92c35349fd9d5a9adcbd061006ce33138a9dac37552919584` |
| 43 | `theorem` | [det_zero_of_column_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-zero-of-column-eq.md) | 391 | `result-track:73c9d0c210481d26f1650c87120c892023f45994d0f1dcb0825ffdc5b255aa3c` |
| 44 | `theorem` | [det_updateRow_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-updaterow-add.md) | 398 | `result-track:bddebe48e1e667806ce2297e94637664c074d5a3d877f7920ee80a6c26150034` |
| 45 | `theorem` | [det_updateColumn_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-updatecolumn-add.md) | 403 | `result-track:0c8d0387715704c28b8c5b499892cfe675cf5d6c79c2816d46e5fc41e7f87be1` |
| 46 | `theorem` | [det_updateRow_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-updaterow-smul.md) | 409 | `result-track:0a056d11f42e7576c92dcc2b5dd87efbe00478d6da85ea2029de302fe4355438` |
| 47 | `theorem` | [det_updateColumn_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-updatecolumn-smul-source-edition-2.md) | 414 | `result-track:fa1b0581ae87502aba5e42ad081b11284b0728abd62078fd24812204bb2bb647` |
| 48 | `theorem` | [det_updateRow_smul'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-updaterow-smul-source-edition-2.md) | 420 | `result-track:6076fa223aa2d40e8367bf877041c6c4f9fdcd47efbe7b7c4c23c3c41949e7ad` |
| 49 | `theorem` | [det_updateColumn_smul'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-updatecolumn-smul.md) | 425 | `result-track:19fcf6915a2131afe749a7f3ec706bd4ae835319b3297258ca86f045299deffd` |
| 50 | `theorem` | [det_eq_of_eq_mul_det_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-eq-of-eq-mul-det-one.md) | 439 | `result-track:4ef8dc39809db52d76bf91dd8025e2c98add8cda4c9599bd3058b1dc26ac781b` |
| 51 | `theorem` | [det_eq_of_eq_det_one_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-eq-of-eq-det-one-mul.md) | 447 | `result-track:300e3bc2981306255aa897a193cfe8bb21a50f87dd29b238cd17574460c1360c` |
| 52 | `theorem` | [det_updateRow_add_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-updaterow-add-self.md) | 455 | `result-track:e313fa1de191191b5d175e6623aa0a7989045a3fcd82007c58294a12e84f0f4e` |
| 53 | `theorem` | [det_updateColumn_add_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-updatecolumn-add-self.md) | 461 | `result-track:03d15a385496849dcec057910071e88c48bb3bd757aac1539012a1bafabc2dee` |
| 54 | `theorem` | [det_updateRow_add_smul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-updaterow-add-smul-self.md) | 467 | `result-track:9cd54a4cbbcffacd568cdcaadf06d427fcc8391ae6dc69272f635278732240c7` |
| 55 | `theorem` | [det_updateColumn_add_smul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-updatecolumn-add-smul-self.md) | 473 | `result-track:dcb45d6737835985761edc99a6c8ac0760fa0c0cd711b6b73b68af9f617816d0` |
| 56 | `theorem` | [det_eq_of_forall_row_eq_smul_add_const_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-eq-of-forall-row-eq-smul-add-const-aux.md) | 479 | `result-track:8b846af98da05e62ae55f7d9e7df28249427a42e18cff37cd9a9ad4155853afd` |
| 57 | `theorem` | [det_eq_of_forall_row_eq_smul_add_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-eq-of-forall-row-eq-smul-add-const.md) | 513 | `result-track:de15cb33f05913c7a4bd2b62f3ff3e2bc18ee0a354dfc6672ccb882628619f71` |
| 58 | `theorem` | [det_eq_of_forall_row_eq_smul_add_pred_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-eq-of-forall-row-eq-smul-add-pred-aux.md) | 523 | `result-track:1a0514654fdf3aed04813f6bdff5a2e1f88e0cd607eee0b493fc625e034b4ca7` |
| 59 | `theorem` | [det_eq_of_forall_row_eq_smul_add_pred](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-eq-of-forall-row-eq-smul-add-pred.md) | 562 | `result-track:db4f8aac6a293d4d02a594fd06ed8fc732158c7007ca17da6cdf89b0306bbbfb` |
| 60 | `theorem` | [det_eq_of_forall_col_eq_smul_add_pred](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-eq-of-forall-col-eq-smul-add-pred.md) | 571 | `result-track:1f9a93efa25d5a8e0774bae89b98aa5e1b23fe1289436be30143ff4248661ffc` |
| 61 | `theorem` | [det_blockDiagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-blockdiagonal.md) | 582 | `result-track:c52097b96cc0a518ecf25ae6d87a9ece670d0d68f777d4ebecfd5c803fd6c155` |
| 62 | `theorem` | [det_fromBlocks_zero₂₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-fromblocks-zero.md) | 657 | `result-track:4f513ed23727ba3396ee6dcbea6214501731258da175a7832829a3eafc4e5b53` |
| 63 | `theorem` | [det_fromBlocks_zero₁₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-fromblocks-zero-source-edition-2.md) | 714 | `result-track:df7023c501f78b5c09c014f505730514f06d5b6734410de582153b45cd01208e` |
| 64 | `theorem` | [det_succ_column_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-succ-column-zero.md) | 721 | `result-track:7d67280e30bc0189640e10b6ea77d25048bbefa1c487b7e5a4ae4ee06dca0b9f` |
| 65 | `theorem` | [det_succ_row_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-succ-row-zero.md) | 753 | `result-track:121240500392972b61f496a9ff518c90538f31324cf2547ed64b0e5370daa2e2` |
| 66 | `theorem` | [det_succ_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-succ-row.md) | 762 | `result-track:1d63fd89ccaa768356c4966bf804a20664a947c4a4c1251ba835d8a68e9f01d5` |
| 67 | `theorem` | [det_succ_column](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-succ-column.md) | 782 | `result-track:5897b153a15b2bf7d7b3a5fd62fc0aeae8e29ece6cfbb3599bf2012926a38959` |
| 68 | `theorem` | [det_fin_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-fin-zero.md) | 792 | `result-track:7da352f5b69ff4a1652dec9e946d0199e439ea913d1f3ea0a135b9156f706fc7` |
| 69 | `theorem` | [det_fin_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-fin-one.md) | 797 | `result-track:fa021eb0f116fe1d46f2179a5555fd7f9feb1dcd5cd3a8a8e532df90daf2d50b` |
| 70 | `theorem` | [det_fin_one_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-fin-one-of.md) | 801 | `result-track:c4034251a9644737a882344003597e77e220d6a1d323e06a3f0e30865f06f607` |
| 71 | `theorem` | [det_fin_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-fin-two.md) | 806 | `result-track:875c3685d9fcbe8e9d97846f0490abb750315a5454f7493beeccaf201d623cb7` |
| 72 | `theorem` | [det_fin_two_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-fin-two-of.md) | 812 | `result-track:39d0235b52981e0ab91ef87e8f5d3b975f1efb125766c0824a0b94cf70fde41c` |
| 73 | `theorem` | [det_fin_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminantNamespaced.lean/declarations/det-fin-three.md) | 817 | `result-track:be770d602d364a35271c7fdc949f6bed451edff649be9644feb9dc2ec1d4126b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=befef09af5717b2e3b8cc3c1393056e3a633173b501520ea10a59d83c1b6c781 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
