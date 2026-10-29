# Verification target: Guard Msgs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5bdd00f7821327940d49248e38c24b37af06e1c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variantacd83b131c4161d052328998ebf01b446f69d9040a0bf04a327f4dfbb48ace92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5bdd00f7821327940d49248e38c24b37af06e1c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variantacd83b131c4161d052328998ebf01b446f69d9040a0bf04a327f4dfbb48ace92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variantacd83b131c4161d052328998ebf01b446f69d9040a0bf04a327f4dfbb48ace92.lean.json)

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
| 1 | `def` | [messageToString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/messagetostring.md) | 38 | `declaration-track:84db685b51d38630559940997679e5a458a2834bf12da4b64e2c5f14d62e6e0b` |
| 2 | `inductive` | [FilterSpec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/filterspec.md) | 62 | `declaration-track:8f64ef4951126095a3b6455002d68caf6ef51054ad8eda1b06133b2f8a1b7d9a` |
| 3 | `inductive` | [WhitespaceMode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/whitespacemode.md) | 71 | `declaration-track:372d9160d56fb847bdfd2b28822fe1577edcc8db2e75eb9f866e4faf736cd70e` |
| 4 | `inductive` | [MessageOrdering](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/messageordering.md) | 80 | `declaration-track:649aa9bbf15284d57fcd1797e6a254216075789948598a48f3246dded530e9e2` |
| 5 | `structure` | [GuardMsgsSpec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/guardmsgsspec.md) | 88 | `declaration-track:4a04d9d607dba4228fcc2b6e46ad3770e2b3c5b572affc257e525044e0b00fb3` |
| 6 | `def` | [parseGuardMsgsFilterAction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/parseguardmsgsfilteraction.md) | 100 | `declaration-track:62ab2ee4b9f08a49f0763901eacd4ae68b8ab6f75fd218d7d0a97e3bf4d7d5cd` |
| 7 | `def` | [parseGuardMsgsFilterSeverity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/parseguardmsgsfilterseverity.md) | 111 | `declaration-track:a8edc1c7b0edd3b4658655f3068f54abec765d6f99e671b8cb1b5c26cd73d4f0` |
| 8 | `def` | [parseGuardMsgsSpec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/parseguardmsgsspec.md) | 122 | `declaration-track:2c13f5a99834c0e937731b4b0f5886e9ebc33b7952f7b6da4b15f33648104c09` |
| 9 | `structure` | [GuardMsgFailure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/guardmsgfailure.md) | 155 | `declaration-track:1a76d56b234a4a15606d25fb04b5b2b1a679d862768a8150dc83c83f0e77cbbc` |
| 10 | `def` | [revealTrailingWhitespace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/revealtrailingwhitespace.md) | 165 | `declaration-track:43c2ec4399186cb752702774fc67838493c5bdc66a1a07afe947d5be17cc6985` |
| 11 | `def` | [removeTrailingWhitespaceMarker](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/removetrailingwhitespacemarker.md) | 171 | `declaration-track:36e78defa665e024dbe2f24e2fe43f8a5ee00be01f6690efffbec547dc3b8e90` |
| 12 | `def` | [WhitespaceMode.apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/whitespacemode-apply.md) | 177 | `declaration-track:83bd2856edea57b329b40a93218aa286681fc04de1823dd839f2eaac427df8b0` |
| 13 | `def` | [MessageOrdering.apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/messageordering-apply.md) | 186 | `declaration-track:785a3229bf77b6ba2d9bd9e959ea729044b71f1f45d63a92e94e1aad1b3b8561` |
| 14 | `def` | [runAndCollectMessages](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/runandcollectmessages.md) | 196 | `declaration-track:021b9cf6b47a7d768dea88cae33cf273e38c74169bbab4db423c2046370766d1` |
| 15 | `def` | [elabGuardMsgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/elabguardmsgs.md) | 208 | `declaration-track:d52d3df3f1e9eee9223a8f3ddca35977cb627f2fd2f6f1365649faacc1064e7a` |
| 16 | `def` | [guardMsgsCodeAction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/guardmsgscodeaction.md) | 255 | `declaration-track:1bd109d1170e3070828b94bbe353fc9f077edd8ec64c3f2d2938f444f77977b7` |
| 17 | `def` | [elabGuardPanic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/GuardMsgsPublic.lean/declarations/elabguardpanic.md) | 287 | `declaration-track:657337f46081274dffcb475f466b180a7d0c7716ae3d978f1bb9220d6828c729` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ac4231a8de5285cf60ac3154c1d6581577799f74930c7dda8ad68bf2bab8534 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variantacd83b131c4161d052328998ebf01b446f69d9040a0bf04a327f4dfbb48ace92.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variantacd83b131c4161d052328998ebf01b446f69d9040a0bf04a327f4dfbb48ace92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
