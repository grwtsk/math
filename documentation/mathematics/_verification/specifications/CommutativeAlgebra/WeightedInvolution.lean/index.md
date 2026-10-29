# Verification target: GRWTSK.Algebra.RingTheory.WeightedInvolution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ee742c18a6c3a1f807bfe28da6354f6476ac662",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/WeightedInvolution.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/WeightedInvolution.lean/index.md) · [Full source](../../../../CommutativeAlgebra/WeightedInvolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ee742c18a6c3a1f807bfe28da6354f6476ac662`.

Source path: `GRWTSK/Algebra/RingTheory/WeightedInvolution.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/WeightedInvolution.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [operator](../../../../CommutativeAlgebra/WeightedInvolution.lean/declarations/operator.md) | 21 | `declaration-track:ddf9be59251ea415f9da1ae15bf4b496f7408d8ebf506757c4aa78350e48fb7c` |
| 2 | `theorem` | [operator_apply](../../../../CommutativeAlgebra/WeightedInvolution.lean/declarations/operator-apply.md) | 28 | `result-track:b21c00d4dfa67c84d83b916d010a13e2847a8ee7e8989d96dd41b3803c131cc2` |
| 3 | `theorem` | [operator_one](../../../../CommutativeAlgebra/WeightedInvolution.lean/declarations/operator-one.md) | 31 | `result-track:8995d174b3abf530c36b4f1740958abfc22bb9910ab969e7e3372e683aba64ea` |
| 4 | `theorem` | [operator_square](../../../../CommutativeAlgebra/WeightedInvolution.lean/declarations/operator-square.md) | 35 | `result-track:463e5294613c88c4d99bf09626148608ded745b18ba4dbbe74fe9323727355a1` |
| 5 | `theorem` | [operator_graded_mul](../../../../CommutativeAlgebra/WeightedInvolution.lean/declarations/operator-graded-mul.md) | 45 | `result-track:bf3d59e663c59319410cbf95101027da222ce8faff3cfceb7fb686ded134c981` |
| 6 | `theorem` | [operator_succ](../../../../CommutativeAlgebra/WeightedInvolution.lean/declarations/operator-succ.md) | 52 | `result-track:6c75e3d9a23335669dbd07011442bb48a0703557d3f7c3f3ac2ac00b8dd66563` |
| 7 | `theorem` | [normalized_square](../../../../CommutativeAlgebra/WeightedInvolution.lean/declarations/normalized-square.md) | 58 | `result-track:71842e08f884a8de309625d195f582a39141e96b0cbb57b8aa4f1085293cc802` |
| 8 | `def` | [operatorEquiv](../../../../CommutativeAlgebra/WeightedInvolution.lean/declarations/operatorequiv.md) | 70 | `declaration-track:297bc227d86b918f64fb85d1ccd401f0ad64994083cbc6d1d09af6e7af863feb` |
| 9 | `theorem` | [operatorEquiv_apply](../../../../CommutativeAlgebra/WeightedInvolution.lean/declarations/operatorequiv-apply.md) | 84 | `result-track:077847113fcbf4bb2ee8264bb59d23fa5899d2679c61a647d76dd320f4daa826` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=059dc85030577933c33fa270acc7b0a99a8d6581ec621afb014a24aa8ae344ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/WeightedInvolution.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/WeightedInvolution.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
