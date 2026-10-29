# Verification target: Tactic Library Search

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a9431afaa4b9078a4923ccc5c56da4cafd5b333",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Varianta0dc0baf26746fb7670ddebc4f21d0a0d71c4f39982d5713d8826f41cb9ae008.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a9431afaa4b9078a4923ccc5c56da4cafd5b333`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Varianta0dc0baf26746fb7670ddebc4f21d0a0d71c4f39982d5713d8826f41cb9ae008.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Varianta0dc0baf26746fb7670ddebc4f21d0a0d71c4f39982d5713d8826f41cb9ae008.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Util.Pickle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Cache` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SolveByElim` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Data.MLList.Heartbeats` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/initialize-source-edition-3.md) | 31 | `declaration-track:e3e183c97e296ab69ddb93c8669dafa51d7fb58abdf45bd956ee22796b3b391a` |
| 2 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/initialize-source-edition-2.md) | 32 | `declaration-track:b8744f77be5ec827a507dea8c37ae0c61c0727060b616610913200bad66a6a9a` |
| 3 | `inductive` | [DeclMod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/declmod.md) | 41 | `declaration-track:d47a43cccdfe40ea0a10faf4e64ed3d5307850f5af71822c36b8cbbfdfc004fd` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/instance-source-edition-2.md) | 45 | `declaration-track:e93a985611b56df762fac8f3b2be16fdfbcaf9098dd17cd81e263b38844e6a55` |
| 5 | `def` | [processLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/processlemma.md) | 49 | `declaration-track:e26a20b34aa12e025d44dfc5513c22e46799de9cef0a229f24a1f50e25633338` |
| 6 | `def` | [addLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/addlemma.md) | 68 | `declaration-track:866e912b83c51548371f94fac0963a3489a4805d594d455ce7c29dc82ac25da3` |
| 7 | `def` | [buildDiscrTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/builddiscrtree.md) | 76 | `declaration-track:ca9d0a543d781a41fc16ed191c5c1a6fefb8bae32337983b60f50433ae95542d` |
| 8 | `def` | [cachePath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/cachepath.md) | 89 | `declaration-track:2b332f89db60e68fb4c883a7179f366107bc0e6b019ecdd134368ceb17bc567c` |
| 9 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/initialize.md) | 95 | `declaration-track:874df51c609ac12e9f4be73d5901fd4af988137709dd4cd547ad43de1b334132` |
| 10 | `def` | [librarySearchLemmas](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/librarysearchlemmas.md) | 106 | `declaration-track:b5ef838f28427ca0b2fc32012d98e183c84c63279463756d7561f2a2788a4752` |
| 11 | `def` | [solveByElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/solvebyelim.md) | 109 | `declaration-track:edb7153385790816b93afc77f73d0847f3e4b0566778204f8a4a25ba1fa8a8bf` |
| 12 | `def` | [librarySearchLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/librarysearchlemma.md) | 127 | `declaration-track:2e377c0cb82fec474bddf8d458e2cd04e7accb4022ee5a5a19e5bd7e907f67e7` |
| 13 | `def` | [librarySearchCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/librarysearchcore.md) | 150 | `declaration-track:b11ae1ec63cddad672315aee52b530cc133312db18fa9cfc0691e6803ab1ab42` |
| 14 | `def` | [librarySearchSymm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/librarysearchsymm.md) | 162 | `declaration-track:2461e0f1a579313d6f026630fc12a31ecdc163f0063f81483763672242b84a1c` |
| 15 | `def` | [subgoalRankType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/subgoalranktype.md) | 172 | `declaration-track:42ff567f34362be1b42b83586c5febdd57ea601858576d16f2a9752e8dc90a3a` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/instance.md) | 175 | `declaration-track:e2eead6f535bd387a34cf054a082f278dd11d2fb87c53ec433de6cef5a8699df` |
| 17 | `def` | [subgoalRanking](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/subgoalranking.md) | 187 | `declaration-track:b31de80970eca269fcca03c3d2db886814e082f854e3287e7e1900daf0d926a9` |
| 18 | `def` | [sortResults](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/sortresults.md) | 194 | `declaration-track:e6de106435aa4e87e5b883651bcb865249f084be3b5cd9b5545a3bda7a7f8bde` |
| 19 | `def` | [librarySearch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/librarysearch.md) | 217 | `declaration-track:93bd818f88170089fd833592b2a978143d1189f38e00d7e2e1b6d5f0c2073fca` |
| 20 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/syntax-source-edition-2.md) | 247 | `declaration-track:b7a02375c492eceff9bee7272fb7c9869e472864d2d6e341a6aed674b02b7557` |
| 21 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/syntax-source-edition-4.md) | 249 | `declaration-track:dd7039e150c6bd414bfd471695c1ab39d1ac6e1c3aed7f90b97ef1959ba3d81f` |
| 22 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/syntax.md) | 251 | `declaration-track:52e8df5828776da29e3c4d23b073c3d80eda52d3c35187a061ffaeb02ea9db21` |
| 23 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/syntax-source-edition-3.md) | 254 | `declaration-track:c90c35d30d51f3b17f94afab6b212509694c026ad396c854f2e4191c8bdbb369` |
| 24 | `def` | [exact?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/exact.md) | 262 | `declaration-track:288599b309c3a6ea91e7e6b7aefd29863e932c705cb0b47dae300459edb5d7e7` |
| 25 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/elab-rules-source-edition-2.md) | 280 | `declaration-track:f543def06cc7eb45c157f9324c38208b6deedad475d27b762d641d95ac0a3a75` |
| 26 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/elab-rules.md) | 283 | `declaration-track:b5a2d1e344b8bbeeed112724062a0765f1d4b638f5d39d8735ef40d6ea84635a` |
| 27 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/elab.md) | 286 | `declaration-track:17ad22e740af0cee778c3ad53f038feb0faeb665432388ee1d69fe9ac7456780` |
| 28 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearch.lean/declarations/elab-source-edition-2.md) | 292 | `declaration-track:196ac74bb916e82012f335f0614109c458cd906d1a46018906ba8dd49fe35789` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a8c69b60c92e8c4e96620232a3d58aeff28e69fe72fc22639051f673d5631aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Varianta0dc0baf26746fb7670ddebc4f21d0a0d71c4f39982d5713d8826f41cb9ae008.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Varianta0dc0baf26746fb7670ddebc4f21d0a0d71c4f39982d5713d8826f41cb9ae008.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
