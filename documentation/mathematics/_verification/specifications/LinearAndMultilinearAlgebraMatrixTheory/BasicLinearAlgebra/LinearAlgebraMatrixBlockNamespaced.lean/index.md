# Verification target: Linear Algebra Matrix Block Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d57b471e4911406eb326b70629dc71cc4f45a250",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Block/Varianteba6d6c5cc8ccd48a2319ed81a68a1d3f0ccd1efdbbfd95ae43363dc02b5595b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d57b471e4911406eb326b70629dc71cc4f45a250`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Block/Varianteba6d6c5cc8ccd48a2319ed81a68a1d3f0ccd1efdbbfd95ae43363dc02b5595b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Block/Varianteba6d6c5cc8ccd48a2319ed81a68a1d3f0ccd1efdbbfd95ae43363dc02b5595b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Determinant` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BlockTriangular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular.md) | 63 | `declaration-track:8b157cdc492f9bed53e91c04a3e18a37b21fe425672cf8da8b9e029291fd53b4` |
| 2 | `theorem` | [BlockTriangular.submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-submatrix.md) | 68 | `result-track:8293722d50c14625e8d39d6e45f99c1989869452863eff402a26224bc0b07350` |
| 3 | `theorem` | [blockTriangular_reindex_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-reindex-iff.md) | 72 | `result-track:46efeca15a8579869983b640b6925174ebdbe5f797c16b818d35be3ca02c60c7` |
| 4 | `theorem` | [BlockTriangular.transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-transpose.md) | 81 | `result-track:1f6e62012418029df192440ff789c64bbeb253719882f9f3eb2a2f36ca976062` |
| 5 | `theorem` | [blockTriangular_transpose_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-transpose-iff.md) | 87 | `result-track:f4cd974f3694f4bb68d990dc1fcd1f749a7a2cb916391ec700bc0728867bf73a` |
| 6 | `theorem` | [blockTriangular_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-zero.md) | 93 | `result-track:2bb36c4750224f72649feb634680332058d738b23a2e9b4dd2d22623fe32cad1` |
| 7 | `theorem` | [BlockTriangular.neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-neg.md) | 96 | `result-track:ac99d72da1b2d99e0714df326aed75f482e833d5aa663bf5ac285053dec77812` |
| 8 | `theorem` | [BlockTriangular.add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-add.md) | 100 | `result-track:d95b5257ee959fd7c6fef4a1c8d629faa4b216f6e98d41450b32ff131b45ce84` |
| 9 | `theorem` | [BlockTriangular.sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-sub.md) | 104 | `result-track:723e06bea4090079b26bdb6d5b089abf143064fa1df5ab2aff20216267407bf3` |
| 10 | `theorem` | [blockTriangular_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-diagonal.md) | 114 | `result-track:4f49c8c8979488ff95c9b628efa28733ef7f32d6b59ee18fcb0a3534625e0c64` |
| 11 | `theorem` | [blockTriangular_blockDiagonal'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-blockdiagonal.md) | 118 | `result-track:5fccaadaaff2eeecb4d729bdc3d6753085c7a1f6436af89dd66e3dfed9dfe531` |
| 12 | `theorem` | [blockTriangular_blockDiagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-blockdiagonal-source-edition-2.md) | 124 | `result-track:62a4d824be8582564f03d2f32ba6d452e40d07cb656598134e544abed7b28082` |
| 13 | `theorem` | [BlockTriangular.mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-mul.md) | 137 | `result-track:c8655c3a322d385c6579ccd07bbd845043bfc72fc5196e4cd1acd99058f0da5e` |
| 14 | `theorem` | [upper_two_blockTriangular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/upper-two-blocktriangular.md) | 149 | `result-track:d8dd158ba96d5fae2e18fc6329234977f0fdb95a5ed23ebaa30f02334ae3e660` |
| 15 | `theorem` | [equiv_block_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/equiv-block-det.md) | 160 | `result-track:e8c31ddce9df73521f891973b405c7e41f2916fb8c829d2e5ab618deda1d152e` |
| 16 | `theorem` | [det_toSquareBlock_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/det-tosquareblock-id.md) | 166 | `result-track:8a2a5cf14070e8750acb5180ee360da4bcb001f3e26203a67b5c6be1a38badc3` |
| 17 | `theorem` | [det_toBlock](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/det-toblock.md) | 171 | `result-track:e444531ddb4b748df2cdfe4c0aba0be6810878b389e7188058c9448159cbe7bd` |
| 18 | `theorem` | [twoBlockTriangular_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/twoblocktriangular-det-source-edition-2.md) | 185 | `result-track:c2128fa50937a6821dc425ae4fdccf24ded554263d5a566a235e86435fc90408` |
| 19 | `theorem` | [twoBlockTriangular_det'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/twoblocktriangular-det.md) | 195 | `result-track:4f46ed0f5fc5dd5d29ac1177671cd0b696e65d7991c1a2fde2bc20f585bb04a4` |
| 20 | `theorem` | [BlockTriangular.det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-det.md) | 204 | `result-track:9a4b4e1dd724a98750aa1fbde7ff8a71ba7c0498f55a957fe8705121978bfa48` |
| 21 | `theorem` | [BlockTriangular.det_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-det-fintype.md) | 237 | `result-track:fe439c4cd1ca4168bab32690396e5401e661b4b6e88ef12c94806d46aaae5364` |
| 22 | `theorem` | [det_of_upperTriangular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/det-of-uppertriangular.md) | 244 | `result-track:f879f6c809e9360daa55741a3fac03adef3923309bd0da8c2878e60ee88d1840` |
| 23 | `theorem` | [det_of_lowerTriangular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/det-of-lowertriangular.md) | 250 | `result-track:8cf9b49b0772af946d4c3a76edd0f033f47bf979e13bca9aae01cf1715eeec0f` |
| 24 | `theorem` | [BlockTriangular.toBlock_inverse_mul_toBlock_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-toblock-inverse-mul-toblock-eq-one.md) | 259 | `result-track:6c73257138d4ad415abbd6d39bc129ec5cee2b29dfd9accf836ee0ef45bafb5e` |
| 25 | `theorem` | [BlockTriangular.inv_toBlock](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-inv-toblock.md) | 278 | `result-track:e88b8aa16ea21d37bbb1dab5b57811d3d98d03c72e76de12c09d62a74976c22a` |
| 26 | `def` | [BlockTriangular.invertibleToBlock](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-invertibletoblock.md) | 286 | `declaration-track:c4775e9cfa8a716376bb39c4cf0c509bb7b244bf17f3389198d7da7259df5985` |
| 27 | `theorem` | [toBlock_inverse_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/toblock-inverse-eq-zero.md) | 294 | `result-track:e4d4e54b7b2b9e8edb4fcb7a3014b1518a9f5b511b668ad35a883a2c502bab2d` |
| 28 | `theorem` | [blockTriangular_inv_of_blockTriangular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/declarations/blocktriangular-inv-of-blocktriangular.md) | 315 | `result-track:f6ea11e3005971aeffc09f00e12bcf663124557553c730f4b24e94ffd43cc5a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=306247538260c8f7c91d7a220b16852aa0b43835e0e411524e8b794b66579836 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Block/Varianteba6d6c5cc8ccd48a2319ed81a68a1d3f0ccd1efdbbfd95ae43363dc02b5595b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Block/Varianteba6d6c5cc8ccd48a2319ed81a68a1d3f0ccd1efdbbfd95ae43363dc02b5595b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
