# Verification target: Matrix Symmetric

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1ec321fdb40032e1c6443c7d1b1cc7ac1d6d988",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant7d24c3c5779b1da4dc0d9d72da419432ae751371e7df16a0f1ab7b601c1c54e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1ec321fdb40032e1c6443c7d1b1cc7ac1d6d988`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant7d24c3c5779b1da4dc0d9d72da419432ae751371e7df16a0f1ab7b601c1c54e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Symmetric/Variant7d24c3c5779b1da4dc0d9d72da419432ae751371e7df16a0f1ab7b601c1c54e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Block` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm.md) | 29 | `declaration-track:2719e01fa58fc2c488627b0f28e9cd3a394aadf6d0db9eacf1d5b915b4b9090a` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/instance.md) | 32 | `declaration-track:fd6982486991b81c5e08d12fa2573d16505332f4b3a7ecdae175af4d4e0c3122` |
| 3 | `theorem` | [IsSymm.eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-eq.md) | 35 | `result-track:427c785bb195cb38f89a7e85c64430b44f632560047115a1f730910aaec83b84` |
| 4 | `theorem` | [IsSymm.ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-ext-iff.md) | 39 | `result-track:053ac89317977b2a1c05cd7f423f77868c46df015ff957654eda6132d7c0d656` |
| 5 | `theorem` | [IsSymm.ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-ext.md) | 43 | `result-track:cfb7ce38115c1c7db723d5e49ce444c7309dd4fb0891ad9bfd93b55e3b84d91c` |
| 6 | `theorem` | [IsSymm.apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-apply.md) | 46 | `result-track:621152124d9c8ab9ec5f10c711433245e53ce604c47216b3952c22b7c73351a3` |
| 7 | `theorem` | [isSymm_mul_transpose_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-mul-transpose-self.md) | 49 | `result-track:4c7d7db25885b767a6a02d0b20a5903446429903be7197c7372fb5ced76af178` |
| 8 | `theorem` | [isSymm_transpose_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-transpose-mul-self.md) | 53 | `result-track:85a43dabd61162e2b1a8507d83b41920091c6eaa2dfb6710a586f0554797dc7d` |
| 9 | `theorem` | [isSymm_add_transpose_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-add-transpose-self.md) | 57 | `result-track:8a3b8b756ba36d582ea0cb374500070a280f71bf2f00ee3e1d0bbe79389e568f` |
| 10 | `theorem` | [isSymm_transpose_add_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-transpose-add-self.md) | 60 | `result-track:25ecbc0d7faadf2bd2d3d08a195cb0a7512a0c48511d9a75c738ab8cb45b522e` |
| 11 | `theorem` | [isSymm_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-zero.md) | 64 | `result-track:fb059d1a5a7927acd7e40cf79cdb0be29f2e81ad8376d154ce8c93e8fe7a78cb` |
| 12 | `theorem` | [isSymm_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-one.md) | 68 | `result-track:255b4f3274391e898f2bedb7660acbd1276ef650ac4050a386cb6f5a30776315` |
| 13 | `theorem` | [IsSymm.pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-pow.md) | 71 | `result-track:c1eb02ea3bef2ade25d3c010e547c810296e823a32594c083e6911a89815ec99` |
| 14 | `theorem` | [IsSymm.map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-map.md) | 77 | `result-track:476b205ecde03e0f2b0c562a092ad3003edcddc96b9c7db27ad3b2aec7f9d2a1` |
| 15 | `theorem` | [IsSymm.transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-transpose.md) | 81 | `result-track:78cde64a311ab585bf95664105f10a5dec9614a41fcfc19585af2c61cea9def1` |
| 16 | `theorem` | [IsSymm.conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-conjtranspose.md) | 85 | `result-track:325ac3b2c4d240a36b86622cfb1f4cac3043b9c8211430fba3478a611627cc87` |
| 17 | `theorem` | [IsSymm.neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-neg.md) | 89 | `result-track:1dcee2129831073b7c9add41d5f0033c3536e7755d6caeeb6e1fd474f23ec0ad` |
| 18 | `theorem` | [IsSymm.add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-add.md) | 93 | `result-track:0efea6a450753c233d5e513cc56dbf61f6992c7c638a1b409a94cce259c6df76` |
| 19 | `theorem` | [IsSymm.sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-sub.md) | 97 | `result-track:7df49cf65988bb6209a13c831f154583a0892e340711b05e8f3a3519f8362144` |
| 20 | `theorem` | [IsSymm.smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-smul.md) | 101 | `result-track:6aa8eec01940d5d225258464abfef7cf997c34c9b07dac87143058ffe8c821a9` |
| 21 | `theorem` | [IsSymm.submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-submatrix.md) | 105 | `result-track:528f02e9b756d5346fd354d3dda6fe5ffeddb44f448613821b6b8b38eff46651` |
| 22 | `theorem` | [isSymm_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-diagonal.md) | 110 | `result-track:d81e888627c8b3ebe3fd20993c152b01cd275de7e116ee261b82652c2ed2f83c` |
| 23 | `theorem` | [IsSymm.fromBlocks](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-fromblocks.md) | 115 | `result-track:79238c04bdd4f136311c490f55d49d9fd8e8124df2ba1a1414564ba1f2b3669b` |
| 24 | `theorem` | [isSymm_fromBlocks_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetric.lean/declarations/issymm-fromblocks-iff.md) | 125 | `result-track:a646e3b7abd522cb9bce08359c3c36ba7a6f00a95657b3e647322e2648f47821` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e0330aef9316f53e7923978fbd932ec3219da260c5434bcd4cd252cd1551b8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Symmetric/Variant7d24c3c5779b1da4dc0d9d72da419432ae751371e7df16a0f1ab7b601c1c54e7.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Symmetric/Variant7d24c3c5779b1da4dc0d9d72da419432ae751371e7df16a0f1ab7b601c1c54e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
