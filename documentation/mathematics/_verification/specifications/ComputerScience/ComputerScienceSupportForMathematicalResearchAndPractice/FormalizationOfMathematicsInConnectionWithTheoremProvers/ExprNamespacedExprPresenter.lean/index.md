# Verification target: Expr Namespaced Expr Presenter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8dcefeed707dea5da9ec98f0c16458ac3577c97",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8dcefeed707dea5da9ec98f0c16458ac3577c97`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProofWidgets.Data.Html` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExprPresenter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/declarations/exprpresenter.md) | 17 | `declaration-track:3b90e0df1976a9ca12cc4972bacfca5d267b3166286c581a8983a95833ce0557` |
| 2 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/declarations/initialize.md) | 25 | `declaration-track:f578011a83b2f557fc5268ba4811304e1c83dd230cf63e65a05984f5671b58bb` |
| 3 | `def` | [evalExprPresenterUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/declarations/evalexprpresenterunsafe.md) | 34 | `declaration-track:7242fd2461db739df1c14ed26c97bde7dfdc79b019ddd86b30189203957abb9e` |
| 4 | `opaque` | [evalExprPresenter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/declarations/evalexprpresenter.md) | 39 | `declaration-track:30415661c9abb9a8c281f4d7ce4b93bda0c285216c4f162e9a0ced73eed98265` |
| 5 | `structure` | [GetExprPresentationsParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/declarations/getexprpresentationsparams.md) | 42 | `declaration-track:9ce2cfe40ccfa14b6c26faf4a3877000157b61de172201f57940a018e58103fd` |
| 6 | `structure` | [ExprPresentationData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/declarations/exprpresentationdata.md) | 47 | `declaration-track:d89cb46df0fd1f1af0d16dacecafea3fc3e0c719b65158344c039665a0f66522` |
| 7 | `structure` | [ExprPresentations](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/declarations/exprpresentations.md) | 53 | `declaration-track:bef8c9a8ad499fae0d152f6a6faf597500ef43a293bc037d7b6be351a3de7b57` |
| 8 | `def` | [getExprPresentations](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/declarations/getexprpresentations.md) | 58 | `declaration-track:b5cff0d6abd7805a14bdf9ee36ff7b8b0686d2f1639db70cc27f9ad28c3ef0cd` |
| 9 | `structure` | [GetExprPresentationParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/declarations/getexprpresentationparams.md) | 86 | `declaration-track:6e93aacf396463001c4f1c77a84128183c7a553ea28f51cfdbf881ddc4a75024` |
| 10 | `def` | [getExprPresentation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/declarations/getexprpresentation.md) | 94 | `declaration-track:a87d01c1131efd24b32d644d153330c9b5614a5ecb18549fe5ac72e4d9b74c0b` |
| 11 | `structure` | [ExprPresentationProps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/declarations/exprpresentationprops.md) | 108 | `declaration-track:0326bfd506d8bf6d40cb45da5489e25de8297b712cb4a24318fc3a65c84188ec` |
| 12 | `def` | [ExprPresentation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExprNamespacedExprPresenter.lean/declarations/exprpresentation.md) | 117 | `declaration-track:9a5010ecabb8748bc2854ba34473459d318d6957243ea1c13e0f9877bada3107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfb6ce05d89af232c8ba4fc58ac39f14aa19ba1e4e26e4351b52aed4f9c6dc81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
