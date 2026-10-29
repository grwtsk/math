# Verification target: Constant Expressions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "983314435ce2dcdcaf8f93b40f024286072d18be",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/ConstantExpressions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstantExpressions.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstantExpressions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `983314435ce2dcdcaf8f93b40f024286072d18be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/ConstantExpressions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/ConstantExpressions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [Negation Conjunction Disjunction](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NegationConjunctionDisjunction.lean/index.md) — import line 17; pinned internal source present.
- `Folder.Boolean.Semantics` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nandTrue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstantExpressions.lean/declarations/nandtrue.md) | 40 | `declaration-track:f839c0c35762049d14907c4fc968f39e62950c30f8e9bf8d9be8959b8a0895a8` |
| 2 | `def` | [nandFalse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstantExpressions.lean/declarations/nandfalse.md) | 43 | `declaration-track:72fa2663952b48a9e246db9cae05e1a9303d6459051b54c08701bb6be59a23ae` |
| 3 | `theorem` | [eval_nandTrue](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstantExpressions.lean/declarations/eval-nandtrue.md) | 47 | `result-track:2164d9f7fc3cd96f900524abbbf67c14430c4742492ad6e74d813c06d3d44a7d` |
| 4 | `theorem` | [eval_nandFalse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstantExpressions.lean/declarations/eval-nandfalse.md) | 52 | `result-track:99f99454f7fd0c3c738d9672b67c109c2b8f9f4b325173370121b17777fdb043` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e54f8fc6c67bd387a64ab70ec00058f4e2c21154a8b51856ea9cf95d95e11865 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/ConstantExpressions.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/TruthTables/NandGateExpressions/Variant692bc8380d51d5d1/ConstantExpressions.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
