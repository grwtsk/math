# Verification target: VCGen Public Proof Mode

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f6d4959639a2c0ff8bdee31dec50bd8aba8af20",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VCGenPublicProofMode.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VCGenPublicProofMode.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f6d4959639a2c0ff8bdee31dec50bd8aba8af20`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Do.VCGen.Split` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.ProofMode.Revert` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.LetElim` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.Spec` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.TryThis` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.VCGen.SuggestInvariant` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProofMode.MGoal.withNewProg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VCGenPublicProofMode.lean/declarations/proofmode-mgoal-withnewprog.md) | 25 | `declaration-track:a846d5c7cb4077fbc9b5896f94e35e922144fe1921be290933cfaa311a01d8e4` |
| 2 | `structure` | [Result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VCGenPublicProofMode.lean/declarations/result.md) | 36 | `declaration-track:01cf6385583f851bf79451e6d87c1deaceafb377428e8739517c17bf7875abbd` |
| 3 | `def` | [genVCs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VCGenPublicProofMode.lean/declarations/genvcs.md) | 40 | `declaration-track:1ccf9db852d445e247cfe1588c41ac2f1636da8c6ff488908dff2a34b1b74b25` |
| 4 | `def` | [elabInvariants](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VCGenPublicProofMode.lean/declarations/elabinvariants.md) | 355 | `declaration-track:1b11db3a71c9059cf5d0cf8ecd6cdf1be90c66db80b9b44baf243c2349dbc7a0` |
| 5 | `def` | [patchVCAltIntoCaseTactic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VCGenPublicProofMode.lean/declarations/patchvcaltintocasetactic.md) | 420 | `declaration-track:dacdabe4adddc35f0f2722b6f8b525b178438fc42f94c6e5bb97f6706c3379be` |
| 6 | `def` | [elabVCs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VCGenPublicProofMode.lean/declarations/elabvcs.md) | 425 | `declaration-track:193f64aa4e222697538dbbca53baabab152d5e89b39e3c548d4ad1868e8472e0` |
| 7 | `def` | [elabMVCGen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VCGenPublicProofMode.lean/declarations/elabmvcgen.md) | 454 | `declaration-track:e8c03d68eb20b49b50ade408ee20b734de8dc1eec082390797871033b72e15e4` |
| 8 | `def` | [elabMVCGenHint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VCGenPublicProofMode.lean/declarations/elabmvcgenhint.md) | 491 | `declaration-track:0474bfd334aea44e584e308d2d57dbbea2051f732594c3cb4687431c27ff357d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23eb9ba68c03a71ed9c2dc316a36f415f0903cafae04993087d53fbcff56d34a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/VCGen/Variantfa6bd35436d75139af5cfbe6a7306905c0ce5f373a1551635dfff565453aadec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
