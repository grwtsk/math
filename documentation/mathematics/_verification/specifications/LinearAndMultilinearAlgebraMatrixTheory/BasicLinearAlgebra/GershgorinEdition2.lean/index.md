# Verification target: Gershgorin Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca6059ced1fbb770771d45b9ffc23d3cd9d9951a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Gershgorin/Variantedb7220e2d22ea642a14dcfbb4b88337350ff70d5f5652de8e45f1683612b819.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GershgorinEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GershgorinEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca6059ced1fbb770771d45b9ffc23d3cd9d9951a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Gershgorin/Variantedb7220e2d22ea642a14dcfbb4b88337350ff70d5f5652de8e45f1683612b819.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Gershgorin/Variantedb7220e2d22ea642a14dcfbb4b88337350ff70d5f5652de8e45f1683612b819.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eigenvalue_mem_ball](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GershgorinEdition2.lean/declarations/eigenvalue-mem-ball.md) | 26 | `result-track:ae065f3bce5ff81927a85f4b69e9d728f78912ceab6c14975711979495a5e2f7` |
| 2 | `theorem` | [det_ne_zero_of_sum_row_lt_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GershgorinEdition2.lean/declarations/det-ne-zero-of-sum-row-lt-diag.md) | 59 | `result-track:bc5b37a2989e1740e222c40be9f6efca02aa3271f55dd2524b8c5457e1b7fa48` |
| 3 | `theorem` | [det_ne_zero_of_sum_col_lt_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GershgorinEdition2.lean/declarations/det-ne-zero-of-sum-col-lt-diag.md) | 69 | `result-track:12a2a51961ee722ae1aa41114c7df83e2562b36ccb47b02500fb3e9804c88e10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41aa158ffb3ef1f25e46605918aac6058bd10bcdea0790f3c4c68b984dfd858a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Gershgorin/Variantedb7220e2d22ea642a14dcfbb4b88337350ff70d5f5652de8e45f1683612b819.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Gershgorin/Variantedb7220e2d22ea642a14dcfbb4b88337350ff70d5f5652de8e45f1683612b819.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
