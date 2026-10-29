# Verification target: Contradiction Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40375ef5a0984029128389749da32edd18675dc6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variantf3a692210f565fccf9f83e27653b9ba4bd94dfc186fa1fae1104df9be9c57c6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40375ef5a0984029128389749da32edd18675dc6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variantf3a692210f565fccf9f83e27653b9ba4bd94dfc186fa1fae1104df9be9c57c6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variantf3a692210f565fccf9f83e27653b9ba4bd94dfc186fa1fae1104df9be9c57c6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.HasNotBit` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Rewrite` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Contradiction.Config](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/declarations/contradiction-config.md) | 19 | `declaration-track:9ae26460fbe800de5ad8842cd22eb08e64372720afd003653df78327cc2efd6a` |
| 2 | `def` | [nestedFalseElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/declarations/nestedfalseelim.md) | 36 | `declaration-track:212298420b13bc83277518306459dd501f67fe6afe85f7777c60f670e6fa6b49` |
| 3 | `def` | [isElimEmptyInductiveCandidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/declarations/iselimemptyinductivecandidate.md) | 46 | `declaration-track:7daa1cd718b5037b03dc9fb69a0379e376304eade974c6b618c801108d288336` |
| 4 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/declarations/m.md) | 53 | `declaration-track:14d2b5aa48eaab42a602796b915862e910f39a1301ed47a3fffc43b0e4fece75` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/declarations/instance.md) | 55 | `declaration-track:0827bb8c24dd8295e3cf33c5d1bb64774de37e690d194d22cb0a1572c1aff65e` |
| 6 | `def` | [elim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/declarations/elim.md) | 59 | `declaration-track:10ef302e644defc79739facd072fc15276117bdac43dbe4a62b57c12aeb135c2` |
| 7 | `def` | [elimEmptyInductive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/declarations/elimemptyinductive.md) | 84 | `declaration-track:2756dc1722f51e4c19506fe7f297fd01839c883a3e556cc470679ce0ab5aef17` |
| 8 | `abbrev` | [isGenDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/declarations/isgendiseq.md) | 95 | `declaration-track:dc34965928feb80c5623b0748961570ac0ae484ba2d55a899acb743560652db5` |
| 9 | `def` | [mkGenDiseqMask](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/declarations/mkgendiseqmask.md) | 104 | `declaration-track:debe5eea4ecda05792915c19e8a2317dc0f7df27511a5bcb82c85972f83a5b1c` |
| 10 | `def` | [processGenDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/declarations/processgendiseq.md) | 119 | `declaration-track:2c1bf228f40f61e5a646c1e85323ded76fb2c87d9e83f8c81224149e08cae4d8` |
| 11 | `def` | [_root_.Lean.MVarId.contradictionCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/declarations/root-lean-mvarid-contradictioncore.md) | 158 | `declaration-track:f62184509483017aebbcb6f22e003d8e8da49500821fda63231f2fea3f8058db` |
| 12 | `def` | [_root_.Lean.MVarId.contradiction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/declarations/root-lean-mvarid-contradiction.md) | 236 | `declaration-track:26b29adee5b3cdb88a1623ef209fd4838ea8437c90b50f9aed10a73b88491440` |
| 13 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ContradictionPublic.lean/declarations/builtin-initialize.md) | 240 | `declaration-track:97d454e3a55753953af9883b05b81f6febb112428e91549b33e1b083909d31e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf2ca85bdc260ce50de04133ce38bcacca565fbc609102c98145360c3215d0ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variantf3a692210f565fccf9f83e27653b9ba4bd94dfc186fa1fae1104df9be9c57c6f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variantf3a692210f565fccf9f83e27653b9ba4bd94dfc186fa1fae1104df9be9c57c6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
