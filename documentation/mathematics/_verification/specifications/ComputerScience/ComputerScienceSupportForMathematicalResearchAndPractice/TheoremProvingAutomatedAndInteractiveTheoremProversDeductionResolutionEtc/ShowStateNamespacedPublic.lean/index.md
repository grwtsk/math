# Verification target: Show State Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24c2fe4a0763aa9e3829ef44b7b739cff3a309de",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant54d8c4d537c7f2e6f5d68f795112e42f4f14b8527f4c949efbda56891a115483.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24c2fe4a0763aa9e3829ef44b7b739cff3a309de`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant54d8c4d537c7f2e6f5d68f795112e42f4f14b8527f4c949efbda56891a115483.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant54d8c4d537c7f2e6f5d68f795112e42f4f14b8527f4c949efbda56891a115483.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.PP` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EMatchTheoremParam` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Split` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ppAsserted?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/ppasserted.md) | 24 | `declaration-track:0f9075a3a93c6ce67a39e03087da270daa0d60ade20cad00050146398c79c660` |
| 2 | `def` | [evalShowAsserted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/evalshowasserted.md) | 30 | `declaration-track:c76d10617fc19b52fc30a46e78343661dc809fbfd619f1d660a9eb120dcaedd5` |
| 3 | `def` | [ppProps?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/ppprops.md) | 36 | `declaration-track:f4f5c60b32819c690c4f19cccf6b5afb7d9b35e72eacdb94d186ff750b1a9a37` |
| 4 | `def` | [showProps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/showprops.md) | 44 | `declaration-track:58111564da30633a6745a18aaac0b12f3bcb611ab6d31fce6d0492ea76ce62bc` |
| 5 | `def` | [evalShowTrue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/evalshowtrue.md) | 50 | `declaration-track:59a3a0c7f14ee2792e37d199adb003f77235bda82791caebde22531a55cf005e` |
| 6 | `def` | [evalShowFalse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/evalshowfalse.md) | 54 | `declaration-track:8a9bca3945c2cd73e3c2430c5bc4cd82c2f325d3160f472deb8076f851006349` |
| 7 | `def` | [ppEqcs?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/ppeqcs.md) | 58 | `declaration-track:da5ba706f1574f3377972b181dce48b9cb4ed0aee96992f9fdfa59f065f02570` |
| 8 | `def` | [evalShowEqcs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/evalshoweqcs.md) | 93 | `declaration-track:eff0a83a9fede8946d2f02452e4c5f0d88ffba51747cfa4146205c3b2e5af7ae` |
| 9 | `def` | [pushIfSome](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/pushifsome.md) | 99 | `declaration-track:cc2565f974cfd9e4b86179e1801f509862ee1f2776b6c8233c6bcced168a8f17` |
| 10 | `def` | [showState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/showstate.md) | 102 | `declaration-track:c71d6068895bdd11eb7b902672435820ad636b73d118264348b1dcb25e807ec0` |
| 11 | `def` | [evalShowState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/evalshowstate.md) | 110 | `declaration-track:645ab9b2d2e0bcbfae815043a83e26cf83818df4ddab20779e13cb450232513f` |
| 12 | `def` | [evalShowCases](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/evalshowcases.md) | 115 | `declaration-track:f90c582a0d19d9a8c9165be5afcbb9e6179bd595f386da74f6770b0087032918` |
| 13 | `def` | [evalShowLocalThms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/evalshowlocalthms.md) | 126 | `declaration-track:d177f1c36889ba4b14f951c998d178f5d2195f8e85af92241e1ac0daf9a07a07` |
| 14 | `def` | [evalShowTerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ShowStateNamespacedPublic.lean/declarations/evalshowterm.md) | 135 | `declaration-track:aba98fd2b12c651127999d0be183aad3d8fb5eed4ada2054825d22e153847e06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd09466447f48573999d3554038334dad182927fe0de6815afcf9dd5fee53dac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant54d8c4d537c7f2e6f5d68f795112e42f4f14b8527f4c949efbda56891a115483.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShowState/Variant54d8c4d537c7f2e6f5d68f795112e42f4f14b8527f4c949efbda56891a115483.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
