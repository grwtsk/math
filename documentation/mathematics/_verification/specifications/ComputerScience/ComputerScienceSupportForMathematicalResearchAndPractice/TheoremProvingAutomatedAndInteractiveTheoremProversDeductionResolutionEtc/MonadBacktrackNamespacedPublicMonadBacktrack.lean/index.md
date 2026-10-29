# Verification target: Monad Backtrack Namespaced Public Monad Backtrack

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "685a1009fd99c3801d4782af86f1bd8a0250b3e5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variante232c1d2d8ee12dca27a6529561b18291c03c19d05f9d54f1291b876e453285e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadBacktrackNamespacedPublicMonadBacktrack.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadBacktrackNamespacedPublicMonadBacktrack.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `685a1009fd99c3801d4782af86f1bd8a0250b3e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variante232c1d2d8ee12dca27a6529561b18291c03c19d05f9d54f1291b876e453285e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variante232c1d2d8ee12dca27a6529561b18291c03c19d05f9d54f1291b876e453285e.lean.json)

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
| 1 | `class` | [MonadBacktrack](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadBacktrackNamespacedPublicMonadBacktrack.lean/declarations/monadbacktrack.md) | 26 | `declaration-track:8351dcff2a73cbc5d80e0a9d14027fa92e2187c0bb1079f95b0458509343dc3e` |
| 2 | `def` | [commitWhenSome?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadBacktrackNamespacedPublicMonadBacktrack.lean/declarations/commitwhensome.md) | 35 | `declaration-track:07e7dc977de49e3420a714e55df10acf2a803e3dda2f326f89f994788f0ad9f2` |
| 3 | `def` | [commitWhenSomeNoEx?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadBacktrackNamespacedPublicMonadBacktrack.lean/declarations/commitwhensomenoex.md) | 52 | `declaration-track:ba405eedb2e9dcb4e20c130b6349fb638b0b77cc4407b4f96ae80fe83e910158` |
| 4 | `def` | [commitWhen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadBacktrackNamespacedPublicMonadBacktrack.lean/declarations/commitwhen.md) | 58 | `declaration-track:6a5d696de8dca3b8afb7c361402c2092acf4b612cee738146d03e8a382b584f3` |
| 5 | `def` | [commitIfNoEx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadBacktrackNamespacedPublicMonadBacktrack.lean/declarations/commitifnoex.md) | 70 | `declaration-track:8a506783ef4fa84184dc0ec5f0c8fc6286ea586dd22718c63b1b0b972523f3ec` |
| 6 | `def` | [withoutModifyingState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadBacktrackNamespacedPublicMonadBacktrack.lean/declarations/withoutmodifyingstate.md) | 78 | `declaration-track:5a4031b3635de175186da634148890a85e0e9fc4cd6c42318fac1d67123cef1f` |
| 7 | `def` | [observing?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadBacktrackNamespacedPublicMonadBacktrack.lean/declarations/observing.md) | 85 | `declaration-track:b5df790aaeb3d7408646f22bc72295a1a684d3587479fc4c4df37baa6be43bb7` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadBacktrackNamespacedPublicMonadBacktrack.lean/declarations/instance.md) | 93 | `declaration-track:c839d5275ee1bd0b226f5e11e7c6e612d26f2dd16df15fba2871d1fc04f1397c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aab4ea7ec1747fc4a2bf0d394028cd707ae7b3dd3eb84deacc3c82e8aacbc6db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variante232c1d2d8ee12dca27a6529561b18291c03c19d05f9d54f1291b876e453285e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadBacktrack/Variante232c1d2d8ee12dca27a6529561b18291c03c19d05f9d54f1291b876e453285e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
