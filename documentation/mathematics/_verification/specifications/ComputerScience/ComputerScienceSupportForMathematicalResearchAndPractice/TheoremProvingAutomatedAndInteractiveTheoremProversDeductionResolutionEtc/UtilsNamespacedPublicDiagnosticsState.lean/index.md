# Verification target: Utils Namespaced Public Diagnostics State

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae69e84cb69c71c4a030957d42d31bffdd2e4b88",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantfacfccfa6b3c3c470df814144662f964a4d7089795e8a519623dbb103746a44d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae69e84cb69c71c4a030957d42d31bffdd2e4b88`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantfacfccfa6b3c3c470df814144662f964a4d7089795e8a519623dbb103746a44d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantfacfccfa6b3c3c470df814144662f964a4d7089795e8a519623dbb103746a44d.lean.json)

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
| 1 | `def` | [mkCmdSnaps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/mkcmdsnaps.md) | 31 | `declaration-track:c13ea1929398e1ab75163305e7946d5b9020cd211a4ab3e41dd0e209a8ea1c3f` |
| 2 | `structure` | [DiagnosticsState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/diagnosticsstate.md) | 59 | `declaration-track:4b48ae420abdde74d7c051a9ae4f356faa603041730df1e4c505f7fb55f24d04` |
| 3 | `structure` | [EditableDocumentCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/editabledocumentcore.md) | 76 | `declaration-track:8705f5809a83d5ed8370c0580b7455323d0dc5b6088dfaad7e0b6e115b074674` |
| 4 | `def` | [appendDiagnostics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/appenddiagnostics.md) | 90 | `declaration-track:216f27d349962d3133706e0d41822b09cfa98e32b2dc1e668077f654eb5db195` |
| 5 | `def` | [appendStickyDiagnostic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/appendstickydiagnostic.md) | 99 | `declaration-track:f9b4e0a521a2d83b65bc67e05edf9c4bb8bc485cae1f42f39e70fe35b9b37521` |
| 6 | `def` | [collectCurrentDiagnostics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/collectcurrentdiagnostics.md) | 110 | `declaration-track:86a72fe21b072514f582e02619f2cbebb2a7a6d18f4e5f4823d39720aaaeb97b` |
| 7 | `def` | [update](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/update.md) | 121 | `declaration-track:10cece193528da57335d31a763048ffa3e79af3608a539acbf033147153b98e6` |
| 8 | `def` | [publishDiagnostics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/publishdiagnostics.md) | 139 | `declaration-track:b7bc814f0d05373acfb21a818a0cea6812769023e64bf2cc57fba3295e6eaa72` |
| 9 | `structure` | [EditableDocument](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/editabledocument.md) | 173 | `declaration-track:cf83499ef476c4547f12f73df5ebe131e1cd7430bd5384ba0bfa2375a704ab84` |
| 10 | `def` | [versionedIdentifier](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/versionedidentifier.md) | 182 | `declaration-track:95bd6fd60ff19d9c1057e6f9e4eadf1fd82e22aa8885d08f32ed6779d2311734` |
| 11 | `structure` | [RpcSession](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/rpcsession.md) | 189 | `declaration-track:0461ca83f047773c92f8ea3753c881244d99bfae690920f3088e41aebd02f078` |
| 12 | `def` | [keepAliveTimeMs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/keepalivetimems.md) | 196 | `declaration-track:f6f7beaa7be7e09e87a2336700d9687024f402c02f4ee16cc49ffc2155af0e6e` |
| 13 | `def` | [new](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/new.md) | 199 | `declaration-track:218e3dac258ed69674d19320940814906ec923614b41d7fbd5e797a4a0183c43` |
| 14 | `def` | [keptAlive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/keptalive.md) | 209 | `declaration-track:eeabe6775e5967eda3cdbe5e9d60fac21b52872ef591339206be070e776b6f6b` |
| 15 | `def` | [hasExpired](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilsNamespacedPublicDiagnosticsState.lean/declarations/hasexpired.md) | 212 | `declaration-track:c7473e05028435fa3da6532741d23e48c7d9e0f089cf348afa2d6338d2b39ff8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a84d77efbf29bfa7cc16e29a945c401ef1376c5f4419f11a054e4260bb8ce28f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantfacfccfa6b3c3c470df814144662f964a4d7089795e8a519623dbb103746a44d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Utils/Variantfacfccfa6b3c3c470df814144662f964a4d7089795e8a519623dbb103746a44d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
