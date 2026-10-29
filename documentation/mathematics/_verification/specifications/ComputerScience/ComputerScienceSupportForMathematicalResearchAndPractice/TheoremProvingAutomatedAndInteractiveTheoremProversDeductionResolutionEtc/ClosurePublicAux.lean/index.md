# Verification target: Closure Public Aux

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5c6d4bf86de09eb83908509cbc19b387f8cdc38",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5c6d4bf86de09eb83908509cbc19b387f8cdc38`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.ForEachExpr` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ToProcessElement](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/toprocesselement.md) | 102 | `declaration-track:1435ad680c80cec1060afd2f48e17be1b59366cc5d5aa63a5dc59827db8f0fe6` |
| 2 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/context.md) | 107 | `declaration-track:7b562e4ef285e845dc255d9765aa877b0e76ea4a97830159de0114c42d25fd24` |
| 3 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/state.md) | 110 | `declaration-track:ffe37ffe9d5c1799dbdef48572529c1bbe162fc8a5706fb53c88a94de01797cc` |
| 4 | `abbrev` | [ClosureM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/closurem.md) | 124 | `declaration-track:b8788c07661aaef2928b2d892a03abd019bd0a6737f50908359872634c4b9f60` |
| 5 | `def` | [visitLevel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/visitlevel.md) | 126 | `declaration-track:167f9e5610f12df93b6c6bd74a077baef43bf196289ebcd6e40a56ecd130a92f` |
| 6 | `def` | [visitExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/visitexpr.md) | 138 | `declaration-track:6953a99e4de79c017ef8968ed365ade92f28d8934a2a4428e205427f9e0df87d` |
| 7 | `def` | [mkNewLevelParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/mknewlevelparam.md) | 150 | `declaration-track:388aca57c10d42e1babec9cbab84ea977fcdd7930cdb793de140532a10609b4c` |
| 8 | `def` | [collectLevelAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/collectlevelaux.md) | 156 | `declaration-track:f9ce553847556aabb56da21f2130ba6dee6d081e7baf35f8e0150837383fe84f` |
| 9 | `def` | [collectLevel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/collectlevel.md) | 164 | `declaration-track:4b5e66eaacb3ecdfb14486a04061b0a8d2ee36feba8863700039b809349f90e8` |
| 10 | `def` | [preprocess](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/preprocess.md) | 168 | `declaration-track:c106de213de79a6256bfdcf82c24f092c6f08a65f0314d040f38c2ccd1ba6391` |
| 11 | `def` | [mkNextUserName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/mknextusername.md) | 181 | `declaration-track:aeace43e59db0e8aad4f3897b218b4573b9cae3fcd423ec5296f2f5175ba7dc9` |
| 12 | `def` | [pushToProcess](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/pushtoprocess.md) | 187 | `declaration-track:8a015b8834dd0f4683357db419b79d6ef9393a9f0e71884ae0e29798bf9f7187` |
| 13 | `def` | [collectExprAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/collectexpraux.md) | 190 | `declaration-track:08fc505757fadae1aa598232dccff886fb18848d387bafecae457c9d9fbd0a67` |
| 14 | `def` | [collectExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/collectexpr.md) | 246 | `declaration-track:931c2d476c2196251c1262779f3f06026dae36e0556c785a3afee9caf0e9d603` |
| 15 | `def` | [pickNextToProcessAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/picknexttoprocessaux.md) | 250 | `declaration-track:7ae0d802164475fec8f07d9e3ce21e11e32ac1fa051246a8b385d281a1a45cbf` |
| 16 | `def` | [pickNextToProcess?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/picknexttoprocess.md) | 261 | `declaration-track:34c0618719e8d697cf08e67fa1ecaf68b4e755d3856d6df24eafde404f287c5e` |
| 17 | `def` | [pushFVarArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/pushfvararg.md) | 273 | `declaration-track:820f8e5aa0289ec74a6f97b39fd3328a0ecfe6f512031ba4e746ae9ae46e4407` |
| 18 | `def` | [pushLocalDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/pushlocaldecl.md) | 276 | `declaration-track:63ee04634223a21487f3f31f60252119fe3e74662e7a56936c82df3ee3fa923b` |
| 19 | `def` | [process](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/process.md) | 280 | `declaration-track:c0594c908b323171466fbffe4510c291f12b12bb82265587ab4a6c098e53f343` |
| 20 | `def` | [mkBinding](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/mkbinding.md) | 313 | `declaration-track:f3a506109e8b341043b8edd937889c63d93f7bc2212c5b00dda98238b66986ba` |
| 21 | `def` | [mkLambda](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/mklambda.md) | 333 | `declaration-track:defbf29a7b2cc748f40973cbb325a40d1fad5e5904c8e393875199b985dcf1ec` |
| 22 | `def` | [mkForall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/mkforall.md) | 336 | `declaration-track:0bd1601c43c8817be4b83b3a3eb2a897dd30e12ea81a54bd13ca1ffcfd3b1b32` |
| 23 | `structure` | [MkValueTypeClosureResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/mkvaluetypeclosureresult.md) | 339 | `declaration-track:19e49f244b8bb76c45adff27df0e6b2ff928634f3914c71b2e256b9c9dad39e5` |
| 24 | `def` | [mkValueTypeClosureAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/mkvaluetypeclosureaux.md) | 346 | `declaration-track:3f91d328d76d553d3a32ba6348ab346db9611e54fc953787a503ac2cd406c532` |
| 25 | `structure` | [TopoSort](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/toposort.md) | 353 | `declaration-track:f9b58b20dbd2edc680b6b105c3a2f3100113bcf0043ef2850c0b23d037cf4bec` |
| 26 | `def` | [sortDecls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/sortdecls.md) | 364 | `declaration-track:21656b596554a4e8f6cfc6aa8f263ed023290da2294821ac4852889a39bdaa8c` |
| 27 | `def` | [mkValueTypeClosure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/mkvaluetypeclosure.md) | 410 | `declaration-track:615029eec6271bbc25ddd087684d7a0ba3a0eb40ca11f8c1fe92bb1922b874a9` |
| 28 | `def` | [mkAuxDefinition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/mkauxdefinition.md) | 434 | `declaration-track:2094079e1278db1b5dbbaf5fcd104a4fa4b9e2cb19f9b9dd8b095e98054bc0b5` |
| 29 | `def` | [mkAuxDefinitionFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/mkauxdefinitionfor.md) | 447 | `declaration-track:05813d4440a08142a1b0beff84549edad25bacf36296e1647d5e674be648e6b6` |
| 30 | `def` | [mkAuxTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/mkauxtheorem.md) | 457 | `declaration-track:0822c5fc4804f9736f7d3dbdc8c7d9fed19e6455a50dbf1e2b7e52ea0fed8b9b` |
| 31 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ClosurePublicAux.lean/declarations/builtin-initialize.md) | 462 | `declaration-track:f6a6a98e1caaff71c13680eefef45f91db3e67e802aae5f4ec316a424af14021` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ee6fc56f4721dd2d74c6b9449c8193e5e2dc56b1c8cd763cae59057cd4c1974 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Closure/Variant388cd24b77b0c8232414806c9b1477b5afd1766b9fd6dcfe79cf9efde0823f67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
