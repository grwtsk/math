# Verification target: Simp Control Flow Control Flow Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfdbe4b527ce45213f6a7598001588a21629cade",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant3144ea45a857bed5386a5488bf4bc51c970f3eb34e46d33cf861f191263e70de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfdbe4b527ce45213f6a7598001588a21629cade`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant3144ea45a857bed5386a5488bf4bc51c970f3eb34e46d33cf861f191263e70de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant3144ea45a857bed5386a5488bf4bc51c970f3eb34e46d33cf861f191263e70de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.AlphaShareBuilder` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InferType` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.App` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Util` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.WHNF` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Sym.Lemmas` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [simpIte](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowNamespacedPublic.lean/declarations/simpite.md) | 30 | `declaration-track:6a005692a3be976b8bfcdd57b7f1658927ee4b7b75fcb835e83197b2f6fb3e4a` |
| 2 | `def` | [simpDIte](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowNamespacedPublic.lean/declarations/simpdite.md) | 64 | `declaration-track:3f3704f79df818f4d37a2c51664a0165e60fc93ab64e71e9b47f17b91e21a2d1` |
| 3 | `def` | [simpCond](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowNamespacedPublic.lean/declarations/simpcond.md) | 103 | `declaration-track:8304e6e9f29b2c1b06d032ca63b59801ad5041a27c647e7dfffe096c9092c956` |
| 4 | `def` | [simpMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowNamespacedPublic.lean/declarations/simpmatch.md) | 131 | `declaration-track:9d7c252a3918a4a623aeb91d53900d0823a4a115d232b515f52102ee58908810` |
| 5 | `def` | [simpControl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowNamespacedPublic.lean/declarations/simpcontrol.md) | 152 | `declaration-track:584ee292800dfb93b1ec576ba19c935d46395a520878f6a134cf8285647a5971` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41d7daecf01d9d6126e5d1b4aef4392f14004a1255282ca1ce488c44168e21d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant3144ea45a857bed5386a5488bf4bc51c970f3eb34e46d33cf861f191263e70de.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant3144ea45a857bed5386a5488bf4bc51c970f3eb34e46d33cf861f191263e70de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
