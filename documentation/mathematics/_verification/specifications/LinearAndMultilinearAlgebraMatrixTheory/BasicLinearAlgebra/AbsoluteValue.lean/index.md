# Verification target: Absolute Value

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae503c1edc6d6be3536f26e2fdecd76a5d148245",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AbsoluteValue/Variant4a59acaf4b7b38cdf7f3fb4e83c95be1020878da22c369d1a8221ec59881494e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AbsoluteValue.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AbsoluteValue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae503c1edc6d6be3536f26e2fdecd76a5d148245`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AbsoluteValue/Variant4a59acaf4b7b38cdf7f3fb4e83c95be1020878da22c369d1a8221ec59881494e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AbsoluteValue/Variant4a59acaf4b7b38cdf7f3fb4e83c95be1020878da22c369d1a8221ec59881494e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.AbsoluteValue` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AbsoluteValue.lean/declarations/det-le.md) | 38 | `result-track:d71a95ef57d1a239f9ae9169e194f214003fd74e22b17a0d7268f07f7e42475c` |
| 2 | `theorem` | [det_sum_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AbsoluteValue.lean/declarations/det-sum-le.md) | 48 | `result-track:a8b4245fb61f9779b8457f6ca07483bc34d14cf677d245665a4f393103311890` |
| 3 | `theorem` | [det_sum_smul_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AbsoluteValue.lean/declarations/det-sum-smul-le.md) | 58 | `result-track:f4fce80ca0eaa141e49d436dea5d7f1311ea5af14af88cd7cfdad74685b30e76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=381c808e37bce838ee90ef438926c92dd9256f4a65c166ca8209a24df4e50816 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AbsoluteValue/Variant4a59acaf4b7b38cdf7f3fb4e83c95be1020878da22c369d1a8221ec59881494e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AbsoluteValue/Variant4a59acaf4b7b38cdf7f3fb4e83c95be1020878da22c369d1a8221ec59881494e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
