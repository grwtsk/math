# Verification target: Unsafe Queue Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4b3df2cd256721304ae648b53120096ca1027ae",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variante78809c992b8ce3a27d20fbfea73b69ec8ee6c649e6296ffbe2cc1fde831a1cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4b3df2cd256721304ae648b53120096ca1027ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variante78809c992b8ce3a27d20fbfea73b69ec8ee6c649e6296ffbe2cc1fde831a1cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variante78809c992b8ce3a27d20fbfea73b69ec8ee6c649e6296ffbe2cc1fde831a1cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Constants` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PostponedSafeRule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/declarations/postponedsaferule.md) | 25 | `declaration-track:4eb67bc598f370c5a71dd9aaec9f56f520cc93745c817102448afddd6d673b5e` |
| 2 | `def` | [toUnsafeRule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/declarations/tounsaferule.md) | 32 | `declaration-track:d0c1307fe2833486582609b7ddb7c7680443cc74a1b25a9d0674390363ba835a` |
| 3 | `inductive` | [UnsafeQueueEntry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/declarations/unsafequeueentry.md) | 38 | `declaration-track:1ce81caacf5555a020f0ed010051011d07940907527f59eec395bd27e2924b7c` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/declarations/instance.md) | 45 | `declaration-track:0b9bfdf7cef4d502e49fdf6eb1aab22355515075c96c550f5e13ffaea0e54fe8` |
| 5 | `def` | [successProbability](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/declarations/successprobability.md) | 50 | `declaration-track:a5941be1a8103f7c9c5bc7d81b53c0fbe28cc69b844756632d4b058cb6926c02` |
| 6 | `def` | [name](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/declarations/name.md) | 54 | `declaration-track:5723d0cea471e99964528a823fef15fcba1f3a2cec540f1660fceb9a5e4d3c9f` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 58 | `declaration-track:298a20f886ce6686c45972d08bb82f3dd1865f68301c8eb693fb2d86b013dca8` |
| 8 | `def` | [UnsafeQueue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/declarations/unsafequeue.md) | 66 | `declaration-track:7254f4d720c95f605ffffdae50d9e83fcc90c64ed10cdf35fe68bcde81f30279` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 70 | `declaration-track:ab02f0457647f5057c6ab5b2dd22b7a8394d17e2a79ab9fe34bb482a081ab26f` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 73 | `declaration-track:7231bf6d021f2a238e610548bca26be74f7e890bcfe1781b8ffab7b5ce5bd2d0` |
| 11 | `def` | [initial](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/declarations/initial.md) | 78 | `declaration-track:baf5cf88f9e3d8e25a3a47c87981cd70d682aee4f2968c0797e80e60b5b27a28` |
| 12 | `def` | [entriesToMessageData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UnsafeQueueNamespacedPublic.lean/declarations/entriestomessagedata.md) | 86 | `declaration-track:c4db49ece6bc3bc8834a811aa9ec462cc5cae0daaa437d7a6436c23e7d04ab99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6db61817c3ef8264c9080d4ceb146918d5a11970f79320d0354f696225b0676e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variante78809c992b8ce3a27d20fbfea73b69ec8ee6c649e6296ffbe2cc1fde831a1cb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variante78809c992b8ce3a27d20fbfea73b69ec8ee6c649e6296ffbe2cc1fde831a1cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
