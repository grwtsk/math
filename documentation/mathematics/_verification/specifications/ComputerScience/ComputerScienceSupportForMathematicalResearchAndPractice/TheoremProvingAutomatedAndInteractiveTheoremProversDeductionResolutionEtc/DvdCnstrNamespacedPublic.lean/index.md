# Verification target: Dvd Cnstr Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c4131f7464dae196bc4945a17a9564c62438d7d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant3e72b2b21f4ade96d422849575f9b496f288615eb4ad4adb43dd9b0c36974a99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DvdCnstrNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DvdCnstrNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c4131f7464dae196bc4945a17a9564c62438d7d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant3e72b2b21f4ade96d422849575f9b496f288615eb4ad4adb43dd9b0c36974a99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant3e72b2b21f4ade96d422849575f9b496f288615eb4ad4adb43dd9b0c36974a99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.OfNat` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Grind.Propagator` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Var` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Nat` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Proof` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Norm` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.CommRing` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatInstTesters` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Dvd` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DvdCnstr.norm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DvdCnstrNamespacedPublic.lean/declarations/dvdcnstr-norm.md) | 31 | `declaration-track:0dd0886e55e5530b4c1c63b9b45767fd6ccaa0b8a80a172d1495c80e482cbbc5` |
| 2 | `def` | [DvdCnstr.applyEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DvdCnstrNamespacedPublic.lean/declarations/dvdcnstr-applyeq.md) | 47 | `declaration-track:10539ce361421091f53cdeea66429a1ed71794958b725492c550aaf2aaabbabc` |
| 3 | `def` | [DvdCnstr.applySubsts](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DvdCnstrNamespacedPublic.lean/declarations/dvdcnstr-applysubsts.md) | 55 | `declaration-track:ed73efa1932ffb6033461d1283aa930dcc4bc232fb2b60e29d76320deff973fd` |
| 4 | `def` | [DvdCnstr.assert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DvdCnstrNamespacedPublic.lean/declarations/dvdcnstr-assert.md) | 62 | `declaration-track:5b8ecfa675246ea6941236ecb397738ef0b221fcb89bc7b7e5c59bd2ae7cfb51` |
| 5 | `def` | [DvdCnstr.assertCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DvdCnstrNamespacedPublic.lean/declarations/dvdcnstr-assertcore.md) | 110 | `declaration-track:55199e73b343f8dd59c0650f8a80f09b6c9a605a15f0b094773ce86c83f2dc85` |
| 6 | `def` | [propagateIntDvd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DvdCnstrNamespacedPublic.lean/declarations/propagateintdvd.md) | 117 | `declaration-track:19dfded2fbd5f6dc3faccd19c5cdca65626d13eb0f6beec2de41aba8fab96ff4` |
| 7 | `def` | [propagateNatDvd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DvdCnstrNamespacedPublic.lean/declarations/propagatenatdvd.md) | 129 | `declaration-track:a3f0860dc93f9b40eb613d5d40ca99f69f83b6125dd0e879ff6b2b1fd0d266a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c35e2ecca739ed89ffda72295d6d27f963d3da71c6310d792021a343cb345946 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant3e72b2b21f4ade96d422849575f9b496f288615eb4ad4adb43dd9b0c36974a99.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DvdCnstr/Variant3e72b2b21f4ade96d422849575f9b496f288615eb4ad4adb43dd9b0c36974a99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
