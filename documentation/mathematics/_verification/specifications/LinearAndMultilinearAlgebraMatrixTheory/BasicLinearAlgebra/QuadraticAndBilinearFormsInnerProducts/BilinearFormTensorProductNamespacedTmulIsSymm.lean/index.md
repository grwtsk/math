# Verification target: Bilinear Form Tensor Product Namespaced Tmul Is Symm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "847f13b7ea9cb8ce9db132ce8f2af0ef365b82f5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantded6157d648953a3e0f59195972da1fb1496d016497e2b5e2756081a563c1854.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `847f13b7ea9cb8ce9db132ce8f2af0ef365b82f5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantded6157d648953a3e0f59195972da1fb1496d016497e2b5e2756081a563c1854.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variantded6157d648953a3e0f59195972da1fb1496d016497e2b5e2756081a563c1854.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorDistrib](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/tensordistrib.md) | 59 | `declaration-track:a081af30e33ac202348bf5b0851c1466e18f3919a0e8ce925e36cda61575cbc5` |
| 2 | `theorem` | [tensorDistrib_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/tensordistrib-tmul-source-edition-2.md) | 70 | `result-track:1fb74071d8b1349d2e4776668a90df614287e8dfed2c58200d81177366825c52` |
| 3 | `abbrev` | [tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/tmul-source-edition-2.md) | 77 | `declaration-track:8ebd6c7da09ee7eb1a7e2684193ec38cebd11f0481916f0b670cb4cc8b86fdac` |
| 4 | `lemma` | [tmul_isSymm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/tmul-issymm.md) | 83 | `result-track:398404a4b0e50ddc6ddd78a522600c1535f33c7585c310bff787b25e78b5348a` |
| 5 | `def` | [baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/basechange.md) | 93 | `declaration-track:4d0b7e677e5e7547d8fbd505ea3da05a256341eef32e4f4f019b4cd99ae83023` |
| 6 | `theorem` | [baseChange_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/basechange-tmul-source-edition-2.md) | 97 | `result-track:e87f8be823d36f1b54c4f38fde4b3c1bff08a74091144fd4c2c625465d3d13f6` |
| 7 | `lemma` | [baseChange_isSymm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/basechange-issymm.md) | 102 | `result-track:c7ebcdab61557cd36dfcba16fec3db41d367081a554f6cd1c45d1a6e4fb00ae5` |
| 8 | `def` | [tensorDistrib](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/tensordistrib-source-edition-2.md) | 115 | `declaration-track:d8f65d7e3c39c16ee42c2628ce7e9b98ac17b765d94787fddd95189755979adb` |
| 9 | `theorem` | [tensorDistrib_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/tensordistrib-tmul.md) | 123 | `result-track:08f7f8413d2ce997bccfa65d49fb1c2db4fc349e00835d01649e2c3aa8878f35` |
| 10 | `abbrev` | [tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/tmul.md) | 130 | `declaration-track:4b4d361faddee923580bb47c1feeeaa5afab5c4cc400d98ba26e524126918ef2` |
| 11 | `lemma` | [Bilinear Form Tensor Product Namespaced Tmul Is Symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/tmul-source-line-135-occurrence-2.md) | 135 | `result-track:77fc55d1008a09dbe70a80f6341504d97d4ab6f7881c0eccffb8cafa61186229` |
| 12 | `def` | [baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/basechange-source-edition-2.md) | 143 | `declaration-track:76950e41c7e24ab07ed1b95758026a06dea74c5d8296edec9ef68658bbfb89b8` |
| 13 | `theorem` | [baseChange_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/basechange-tmul.md) | 147 | `result-track:03f299303d2f73ce9a969cac18945447011fa28636c441322253fc01af609dcb` |
| 14 | `lemma` | [IsSymm.baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/issymm-basechange.md) | 154 | `result-track:4fcda7a3b685979cf1aec12ee47992a60c5a831597633d3f26c2622887d6d4e6` |
| 15 | `def` | [tensorDistribEquiv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/tensordistribequiv.md) | 173 | `declaration-track:35faa623d2cdc4c374e64c3fc4fecce4d31746d87e71144dbb653b275065af25` |
| 16 | `theorem` | [tensorDistribEquiv_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/tensordistribequiv-tmul.md) | 183 | `result-track:1f5cb7665e9e8f002d2067f0e9714254e9d5fae5ea6c2974e678adb41b758b98` |
| 17 | `theorem` | [tensorDistribEquiv_toLinearMap](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/tensordistribequiv-tolinearmap.md) | 192 | `result-track:a5776ae8778508f6b78d7fad45cd5242766f4fca82c4426c6e20db721e7ed8b6` |
| 18 | `theorem` | [tensorDistribEquiv_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProductNamespacedTmulIsSymm.lean/declarations/tensordistribequiv-apply.md) | 199 | `result-track:e02cc8e5431fd5170c65905273a1bf2f56d2af838021812d8606b24c57329570` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=556038ee24b440fcd7f72e742ad442a6bbe501b12c1767946fa53bb6d379d1a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantded6157d648953a3e0f59195972da1fb1496d016497e2b5e2756081a563c1854.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TensorProduct/Variantded6157d648953a3e0f59195972da1fb1496d016497e2b5e2756081a563c1854.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
