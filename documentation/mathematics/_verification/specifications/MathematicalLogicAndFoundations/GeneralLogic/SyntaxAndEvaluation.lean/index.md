# Verification target: Syntax And Evaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a46b8ec1e2f6b9548964dea622bd9f670402c31e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/FormulasAndValuations/NandSyntaxAndEvaluation/Variant692bc8380d51d5d1/SyntaxAndEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SyntaxAndEvaluation.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SyntaxAndEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a46b8ec1e2f6b9548964dea622bd9f670402c31e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/FormulasAndValuations/NandSyntaxAndEvaluation/Variant692bc8380d51d5d1/SyntaxAndEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/FormulasAndValuations/NandSyntaxAndEvaluation/Variant692bc8380d51d5d1/SyntaxAndEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Boolean.Semantics` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NandExpr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SyntaxAndEvaluation.lean/declarations/nandexpr.md) | 37 | `declaration-track:198ba72d11f546af0b58e8118d685fa2374fc772e10478471d83ab52618e441e` |
| 2 | `def` | [eval](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SyntaxAndEvaluation.lean/declarations/eval.md) | 44 | `declaration-track:88ba7ef5c4fd76c83ceeffd9a2b62f237376e65c3dc2a90aa271e785c1d939c8` |
| 3 | `theorem` | [eval_var](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SyntaxAndEvaluation.lean/declarations/eval-var.md) | 49 | `result-track:5f9c80afb78dc7d81f7c1f502678fcef8d19050d3c27311089197994309c9284` |
| 4 | `theorem` | [eval_nand](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SyntaxAndEvaluation.lean/declarations/eval-nand.md) | 54 | `result-track:57a30acda68ce5fe671bb6367a03708c4892f08ff6e6f862191a0c66b9ab1a85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48be431762ad675bd3f053eeba86624530487e6b16ec200b7abeddde6756f6f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/FormulasAndValuations/NandSyntaxAndEvaluation/Variant692bc8380d51d5d1/SyntaxAndEvaluation.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/FormulasAndValuations/NandSyntaxAndEvaluation/Variant692bc8380d51d5d1/SyntaxAndEvaluation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
