# Verification target: Quadratic Form Tensor Product Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da5e8b79d1b54085b567358886c583df8e38740e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant5dc31228a8eef73dd6bebe7e76e020047d16b4b15401b9c56e7e3f05df6cd4a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespaced.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da5e8b79d1b54085b567358886c583df8e38740e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant5dc31228a8eef73dd6bebe7e76e020047d16b4b15401b9c56e7e3f05df6cd4a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant5dc31228a8eef73dd6bebe7e76e020047d16b4b15401b9c56e7e3f05df6cd4a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.TensorProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorDistrib](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespaced.lean/declarations/tensordistrib.md) | 48 | `declaration-track:45c5a4b1f0fc23f524ba34915795ad9fdcefd0bcc8cfaaa8d5665d5b1100f84a` |
| 2 | `theorem` | [tensorDistrib_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespaced.lean/declarations/tensordistrib-tmul.md) | 62 | `result-track:091d8a951ae187c419469ac4d93881b67122dba14ae8ef4d895152c07b185466` |
| 3 | `abbrev` | [tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespaced.lean/declarations/tmul.md) | 69 | `declaration-track:64d4bd661076fa709ea0dac7d0278b4ec09fe70f1162dabce97151f12eb06ead` |
| 4 | `theorem` | [associated_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespaced.lean/declarations/associated-tmul.md) | 73 | `result-track:6527980875043630e2e7c07985e6b4868a72c4f45335fefb2f7b6762b7ec37ed` |
| 5 | `def` | [baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespaced.lean/declarations/basechange.md) | 82 | `declaration-track:3948a24d039d43901281a4e840bece5b707674ba39dff45e8a72e814a5cf02f5` |
| 6 | `theorem` | [baseChange_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespaced.lean/declarations/basechange-tmul.md) | 86 | `result-track:e205e35a30a7b27a9370beab1e49493c315d26507ada019b8c354fa7c66cea43` |
| 7 | `theorem` | [associated_baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespaced.lean/declarations/associated-basechange.md) | 91 | `result-track:489f0581ee157438212f9c359a603b7c21660b7634a63a651f2d38e958177a69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1918e6fa66d596333d1b28015c345f691f38fa2ed7b0cec95692f9b1ac9490f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant5dc31228a8eef73dd6bebe7e76e020047d16b4b15401b9c56e7e3f05df6cd4a0.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TensorProduct/Variant5dc31228a8eef73dd6bebe7e76e020047d16b4b15401b9c56e7e3f05df6cd4a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
