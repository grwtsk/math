# Verification target: Rfl Public Rel Of Eq And Refl

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3204c5a627e78d6937885b914e954d3382978ca3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RflPublicRelOfEqAndRefl.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RflPublicRelOfEqAndRefl.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3204c5a627e78d6937885b914e954d3382978ca3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RflPublicRelOfEqAndRefl.lean/declarations/initialize.md) | 26 | `declaration-track:30963a2d8cd46e7d1118852015cda86e12e0adefc8e73c9ec1bd4b7aa7d9d7ff` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RflPublicRelOfEqAndRefl.lean/declarations/builtin-initialize.md) | 42 | `declaration-track:aafb2e37e28cc3fd58b00e7e9c694bb6e4c8fddbcf07d4f38b1638ec4cd0d3b8` |
| 3 | `def` | [_root_.Lean.MVarId.applyRfl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RflPublicRelOfEqAndRefl.lean/declarations/root-lean-mvarid-applyrfl.md) | 67 | `declaration-track:3f337522d29621b2fd7f069e71baec77d94ccf90130fe00e2625a360f621f2a6` |
| 4 | `theorem` | [rel_of_eq_and_refl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RflPublicRelOfEqAndRefl.lean/declarations/rel-of-eq-and-refl.md) | 123 | `result-track:341061490f4ad4e9e67eb4ed55dc5e2555113aa80918694902b9ec9d6a7326f1` |
| 5 | `def` | [_root_.Lean.MVarId.liftReflToEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RflPublicRelOfEqAndRefl.lean/declarations/root-lean-mvarid-liftrefltoeq.md) | 132 | `declaration-track:d49d9b56575c601c5093d439742cd1326329cff2e541e55d5b74d58c68809393` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5fd45cd3d19f8ec028e0192ecdb03ded1b3f72ceef4f012c8e6308bb64637d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant8d4f0cc5e4928f4eb1e096fcc17222a7d33f96ed7dae5f0a8c1f9443b11748e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
