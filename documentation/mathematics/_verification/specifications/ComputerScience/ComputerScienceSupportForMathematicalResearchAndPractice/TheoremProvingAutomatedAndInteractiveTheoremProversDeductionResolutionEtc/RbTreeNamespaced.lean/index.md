# Verification target: Rb Tree Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdd3cb607279687b966b7ea7bc530c8b181085c6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RbTree/Variant0b491a36f10decbe95bd16aea62b9e2712fe3bffd10b034d3fc3ca9b065fb496.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdd3cb607279687b966b7ea7bc530c8b181085c6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RbTree/Variant0b491a36f10decbe95bd16aea62b9e2712fe3bffd10b034d3fc3ca9b065fb496.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variant0b491a36f10decbe95bd16aea62b9e2712fe3bffd10b034d3fc3ca9b065fb496.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProofWidgets.Presentation.Expr` — import line 6; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.SelectionPanel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RBColour](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/rbcolour.md) | 15 | `declaration-track:4b77cabfbd764e67de75f22e8273d3f5168afef38b8bd7622d92b5fb3c3e9e46` |
| 2 | `inductive` | [RBTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/rbtree.md) | 18 | `declaration-track:2160efb761d0a52ac65f97f9c53143a1321a303352c35559ff4963f98abd4201` |
| 3 | `def` | [contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/contains.md) | 24 | `declaration-track:b1fd0e11070f792b466b9dd6b735d76f650a639a5aec40af2fe436ecfb03cef3` |
| 4 | `def` | [balance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/balance.md) | 31 | `declaration-track:747d43403cc38f6c22239d6beda0cbce797c39a4aa65dc5cc7f2381a83f1b903` |
| 5 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/insert.md) | 39 | `declaration-track:d23b5c37464e32f2c73e901740b71b63a22f949d83b152d17665276c850f60f5` |
| 6 | `def` | [empty?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/empty.md) | 58 | `declaration-track:6c05316e1174e3df8bcfebbdd960ab9ac6403fea4ba2bd7609319c2fb5130ba8` |
| 7 | `def` | [Lean.Expr.app5?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/lean-expr-app5.md) | 61 | `declaration-track:e7d3e06e9bf9314bb545b1c5cdd2f1ff576a10bb091a886da3ce6a10f4db06fa` |
| 8 | `def` | [node?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/node.md) | 72 | `declaration-track:ad1708bd6f380d88f0949c474a8f7ede527d1713d3126ca9a83cb303d70fe0f8` |
| 9 | `def` | [evalColourUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/evalcolourunsafe.md) | 76 | `declaration-track:a065ddf1382f94073f6de9fae39ebf3bf795b2d4bf4089f8178304d065bc0f20` |
| 10 | `opaque` | [evalColour](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/evalcolour.md) | 80 | `declaration-track:bc1ae0eb9f611dfa247669e44ef9cf861005355152a49b48f9d00f2b6112fc4e` |
| 11 | `inductive` | [RBTreeVarsColour](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/rbtreevarscolour.md) | 83 | `declaration-track:32c2744081a438a47231d74dec4e9e7135d9b7c4e154d7ba9474bbb9d9126e66` |
| 12 | `inductive` | [RBTreeVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/rbtreevars.md) | 93 | `declaration-track:3e257dd5433200f956e8e23f781983b139179bd27d828987370863b8007f6dee` |
| 13 | `structure` | [RBDisplayProps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/rbdisplayprops.md) | 102 | `declaration-track:d35a338825e78ab5f66e751bb22374066fe496873cb23844028d803f3cc37d5e` |
| 14 | `def` | [RBDisplay](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/rbdisplay.md) | 110 | `declaration-track:663f9775c951130eed6abedf249b92d2e092a155fcb0b81d8816d2cc8d76ac85` |
| 15 | `def` | [drawTree?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/drawtree.md) | 114 | `declaration-track:0c9dd90ea084938ebace1838e3772b08724573c123df18479f512affb24df89f` |
| 16 | `def` | [RBTree.presenter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/rbtree-presenter.md) | 135 | `declaration-track:6a712f9e59ef6099d913c5ed04db3a9592f8450d8bf9dd979671e7e844c3868f` |
| 17 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RbTreeNamespaced.lean/declarations/example.md) | 145 | `declaration-track:6e4fa49477af0a6e6777501a20fd350084fa6388182d4a05916d067be6c636fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fcd9da805d1030e75eb9305be00dc7022003d710bf6f8c122d2a0a943ae7e904 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RbTree/Variant0b491a36f10decbe95bd16aea62b9e2712fe3bffd10b034d3fc3ca9b065fb496.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variant0b491a36f10decbe95bd16aea62b9e2712fe3bffd10b034d3fc3ca9b065fb496.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
