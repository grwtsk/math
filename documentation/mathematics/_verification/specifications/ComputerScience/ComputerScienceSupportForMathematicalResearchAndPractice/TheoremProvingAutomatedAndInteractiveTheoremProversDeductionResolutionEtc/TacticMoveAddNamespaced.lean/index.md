# Verification target: Tactic Move Add Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5dea0eb5e25ff671ea3c8c07c8e49850cd86f1a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5dea0eb5e25ff671ea3c8c07c8e49850cd86f1a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.LinearOrder` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.Expr.getExprInputs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/lean-expr-getexprinputs.md) | 115 | `declaration-track:46c170b93d4e26b0b1fa40147809d970679a7bb2e8d11442bad71677112bf517` |
| 2 | `def` | [Lean.Expr.size](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/lean-expr-size.md) | 126 | `declaration-track:7355b4b20c528905404d654651bdf1191a75b10a313e1402e61594fe82d867f2` |
| 3 | `def` | [uniquify](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/uniquify.md) | 155 | `declaration-track:39774af3954477f78ef84b3ac778da3093c04fd9631024c0adeb13a7ab4f0b7e` |
| 4 | `def` | [weight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/weight.md) | 178 | `declaration-track:d32fd651d985fefd14894eed5eefc8a78a216a7512192f94b446cf072469063d` |
| 5 | `def` | [reorderUsing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/reorderusing.md) | 200 | `declaration-track:8a89b35e6e43e0ab9c0a437e84ac415b88215f889246a3007b747a0fe0b6e43b` |
| 6 | `def` | [prepareOp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/prepareop.md) | 224 | `declaration-track:29617620b8eb638e7be1b5158e9a3fb3177149d4c31e70c01653561f776d6cb2` |
| 7 | `def` | [sumList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/sumlist.md) | 239 | `declaration-track:7b8d9379e6888c3919b7f8267e44daba9dd2a6d68b5385fea0bc205b6d02bac5` |
| 8 | `def` | [getAddends](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/getaddends.md) | 257 | `declaration-track:e45adef9d4056d5278d25779164fe0929401c6d391138d70c1f14c30ffe7d624` |
| 9 | `def` | [getOps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/getops.md) | 269 | `declaration-track:31af2054ea1d6ed22bea7610604f780f6bbd027e4bf1ec6f7186d53261d1dcf1` |
| 10 | `def` | [rankSums](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/ranksums.md) | 289 | `declaration-track:0e0c4454b78146016ec7625d34f42d3f779cb4bc289efad0aee618abdeef1452` |
| 11 | `def` | [permuteExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/permuteexpr.md) | 302 | `declaration-track:4ebc463677e0ed6c0ed2202a61de9c0383af21acf4e669f0e315639bf27b03e3` |
| 12 | `def` | [pairUp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/pairup.md) | 335 | `declaration-track:bcbd59e889ac382e880ba28c52801219fce5a8514cd5d975333fea992bf203af` |
| 13 | `def` | [moveOperSimpCtx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/moveopersimpctx.md) | 348 | `declaration-track:d73dab6b897b625b03bd2fdc168b3c75efa252639be96b67148ff7bbabfcdddf` |
| 14 | `def` | [reorderAndSimp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/reorderandsimp.md) | 373 | `declaration-track:6f9417660c199a6aade4ca024c78bd281ab7660c8fdac341e699795d594d80ad` |
| 15 | `def` | [unifyMovements](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/unifymovements.md) | 398 | `declaration-track:4b94e3a004a6f6c30a3d0828b21857b2d2171d004d6f6848f15ca20d29c47a0c` |
| 16 | `def` | [parseArrows](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/parsearrows.md) | 425 | `declaration-track:72a3b77a3b75b6a41d611c0b62773609628834dc9af5909ec46f2d32de6dca14` |
| 17 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/initialize.md) | 432 | `declaration-track:50ee449879b514a3575e03885b0ed89991519058dd37bc060c7a8ec36611f1e1` |
| 18 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/elab.md) | 449 | `declaration-track:3a5a357b1ad8345288d9d831c72862d6c503f835abefea08297d6d76a2f0445f` |
| 19 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/elab-source-edition-2.md) | 463 | `declaration-track:3b3147cbf69a63d4a79d8450f7bb721f2f188064c50ab985fa84aaed61c87126` |
| 20 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMoveAddNamespaced.lean/declarations/elab-source-edition-3.md) | 468 | `declaration-track:b9bbdda02ebb2fb594b8a08c06e18fe115e7afb7dfee7b5b3a61a781f42eb47b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65abd0dd8ba7ee2553665a87eebe2e3060e1c5b101db6f1149f96ccb582236cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MoveAdd/Variant50149ed5853718fcc152eae69821fd34a85ab859a08b411157180d3f1f9dcd51.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
