# Verification target: Tree MPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a94daa40a7c77d7d766c813e83d4805fe2914c59",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variantc412d8a3512fa4a8eec257efbfc36149ac046360d41fe079ff5b1f3d8bccc392.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a94daa40a7c77d7d766c813e83d4805fe2914c59`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variantc412d8a3512fa4a8eec257efbfc36149ac046360d41fe079ff5b1f3d8bccc392.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variantc412d8a3512fa4a8eec257efbfc36149ac046360d41fe079ff5b1f3d8bccc392.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Forward.State.Initial` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Tree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/tree.md) | 19 | `declaration-track:68df923f803de88da2c4259745c06b6b19b151aec05c7918602e9e05b11a1ca8` |
| 2 | `def` | [mkInitialTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/mkinitialtree.md) | 31 | `declaration-track:ec1cbdeddb7f84695d5bfdb251a5ab157063cfa9bc5010f1ac7176d384fef99b` |
| 3 | `structure` | [TreeM.Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/treem-context.md) | 72 | `declaration-track:1abaeffc017e1f2e452acee97978004370c037b75f3c788e8c59e9f72fc67fee` |
| 4 | `structure` | [TreeM.State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/treem-state.md) | 76 | `declaration-track:597b7dd298ed9a3ac811c84c25054e264998a9a0ac037be064d53680c240e607` |
| 5 | `abbrev` | [TreeM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/treem.md) | 79 | `declaration-track:368c5c7e434d90bd0e3bf889560e5ddbdd0821dfadc37f7d7269252e978efb72` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/instance.md) | 85 | `declaration-track:346edea28c9dd0958f802ab33e826035c554c4eed0ad1e1cafaf981bf7a8e1c1` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/instance-source-edition-3.md) | 88 | `declaration-track:b137d7a31ef6a68bc397e07ed46dc2de81243d069b3aa57a5b518342e9fbe7b6` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/instance-source-edition-2.md) | 95 | `declaration-track:5ab6ea4dbdc41d3e3cfd6d7584ad425bb4ffead554dfd43fbddfcc70e4e63604` |
| 9 | `def` | [run'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/run.md) | 98 | `declaration-track:b9446d8c289ce43b1a2b70c57ad366715dce349409592ffe841b5d3a5195077e` |
| 10 | `def` | [getRootMVarCluster](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/getrootmvarcluster.md) | 104 | `declaration-track:4c62fb4368305fa639e5457479bda5d363a3d483787a157bd03694de71bdee32` |
| 11 | `def` | [getRootMetaState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/getrootmetastate.md) | 107 | `declaration-track:5ff53150f61202e0848219003c9a9871a4e75d4dff18d23f56a576d3cf18efcb` |
| 12 | `def` | [getRootGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/getrootgoal.md) | 110 | `declaration-track:917bf8ff3b8af11201dac92ed11a6e8a8dea89e9a4b386a298ebf71a600abfbf` |
| 13 | `def` | [getRootMVarId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/getrootmvarid.md) | 118 | `declaration-track:07d76b1bb5bcafa50710267394fc58b744ece37914d69ee192c1178c34bd7798` |
| 14 | `def` | [incrementNumGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/incrementnumgoals.md) | 122 | `declaration-track:2387f1fb0fa018261458745d55e69ab765b27984252fb4f201fd8193a19c46a5` |
| 15 | `def` | [incrementNumRapps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/incrementnumrapps.md) | 125 | `declaration-track:754fc34a673bc44bd3b4265d7e6e104a4762c928b8de2be203df1929f36af970` |
| 16 | `def` | [getAllIntroducedMVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/getallintroducedmvars.md) | 128 | `declaration-track:89ee3113d6b0161c049d8ed00468e9745c2859881db97e426ef896f2d3dde4b5` |
| 17 | `def` | [getAndIncrementNextGoalId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/getandincrementnextgoalid.md) | 131 | `declaration-track:07f79180ff10bfdc69ad9f9d0a77bcd5c390176095b8a33152f2e93d60f24e79` |
| 18 | `def` | [getAndIncrementNextRappId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TreeMPublic.lean/declarations/getandincrementnextrappid.md) | 136 | `declaration-track:d4756d70208a1f4226d3d74e723036fb1e5bc584369eab651c2c5dcc81dfa9b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3af69e91d2d75b46683a04dd21f0814819f37eee67f23f8c4f22ee376de1f4f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variantc412d8a3512fa4a8eec257efbfc36149ac046360d41fe079ff5b1f3d8bccc392.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TreeM/Variantc412d8a3512fa4a8eec257efbfc36149ac046360d41fe079ff5b1f3d8bccc392.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
