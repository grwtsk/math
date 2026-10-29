# Verification target: Push Neg Not Not Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78db3455cbb787de5fc172fb165d1d6cbe5f4bed",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6f1d6ed40783c8b0eede3f3e031012e8c836fbbbce6b2bfc42c5a2e640ba9bd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78db3455cbb787de5fc172fb165d1d6cbe5f4bed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6f1d6ed40783c8b0eede3f3e031012e8c836fbbbce6b2bfc42c5a2e640ba9bd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6f1d6ed40783c8b0eede3f3e031012e8c836fbbbce6b2bfc42c5a2e640ba9bd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Algebra.Order` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Conv` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_not_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/not-not-eq.md) | 21 | `result-track:60ff2dedab497a8ce05338b5d6324dd4491ca59583d7061f55b8d80db448100b` |
| 2 | `theorem` | [not_and_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/not-and-eq.md) | 22 | `result-track:5a2ca52095fd54bcf73c27c9d89acb459e41f465ae0ffe4130c012d17565f6d2` |
| 3 | `theorem` | [not_and_or_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/not-and-or-eq.md) | 23 | `result-track:2cdce4c65976a6bedc5861936a848076596001b3f7f4ed30e69bb25f490fb3b0` |
| 4 | `theorem` | [not_or_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/not-or-eq.md) | 24 | `result-track:55439e8d9356ba334d33ad227ab3520698905b17a52ece7425d7931079651341` |
| 5 | `theorem` | [not_forall_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/not-forall-eq.md) | 25 | `result-track:4fbfed8e33ebbfaf682bacbcb333f4777eed8f2ca1aa04ab2e6f50728a2e564a` |
| 6 | `theorem` | [not_exists_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/not-exists-eq.md) | 26 | `result-track:3bf7fcee72cf436a49b6e57896d7e30afc423de895f30a6ac8104a2f9c0b4044` |
| 7 | `theorem` | [not_implies_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/not-implies-eq.md) | 27 | `result-track:3e9cd6afce35180bcc2cdb3c5b780d23fe4f95e3fc852ac7d487c83c04a85e76` |
| 8 | `theorem` | [not_ne_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/not-ne-eq.md) | 28 | `result-track:50519bfcdbcd00ab2e4d539f116b18d6eaf7bb8c8dd347339b5ef1e938b3577f` |
| 9 | `theorem` | [not_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/not-iff.md) | 29 | `result-track:e982e73f5aa4e31b904801b0d33279c576dcec299ab677db5c558cc322d298e8` |
| 10 | `theorem` | [not_le_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/not-le-eq.md) | 33 | `result-track:5bc51093df0653f77271c13912e7c49f7b41c11462a7cd2feddfac153e278472` |
| 11 | `theorem` | [not_lt_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/not-lt-eq.md) | 34 | `result-track:6e1e5950c3231882128e0f84bd9afa1be8154d17dff0d9aa8918b1f180b577c0` |
| 12 | `theorem` | [not_ge_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/not-ge-eq.md) | 35 | `result-track:8ada62634f906a9b154852882f73bef1c49c5adba631201702c31308fcdb9ee4` |
| 13 | `theorem` | [not_gt_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/not-gt-eq.md) | 36 | `result-track:0c0acffef39c9258758bdd9d7fa7302d8789fcfc481b64497cf4da89bd28b8f5` |
| 14 | `register_option` | [push_neg.use_distrib](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/push-neg-use-distrib.md) | 39 | `declaration-track:84ba92e1022e8e0cbb27f31fd87fd5b4d39619483f3a744795e4a015940389b4` |
| 15 | `def` | [transformNegationStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/transformnegationstep.md) | 45 | `declaration-track:5c990659b99dfaed4ed4481cea86f02a193a1d7599381fa300797c26403665bb` |
| 16 | `def` | [transformNegation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/transformnegation.md) | 100 | `declaration-track:00fae27bc9392cb723c3e053b0f36ec0361e26717d4939d66cf65891cca5636e` |
| 17 | `def` | [pushNegCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/pushnegcore.md) | 109 | `declaration-track:55b6c6dbddb48c0552030a9a12ebc67832ab453b5a71f83e8ee050bff2fbbd7a` |
| 18 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/syntax.md) | 137 | `declaration-track:a88dc40402c3291184913bc015c28cfe8c4b60a39e22006c9f55f2d850bfe11c` |
| 19 | `def` | [elabPushNegConv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/elabpushnegconv.md) | 140 | `declaration-track:e66f6e326daa99f90d28ab4053ab5a055e1148c65e150b87f0f5b320ba1771c5` |
| 20 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/macro.md) | 149 | `declaration-track:d68b99dcf346f0fb429dee0b5033898841aa6a9833e40cf12d5217432268f221` |
| 21 | `def` | [pushNegTarget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/pushnegtarget.md) | 152 | `declaration-track:ec45749e9641bc2ef77e2e2c74ff971891e0854de5771e30599f9493e695fbea` |
| 22 | `def` | [pushNegLocalDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/pushneglocaldecl.md) | 158 | `declaration-track:1b2c569a28df968cb783d46205890a5cb97a1e4ac5157b1ec34a753091dfc222` |
| 23 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PushNegNotNotEq.lean/declarations/elab.md) | 190 | `declaration-track:314f7cef411c42a8551242969a32d9550ec8963fdc0859d10b51f9aeccdf8f3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c32805be1958b144851a69b8c19e0e0adbc2877fbc99b8a6457f7dc4e943be01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6f1d6ed40783c8b0eede3f3e031012e8c836fbbbce6b2bfc42c5a2e640ba9bd6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6f1d6ed40783c8b0eede3f3e031012e8c836fbbbce6b2bfc42c5a2e640ba9bd6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
