# Verification target: Linter Header

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a86b3801096f9e9e4ccbc14812656a5ab5953baf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a86b3801096f9e9e4ccbc14812656a5ab5953baf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.ParseImportsFast` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.DirectoryDependency` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstNonImport?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/declarations/firstnonimport.md) | 64 | `declaration-track:0dae18bbee27db3e7058fbdd0e3957a7a87040801dc97f172ab219969deb4814` |
| 2 | `def` | [getImportIds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/declarations/getimportids.md) | 76 | `declaration-track:c6e7c66a106d92d2b2d7de14a7b04181324caae7cc2805a9dd55ac5c352bb8f8` |
| 3 | `def` | [parseUpToHere](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/declarations/parseuptohere.md) | 99 | `declaration-track:e856faf887919ebc0f4d20df5cbcfb2998c7ebf543c8cef9aad8e6ee34ddd3a7` |
| 4 | `def` | [toSyntax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/declarations/tosyntax.md) | 107 | `declaration-track:326eafe167e4071f5a93e0e737f3262e3350e649721771bdf168ba8cf1d946aa` |
| 5 | `def` | [authorsLineChecks](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/declarations/authorslinechecks.md) | 119 | `declaration-track:81293ecc4cfc56da626e889a5c0e4324ec342a732334554eb13931b282f6d414` |
| 6 | `def` | [copyrightHeaderChecks](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/declarations/copyrightheaderchecks.md) | 152 | `declaration-track:b89df62b0f549ee3bf9056c6695339f09d9aaa09773af8af2250cde9dc340980` |
| 7 | `def` | [isInMathlib](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/declarations/isinmathlib.md) | 215 | `declaration-track:6c3656432ee558cde41decf2fdd618c1fc3043a1b284bf65bab17cab819d6a0e` |
| 8 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/declarations/initialize-source-edition-2.md) | 229 | `declaration-track:feb197c8996f21879e80f35603d21233bd3d127cf9fa454f2f65a4c19c9d8b9f` |
| 9 | `register_option` | [linter.style.header](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/declarations/linter-style-header.md) | 252 | `declaration-track:a648d4a8af2fb028252c58d128242e8a721be10373246e0d339edf7cb8628698` |
| 10 | `def` | [broadImportsCheck](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/declarations/broadimportscheck.md) | 261 | `declaration-track:d29cfce93828fab28e45e218b37b762f230ee64dea761911607e229bd037459c` |
| 11 | `def` | [duplicateImportsCheck](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/declarations/duplicateimportscheck.md) | 287 | `declaration-track:28f8c7ca6f157ea0abcea7c65a5a867a9bba286470beccf5e8514efb3316f08c` |
| 12 | `def` | [headerLinter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/declarations/headerlinter.md) | 295 | `declaration-track:36547ccd6e6f9f6aa31aaea4022004e2959f3a36914bf39a288226c77f76656a` |
| 13 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterHeader.lean/declarations/initialize.md) | 356 | `declaration-track:df061d8eedc6d398eff863ac9cd8aabe08c18ee2179d8129e6b9fd2de265f375` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a817b2fa3c30861479db50d2b2eb6c5391414fbe4b357c153b9dc97a6df79164 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Header/Variantb763e1d6181a84df44d3f3d2c1442ed71ff39f17c745bf5f8da0c0385f437c77.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
