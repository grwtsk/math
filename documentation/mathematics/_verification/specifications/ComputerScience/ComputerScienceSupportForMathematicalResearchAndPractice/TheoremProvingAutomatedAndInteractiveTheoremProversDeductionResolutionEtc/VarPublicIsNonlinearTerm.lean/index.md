# Verification target: Var Public Is Nonlinear Term

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1c281796c9bcf0ab7ed62211b4475b7568fbc5f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2484cdc8719670f93b5a892cae8290046746218cb8220a53893d527852df7aef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1c281796c9bcf0ab7ed62211b4475b7568fbc5f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2484cdc8719670f93b5a892cae8290046746218cb8220a53893d527852df7aef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2484cdc8719670f93b5a892cae8290046746218cb8220a53893d527852df7aef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Nat` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.ToInt` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.IntInstTesters` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [propagateNonlinearTerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/declarations/propagatenonlinearterm.md) | 17 | `declaration-track:8ca76dd0699f2777ea7a6175e23758604eb4b2f2de46c02160bb6495ac1cdf54` |
| 2 | `def` | [isNonlinearTerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/declarations/isnonlinearterm.md) | 24 | `declaration-track:397ecd5437d328a44434d7002e2f5311bb329f1f9d930e0c3c7371c74dcc0ded` |
| 3 | `def` | [registerNonlinearOcc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/declarations/registernonlinearocc.md) | 34 | `declaration-track:a79b653ce030d3d8fe64d517a1618bf0ba57cc802517a30dcdffc656e0284961` |
| 4 | `def` | [registerNonlinearOccsAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/declarations/registernonlinearoccsat.md) | 43 | `declaration-track:29f1e0941a535b5638224370335b7fb89ef409ea1ee3b1ff22e6093d5bcb6aa4` |
| 5 | `def` | [mkVarImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/declarations/mkvarimpl.md) | 69 | `declaration-track:b0229416bee1f8b32e9ccbb344fc549bc104aa5fc862cbf6be805d33b22b5dff` |
| 6 | `def` | [isInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/declarations/isint.md) | 92 | `declaration-track:8b1a27501daebaa2f2ea6e6ade3eb6a26c5b72bbdef4699f62a24705082bf0c9` |
| 7 | `def` | [isAdd?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/declarations/isadd.md) | 95 | `declaration-track:cf60139c36828bd29b445ea2b4721afa52cc970245ef4c193e0d5f0202719557` |
| 8 | `def` | [isAdd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/declarations/isadd-source-edition-2.md) | 103 | `declaration-track:d76897d740a377f5d8bd55238a728d4b38c1573babbb3e3040ee1e9e6940898f` |
| 9 | `def` | [isMul?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/declarations/ismul-source-edition-2.md) | 106 | `declaration-track:b3fe7d0362da57d14ac66019516b33ca98ffb2d360a1b1b97d80fece967c7338` |
| 10 | `def` | [isMul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/declarations/ismul.md) | 117 | `declaration-track:24f773081daf7f422b6eafd5e635088d76cf8e584fe57b3b454da5d199a6b485` |
| 11 | `def` | [addMonomial](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/declarations/addmonomial.md) | 120 | `declaration-track:d69d46d18cef6168442abe7d9f7d4f5f70edc3c9f0942a7a4253555a1a1079c5` |
| 12 | `def` | [toPoly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/VarPublicIsNonlinearTerm.lean/declarations/topoly.md) | 130 | `declaration-track:bb058a78e140154824059044a2a6880873696d19e733bd67dc450da003cbbec4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8279671914d7ab2ede9eb96367829f35bc186ce5d9364edc628c477ee988d01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2484cdc8719670f93b5a892cae8290046746218cb8220a53893d527852df7aef.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Var/Variant2484cdc8719670f93b5a892cae8290046746218cb8220a53893d527852df7aef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
