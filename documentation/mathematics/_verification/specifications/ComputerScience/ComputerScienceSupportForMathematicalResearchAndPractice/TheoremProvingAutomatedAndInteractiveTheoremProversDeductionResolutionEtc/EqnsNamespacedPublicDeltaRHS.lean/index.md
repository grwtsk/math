# Verification target: Eqns Namespaced Public Delta RHS

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "498ee9750402d57814612132b4831f26b0c11082",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EqnsNamespacedPublicDeltaRHS.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EqnsNamespacedPublicDeltaRHS.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `498ee9750402d57814612132b4831f26b0c11082`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.PreDefinition.EqnsUtils` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.CasesOnStuckLHS` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Delta` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Main` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Delta` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.CasesOnStuckLHS` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Split` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EqnInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EqnsNamespacedPublicDeltaRHS.lean/declarations/eqninfo.md) | 32 | `declaration-track:41ca68947822eed860cb5f28bd3139d49b5fa89728675ba0a92025f9d8f999d3` |
| 2 | `def` | [findBRecOnLHS](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EqnsNamespacedPublicDeltaRHS.lean/declarations/findbreconlhs.md) | 47 | `declaration-track:6f4ef35d45253ab7d59a5190479fc6a98bff8a66b4350c31a9dc04e70b9217bb` |
| 3 | `def` | [deltaRHS?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EqnsNamespacedPublicDeltaRHS.lean/declarations/deltarhs.md) | 65 | `declaration-track:1d247e8cfc0d223eff1e41878ad7ba3a2ee72dc9a43595ae9e11808ee7909aea` |
| 4 | `def` | [mkProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EqnsNamespacedPublicDeltaRHS.lean/declarations/mkproof.md) | 83 | `declaration-track:634b5e00926782cd80fc1f7381c2a4e25297528f75472e68b233d78e892aa8a6` |
| 5 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EqnsNamespacedPublicDeltaRHS.lean/declarations/builtin-initialize-source-edition-2.md) | 158 | `declaration-track:e98acc69f9d16e33f827436045f047bc9ed4d362340bf1014e32eab8c6345e1c` |
| 6 | `def` | [registerEqnsInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EqnsNamespacedPublicDeltaRHS.lean/declarations/registereqnsinfo.md) | 165 | `declaration-track:4ef7e2e4f25eede92bec9282110754c8d873bdafb0172a6908c5eeec6f45a60f` |
| 7 | `def` | [mkUnfoldEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EqnsNamespacedPublicDeltaRHS.lean/declarations/mkunfoldeq.md) | 172 | `declaration-track:6be1586d87714a98b38b2142ba4a257bfcf61383e24a47867946ff9ba1001ccb` |
| 8 | `def` | [getUnfoldFor?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EqnsNamespacedPublicDeltaRHS.lean/declarations/getunfoldfor.md) | 191 | `declaration-track:eaaa497ac2b3ee3651b2dfb7b696aa96c3ecf4c80bd9541f6be54eff43718acb` |
| 9 | `def` | [getStructuralRecArgPosImp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EqnsNamespacedPublicDeltaRHS.lean/declarations/getstructuralrecargposimp.md) | 199 | `declaration-track:9f4fb2a7cbc04eb3df632553bb29ebe7813f2dec74b16b79d5f06f541c808c9a` |
| 10 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EqnsNamespacedPublicDeltaRHS.lean/declarations/builtin-initialize.md) | 204 | `declaration-track:9cb3b7c6575f8b0e28831da27e461eb42605c1154e6d1795b87f379cb1d32691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5be5a07df9d3f6423ccca7df78588687cb8d0548f7953a0f822847c05fa5ae0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
