# Verification target: Library Search Namespaced Public Grind Discharger

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3d84ef9726b00b6f49899af6fc8be93b1623e6b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3d84ef9726b00b6f49899af6fc8be93b1623e6b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Util` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Try` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/builtin-initialize-source-edition-5.md) | 47 | `declaration-track:d2761658eae1da635430a4a7ac963040c1e15451ed0c368927e3b264b9c79a06` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/builtin-initialize-source-edition-2.md) | 48 | `declaration-track:649c07ca8d06576d1d4c37f6d4763f2dc18f2edd6e0d510e91cc06b751255acd` |
| 3 | `def` | [grindDischarger](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/grinddischarger.md) | 58 | `declaration-track:d3400b92bd2ac1f539048be4e4db4bf74a3b4478857eca93cb09f5a1e7aed30c` |
| 4 | `def` | [tryDischarger](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/trydischarger.md) | 82 | `declaration-track:9fa0def41106c95788477e3ac9f4379dc4baab6c53eb041d4d3509c87ca8b63b` |
| 5 | `def` | [solveByElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/solvebyelim.md) | 112 | `declaration-track:36ed1371223009bc41e44871e3aa80ee1f940e3f3e8f49c0d6c9e3de19feaa9b` |
| 6 | `inductive` | [DeclMod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/declmod.md) | 134 | `declaration-track:2eb82f4ecc2c00813abc0ba8f59a6a484b9f34ea85a3d71cc5f98d72681e20b1` |
| 7 | `def` | [CandidateFinder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/candidatefinder.md) | 144 | `declaration-track:90c1716e31c48b94cc6ab671bc0f53f2b2ba9f9098faf464dcae91c11b1bb669` |
| 8 | `def` | [addImport](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/addimport.md) | 148 | `declaration-track:78e0c121f8428468899ff1b3060babab3f68cbc695a68d380582e1ea8bdd95e2` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/builtin-initialize-source-edition-4.md) | 169 | `declaration-track:bf70dfe875de208c2be0b1fd3ad0faeb281725178bbb8fb3dda24f1aae28e135` |
| 10 | `def` | [droppedKeys](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/droppedkeys.md) | 176 | `declaration-track:c7d45cbe0617aabda460df65c2c21bef27b86f76294dc2c7c471af1f83e57602` |
| 11 | `def` | [constantsPerImportTask](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/constantsperimporttask.md) | 186 | `declaration-track:b889354de91b2352e1a3b7509a42a60872e2e01e2d0640d69efa175ee798c4e7` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/builtin-initialize.md) | 190 | `declaration-track:5e303851122c8c313f1e6b2152eddbce1d05c26fec58c94fa819b8833312f25a` |
| 13 | `def` | [libSearchFindDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/libsearchfinddecls.md) | 195 | `declaration-track:e18c7a8e9f0ada6488b6c056ca6d7fa190fe783eafe6083f1cd347bed6d00d44` |
| 14 | `def` | [getStarLemmas](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/getstarlemmas.md) | 204 | `declaration-track:97575be5c28c5133f952b192260cbb41a8ef7e181c04980e721c8fec67c1bf17` |
| 15 | `def` | [mkHeartbeatCheck](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/mkheartbeatcheck.md) | 218 | `declaration-track:cfb5a7c66ae327873f9679e3b321c52b805a982cfa4694ac1f1337b0c0db68b6` |
| 16 | `def` | [interleaveWith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/interleavewith.md) | 232 | `declaration-track:10bddea50c086da634f42b0b3e1e1e9d75296bcb80ee2ea5290ed91e1bf0ebef` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/builtin-initialize-source-edition-3.md) | 251 | `declaration-track:a55b53fd36cb5c133d21703ea8fb244326e109442ad52c602bb12e6bab70f95b` |
| 18 | `def` | [abortSpeculation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/abortspeculation.md) | 257 | `declaration-track:da72fb90e0f1fa7311e5e4bee9aacf2c0a8de16555cd9b3de5221804dcafb110` |
| 19 | `def` | [isAbortSpeculation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/isabortspeculation.md) | 261 | `declaration-track:97665d5a3fba26175a450cc3ac665616fa7e878d06cda61f399fb19e3def646c` |
| 20 | `def` | [Candidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/candidate.md) | 271 | `declaration-track:765fef02979f44bccdee49287e808d18b23001e93ed76a1f44b63d962ec5e768` |
| 21 | `def` | [librarySearchSymm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/librarysearchsymm.md) | 276 | `declaration-track:f241ba9dc0219b3d85c0165239833477ad7df83d889a5d8b71a4e61409b098fb` |
| 22 | `def` | [mkLibrarySearchLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/mklibrarysearchlemma.md) | 292 | `declaration-track:bd1c7617e9ee28d96cbab41d340d08a72d6008369bbee6c1d3601b5647daeded` |
| 23 | `def` | [isVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/isvar.md) | 299 | `declaration-track:0382b5876fe760a2623faabe73661d4940de2fcadcf89e16b5df6fcc9158716c` |
| 24 | `def` | [librarySearchLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/librarysearchlemma.md) | 312 | `declaration-track:759a429d8cd76797a158fa9a5e044773068e51a38e9d61c8973e191753528b2f` |
| 25 | `def` | [tryOnEach](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/tryoneach.md) | 341 | `declaration-track:58849f1a7a786423593a7dd5c31b5e5d58d1813c7510703740e47306852b6a75` |
| 26 | `def` | [librarySearch'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/librarysearch-source-edition-2.md) | 362 | `declaration-track:941ae5aff36c64605c9c06c05deb68e5784a163f17469fcae178b8057d947d31` |
| 27 | `def` | [librarySearch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LibrarySearchNamespacedPublicGrindDischarger.lean/declarations/librarysearch.md) | 419 | `declaration-track:8b1d570cc503079278310797d7a131089ed0ea43b4ae578159df3b17032aec76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03a3c7d69f12e6b87c1e9b5280ee81fd14e0bd5fa319d808a27491ef90511978 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
