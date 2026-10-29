# Verification target: Passes Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "743cd1642b0ee5ac2a732c49756f1e9e5f212876",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Passes/Variant026fa79f50ea17a725ced71794ba2fec3e4e60002180c77e8a15a066961b6d88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `743cd1642b0ee5ac2a732c49756f1e9e5f212876`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Passes/Variant026fa79f50ea17a725ced71794ba2fec3e4e60002180c77e8a15a066961b6d88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Passes/Variant026fa79f50ea17a725ced71794ba2fec3e4e60002180c77e8a15a066961b6d88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [init](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/declarations/init.md) | 50 | `declaration-track:7dbbdc90a97a37bbf81ab3fe7d0aeee6c27792e69f98d46910d4b83975c97354` |
| 2 | `def` | [trace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/declarations/trace.md) | 59 | `declaration-track:db4acf55730c1b646b810311388083371aa008c484e06f2418cc778929cfa692` |
| 3 | `def` | [saveBase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/declarations/savebase.md) | 64 | `declaration-track:71ca5b0accbd12e00aa7fa3253701d82b96059d312cd2357033428e6ee27dc83` |
| 4 | `def` | [saveMono](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/declarations/savemono.md) | 74 | `declaration-track:444f81833617a64fb34c1fb336bfc452b366082336ce68dab04192143057c4ae` |
| 5 | `def` | [saveImpure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/declarations/saveimpure.md) | 84 | `declaration-track:4670f438d306905e81ed9b150da1176f588d21e742c6698381bf62ab0744d184` |
| 6 | `def` | [builtinPassManager](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/declarations/builtinpassmanager.md) | 100 | `declaration-track:efa46a2fa640f51cbd483651f710cdc9869f490fb636636f004a45e0de4e5019` |
| 7 | `def` | [runImportedDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/declarations/runimporteddecls.md) | 170 | `declaration-track:aaae7f3153a9da45e5033b9d0e2761712a17433fe5e58bcc0abba4405cd3f6cf` |
| 8 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/declarations/builtin-initialize-source-edition-3.md) | 177 | `declaration-track:c938219a632fad90e0de0883036af9c757289a2de2df4e4cb1317e9124cc7e6f` |
| 9 | `def` | [getPassManager](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/declarations/getpassmanager.md) | 185 | `declaration-track:ed0e87035e22ac005a96f39b1441450a73ea77df6a2a547c89168d0325d4e2b7` |
| 10 | `def` | [addPass](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/declarations/addpass.md) | 188 | `declaration-track:62c04135aba486c54ff655d00a658dab0cb7d965898a8bb510eb58e3708f6926` |
| 11 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/declarations/builtin-initialize-source-edition-2.md) | 197 | `declaration-track:2d1f24e4cd806dfb476bccbd97f0a56545da01cf8755867fd7dfe71fab8300f2` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PassesNamespacedPublic.lean/declarations/builtin-initialize.md) | 209 | `declaration-track:14b93de51339f5de56fe90e0f5a66dd0fe58e04cc1de04a007db22c07ef671af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47ee1ab49194922a0c3b91f7bc1fdf614b167ff9a47bcf89e5082b8b92444a2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Passes/Variant026fa79f50ea17a725ced71794ba2fec3e4e60002180c77e8a15a066961b6d88.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Passes/Variant026fa79f50ea17a725ced71794ba2fec3e4e60002180c77e8a15a066961b6d88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
