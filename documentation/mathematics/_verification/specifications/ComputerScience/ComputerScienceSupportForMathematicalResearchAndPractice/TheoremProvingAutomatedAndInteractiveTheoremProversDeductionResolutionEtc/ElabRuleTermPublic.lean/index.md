# Verification target: Elab Rule Term Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b47d33df34b4a4f8b20c0567255383497b617dc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRuleTerm/Variantdf3203dad823ab596246030972846252135d230edc9b7dd0768c2f92fe4e49c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b47d33df34b4a4f8b20c0567255383497b617dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRuleTerm/Variantdf3203dad823ab596246030972846252135d230edc9b7dd0768c2f92fe4e49c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRuleTerm/Variantdf3203dad823ab596246030972846252135d230edc9b7dd0768c2f92fe4e49c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Simp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabGlobalRuleIdent?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/elabglobalruleident.md) | 19 | `declaration-track:be3d05ad28e00ccab3f9849c1ad844ba61bf0cbab3fd293818806b1adf40fc3a` |
| 2 | `def` | [matchInductiveTypeSynonym?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/matchinductivetypesynonym.md) | 29 | `declaration-track:8f161e5b62ebeec8d6732996cdf3bd91892aa00879e31553cb2dae260533d181` |
| 3 | `def` | [elabInductiveRuleIdent?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/elabinductiveruleident.md) | 46 | `declaration-track:3bfda95cc64c542bb90ac21308bdb023be8edd9a8d101171f0ad4e9cfc4918c3` |
| 4 | `def` | [runTacticMAsTermElabM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/runtacticmastermelabm.md) | 60 | `declaration-track:b3532f11dc0f1f6dc75d25aef6b226d86526b311419cb6234e7c8c502039de00` |
| 5 | `def` | [runTacticMAsElabM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/runtacticmaselabm.md) | 65 | `declaration-track:c6a8adb179e8f017944360c4d1a7379a21b93a2e927a55ac3609097ea068de4d` |
| 6 | `def` | [withFullElaboration](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/withfullelaboration.md) | 68 | `declaration-track:447ca83b9d5d5da0ed30fa605b592bc343c98617711a5c235346f69ad6aa6af8` |
| 7 | `def` | [elabRuleTermForApplyLikeCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/elabruletermforapplylikecore.md) | 71 | `declaration-track:618affa69001379af0f630a50ee29048a2d81fc4f4166013635b9de1b68a42cb` |
| 8 | `def` | [elabRuleTermForApplyLikeMetaM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/elabruletermforapplylikemetam.md) | 75 | `declaration-track:a39127eb3a6c3f34cf69575602a047aeca92c17326684a45f6301eff98a70aae` |
| 9 | `def` | [elabRuleTermForApplyLike](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/elabruletermforapplylike.md) | 78 | `declaration-track:c9b57690e840edddef61c1513cca68ffe99f50c20c0773e369a1a36ca3786506` |
| 10 | `def` | [elabSimpTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/elabsimptheorems.md) | 82 | `declaration-track:ffa3b19c2074f7bf7b2f06c75b7cca2226a55f6f9155372ee42d337eef9720d8` |
| 11 | `def` | [mkSimpArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/mksimpargs.md) | 96 | `declaration-track:01b67d5b3476311b56e87d5466267d220e3d611a983f3533a8e41f3384087fe8` |
| 12 | `def` | [elabRuleTermForSimpCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/elabruletermforsimpcore.md) | 104 | `declaration-track:1f572ea46662fc9a9c0de09ff93e45335863f7ed6624766f58ebb63b9dcceba1` |
| 13 | `def` | [checkElabRuleTermForSimp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/checkelabruletermforsimp.md) | 110 | `declaration-track:cfaf57aff105a20bb1385d32d878cc3a7979bd9d356cc5d085b24cf36f9e5066` |
| 14 | `def` | [elabRuleTermForSimpMetaM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabRuleTermPublic.lean/declarations/elabruletermforsimpmetam.md) | 115 | `declaration-track:e39e82bec373d7b8e7984a3a6974b7b03feee067eb9bbabf6eeff39114568b41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd6ad3e3870dd266bd1b51d8a36673c38f21fbadfd26082e05cdf2c74009f974 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRuleTerm/Variantdf3203dad823ab596246030972846252135d230edc9b7dd0768c2f92fe4e49c4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRuleTerm/Variantdf3203dad823ab596246030972846252135d230edc9b7dd0768c2f92fe4e49c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
