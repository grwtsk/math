# Verification target: Tactic Lift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad8779d3d0d75e6dcb382651187597163c062db4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant57346398a5fe02b5eecab4e1e2863799713e0519f265494b860b88772a7da9ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad8779d3d0d75e6dcb382651187597163c062db4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant57346398a5fe02b5eecab4e1e2863799713e0519f265494b860b88772a7da9ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant57346398a5fe02b5eecab4e1e2863799713e0519f265494b860b88772a7da9ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Expr` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Meta.UnusedNames` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CanLift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/canlift.md) | 23 | `declaration-track:6f6f640469cec26ab3f1b1cfaabe5df3f0c05cfa62aeea4930e3c71797141a94` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/instance.md) | 27 | `declaration-track:9ac06979870e709dfbd88ddf6adef3d323886e0b8ee96adc535c94d7daac07ab` |
| 3 | `instance` | [Pi.canLift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/pi-canlift.md) | 31 | `declaration-track:601e3909db031d5081d6a5a17a8761417a2b0303d1169867678c1e28242961cc` |
| 4 | `theorem` | [Subtype.exists_pi_extension](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/subtype-exists-pi-extension.md) | 37 | `result-track:10972f2db0ef5ca0045106bad1647934b8ddc474b33b8464aed8e96396e680f3` |
| 5 | `instance` | [PiSubtype.canLift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/pisubtype-canlift-source-edition-2.md) | 44 | `declaration-track:27fbce5f2f47eecc42e95881b1055fc79fb131eb9815056969fb327c67f40ff2` |
| 6 | `instance` | [PiSubtype.canLift'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/pisubtype-canlift.md) | 49 | `declaration-track:1bf2c1757492cb073cdf2ea68617b812edb7233c91281967c3d05747c47b11a6` |
| 7 | `instance` | [Subtype.canLift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/subtype-canlift.md) | 53 | `declaration-track:627bada46586d18a98c1707d8cf56c1ce714dee548a184a351e1ad4d642a933d` |
| 8 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/syntax.md) | 99 | `declaration-track:fc53f2c4af683ade7d4710dec453e1e90b69665ebb1af962687155094cb69c76` |
| 9 | `def` | [Lift.getInst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/lift-getinst.md) | 103 | `declaration-track:74a41cfe7e5fee138de02b3116e885139b2f80f4a2a1e6ea5c53c9559548e514` |
| 10 | `def` | [Lift.main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/lift-main.md) | 111 | `declaration-track:318b444917c9f22dbcda5953a04bbbeacf33522052a422800954d80c29b90282` |
| 11 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/elab-rules-source-edition-2.md) | 162 | `declaration-track:6d63533505f458df6640785bdedba6508cf23bab1cfd6bc606b79bd7608de944` |
| 12 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/elab-rules-source-edition-4.md) | 165 | `declaration-track:74798993c1d6fbe47f97bf75e06ab45c620179f24d1aeb40fa57f09e161a93e6` |
| 13 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/elab-rules-source-edition-3.md) | 168 | `declaration-track:6f5de8f9406eb551016aa9273c3ea71de255debfde81344b3329c01279b64475` |
| 14 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLift.lean/declarations/elab-rules.md) | 171 | `declaration-track:0f5173d4e6a3a2b4be421853243d2ddcf2ea8acbff0a7da72f730607fdae08c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36f8ca771a135bce78f13136fc2825e22b52a96534560514792bb1ecf54ee338 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant57346398a5fe02b5eecab4e1e2863799713e0519f265494b860b88772a7da9ee.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lift/Variant57346398a5fe02b5eecab4e1e2863799713e0519f265494b860b88772a7da9ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
