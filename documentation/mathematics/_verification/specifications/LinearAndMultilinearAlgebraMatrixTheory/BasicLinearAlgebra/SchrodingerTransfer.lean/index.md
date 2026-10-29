# Verification target: GRWTSK.LinearAlgebra.SchrodingerTransfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff6b73545cb92a4bc48a99962c3f58695f6d545e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/SchrodingerTransfer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchrodingerTransfer.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchrodingerTransfer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff6b73545cb92a4bc48a99962c3f58695f6d545e`.

Source path: `GRWTSK/LinearAlgebra/SchrodingerTransfer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/SchrodingerTransfer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schrodingerTransfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchrodingerTransfer.lean/declarations/schrodingertransfer.md) | 40 | `declaration-track:581b287c86984e96bfac5c7caf64a0206b252e728b0470beb9570187229a7345` |
| 2 | `def` | [rawState](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchrodingerTransfer.lean/declarations/rawstate.md) | 46 | `declaration-track:646ea61f0aaf3877c031d4fb51d02fceea45f9520966fae357e4e786f521c185` |
| 3 | `theorem` | [schrodinger_recurrence_iff_transfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchrodingerTransfer.lean/declarations/schrodinger-recurrence-iff-transfer.md) | 52 | `result-track:4a90eef553b9d97a53362b2459470b93ab83c4006a7de2b27dc5073732e91352` |
| 4 | `theorem` | [det_schrodingerTransfer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchrodingerTransfer.lean/declarations/det-schrodingertransfer.md) | 77 | `result-track:47dc6efc6eed98935c090216ed5a0af15f88de431c5cb3f5555a5c88f650507a` |
| 5 | `def` | [schrodingerSL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchrodingerTransfer.lean/declarations/schrodingersl.md) | 84 | `declaration-track:aae9809ab277e185e6bc3bf1b500ebe4d7eb13ef26c692cf6a7d2dcc3081d5e3` |
| 6 | `theorem` | [schrodinger_same_SL_syntax_not_equal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchrodingerTransfer.lean/declarations/schrodinger-same-sl-syntax-not-equal.md) | 91 | `result-track:ce544c11d148188d99010185d96f1abde387737513cc524580a95c59d6524389` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc2c23e25f5683a5cc0123541236acd146f2263431e876b84e13c48a9f84a5ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/LinearAlgebra/SchrodingerTransfer.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SchrodingerTransfer__SourceOccurrence1b935086502b7f96acb46a5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
