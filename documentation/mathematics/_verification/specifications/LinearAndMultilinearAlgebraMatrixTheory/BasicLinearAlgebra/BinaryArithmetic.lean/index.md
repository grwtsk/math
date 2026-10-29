# Verification target: Binary Arithmetic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00f2abe6f2a60248e12517ef6974c07729176d77",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BinaryArithmetic/Varianta4100ef24d6367b347a6e9852dfa5354105e06a82ab8a5b0cd4d4268f3626098.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryArithmetic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryArithmetic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00f2abe6f2a60248e12517ef6974c07729176d77`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BinaryArithmetic/Varianta4100ef24d6367b347a6e9852dfa5354105e06a82ab8a5b0cd4d4268f3626098.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BinaryArithmetic/Varianta4100ef24d6367b347a6e9852dfa5354105e06a82ab8a5b0cd4d4268f3626098.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CellularArithmetic.BinaryMatrixEncoding` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.CellularArithmetic.CellularRepresentation` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.NumberTheory.FundamentalTheorem` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unary_encoding_decodes](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryArithmetic.lean/declarations/unary-encoding-decodes.md) | 18 | `result-track:a86622c02c90f2b3b76cf23a3068c5a855d93fca0cf1aa37033787114f9e6d37` |
| 2 | `theorem` | [unary_encoding_matrix_rows](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryArithmetic.lean/declarations/unary-encoding-matrix-rows.md) | 23 | `result-track:20ce846706cc7d8ec04ef89bfbf158c7452810718b462601882f696193e69e02` |
| 3 | `theorem` | [unary_encoding_matrix_cols](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryArithmetic.lean/declarations/unary-encoding-matrix-cols.md) | 28 | `result-track:0ead09521d7bc198c4cd58bf4a4edd1df26c6ac45b47011e84a3fa81436b02fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c14b1935ee83ea41be6277ca35bc3d384783f1092a4c88fd598fff97c8db3eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BinaryArithmetic/Varianta4100ef24d6367b347a6e9852dfa5354105e06a82ab8a5b0cd4d4268f3626098.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/BinaryArithmetic/Varianta4100ef24d6367b347a6e9852dfa5354105e06a82ab8a5b0cd4d4268f3626098.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
