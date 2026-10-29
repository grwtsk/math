# Verification target: Async List Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a89d2af053b45a4985a28d641630ea9d4a633c3a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant80cb063b8f96d2bf58b0cd8c8cadb26ec6958d4d04fe70552308e1079b34e92b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AsyncListPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AsyncListPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a89d2af053b45a4985a28d641630ea9d4a633c3a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant80cb063b8f96d2bf58b0cd8c8cadb26ec6958d4d04fe70552308e1079b34e92b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant80cb063b8f96d2bf58b0cd8c8cadb26ec6958d4d04fe70552308e1079b34e92b.lean.json)

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
| 1 | `inductive` | [AsyncList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AsyncListPublic.lean/declarations/asynclist.md) | 21 | `declaration-track:26bae54349a373349981c8b07ea6c51bc3144185e9e7061d622dff01f0ae54a9` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AsyncListPublic.lean/declarations/instance.md) | 30 | `declaration-track:78fbc208c284bd678c3a0ba7c6bfe39c565e8d63070ddb7e769d27cacddfbd5d` |
| 3 | `def` | [ofList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AsyncListPublic.lean/declarations/oflist.md) | 32 | `declaration-track:17e5c5e77aeb4e75a4be90f50ceaa8ce3239b712ff885e3d67428bc45df33033` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AsyncListPublic.lean/declarations/instance-source-edition-2.md) | 35 | `declaration-track:9e055e3e0b853f438a13be85a97a79a8d49287c9fbe5ca889e0c654a9bc56a68` |
| 5 | `def` | [waitUntil](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AsyncListPublic.lean/declarations/waituntil.md) | 39 | `declaration-track:4402cf051bf6f82ddf19e2de66d7e1216b0e1cc4f5e4e6f4cdab9cc3a2edba2b` |
| 6 | `def` | [waitAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AsyncListPublic.lean/declarations/waitall.md) | 52 | `declaration-track:4e3d88564a6070a43b4b0f911d8680351f5c5d10a1fed3359b5ca62e0e81fa1d` |
| 7 | `def` | [waitFind?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AsyncListPublic.lean/declarations/waitfind.md) | 58 | `declaration-track:9b9c08033003fcd86d06bdb17891e655b45d25a77101d28c7a4a81f28b79541f` |
| 8 | `def` | [getFinishedPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AsyncListPublic.lean/declarations/getfinishedprefix.md) | 73 | `declaration-track:de9577405d144aa3db055d322ce163ffe8ec7b8b840313f88aab28f60eff6646` |
| 9 | `def` | [getFinishedPrefixWithTimeout](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AsyncListPublic.lean/declarations/getfinishedprefixwithtimeout.md) | 85 | `declaration-track:accc1d824fc73c86ed79e3949bffb24d001b8c8571b5ba6cd00e2f3a98054849` |
| 10 | `def` | [getFinishedPrefixWithConsistentLatency](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AsyncListPublic.lean/declarations/getfinishedprefixwithconsistentlatency.md) | 117 | `declaration-track:d6a53e9714598a45a1ff007af77a2ad85f5e45c249a6c8b26ee20a0745e54a53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69e96b22e923cde257fac4eb2c4e5b381c7c40e3568367395b9cd9217ae3aa75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant80cb063b8f96d2bf58b0cd8c8cadb26ec6958d4d04fe70552308e1079b34e92b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AsyncList/Variant80cb063b8f96d2bf58b0cd8c8cadb26ec6958d4d04fe70552308e1079b34e92b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
