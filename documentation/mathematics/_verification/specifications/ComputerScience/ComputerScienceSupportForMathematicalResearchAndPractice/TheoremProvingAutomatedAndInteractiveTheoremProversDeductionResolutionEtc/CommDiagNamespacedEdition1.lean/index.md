# Verification target: Comm Diag Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99f9fdb8a86126abf53c8aa78e8b162fddc026ff",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant49b9b60f86699f4ca40e51eef76071a19b1c66a89200241ae3e2a02e8efa3c33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99f9fdb8a86126abf53c8aa78e8b162fddc026ff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant49b9b60f86699f4ca40e51eef76071a19b1c66a89200241ae3e2a02e8efa3c33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant49b9b60f86699f4ca40e51eef76071a19b1c66a89200241ae3e2a02e8efa3c33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProofWidgets.Component.PenroseDiagram` — import line 11; external provider; requires a separately pinned dependency.
- `ProofWidgets.Presentation.Expr` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Comm Diag Namespaced Edition1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition1.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-homty.md) | 24 | `declaration-track:e093d2d18c430819b98b4823c17feeb5f2f86facca83de4d28a1d381b6e6bdfc` |
| 2 | `def` | [homType?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition1.lean/declarations/homtype.md) | 47 | `declaration-track:be3a2cf13b6041effc9a792f7ff039898ae81187b300be4be3d7f2499a9071c8` |
| 3 | `def` | [homComp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition1.lean/declarations/homcomp.md) | 52 | `declaration-track:98d2f18435119b4730002a82a0968b24dfbe5722491184b520caa1302be58ea6` |
| 4 | `abbrev` | [ExprEmbeds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition1.lean/declarations/exprembeds.md) | 57 | `declaration-track:d3504fd537b89be725de5c6a144cbebc1f9bb730e744ad871820e65bd6ecb417` |
| 5 | `def` | [mkCommDiag](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition1.lean/declarations/mkcommdiag.md) | 64 | `declaration-track:1b96a34704a515ac29e51c0ee76b25b116736fe9f50eb270440690352a5f9a9e` |
| 6 | `def` | [subTriangle](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition1.lean/declarations/subtriangle.md) | 84 | `declaration-track:1748472a2a25a47b1f434b95f1cdbe23f238491a9997da1fff316f24c1c07ab3` |
| 7 | `def` | [commTriangleM?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition1.lean/declarations/commtrianglem.md) | 88 | `declaration-track:ca2ff55a1b4b58786d35caa50f23f4ba87773c6e060b3ea03651312e4966fcfd` |
| 8 | `def` | [commutativeTrianglePresenter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition1.lean/declarations/commutativetrianglepresenter.md) | 106 | `declaration-track:562f663deb3c822d4a328e46126c8357c9b8b87b1493d29dcb8582ab04571ce1` |
| 9 | `def` | [subSquare](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition1.lean/declarations/subsquare.md) | 124 | `declaration-track:451393afb72f15624a7a1d01d9e3b043b723cf8f0e961875c08f590d541864ea` |
| 10 | `def` | [commSquareM?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition1.lean/declarations/commsquarem.md) | 127 | `declaration-track:acf8d6f3157f393bb3dd1f647c3d8b94fef6f4cdeb1d97b094dc1c8bd8468864` |
| 11 | `def` | [commutativeSquarePresenter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CommDiagNamespacedEdition1.lean/declarations/commutativesquarepresenter.md) | 140 | `declaration-track:95a9e37e6d369fe9d18c8c1a07abeddb7e740559bd9ef254e135a0695a57525e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a82b45a400960880d0cdfbc7e2e03f72740765aaf69896474bcd40d7cef89eb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant49b9b60f86699f4ca40e51eef76071a19b1c66a89200241ae3e2a02e8efa3c33.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variant49b9b60f86699f4ca40e51eef76071a19b1c66a89200241ae3e2a02e8efa3c33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
