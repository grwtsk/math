# Verification target: Expr Traverse Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9632598567ecd2528d5495d20713c928725f0431",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variantd4d042d6ce31f742283bdc0cc499a1e93585667c839bbf883424419b823b0cef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprTraverseNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprTraverseNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9632598567ecd2528d5495d20713c928725f0431`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variantd4d042d6ce31f742283bdc0cc499a1e93585667c839bbf883424419b823b0cef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variantd4d042d6ce31f742283bdc0cc499a1e93585667c839bbf883424419b823b0cef.lean.json)

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
| 1 | `def` | [forgetPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprTraverseNamespacedPublic.lean/declarations/forgetpos.md) | 29 | `declaration-track:31ffa9bd87ac2e4a2ec48a693df264aeafce4f6c0fffd8d42a465f0038861589` |
| 2 | `def` | [traverseLambdaWithPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprTraverseNamespacedPublic.lean/declarations/traverselambdawithpos.md) | 33 | `declaration-track:fbe34599d90974906f33acc86068f68a191103193b8590990513f770a4bb682f` |
| 3 | `def` | [traverseForallWithPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprTraverseNamespacedPublic.lean/declarations/traverseforallwithpos.md) | 45 | `declaration-track:42027cc0a05d3deafda984be74ad0349031960b4f665c2017c1bb5b124b5e75b` |
| 4 | `def` | [traverseLetWithPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprTraverseNamespacedPublic.lean/declarations/traverseletwithpos.md) | 57 | `declaration-track:eec607e98a954ed37ef710ab43e9eb0afc574fb76df49d1c9a6f85bcad435f25` |
| 5 | `def` | [traverseChildrenWithPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprTraverseNamespacedPublic.lean/declarations/traversechildrenwithpos.md) | 73 | `declaration-track:75a88a718fd9dbee54d4fd7aa02c28bdd7cbbb6c07da2b5a3adc67522ba71391` |
| 6 | `def` | [traverseLambda](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprTraverseNamespacedPublic.lean/declarations/traverselambda.md) | 87 | `declaration-track:a40b654f518ae24266dd383362cc1a07786d10541b1da982798282da1210a2a6` |
| 7 | `def` | [traverseForall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprTraverseNamespacedPublic.lean/declarations/traverseforall.md) | 93 | `declaration-track:60a59a4dc8fb7de628feaaa66f53a7e3b8e7df235da3cb2f4303a3a87019bb57` |
| 8 | `def` | [traverseLet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprTraverseNamespacedPublic.lean/declarations/traverselet.md) | 96 | `declaration-track:fd29d0cb8b05e95b3e8d895ec25cc5477f5cdcdf32750ba99e0dab17a665551a` |
| 9 | `def` | [traverseChildren](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprTraverseNamespacedPublic.lean/declarations/traversechildren.md) | 106 | `declaration-track:16b07a0d753f125313fb637ffda8c56a3e24bd2bfe05ddf376be5dd0134601b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a9d24a6ab59e545a27b99858366d4d702c2e2d83b69fc72be4c8d4794f6e2bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variantd4d042d6ce31f742283bdc0cc499a1e93585667c839bbf883424419b823b0cef.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variantd4d042d6ce31f742283bdc0cc499a1e93585667c839bbf883424419b823b0cef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
