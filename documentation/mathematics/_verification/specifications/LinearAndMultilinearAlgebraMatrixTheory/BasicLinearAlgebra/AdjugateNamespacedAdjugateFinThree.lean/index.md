# Verification target: Adjugate Namespaced Adjugate Fin Three

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96d38cb25f7eecabfc4715a81adaf3b9e557cbaa",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variantc62a80a95f8a8d7af38c991aced7de2d90c6bb29822719bb92504326f5736a39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96d38cb25f7eecabfc4715a81adaf3b9e557cbaa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variantc62a80a95f8a8d7af38c991aced7de2d90c6bb29822719bb92504326f5736a39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variantc62a80a95f8a8d7af38c991aced7de2d90c6bb29822719bb92504326f5736a39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Regular.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.MvPolynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Polynomial` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cramerMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramermap.md) | 80 | `declaration-track:4facf2597d03d399aa12468b4538a28922cf2c1efb54fc916c92201b65282a81` |
| 2 | `theorem` | [cramerMap_is_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramermap-is-linear.md) | 83 | `result-track:07453cc455a6cc5ec3675b33311e95c69d21aa0e7d8aaa4ed42591bd370bad3d` |
| 3 | `theorem` | [cramer_is_linear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramer-is-linear.md) | 87 | `result-track:1ffebdb2b6ef075df8483e412797139c58d0966bf363dd9fde078da20108cf65` |
| 4 | `def` | [cramer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramer.md) | 98 | `declaration-track:f0f0b0738ef0c739a99ea11371e4a5acc6880f703c2edf768f7f38dbc088e7bd` |
| 5 | `theorem` | [cramer_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramer-apply.md) | 101 | `result-track:a628973ccbd8d7b5da23850a9130ea776cdf2ab510041de91fc6ddb5d3cf45ef` |
| 6 | `theorem` | [cramer_transpose_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramer-transpose-apply.md) | 104 | `result-track:be0a33323c332d474e94a17aa78ff5531065b64665a027c09f41645bf8727cff` |
| 7 | `theorem` | [cramer_transpose_row_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramer-transpose-row-self.md) | 107 | `result-track:ab06ecbdaf6da3f161f7497457222b35b1a51fab2f7e2f8ab8c4fbb748ab79de` |
| 8 | `theorem` | [cramer_row_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramer-row-self.md) | 119 | `result-track:9894c6bada02dbf4433b9ad15509871904fdbb225454f209c67ad0e4731b5e44` |
| 9 | `theorem` | [cramer_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramer-one.md) | 125 | `result-track:968ac3e1bd4bd717f5f79021dee0562bb20d920c383bb18bb8e7a432c585a8d4` |
| 10 | `theorem` | [cramer_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramer-smul.md) | 132 | `result-track:f93509e1e32f96ee92dc3d2803218d36c2cddab02d6c96f15d44ccea27b43791` |
| 11 | `theorem` | [cramer_subsingleton_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramer-subsingleton-apply.md) | 137 | `result-track:c8024dd800ed3b98857ab9f9a3c999a8b532411ba0ba615231ba6fe8e336fee9` |
| 12 | `theorem` | [cramer_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramer-zero.md) | 140 | `result-track:5e505ad518c0c5e28c4e798b2e769b958ab5f76f8ad12f521520d12a23c67e77` |
| 13 | `theorem` | [sum_cramer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/sum-cramer.md) | 148 | `result-track:9d1117b4a022bbf31a9cd29954fa240bec9069e59dc5ecce554aa72fe33fa43d` |
| 14 | `theorem` | [sum_cramer_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/sum-cramer-apply.md) | 153 | `result-track:9540821f8fda722926c5ad7e90baad9240f5fb3a1b26ca4c6dac3df03dbebc63` |
| 15 | `theorem` | [cramer_submatrix_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramer-submatrix-equiv.md) | 165 | `result-track:8b346a622261dcf383586c012ad1c32227bd0c5d03ba58cb32feeb57f20f89ae` |
| 16 | `theorem` | [cramer_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramer-reindex.md) | 171 | `result-track:d19a1478928a3180ee6ad5342515f366a4e4e72800f772079d3b0dbbfbb25d4c` |
| 17 | `def` | [adjugate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate.md) | 195 | `declaration-track:4af57bb4658246c705ae2ba910ca6d9d7819be91665d4d2b5b2a7829e6c73849` |
| 18 | `theorem` | [adjugate_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-def.md) | 198 | `result-track:bf5bfb42abce1e2517462542a1773c28fd71b0c42b74ebee53ab85e320adf599` |
| 19 | `theorem` | [adjugate_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-apply.md) | 201 | `result-track:bacac739df499cc766aef7fb7d7db77bf1b0dda3940cf46fba955f2bd08253fb` |
| 20 | `theorem` | [adjugate_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-transpose.md) | 205 | `result-track:b96de10024a7c0817ef37d0873ce2aab126f01ed91b15e18708a2ccecf40b55b` |
| 21 | `theorem` | [adjugate_submatrix_equiv_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-submatrix-equiv-self.md) | 235 | `result-track:afb30f402e9eabdab2f5cc8802953930fa86081ad4408b5a2c2a9c316a39b587` |
| 22 | `theorem` | [adjugate_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-reindex.md) | 243 | `result-track:52c12be2f39282dfd97ccb28039a8b3138f3a95d7bae637c934837e23ab3030d` |
| 23 | `theorem` | [cramer_eq_adjugate_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/cramer-eq-adjugate-mulvec.md) | 249 | `result-track:ae3229f61720500df18be20d4ff75e00ba21454f31970e5085ef8e8a8f368897` |
| 24 | `theorem` | [mul_adjugate_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/mul-adjugate-apply.md) | 262 | `result-track:ee10efac5fdd4cec1205c8b75d0baffcdc8918d1d7bca5145c9d7859cea4466f` |
| 25 | `theorem` | [mul_adjugate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/mul-adjugate.md) | 267 | `result-track:294db8f4ba3f01253f4caf39dd13687f853cf874ffc01a32b06245141385b96d` |
| 26 | `theorem` | [adjugate_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-mul.md) | 272 | `result-track:8e8698603aec061f32d41e09e7fd03c27980bd9026436922ac0a4d2238462584` |
| 27 | `theorem` | [adjugate_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-smul.md) | 278 | `result-track:34a6bd6a72c7e311df3b7281918e85561951241dd3ae03ee4019d3fbb5a11bc4` |
| 28 | `theorem` | [mulVec_cramer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/mulvec-cramer.md) | 287 | `result-track:19f9b97a6367acc400db8d30e31de1df48f988cf53f5fa3e60a60e1871683c64` |
| 29 | `theorem` | [adjugate_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-subsingleton.md) | 290 | `result-track:97697fb80a0bceedfcf1673e13a2f91bbbe3adb53202b8446d31a7664d2024cc` |
| 30 | `theorem` | [adjugate_eq_one_of_card_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-eq-one-of-card-eq-one.md) | 294 | `result-track:a3947de068ccd9d6f9c9d3da2955280a962cc09cc3e7c3c877b6a397a229a904` |
| 31 | `theorem` | [adjugate_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-zero.md) | 300 | `result-track:9eb865a1c9bec725b162deaa1e268e278d39540b0bc28733a503d74a1b828d90` |
| 32 | `theorem` | [adjugate_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-one.md) | 308 | `result-track:72339a3de40ef10261da93dba41bfc4f8b0beab46896ccca66830f592c23b1ba` |
| 33 | `theorem` | [adjugate_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-diagonal.md) | 313 | `result-track:03066c77868222ad8f4114ecf3c2c008cf3400116b8f11f0e1fdcebd0f4bc95d` |
| 34 | `theorem` | [Adjugate Namespaced Adjugate Fin Three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-cramermap-va.md) | 326 | `result-track:bc3dd35d6093db5a2277190e658e5724dbab99a7517d696d46e4949edf286be0` |
| 35 | `theorem` | [Adjugate Namespaced Adjugate Fin Three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-cramermap-va-source-edition-2.md) | 335 | `result-track:cd803ee62c722bffb3719efcb4a5835b552867c5076f79d87ee3193e7f9d9a90` |
| 36 | `theorem` | [det_adjugate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/det-adjugate.md) | 340 | `result-track:6f3d4f1ebf63da1b1b4f0836611e11927233422cf5d41083a75f3d55e37db1ed` |
| 37 | `theorem` | [adjugate_fin_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-fin-zero.md) | 359 | `result-track:68ce1b8659693ae2d84863fbf4258c4ec869da418eea2fa6991933881a72075e` |
| 38 | `theorem` | [adjugate_fin_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-fin-one.md) | 363 | `result-track:9dfd04852eb06ee9b4539ffaade4e87b347f612ac6eadbdd3b74b8a9caea45a9` |
| 39 | `theorem` | [adjugate_fin_succ_eq_det_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-fin-succ-eq-det-submatrix.md) | 366 | `result-track:36bfa60f6e9752c453347167533a6c398774ca2f2f3064c8ed331de18be9f38b` |
| 40 | `theorem` | [adjugate_fin_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-fin-two.md) | 372 | `result-track:d0aee8539bf7634bf97daa338cde1caabc802cde0a65d0fa6525573caeee584e` |
| 41 | `theorem` | [adjugate_fin_two_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-fin-two-of.md) | 379 | `result-track:ecea74a844617e8326ef1bab0284b93f8982cb4496740a2bc511dc5425da669e` |
| 42 | `theorem` | [adjugate_fin_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-fin-three.md) | 382 | `result-track:682c840e420b931c2c3e657dd275aea53bdae7a456d63f25f460337425593fad` |
| 43 | `theorem` | [adjugate_fin_three_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-fin-three-of.md) | 398 | `result-track:c5e622cd0428d8ea24396df1c72af247c5eee9bdb42e0746e73003fc5dafa924` |
| 44 | `theorem` | [det_eq_sum_mul_adjugate_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/det-eq-sum-mul-adjugate-row.md) | 405 | `result-track:0bad522478df6cd6f9c8607edcec2f9ec24a215ab924cb65bee3b25db1e7abe8` |
| 45 | `theorem` | [det_eq_sum_mul_adjugate_col](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/det-eq-sum-mul-adjugate-col.md) | 418 | `result-track:73a0ab18ee41febf39cd529f20f05351fbdb73291f131e939c58955c11b94f16` |
| 46 | `theorem` | [adjugate_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-conjtranspose.md) | 422 | `result-track:0b434acc9337fff871b9f8cb2ce1f9d8a4e604bd3614aae43a60c59309a8220c` |
| 47 | `theorem` | [isRegular_of_isLeftRegular_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/isregular-of-isleftregular-det.md) | 427 | `result-track:3f2750f351e9aa0c9ab00572535f7220f5b968bebaea897d5cd64d77d123a97d` |
| 48 | `theorem` | [adjugate_mul_distrib_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-mul-distrib-aux.md) | 441 | `result-track:2cf00081598106a6ad2a90d1e3e797d6e0cc3f54f58a568aec0e42b8d50dbef3` |
| 49 | `theorem` | [adjugate_mul_distrib](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-mul-distrib.md) | 453 | `result-track:4aa7b3bc978a8c5096b2b5d9cc09eb36f148c0b3366ace8603a86259d5c99908` |
| 50 | `theorem` | [adjugate_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-pow.md) | 476 | `result-track:adbe0fe7ce2a404e69bf472e8ae48c5d2d16b7d1f0f07b07216aea9f17f83dcb` |
| 51 | `theorem` | [det_smul_adjugate_adjugate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/det-smul-adjugate-adjugate.md) | 481 | `result-track:788df4cd441a1f1831b1c7ab4827871cbe418366428dc19ed9c278c8d36d3087` |
| 52 | `theorem` | [adjugate_adjugate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-adjugate.md) | 490 | `result-track:28f0daf3ffd3284cb67716bb58782c9ca1846529369c47706f3be90b7c7b8bd0` |
| 53 | `theorem` | [adjugate_adjugate'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AdjugateNamespacedAdjugateFinThree.lean/declarations/adjugate-adjugate-source-edition-2.md) | 513 | `result-track:8ea18d4c89b0b89b75183d4cb0e151c724ada6aa58c6925bb22fbd35cac82ee6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1055b1dfc31b65b3f31856b23cb466ba796456bbf876abc9c5f2c6dc405342a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variantc62a80a95f8a8d7af38c991aced7de2d90c6bb29822719bb92504326f5736a39.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Adjugate/Variantc62a80a95f8a8d7af38c991aced7de2d90c6bb29822719bb92504326f5736a39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
