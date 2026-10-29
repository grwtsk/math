# Verification target: Central Tensor Product Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13f140d600ea138ff12a225b98d92d0c12d8424a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantb5f986d7f3f193e3f5b56dfa05e229622fb11a6a46fe3edf1c8cdd45f12c697a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralTensorProductNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralTensorProductNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13f140d600ea138ff12a225b98d92d0c12d8424a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantb5f986d7f3f193e3f5b56dfa05e229622fb11a6a46fe3edf1c8cdd45f12c697a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variantb5f986d7f3f193e3f5b56dfa05e229622fb11a6a46fe3edf1c8cdd45f12c697a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Central.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Algebra.TensorProduct.includeLeft_map_center_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralTensorProductNamespaced.lean/declarations/algebra-tensorproduct-includeleft-map-center-le.md) | 45 | `result-track:da49896c60ab3b2f9eb3d4fd77112f4c49884f01e280e0bd5264b0d81ca85c0c` |
| 2 | `lemma` | [Algebra.TensorProduct.includeRight_map_center_le](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralTensorProductNamespaced.lean/declarations/algebra-tensorproduct-includeright-map-center-le.md) | 56 | `result-track:7dba52261b33f767830f75b29c6e97f8c53d4c834bdfa48e332b788430e8e3a2` |
| 3 | `lemma` | [left_of_tensor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralTensorProductNamespaced.lean/declarations/left-of-tensor.md) | 69 | `result-track:f36371c06dbd221a3f077b6a23e6090c13dcb8624c5ec13d56b6c98f218dc5f7` |
| 4 | `lemma` | [right_of_tensor](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralTensorProductNamespaced.lean/declarations/right-of-tensor.md) | 74 | `result-track:38e8714965afb1029c0fd5baf4a26785c77d65fac51011060d865aa0f3e75319` |
| 5 | `lemma` | [left_of_tensor_of_field](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralTensorProductNamespaced.lean/declarations/left-of-tensor-of-field.md) | 81 | `result-track:80fe41dd099cb03f8c7680704d589013e210f85b0a0e2f64ba61fe770e278b8b` |
| 6 | `lemma` | [right_of_tensor_of_field](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CentralTensorProductNamespaced.lean/declarations/right-of-tensor-of-field.md) | 87 | `result-track:ada3a79099c36f04e10ae240e6aea9dd65423a96b3291fa2e4d948b23a149b76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a907d1d2989b5cbe8187890e3392d0758441ed7763feeedf3258d2724cd6c68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variantb5f986d7f3f193e3f5b56dfa05e229622fb11a6a46fe3edf1c8cdd45f12c697a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TensorProduct/Variantb5f986d7f3f193e3f5b56dfa05e229622fb11a6a46fe3edf1c8cdd45f12c697a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
