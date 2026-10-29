# Verification target: Simp Namespaced Public Step Q

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7041c8dfb5738a91464dbc2caa81030c644e60da",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant36620d7c4cd62b25ac23be74ad16bdab0999c9ac7be6802043071b7b45905c05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicStepQ.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicStepQ.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7041c8dfb5738a91464dbc2caa81030c644e60da`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant36620d7c4cd62b25ac23be74ad16bdab0999c9ac7be6802043071b7b45905c05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant36620d7c4cd62b25ac23be74ad16bdab0999c9ac7be6802043071b7b45905c05.lean.json)

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
| 1 | `def` | [ResultQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicStepQ.lean/declarations/resultq.md) | 40 | `declaration-track:8d16dddef5ddfd01cd4379cbab209dca9889bc752497d13ce0c9be073ccdd85a` |
| 2 | `def` | [ResultQ.mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicStepQ.lean/declarations/resultq-mk.md) | 43 | `declaration-track:aaadc7f521b0b308297115b70a118d03a89904a405b46a31e95712ec57b6b5ef` |
| 3 | `def` | [StepQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicStepQ.lean/declarations/stepq.md) | 50 | `declaration-track:84df21dc441d2e505d35c55cec024d09c2f18954a7f0e82b9435a55c3f76a9a4` |
| 4 | `def` | [StepQ.done](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicStepQ.lean/declarations/stepq-done.md) | 53 | `declaration-track:906bffcc28f3954db8d24b7c543ce7b9144418a7626bb39040f761804c0ea573` |
| 5 | `def` | [StepQ.visit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicStepQ.lean/declarations/stepq-visit.md) | 55 | `declaration-track:20ca027db5b0d210e78803200db08d696420d53cbd33666ad342b59c8b1b8c08` |
| 6 | `def` | [StepQ.continue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicStepQ.lean/declarations/stepq-continue.md) | 57 | `declaration-track:f47d31a1f68570a222d8f13d7b9abaa20adadd7f4fdb6e5719bbc612986f4627` |
| 7 | `abbrev` | [SimprocQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicStepQ.lean/declarations/simprocq.md) | 62 | `declaration-track:1dfffa072312e85e2b3c6467d17611c06533865cf41904c838974ef88a8cf180` |
| 8 | `def` | [Simproc.ofQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpNamespacedPublicStepQ.lean/declarations/simproc-ofq.md) | 67 | `declaration-track:7e4eb889d51163f802e8be05caf4443a6693c4b2d19167001162ab7127cb5b0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd5b3c8b253ffad9b9610d96bf12a482fbaaca73a400ba31c05f4dcb3e1c74f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant36620d7c4cd62b25ac23be74ad16bdab0999c9ac7be6802043071b7b45905c05.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant36620d7c4cd62b25ac23be74ad16bdab0999c9ac7be6802043071b7b45905c05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
