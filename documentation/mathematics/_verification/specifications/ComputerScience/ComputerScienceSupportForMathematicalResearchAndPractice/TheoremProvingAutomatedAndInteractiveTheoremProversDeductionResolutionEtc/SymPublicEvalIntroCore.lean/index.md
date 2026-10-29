# Verification target: Sym Public Eval Intro Core

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "157db5163a75aba8c3cb91b5568f79234d9c4d9d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant79e32324869c300845e081604a730ca788c5b32f9b45f6dd55c028ff1b622bce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `157db5163a75aba8c3cb91b5568f79234d9c4d9d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant79e32324869c300845e081604a730ca788c5b32f9b45f6dd55c028ff1b622bce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant79e32324869c300845e081604a730ca788c5b32f9b45f6dd55c028ff1b622bce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Grind.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.SimprocDSL` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Grind` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Variant` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Rewrite` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.EvalGround` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Goal` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Attr` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.ControlFlow` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Forall` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Apply` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Location` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Elab.SyntheticMVars` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalIntroCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/evalintrocore.md) | 24 | `declaration-track:642d38ea683e7602ba36217cdd8bf9a18c910c35547ed706b4b58d3e5fe98e9b` |
| 2 | `def` | [evalSymIntro](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/evalsymintro.md) | 43 | `declaration-track:4f3163469858195ba2c0d53e9890b40c72d85c5040e57cc2e4571a1871fba1fb` |
| 3 | `def` | [evalIntrosCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/evalintroscore.md) | 51 | `declaration-track:e7f2ce146e8a74ec035f6d0b43882730a27972601d834fc0aa88be9a13769578` |
| 4 | `def` | [evalSymIntros](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/evalsymintros.md) | 61 | `declaration-track:d65c89212cb0a6171591feb0e7d3ff663a7c4d568e4960edbdfcd8e09dda4750` |
| 5 | `def` | [getOrCreateBackwardRule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/getorcreatebackwardrule.md) | 69 | `declaration-track:2e51cd82e8268308c049fafc686d8aa5f26925aa3215aa6ec3bc854c6ddb245a` |
| 6 | `def` | [getOrCreateBackwardRuleFromTerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/getorcreatebackwardrulefromterm.md) | 77 | `declaration-track:4e88d8615a83b24fcb25e3e0f581142a9c00b042ddd026b2a021251bdca100db` |
| 7 | `def` | [evalSymApply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/evalsymapply.md) | 91 | `declaration-track:26b083f8a2c04dc68c7f37f0b3d0d2d0c438d6295cdbc78273ae1c3b69af37ce` |
| 8 | `def` | [evalSymInternalize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/evalsyminternalize.md) | 110 | `declaration-track:18494572f072391528e1bee6d224026a0735c1b056b7936e567f924b1885a192` |
| 9 | `def` | [evalSymInternalizeAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/evalsyminternalizeall.md) | 117 | `declaration-track:1f971fac4bf1f9d535bb6ffffe6d96c21ea3e4d2f3533b353df9c38ccfc6deae` |
| 10 | `def` | [evalSymByContra](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/evalsymbycontra.md) | 123 | `declaration-track:fcebfe6f246e73700a8bc9ff014c873d19137dfe4dd502f7f4167d5975e8d54e` |
| 11 | `def` | [trivialSimproc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/trivialsimproc.md) | 143 | `declaration-track:d6861840d08faaf59755b250afd5e36b63c121641a929c833f41cacc7a5d3f15` |
| 12 | `def` | [elabOptSimproc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/elaboptsimproc.md) | 146 | `declaration-track:f7b62a569724eb37dcae4314cd701b59a84ec5247045c172b6d09ed81a857c8e` |
| 13 | `def` | [resolveExtraTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/resolveextratheorems.md) | 150 | `declaration-track:5aaa71b764cbba109dfa431c001e793c64fcb98904301f630b141ab6ee2845df` |
| 14 | `def` | [addExtraTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/addextratheorems.md) | 165 | `declaration-track:baa08e64c54df91ab4544526936918d5de1aca647f4e02a7e4c064792a5ad6fc` |
| 15 | `def` | [mkSimpDefaultMethods](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/mksimpdefaultmethods.md) | 172 | `declaration-track:d977824bf575cbe074821c410fa1bb43e9c87e9b4cc8ccc1243318aef158bc3a` |
| 16 | `def` | [elabSimpVariant](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/elabsimpvariant.md) | 178 | `declaration-track:9de7f0293176f650eead0e3351599facc14f4afced36b1996677b789f3642325` |
| 17 | `def` | [evalSymSimp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymPublicEvalIntroCore.lean/declarations/evalsymsimp.md) | 187 | `declaration-track:10f01a07e701c07e02744d4a262ee7483ae6832c266314d775cea835d0d7adfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f823ddb9f8a506907fa4d7166a5e983cc11201636b9fd6668f5d875451754588 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant79e32324869c300845e081604a730ca788c5b32f9b45f6dd55c028ff1b622bce.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant79e32324869c300845e081604a730ca788c5b32f9b45f6dd55c028ff1b622bce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
