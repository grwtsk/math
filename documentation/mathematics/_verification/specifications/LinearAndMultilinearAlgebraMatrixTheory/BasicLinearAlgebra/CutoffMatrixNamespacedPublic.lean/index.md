# Verification target: Cutoff Matrix Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3617b9e9d539e1bfdf620907a2f5d07e98fab32",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CutoffMatrixNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CutoffMatrixNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3617b9e9d539e1bfdf620907a2f5d07e98fab32`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [productCutoffMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CutoffMatrixNamespacedPublic.lean/declarations/productcutoffmatrix.md) | 37 | `declaration-track:27b1fe064fee8c2fa9a409d888986fda4b07554a0dfdc9a0e0e493c17cd4870a` |
| 2 | `def` | [productFiberIncrementMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CutoffMatrixNamespacedPublic.lean/declarations/productfiberincrementmatrix.md) | 45 | `declaration-track:5eae41b76219870fd5db935d5e7a346d720b4442dac764f0ce767ed43f4c1540` |
| 3 | `theorem` | [productCutoffMatrix_zero_of_positive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CutoffMatrixNamespacedPublic.lean/declarations/productcutoffmatrix-zero-of-positive.md) | 54 | `result-track:be7291f02c04338fa3f31ea5f33bc593c592dc3c7a156d555f394e4ab946d1dd` |
| 4 | `theorem` | [productCutoffMatrix_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CutoffMatrixNamespacedPublic.lean/declarations/productcutoffmatrix-succ.md) | 68 | `result-track:5aa8a875fc577b66cd90a19e323bc93a6e5d8ad934c3a967fcb4ba1f96f7be2c` |
| 5 | `theorem` | [productCutoffMatrix_eq_sum_productFiberIncrements](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CutoffMatrixNamespacedPublic.lean/declarations/productcutoffmatrix-eq-sum-productfiberincrements.md) | 89 | `result-track:4eb08869f0ae286a0f8ef3c0973685819c25d4d0facf8d9e4143b4b3aa95c327` |
| 6 | `theorem` | [bilinearMatrixPairing_productCutoff_eq_sum_increments](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CutoffMatrixNamespacedPublic.lean/declarations/bilinearmatrixpairing-productcutoff-eq-sum-increments.md) | 107 | `result-track:23c5b5aabe77644b82b781028394e38835b2dbb9d7f9ac1f9ec31a306e93e33e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=991de0f94e85950dd9a9a9544956601d905fe68d2c65691d60f6dc274f1d3ea8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CutoffMatrix/Varianta361bbd5a83ca13caaf916a57e085b640c5d13695c2c80fa6c055ff1293c0ba2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
