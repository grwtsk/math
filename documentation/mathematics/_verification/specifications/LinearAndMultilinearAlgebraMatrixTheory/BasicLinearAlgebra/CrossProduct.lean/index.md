# Verification target: Cross Product

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cb33ab05dd06448d34c37d777e69c80761f47a5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CrossProduct/Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cb33ab05dd06448d34c37d777e69c80761f47a5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CrossProduct/Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CrossProduct/Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Notation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [crossProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/crossproduct.md) | 45 | `declaration-track:fb66e9ad606451ef5786d60e3d6440e36d99e5e1bd6341f580b6a9de687e87c6` |
| 2 | `theorem` | [cross_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/cross-apply.md) | 61 | `result-track:f60c107a2b86bdb42e885ed2c7d80186422b4bd60d343168d3495866efe51688` |
| 3 | `theorem` | [cross_anticomm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/cross-anticomm-source-edition-2.md) | 67 | `result-track:bacc2f2487cdb61b17b589d79bd7716caf03b947bd2fc50ad6bd182e54c8ef0a` |
| 4 | `theorem` | [cross_anticomm'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/cross-anticomm.md) | 73 | `result-track:57fc9810e3f53aec03cc80e82cab0c21af5c5be8acd9843b4c074a8d67fc9303` |
| 5 | `theorem` | [cross_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/cross-self.md) | 77 | `result-track:fa5f69774e433b69903a51a4db5778c1260c5577961e638d28065df03c199da4` |
| 6 | `theorem` | [dot_self_cross](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/dot-self-cross.md) | 82 | `result-track:3d54a8ae5e67e57af6a04e8691385d0c3405639761af2dcd2332eb5090111910` |
| 7 | `theorem` | [dot_cross_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/dot-cross-self.md) | 89 | `result-track:a313c5e09d0b8053709856be7379149a7fd359a93983fdab27a8aa8813768393` |
| 8 | `theorem` | [triple_product_permutation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/triple-product-permutation.md) | 93 | `result-track:acbf594b127d583d943ca18652d1cc3699de65f3bb67a6a4f6677886e12e48bd` |
| 9 | `theorem` | [triple_product_eq_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/triple-product-eq-det.md) | 100 | `result-track:57f100be5cdc7c2874b6d319981af049bc4097630c44414a9a589de11940fe8e` |
| 10 | `theorem` | [cross_dot_cross](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/cross-dot-cross.md) | 106 | `result-track:b9b678fd491394e94d41d6ca79994cd94d24726988f92cb3cef25172c04bfd86` |
| 11 | `theorem` | [leibniz_cross](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/leibniz-cross.md) | 117 | `result-track:2686e66337ae4a180d4bd37ab6e322fd177f0d28b8b8b6b7305af9513350772c` |
| 12 | `def` | [Cross.lieRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/cross-liering.md) | 124 | `declaration-track:64b177310852ec0df806a887a975d3e36416ad48e565c3ea349da7dad9b32a5d` |
| 13 | `theorem` | [cross_cross](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/cross-cross.md) | 134 | `result-track:e6e55f2e7e2102c13e11538d606b97d7bc8f5a2c88ebca79088465736dcc8a5d` |
| 14 | `theorem` | [jacobi_cross](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/jacobi-cross.md) | 139 | `result-track:1f6d8a6d93548aeb06740f2f5a3487ede12e8e9d3fd1f166eb54077456ad5188` |
| 15 | `lemma` | [crossProduct_ne_zero_iff_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/crossproduct-ne-zero-iff-linearindependent.md) | 146 | `result-track:8702ca594f5ef241671fdad57ef751946781be002fa3b2dc4f4b7d0f11c882fa` |
| 16 | `theorem` | [cross_cross_eq_smul_sub_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/cross-cross-eq-smul-sub-smul-source-edition-2.md) | 169 | `result-track:dede4787652a537f9d09f28056a6f6dc60e6c6ef4e942c150c68185a3796ddbe` |
| 17 | `theorem` | [cross_cross_eq_smul_sub_smul'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CrossProduct.lean/declarations/cross-cross-eq-smul-sub-smul.md) | 179 | `result-track:cc97729fe27fcca2f75130c9b5538659b6380c96ea9f122515a0b5dedd99a0bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b806bef578503b37f94b0504ce4b6b22f545293d0ae85dc014de7b3298384deb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CrossProduct/Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CrossProduct/Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
