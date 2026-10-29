# Verification target: Phase Sweeper Spec Namespaced Vec2 Mod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "931425c50c9e6aa4f5660cb250425d5075faaced",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variante66ec8d57e0f59cefa439cc7c02f7b37626705ba4f4563aec0a818ddde209ff6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PhaseSweeperSpecNamespacedVec2Mod.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PhaseSweeperSpecNamespacedVec2Mod.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `931425c50c9e6aa4f5660cb250425d5075faaced`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variante66ec8d57e0f59cefa439cc7c02f7b37626705ba4f4563aec0a818ddde209ff6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variante66ec8d57e0f59cefa439cc7c02f7b37626705ba4f4563aec0a818ddde209ff6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Shader.BijectiveSplit` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Cellular.Phase` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Vec2Mod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PhaseSweeperSpecNamespacedVec2Mod.lean/declarations/vec2mod.md) | 29 | `declaration-track:2d08f5246f6e4f74b2f6a51c608c0f8d6340088c160d25cd3f0c7779db41a17b` |
| 2 | `def` | [symplecticPhase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PhaseSweeperSpecNamespacedVec2Mod.lean/declarations/symplecticphase.md) | 33 | `declaration-track:03fe1413a76b2b70144cb272aef6440280ddb90b31eedc6c39a23d31b9c13f2c` |
| 3 | `structure` | [PhaseSweepInput](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PhaseSweeperSpecNamespacedVec2Mod.lean/declarations/phasesweepinput.md) | 38 | `declaration-track:a8f775b305a10e18ec408eb834a51eb1d495daa1a19de4aae9c596ec82b31754` |
| 4 | `structure` | [PhaseSweepOutput](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PhaseSweeperSpecNamespacedVec2Mod.lean/declarations/phasesweepoutput.md) | 43 | `declaration-track:eedfccb6a7a45bcaf8b8860dacab299286ac745c75e862e7fb5d41fd60e2cb5b` |
| 5 | `def` | [phaseSweepSplit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PhaseSweeperSpecNamespacedVec2Mod.lean/declarations/phasesweepsplit.md) | 48 | `declaration-track:47391b446e5afdf13f01303174c258a1f768c32fa65d2f5001dd0b64f8dd6054` |
| 6 | `def` | [phaseSweepReconstruct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PhaseSweeperSpecNamespacedVec2Mod.lean/declarations/phasesweepreconstruct.md) | 59 | `declaration-track:c23d4849b45ac345eee9eb24c036ef9b62e7de8fb1ad0af1350a7125652313b8` |
| 7 | `theorem` | [phaseSweep_split_reconstruct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PhaseSweeperSpecNamespacedVec2Mod.lean/declarations/phasesweep-split-reconstruct.md) | 63 | `result-track:63d4b100260fab032c8fe8ad59669e1ea39d3fd2c4d2ba60d2a260dd930d5f31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25fbfa2a3687264045618a368625f093bb869b6ed5f8e99d9395a2c503196d5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variante66ec8d57e0f59cefa439cc7c02f7b37626705ba4f4563aec0a818ddde209ff6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseSweeperSpec/Variante66ec8d57e0f59cefa439cc7c02f7b37626705ba4f4563aec0a818ddde209ff6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
