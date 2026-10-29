# Verification target: GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer.Checks.Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3928c87ada65d1d524714a47cb6e59ab964adcd3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Audit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ChecksAuditSourceEdition3.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ChecksAuditSourceEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3928c87ada65d1d524714a47cb6e59ab964adcd3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Audit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Audit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchrodingerTransferHistoricalSourceEdition2.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [use_recurrence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ChecksAuditSourceEdition3.lean/declarations/use-recurrence.md) | 5 | `result-track:6b300e5916796e22600eb9fb22c8a551e07f4d170a240801f5e24a3684f016b8` |
| 2 | `theorem` | [use_determinant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ChecksAuditSourceEdition3.lean/declarations/use-determinant.md) | 7 | `result-track:941475ceba386959640ca2c47b5807f1d46c3fddf71450f8116d4c096f7098b6` |
| 3 | `theorem` | [use_inequality](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ChecksAuditSourceEdition3.lean/declarations/use-inequality.md) | 8 | `result-track:70478d57ef0a8e7f70582f1215ac44e468583f94b1462922dce1ac67a4f8be84` |
| 4 | `elab` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ChecksAuditSourceEdition3.lean/declarations/elab.md) | 10 | `declaration-track:a99022e8e838c1e5e32f51b2418310de612de1592f58f21d95ba41dcbe259091` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=544a43c6eaf1fb80370437534806097400e99b829e6c6e09a590af2d5559c382 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Audit.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SchrodingerTransfer/Checks/Audit__SourceOccurrence1f3730892c06d72d07533fac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
