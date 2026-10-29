# Verification target: Simp Control Flow Control Flow Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfa18f691e351e8bfc24b274958ec8665df59ee4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfa18f691e351e8bfc24b274958ec8665df59ee4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.AlphaShareBuilder` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InferType` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.App` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Util` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.WHNF` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Sym.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [simpIte](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowPublic.lean/declarations/simpite.md) | 22 | `declaration-track:25d807df0b57affdb7bd902a74ba70870a3f21a53cae8252f2050001c5df11ce` |
| 2 | `def` | [simpDIte](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowPublic.lean/declarations/simpdite.md) | 56 | `declaration-track:b96a83393a371f4f9bc8e25fc872117e27ec015db50582cb8eb572c7df4ea714` |
| 3 | `def` | [simpCond](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowPublic.lean/declarations/simpcond.md) | 95 | `declaration-track:82fd7d2b433c60759a18d28239140aee6e5744e051b42f9de16b4b604c9341ef` |
| 4 | `def` | [simpMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowPublic.lean/declarations/simpmatch.md) | 123 | `declaration-track:5b55f943806c9384860855ef19beeadf6f02e56fdfc04ef07393c1cc1757dfd8` |
| 5 | `def` | [simpControl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpControlFlowControlFlowPublic.lean/declarations/simpcontrol.md) | 144 | `declaration-track:606568dcbe5032e44a2f5dae0247085087917b47c6e60f11bfb9f4a1b077b47f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db08811c28a27e9573b7526b245d95588679cb6209aba40f1c9f65cef20e3ff3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlFlow/Variant47c282fd172c3b9b6d444891b65d0e167acb06b5b944da6fdbc9d70a6f648d29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
