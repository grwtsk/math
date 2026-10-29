# Verification target: Print Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "959bc81feb0c9f003838693ffc787ff3834adb94",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant55a91bc520d838922b24d95113791251acf68a9c4239583cce118eeb2bd81ed1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `959bc81feb0c9f003838693ffc787ff3834adb94`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant55a91bc520d838922b24d95113791251acf68a9c4239583cce118eeb2bd81ed1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant55a91bc520d838922b24d95113791251acf68a9c4239583cce118eeb2bd81ed1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.PrettyPrinter.Delaborator.Builtins` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [throwUnknownId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/throwunknownid.md) | 22 | `declaration-track:8b1b6a0f6c45c28b09a5fe2cc432ee151f446a8978033bb1ae71f8cefbaa8290` |
| 2 | `def` | [levelParamsToMessageData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/levelparamstomessagedata.md) | 25 | `declaration-track:e1c2ad6da9c024bbf173e5edd8677c54c1da28ed3313947907910114d49bf623` |
| 3 | `def` | [mkHeader](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/mkheader.md) | 34 | `declaration-track:595a1231714c05659ddc2fe4fb28eeedcec4c52fbe1305eb6421913029ee9920` |
| 4 | `def` | [mkOmittedMsg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/mkomittedmsg.md) | 79 | `declaration-track:f2dc5e8ec31f10771c5d44d3c9677658c105daa3c72ec63b75f91d8153da41c1` |
| 5 | `def` | [printAxiomLike](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/printaxiomlike.md) | 83 | `declaration-track:7b4727c98dfb2fc7ab7b5886538af166ceb2f6cff0ff3208a60435cccc56d4a0` |
| 6 | `def` | [printDefLike](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/printdeflike.md) | 86 | `declaration-track:00dfc0f7c22413f617758059a944b6e7a66dcc79e6933b63ef79f660408e5cdd` |
| 7 | `def` | [printQuot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/printquot.md) | 94 | `declaration-track:b9ec112b6a21d712ed5051bc7bb67b7e643883b672749a25428dfec03c95ec69` |
| 8 | `def` | [printInduct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/printinduct.md) | 97 | `declaration-track:c7f9e3ec177c76b00aff444b40b9fffad4d72b1b317579d9643bae14bc82a5df` |
| 9 | `def` | [printRecursor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/printrecursor.md) | 107 | `declaration-track:b7c1eca9706e2799f0297b8da82ae9ae3330d6374804895f0b954859b3800746` |
| 10 | `def` | [getFieldOrigin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/getfieldorigin.md) | 124 | `declaration-track:0bdb50a3a1e008742290eec44c9bc93d20b2e470f248d8dbdb5c812977675f39` |
| 11 | `def` | [printStructure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/printstructure.md) | 134 | `declaration-track:246ce7c89d7ccb3eec9a30eb3f562c8e786c3a42e3b112d07522db4b56713a16` |
| 12 | `def` | [printIdCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/printidcore.md) | 207 | `declaration-track:88cde71f0bae1588565a1f10e5d748afdeaa6fc9f0703e2f1dd59e1e19bd1792` |
| 13 | `def` | [printId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/printid.md) | 228 | `declaration-track:fa176346d1c68937e138b8644057ac06663d89d9017a8ddef5a7d9b36cafa784` |
| 14 | `def` | [elabPrint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/elabprint.md) | 233 | `declaration-track:6a32776b75a7a94b44f79edb3dbaba6b48bbc5c021eea405c0a5bc402470e6f0` |
| 15 | `def` | [printIdSig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/printidsig.md) | 238 | `declaration-track:175ebeeabe18d4255cba28189b48291ddd050cd7da89042197e274860858c923` |
| 16 | `def` | [elabPrintSig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/elabprintsig.md) | 243 | `declaration-track:d634f4978073dae17b23a86683e87e088dbd162906e7f938d0f4cd4bf0191d5d` |
| 17 | `def` | [printAxiomsOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/printaxiomsof.md) | 248 | `declaration-track:01633950f521ab2ee71478ee740602698046ee6a589078c6aefad6171fd39eb7` |
| 18 | `def` | [elabPrintAxioms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/elabprintaxioms.md) | 255 | `declaration-track:1c3682b749ca7babbc98eaa4ad7e5a4e992887943ee4b45e8fbf8ccc3227c367` |
| 19 | `def` | [printEqnsOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/printeqnsof.md) | 261 | `declaration-track:4007bba6f9638c9ba8feb3b37d276085c74ed614e3187531c63919ee2d315863` |
| 20 | `def` | [elabPrintEqns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrintNamespacedPublic.lean/declarations/elabprinteqns.md) | 270 | `declaration-track:b80af37dc271aab3b616dc5326a534b54a44747600a6c9a56359d5058c756e8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b999862d2e2f033b47b1a7ae40d558b15947139d4aea0ed8bfee9758f55889b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant55a91bc520d838922b24d95113791251acf68a9c4239583cce118eeb2bd81ed1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant55a91bc520d838922b24d95113791251acf68a9c4239583cce118eeb2bd81ed1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
