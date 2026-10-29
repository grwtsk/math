# Verification target: GRWTSK.Algebra.LinearAlgebra.Gershgorin.Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "349bd3a1691bec71501c989414534f6d6206bceb",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean/index.md) · [Full source](../../../../../../Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `349bd3a1691bec71501c989414534f6d6206bceb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eigenvalue_mem_ball](../../../../../../Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean/declarations/eigenvalue-mem-ball--49042e0848be88ec8c6fa268.md) | 36 | `result-track:49042e0848be88ec8c6fa268bd9f4549d0d4c9bf4d05d65819d513a8772ef694` |
| 2 | `theorem` | [det_ne_zero_of_sum_row_lt_diag](../../../../../../Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean/declarations/det-ne-zero-of-sum-row-lt-diag--3a439b5b6932abfde81c9787.md) | 69 | `result-track:3a439b5b6932abfde81c9787914489541913a0cf4e940f9e1ecc712a594b7b8a` |
| 3 | `theorem` | [det_ne_zero_of_sum_col_lt_diag](../../../../../../Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean/declarations/det-ne-zero-of-sum-col-lt-diag--e0d0d697404ef874f6e14632.md) | 79 | `result-track:e0d0d697404ef874f6e146322e737fee2ab62610869e5b5bf529cf8f3242603f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=685a2185c7170c47d63d18c8d1023749473f70a6ed2727254a33a021392603a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Gershgorin/Variant187784d8d7e8513bf11ffa972198129f448baafd510f1d9e1525cee4f813a621.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
