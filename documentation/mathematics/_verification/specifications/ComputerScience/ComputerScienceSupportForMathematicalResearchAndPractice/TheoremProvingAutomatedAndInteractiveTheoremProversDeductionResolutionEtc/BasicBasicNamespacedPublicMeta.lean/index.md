# Verification target: Basic Basic Namespaced Public Meta

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d6d8b031ec85deb068b62b568883578ad89ea03",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta0e8d61cf3e12580ec63f441c9ffb56f114e565c58af8682fc171637259b5189.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d6d8b031ec85deb068b62b568883578ad89ea03`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta0e8d61cf3e12580ec63f441c9ffb56f114e565c58af8682fc171637259b5189.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta0e8d61cf3e12580ec63f441c9ffb56f114e565c58af8682fc171637259b5189.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.SynthInstance` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Meta.sortFVarsByContextOrder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/meta-sortfvarsbycontextorder.md) | 30 | `declaration-track:32a969bc9eda81f47ed28d66a4034a63d4d1f66b4b791f56d6559c2213ff673a` |
| 2 | `def` | [getExprMVarDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/getexprmvardecl.md) | 40 | `declaration-track:28e988c85dfadd6a042ee68c1d80945a0a59a71324c2ba1e649c493e2ab4f9f5` |
| 3 | `def` | [declareExprMVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/declareexprmvar.md) | 51 | `declaration-track:a2d5f6f739860e646e41c127382dee35d5afb8ef16dabe73a890aceeb4ab4134` |
| 4 | `def` | [isExprMVarAssignedOrDelayedAssigned](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/isexprmvarassignedordelayedassigned.md) | 62 | `declaration-track:85eca227f1c8513b16d7f37faaddafc79b8e5bb57ac6c9453b81f6d8686b6b10` |
| 5 | `def` | [isExprMVarDeclared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/isexprmvardeclared.md) | 69 | `declaration-track:bf64c93671495fd1f9669764a9e21467646e9676d9dd37219db8d7e5cf529b1e` |
| 6 | `def` | [eraseExprMVarAssignment](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/eraseexprmvarassignment.md) | 75 | `declaration-track:c886cb8fc04242cae8ba843b7add2e3d5ce5149ee22e13a559697e7624ed6c60` |
| 7 | `def` | [unassignedExprMVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/unassignedexprmvars.md) | 86 | `declaration-track:1a16ee9dd85be7d689e16de598a08de7659ae85c7bc6263715ec3c1d13a0311e` |
| 8 | `def` | [isDeclared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/isdeclared.md) | 103 | `declaration-track:2d17e25a928e02ded12aa1577d19e1b37e1f8d7d14d2a82ee7ef08d9647d1d73` |
| 9 | `def` | [eraseAssignment](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/eraseassignment.md) | 109 | `declaration-track:7fd48024578fa01f1565428a18846cd91121324b9341051e390f657d2e4dc63a` |
| 10 | `def` | [synthInstance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/synthinstance.md) | 114 | `declaration-track:27bc7a100172b515695134944e414e9837bbd8e9c7bc72604ad3208640f029e4` |
| 11 | `def` | [getTypeCleanup](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/gettypecleanup.md) | 119 | `declaration-track:70a2136f0887ce75a2bb24327e2edaf2a505b6e27648675022bf6d84b0b792e9` |
| 12 | `def` | [getUnassignedExprMVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/getunassignedexprmvars.md) | 131 | `declaration-track:b3adceeb3389dd5a695b40044877f5601c61e792deb92c8cdd3b2be6eede8c01` |
| 13 | `def` | [unhygienic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/unhygienic.md) | 138 | `declaration-track:3e3413a7d7d37d1c389a1d56891967ace17c249b7dd708e5f1c71830c9fed9fd` |
| 14 | `def` | [mkFreshIdWithPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/mkfreshidwithprefix.md) | 146 | `declaration-track:46530cb3b0668eeeed7909dcb8194dbf584bb3ca33a51fa5cc6be81312f83550` |
| 15 | `def` | [saturate1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicMeta.lean/declarations/saturate1.md) | 162 | `declaration-track:3d91ed00c4be333f646d946eaeca87501792066950d2137218307008e81d68b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfbf11206af64b79f1008b764cdbcfa1c47c21735ce89ac8f9a3427c8973b671 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta0e8d61cf3e12580ec63f441c9ffb56f114e565c58af8682fc171637259b5189.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta0e8d61cf3e12580ec63f441c9ffb56f114e565c58af8682fc171637259b5189.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
