# Verification target: Pattern Namespaced Public Get Context

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02593839310a11d4f54535d31a73c89d448a75fa",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant4a501db46ed116b93f90b90da6af932fe6ce69f2ad222705fae92334530ea0c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternNamespacedPublicGetContext.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternNamespacedPublicGetContext.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02593839310a11d4f54535d31a73c89d448a75fa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant4a501db46ed116b93f90b90da6af932fe6ce69f2ad222705fae92334530ea0c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant4a501db46ed116b93f90b90da6af932fe6ce69f2ad222705fae92334530ea0c2.lean.json)

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
| 1 | `def` | [getContext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternNamespacedPublicGetContext.lean/declarations/getcontext.md) | 25 | `declaration-track:c678f2f2b7127c005e17a0e980b89297a221f5e35c92fe32dc45e93ed28d8711` |
| 2 | `def` | [matchPattern?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternNamespacedPublicGetContext.lean/declarations/matchpattern.md) | 31 | `declaration-track:146fb8f9d676cee52a1b52f31a54969f1112998c04e1b7a8645ce1bc626f9cf1` |
| 3 | `inductive` | [PatternMatchState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternNamespacedPublicGetContext.lean/declarations/patternmatchstate.md) | 47 | `declaration-track:262d20525e5bb3cff7a948b188fdb2e84fb129736029dbfb00ebb86cc89835b7` |
| 4 | `def` | [isDone](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternNamespacedPublicGetContext.lean/declarations/isdone.md) | 68 | `declaration-track:2ad3639075fc20367bd13a32ee4bd11ecc646990fed5aa8f3b4e1bc80989e2c2` |
| 5 | `def` | [isReady](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternNamespacedPublicGetContext.lean/declarations/isready.md) | 73 | `declaration-track:370de0b24c950d37bc8ea2ae2439c7a9678db022833e59179a78c1117683724d` |
| 6 | `def` | [skip](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternNamespacedPublicGetContext.lean/declarations/skip.md) | 79 | `declaration-track:4db86c01106174bd39ddf34601b6fb7d66ede05dca29848d90dc3d7a34a09ead` |
| 7 | `def` | [accept](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternNamespacedPublicGetContext.lean/declarations/accept.md) | 87 | `declaration-track:9d98c4bc5d4b4713d702998a335d3f96493eb8fe72ea9b0cebf1321635ec6253` |
| 8 | `def` | [pre](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternNamespacedPublicGetContext.lean/declarations/pre.md) | 94 | `declaration-track:90573b416058736159ae88728553532dcfdc74f3210e00fdba8a5dbfbddaf1c9` |
| 9 | `def` | [evalPattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternNamespacedPublicGetContext.lean/declarations/evalpattern.md) | 115 | `declaration-track:e2cedfece188e22bb31b0f16f08dd3c36ebe7cf6ae23c39ff20ab246449a84ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8016a485d1a0f9520debd068f1f9f2659cc55bda5f16f171cbdc6f719e38f433 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant4a501db46ed116b93f90b90da6af932fe6ce69f2ad222705fae92334530ea0c2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant4a501db46ed116b93f90b90da6af932fe6ce69f2ad222705fae92334530ea0c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
