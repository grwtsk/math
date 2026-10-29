# Verification target: Utils Public Diagnostics State

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e46f44a1599800a6bd6bedb8db9729235d37f49e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantb0c639a32c740e9fe0681b995c55e33812364c4421dd577aa7b85531122f406e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e46f44a1599800a6bd6bedb8db9729235d37f49e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantb0c639a32c740e9fe0681b995c55e33812364c4421dd577aa7b85531122f406e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantb0c639a32c740e9fe0681b995c55e33812364c4421dd577aa7b85531122f406e.lean.json)

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
| 1 | `def` | [mkCmdSnaps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/mkcmdsnaps.md) | 23 | `declaration-track:b925ed6a65d99646146495829e79a4fa3901cb68de3313a507ed489d2948bc45` |
| 2 | `structure` | [DiagnosticsState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/diagnosticsstate.md) | 51 | `declaration-track:fee59b13618f44248347ea9e910bfe6b7f1e6257fdf50faf031d5e74f252143b` |
| 3 | `structure` | [EditableDocumentCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/editabledocumentcore.md) | 68 | `declaration-track:143e2e98a01e2541e40f83ea1ef7bd5ee44caec20c3bbce5c43b6e09613e2221` |
| 4 | `def` | [appendDiagnostics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/appenddiagnostics.md) | 82 | `declaration-track:3641003ca9830a3e0ece684db51a353fbce4ed367833970d4cd26d2e84f43bce` |
| 5 | `def` | [appendStickyDiagnostic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/appendstickydiagnostic.md) | 91 | `declaration-track:e91b45ea6c01ebe8a5ae6e589db13559def8d34685353665a7c0fe6532ad119f` |
| 6 | `def` | [collectCurrentDiagnostics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/collectcurrentdiagnostics.md) | 102 | `declaration-track:b3ba3f5e3fcd8f761b08bf5b1939510d3aa6a48955490180b9c91713db07d7c7` |
| 7 | `def` | [update](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/update.md) | 113 | `declaration-track:281e0f1c693349175424ac8fe0719173d19024989baab0aa0adb3c55f4401965` |
| 8 | `def` | [publishDiagnostics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/publishdiagnostics.md) | 131 | `declaration-track:5156fe30572262edb196c14746f85381d0cbb0fb2f3b57047fb6d92014ad7c56` |
| 9 | `structure` | [EditableDocument](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/editabledocument.md) | 165 | `declaration-track:06d38151a84093a66071565b97dd164bda3c14fb43d382384dda75b7895f0f0a` |
| 10 | `def` | [versionedIdentifier](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/versionedidentifier.md) | 174 | `declaration-track:ed2988b4c11c3c35f293586bce31a38cd59f1bab46fba0adc1d49d80a43798c1` |
| 11 | `structure` | [RpcSession](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/rpcsession.md) | 181 | `declaration-track:a21122471ac967d102400fd3245ab68f9c57bfeab60d400b006fc4d3ce952345` |
| 12 | `def` | [keepAliveTimeMs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/keepalivetimems.md) | 188 | `declaration-track:03222505b5d66efbf40ab0081af313748f658a4c02f06fbad825fc6d27ff0af9` |
| 13 | `def` | [new](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/new.md) | 191 | `declaration-track:c7ad666807feb60a745f3cc7d2c94d90e5bd054b6fbff1c904c79dcdef377c7d` |
| 14 | `def` | [keptAlive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/keptalive.md) | 201 | `declaration-track:499ada363265223b60a0b70e6740eee42a771dc5da9210e369f1186b4421d246` |
| 15 | `def` | [hasExpired](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsPublicDiagnosticsState.lean/declarations/hasexpired.md) | 204 | `declaration-track:3d11384607eb5bc1db364701085c85507320ce3a99ba24f89126ef69b3ca2a13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=673200d359c13ef7de7bf2e98eeeeb400e8bf5fbf51a7ab3c8e777883cabb6d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantb0c639a32c740e9fe0681b995c55e33812364c4421dd577aa7b85531122f406e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantb0c639a32c740e9fe0681b995c55e33812364c4421dd577aa7b85531122f406e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
