# Verification target: Request Cancellation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58a78229d0f293737e1f0d8471148b69c9051366",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant694b93724681e0a373644ecf5dc18258bfe5688a49fa48a89644625510f5163c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58a78229d0f293737e1f0d8471148b69c9051366`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant694b93724681e0a373644ecf5dc18258bfe5688a49fa48a89644625510f5163c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant694b93724681e0a373644ecf5dc18258bfe5688a49fa48a89644625510f5163c.lean.json)

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
| 1 | `structure` | [RequestCancellationToken](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/requestcancellationtoken.md) | 17 | `declaration-track:8599b22cedef282733e08297ece06a96a7c1a676d43e6d26103bbd0fcdd881ff` |
| 2 | `def` | [new](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/new.md) | 25 | `declaration-track:5ce61303f4b973c55c9ebc775c8f2a77ff79f164ed323ee30b82f32428eef9d8` |
| 3 | `def` | [cancelByCancelRequest](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/cancelbycancelrequest.md) | 33 | `declaration-track:5927685d992ea7f881ba879087e8fc7bb6ffc74adba6ee78f4da186c5cc373eb` |
| 4 | `def` | [cancelByEdit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/cancelbyedit.md) | 37 | `declaration-track:eeaa21945b4208471ab01471f42d09986eb46fc871272a461568a0d7295f40ca` |
| 5 | `def` | [requestCancellationTask](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/requestcancellationtask.md) | 41 | `declaration-track:7f3a1cdefce798f963a9684880ff4d146c0a6eb33ba6e156cb5bac7ab7ab70c9` |
| 6 | `def` | [editCancellationTask](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/editcancellationtask.md) | 44 | `declaration-track:8c1d97775e9f3d2f764b484e43746c077959af6b24ad73efdf616b713fc44709` |
| 7 | `def` | [cancellationTasks](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/cancellationtasks.md) | 47 | `declaration-track:23b8da49f593f82d939a4b59c2d477c67ad7f30a528b7acaac11da0ca96e4208` |
| 8 | `def` | [wasCancelledByCancelRequest](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/wascancelledbycancelrequest.md) | 50 | `declaration-track:c353d1910e212959dbfdea239be28e54ec5fcb449eff062fc0b90a916c049eff` |
| 9 | `def` | [wasCancelledByEdit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/wascancelledbyedit.md) | 53 | `declaration-track:b778120a1f5a8b7776dbf4fb8bfc54540850fdaaf60154a7ac16ccfc10ce62d3` |
| 10 | `def` | [wasCancelled](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/wascancelled.md) | 56 | `declaration-track:735b372bc895ae92b0eb15376d762b01605778d4f11c72c359b8d7681008bd14` |
| 11 | `structure` | [RequestCancellation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/requestcancellation.md) | 61 | `declaration-track:6e2d46b5f49819547677c8138c6a42e5b397eb776a8a550b8ce2e4a01f449f0b` |
| 12 | `def` | [RequestCancellation.requestCancelled](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/requestcancellation-requestcancelled.md) | 63 | `declaration-track:5b487a2d273d77694bd44c97c300068d35d9546792c0ebf7fddc2987d0fb11ce` |
| 13 | `abbrev` | [CancellableT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/cancellablet.md) | 65 | `declaration-track:192ef0d2e2160cf66a94d45ca1671cdaac1a495ff572654058619f7d66657f86` |
| 14 | `abbrev` | [CancellableM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/cancellablem.md) | 66 | `declaration-track:f72401e9f6cf93723e85980c816100cc530d7e71e704e5a0529a5a0ab9591b49` |
| 15 | `def` | [CancellableT.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/cancellablet-run.md) | 68 | `declaration-track:e54bcf3dcc11f6a614b8e98e1cb272472c6591d26b1749bbd88af55bfd37742d` |
| 16 | `def` | [CancellableM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/cancellablem-run.md) | 72 | `declaration-track:30809a9f7f44068550812a52c343e4cdd531fa38923b4f9bf2a32ccbe37808cf` |
| 17 | `def` | [CancellableT.checkCancelled](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/cancellablet-checkcancelled.md) | 76 | `declaration-track:12fb4bcaf69512982ffa50504b69bbbe871c9cbd0f186acecb26637a94a8a0cb` |
| 18 | `def` | [CancellableM.checkCancelled](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/cancellablem-checkcancelled.md) | 81 | `declaration-track:a3fb43ab391fd72c28bf26d39632e31d82bb05bebe9f82e71ccc3cfd4fe7d19d` |
| 19 | `class` | [MonadCancellable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/monadcancellable.md) | 84 | `declaration-track:f1e91bc809fc6c33f5af683d4b79e790a6257ad2f1317a9616e8609b45cef4b0` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/instance-source-edition-2.md) | 87 | `declaration-track:b10a5cb42578eb264dd84a93b6e0d0b43bd6716a7113de6d75b68dbe79958d85` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/instance.md) | 90 | `declaration-track:356156fc3fbc025d7eea1f5d8f445b0ea40e02a0d4b74dd6c30a416ab2f5b16a` |
| 22 | `def` | [RequestCancellation.check](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestCancellationPublic.lean/declarations/requestcancellation-check.md) | 93 | `declaration-track:9665a0de270a9c870229c33c41a3333758b689d3459660c553aaa9be0a25a952` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da7a80d656fec8c519afd1adbd2cc0c334e2f44b241d721fe120f955c74187ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant694b93724681e0a373644ecf5dc18258bfe5688a49fa48a89644625510f5163c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant694b93724681e0a373644ecf5dc18258bfe5688a49fa48a89644625510f5163c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
