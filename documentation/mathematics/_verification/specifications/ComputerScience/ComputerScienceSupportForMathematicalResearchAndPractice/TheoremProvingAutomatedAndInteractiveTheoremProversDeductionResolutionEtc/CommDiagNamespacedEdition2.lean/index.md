# Verification target: Comm Diag Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2db022ad503e1bd7ea4076fef56d195e792b8688",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variante78817f1d3b06010a174fb7760c2a053bf328778ca90b73fbce6b0669ff3b81b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2db022ad503e1bd7ea4076fef56d195e792b8688`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variante78817f1d3b06010a174fb7760c2a053bf328778ca90b73fbce6b0669ff3b81b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variante78817f1d3b06010a174fb7760c2a053bf328778ca90b73fbce6b0669ff3b81b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.PenroseDiagram` — import line 14; external provider; requires a separately pinned dependency.
- `ProofWidgets.Presentation.Expr` — import line 15; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.SelectionPanel` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Comm Diag Namespaced Edition2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition2.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-homty.md) | 27 | `declaration-track:6e8b47f6a3a2d4858e5e8b97b97c1cd47e8b401cad2624d1effd025f714a8d68` |
| 2 | `def` | [homType?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition2.lean/declarations/homtype.md) | 50 | `declaration-track:ba5fb9f4342fb28b1f6e369b4793a1268498b6089209cbd1877c540fe30bf307` |
| 3 | `def` | [homComp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition2.lean/declarations/homcomp.md) | 55 | `declaration-track:801b24f17a50f11574857f6bf6450a4e4673c439964e6aaaeeb8ba864e444fa5` |
| 4 | `abbrev` | [ExprEmbeds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition2.lean/declarations/exprembeds.md) | 60 | `declaration-track:873a697626f4bfe3af311f646c0e267e4ebf06469e1353b26071c2632f73a374` |
| 5 | `def` | [mkCommDiag](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition2.lean/declarations/mkcommdiag.md) | 67 | `declaration-track:5f186720d77e888eac2abd47bd20bee36218a7ffc3348df169e55d33bc9c7659` |
| 6 | `def` | [subTriangle](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition2.lean/declarations/subtriangle.md) | 87 | `declaration-track:b9243962ae25f563a994e179bd13fdd4e61dd9268979d582f7cda0f4694b419a` |
| 7 | `def` | [commTriangleM?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition2.lean/declarations/commtrianglem.md) | 91 | `declaration-track:9f9eadf7bb0955a5875cbeb8e61ee2958e0de248d0bbfc84f52f17ab3a511c83` |
| 8 | `def` | [commutativeTrianglePresenter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition2.lean/declarations/commutativetrianglepresenter.md) | 108 | `declaration-track:e061a1767844c6f817890faa70fad2e545052a3aad9c09f781ca15c5ac8a9131` |
| 9 | `def` | [subSquare](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition2.lean/declarations/subsquare.md) | 126 | `declaration-track:afdd70551f1fc44b7bbb3cfbd180a956d39c5855c9a6a0566a927346c40d5709` |
| 10 | `def` | [commSquareM?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition2.lean/declarations/commsquarem.md) | 129 | `declaration-track:fba93a43c093e2a78633e38d93cc2d6d29ef9202b226dc3f483d63f66566f3d2` |
| 11 | `def` | [commutativeSquarePresenter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition2.lean/declarations/commutativesquarepresenter.md) | 141 | `declaration-track:f83cac35d38ccd398e1d8e208f1f1de7645c3c37b0322b48b8b828c8c319dad0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76fe0ea3fcdcc83eb5b0343896a9a51983f784812db00b9761d1fb4acde6fa80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variante78817f1d3b06010a174fb7760c2a053bf328778ca90b73fbce6b0669ff3b81b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variante78817f1d3b06010a174fb7760c2a053bf328778ca90b73fbce6b0669ff3b81b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
