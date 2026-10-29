# Verification target: Closure Namespaced Public Aux

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64230de07a86d88a8fafce6586e8e9b71765ede9",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variantefc42d621ec9fda9f66aac70b142640b42388ded960cbe072389b26ae3469401.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64230de07a86d88a8fafce6586e8e9b71765ede9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variantefc42d621ec9fda9f66aac70b142640b42388ded960cbe072389b26ae3469401.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variantefc42d621ec9fda9f66aac70b142640b42388ded960cbe072389b26ae3469401.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.ForEachExpr` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ToProcessElement](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/toprocesselement.md) | 110 | `declaration-track:05a6114df95276e06c27c0af331fe4efc6b7d8d3875fa7687b737bdaa72883e6` |
| 2 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/context.md) | 115 | `declaration-track:a9019b13fbde2926e98ac10316da8bb20c5e77e7b59c1b12e76ccc67e477156e` |
| 3 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/state.md) | 118 | `declaration-track:f78a38f3b7c71d32fe5ad8d5915895a0f9a0a51d912870eb6dadad284aa89bb7` |
| 4 | `abbrev` | [ClosureM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/closurem.md) | 132 | `declaration-track:69ea79cb5c6c60038f7a49cf2ba59c8abd7eb105c99d0a7903c088624def87c7` |
| 5 | `def` | [visitLevel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/visitlevel.md) | 134 | `declaration-track:654d18a80e91a6da91fc10dbcc25b152fb88faa7bb810d62146348f00ece0b0c` |
| 6 | `def` | [visitExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/visitexpr.md) | 146 | `declaration-track:cdaff9f94ed9f2af11069d88ae2691dd5dfae92b4805c305acc12414d950f96a` |
| 7 | `def` | [mkNewLevelParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/mknewlevelparam.md) | 158 | `declaration-track:74938ab49d2cad93dccfbb55dad05aff3323a30518b4e18c27a88554fc6b8307` |
| 8 | `def` | [collectLevelAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/collectlevelaux.md) | 164 | `declaration-track:7f05537951809c943a0366ee53eb8920b9e2fac0fb5b577e3356c3fab28bf348` |
| 9 | `def` | [collectLevel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/collectlevel.md) | 172 | `declaration-track:9dbb78467a97b69a718a7b8ac610bbbf65c5a96a595a9e63a6ad3a50bee21025` |
| 10 | `def` | [preprocess](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/preprocess.md) | 176 | `declaration-track:b50386858b0d5e8810d28e9c95508c02962e70ad935feebecabf0c2cf3777d7a` |
| 11 | `def` | [mkNextUserName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/mknextusername.md) | 189 | `declaration-track:b43350204054e573af69767fd737d32fc39d077fa749192281fabda5cb39014e` |
| 12 | `def` | [pushToProcess](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/pushtoprocess.md) | 195 | `declaration-track:87b64a344ca567367cbb6d3b835faddd8f1053ab98f72fe7656ac519f48e0084` |
| 13 | `def` | [collectExprAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/collectexpraux.md) | 198 | `declaration-track:473d64573d2aa7e0f3abbfa23198ab720b9fdb6471c3f5f24a235234fa95a9f8` |
| 14 | `def` | [collectExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/collectexpr.md) | 254 | `declaration-track:8e374b1714773c87f4aa6c7b618f6c6911fd92a4fa1efb36df94846fbe0c33d1` |
| 15 | `def` | [pickNextToProcessAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/picknexttoprocessaux.md) | 258 | `declaration-track:042a4f32c3a9a12d30be8199f1e6f5af1689396ac6bf46e352c52e7c74eae8bd` |
| 16 | `def` | [pickNextToProcess?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/picknexttoprocess.md) | 269 | `declaration-track:fe721e8aea55d517e6ac53427f74ae984cfad0a11763b50fe32531fcddb70864` |
| 17 | `def` | [pushFVarArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/pushfvararg.md) | 281 | `declaration-track:1c51f6fa7a6df37aa700fbbd076cde23c8384d711cee305dd3ec257dbbf35c0b` |
| 18 | `def` | [pushLocalDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/pushlocaldecl.md) | 284 | `declaration-track:265fe6e0e63105c57d6cee707ba0dfc6c247103392ad14e28733636f5fc6d280` |
| 19 | `def` | [process](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/process.md) | 288 | `declaration-track:0dd82119bcfe3c0cbd79797c23cc6b9e619d1e2de09101cdbef2cbdf9ef7681e` |
| 20 | `def` | [mkBinding](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/mkbinding.md) | 321 | `declaration-track:076f1d048216469474c8b79fade13616afe5ac8509a22b780f69be94eda22862` |
| 21 | `def` | [mkLambda](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/mklambda.md) | 341 | `declaration-track:b28b4d525eb14de6f21ac1578c048e2caf1bae20b1e870e4118ab033f08f4203` |
| 22 | `def` | [mkForall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/mkforall.md) | 344 | `declaration-track:e4b43b6ca252c11b1079403b8cf9c80d9bfb6a378613760ecc8bcbf3d82b0942` |
| 23 | `structure` | [MkValueTypeClosureResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/mkvaluetypeclosureresult.md) | 347 | `declaration-track:2e0c181198d994aa720d99d46d0e5fed18c91db621e1b5054fe0aa080cd51359` |
| 24 | `def` | [mkValueTypeClosureAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/mkvaluetypeclosureaux.md) | 354 | `declaration-track:8a4d584c1333126b70e3846aa796dacfd5ca0c45cfc224006e4ecf74b545ee93` |
| 25 | `structure` | [TopoSort](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/toposort.md) | 361 | `declaration-track:185ef2016bc438daddf9552569738766fb3f99361ff05daac38c22431d5186aa` |
| 26 | `def` | [sortDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/sortdecls.md) | 372 | `declaration-track:9f73a1bd5c83799b01b791e35132d13715c5ad5c3281e4ccdba5090cf81936c6` |
| 27 | `def` | [mkValueTypeClosure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/mkvaluetypeclosure.md) | 418 | `declaration-track:7344d60ab57c7dc0f7a2a2114355915881f247c48cb5a022ff184c9dec5c9afe` |
| 28 | `def` | [mkAuxDefinition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/mkauxdefinition.md) | 442 | `declaration-track:49edefc4b6912bdd15c8d05f479a043edd545e13b54c5ee5a0f085df39745e99` |
| 29 | `def` | [mkAuxDefinitionFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/mkauxdefinitionfor.md) | 455 | `declaration-track:7f6781b578d8ef84da12b4e2170cfeda895eaa7c90ddb0d1f524b72778f98999` |
| 30 | `def` | [mkAuxTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/mkauxtheorem.md) | 465 | `declaration-track:6c23d377fbdd53cd3aea12a9eceebbf6a8f6b6e4646252a7ae7cb9c2d69e4e56` |
| 31 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosureNamespacedPublicAux.lean/declarations/builtin-initialize.md) | 470 | `declaration-track:6f69c3c95c198c7d853cb03973b7f4937c7773c67ed3867cec44422767d07cdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d4965d1c121f2ffaed48a2f56714b451f60ff235f17dece2cfc8e6e23c143fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variantefc42d621ec9fda9f66aac70b142640b42388ded960cbe072389b26ae3469401.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variantefc42d621ec9fda9f66aac70b142640b42388ded960cbe072389b26ae3469401.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
