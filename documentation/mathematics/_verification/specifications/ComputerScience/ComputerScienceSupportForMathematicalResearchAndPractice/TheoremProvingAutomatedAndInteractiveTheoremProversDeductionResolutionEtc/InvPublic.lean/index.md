# Verification target: Inv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09f54c26ab361bb5e666e97cd16cb4c293c96d10",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant7f675d18dff7de34bb9eb78d160d02e2d965a0976371c3961ced37a33f38b636.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09f54c26ab361bb5e666e97cd16cb4c293c96d10`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant7f675d18dff7de34bb9eb78d160d02e2d965a0976371c3961ced37a33f38b636.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant7f675d18dff7de34bb9eb78d160d02e2d965a0976371c3961ced37a33f38b636.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Linear.Util` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.Lean.Grind.Linarith.Poly.isSorted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/declarations/root-lean-grind-linarith-poly-issorted.md) | 15 | `declaration-track:0cd67249ec0b6a5cb90cbc9b8d54aabf331a779d7aaff385ddf97f3d45f2ca79` |
| 2 | `def` | [_root_.Lean.Grind.Linarith.Poly.checkCoeffs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/declarations/root-lean-grind-linarith-poly-checkcoeffs.md) | 24 | `declaration-track:92c30e08041a73a81944c32e379f19a8119ddf159291a8a259253a962a4b9445` |
| 3 | `def` | [_root_.Lean.Grind.Linarith.Poly.checkOccs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/declarations/root-lean-grind-linarith-poly-checkoccs.md) | 28 | `declaration-track:4ce6e20c24aa587c9b6169619362e9749ff904f63222004b9d8ca36ba32d9044` |
| 4 | `def` | [_root_.Lean.Grind.Linarith.Poly.checkNoElimVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/declarations/root-lean-grind-linarith-poly-checknoelimvars.md) | 36 | `declaration-track:4096817731c60783a11e08575c64f7d4cf89c0b62d867ccc7fb0350b34876817` |
| 5 | `def` | [_root_.Lean.Grind.Linarith.Poly.checkCnstrOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/declarations/root-lean-grind-linarith-poly-checkcnstrof.md) | 41 | `declaration-track:cf34579747d73db8b51c587f3009c38261c32a06110cc3143c5c815bed00c523` |
| 6 | `def` | [checkLeCnstrs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/declarations/checklecnstrs.md) | 51 | `declaration-track:d632a5dd8e827d9641954388238616a2351fbf480a848bc88386aedeea8805df` |
| 7 | `def` | [checkLowers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/declarations/checklowers.md) | 61 | `declaration-track:65812c58946748b8ffb5c789a9afa0342281f521e96348d4d04d06b661ad2b4d` |
| 8 | `def` | [checkUppers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/declarations/checkuppers.md) | 66 | `declaration-track:de24ae8b10848a2728d8dafd933acfd76b7a43606257d11bcaa551083fb8e037` |
| 9 | `def` | [checkDiseqCnstrs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/declarations/checkdiseqcnstrs.md) | 71 | `declaration-track:f0752c2c710329c9169b2c026ca7af78a6279db76852c7ada87e7d6637b982f8` |
| 10 | `def` | [checkVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/declarations/checkvars.md) | 81 | `declaration-track:8290d083a17b320d836d278c39409860f930c632ddb959ef614195a617c6e68d` |
| 11 | `def` | [checkStructInvs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/declarations/checkstructinvs.md) | 93 | `declaration-track:57e1b51bf4cac11e146e30b3bb68b06209f9f837b24b4ff38e078807eddfece8` |
| 12 | `def` | [checkInvariants](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublic.lean/declarations/checkinvariants.md) | 99 | `declaration-track:f58f537ba8e5087ab850a829c3135f3a2befd39bb46b9bcb932043100b6af5af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04a38368ba7dc9fe59c4a5e046453226685ea240bc8740d6ac1965861547edf7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant7f675d18dff7de34bb9eb78d160d02e2d965a0976371c3961ced37a33f38b636.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant7f675d18dff7de34bb9eb78d160d02e2d965a0976371c3961ced37a33f38b636.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
