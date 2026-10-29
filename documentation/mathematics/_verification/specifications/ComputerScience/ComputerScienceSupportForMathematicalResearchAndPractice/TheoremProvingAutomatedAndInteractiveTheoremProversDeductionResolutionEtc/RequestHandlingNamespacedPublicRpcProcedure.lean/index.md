# Verification target: Request Handling Namespaced Public Rpc Procedure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "039142db893032eb64fae909732848057a380a70",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant10aa4274aff055b43a4c3ab7618fb6da117130999e9de59534204c9b5c83660b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `039142db893032eb64fae909732848057a380a70`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant10aa4274aff055b43a4c3ab7618fb6da117130999e9de59534204c9b5c83660b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant10aa4274aff055b43a4c3ab7618fb6da117130999e9de59534204c9b5c83660b.lean.json)

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
| 1 | `structure` | [RpcProcedure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/declarations/rpcprocedure.md) | 25 | `declaration-track:e2225aac8ceb948f2b3ba9ab229cad0c03ad28490d81d131aa0e6b3b00e935a4` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/declarations/builtin-initialize-source-edition-3.md) | 32 | `declaration-track:8f45c6a37b3fac9161debb4cc2e5b39fd38226bd622bc389efd78bc475eba214` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/declarations/builtin-initialize.md) | 34 | `declaration-track:3fbebb41585d5fccdb1ddd293534e9ebeed43bbdc370569eb89fd139c5ec8ac3` |
| 4 | `def` | [evalRpcProcedureUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/declarations/evalrpcprocedureunsafe.md) | 37 | `declaration-track:1c833881b9ba59afa3848a7b2b2196f8e6c1eba526a15cd357a525099b522261` |
| 5 | `opaque` | [evalRpcProcedure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/declarations/evalrpcprocedure.md) | 42 | `declaration-track:f75b6941de5e5e8522921554637c1bdba51e73fc64e5c4afbd8f989c82ef7e87` |
| 6 | `def` | [existsBuiltinRpcProcedure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/declarations/existsbuiltinrpcprocedure.md) | 46 | `declaration-track:92a0695d11d776d864bf93b51d13b62ad74c107001d6fc6e3a3271ac12efe8da` |
| 7 | `def` | [handleRpcCall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/declarations/handlerpccall.md) | 50 | `declaration-track:1e7d8db0d510a8af87239ed3083c79594a9922cfaab8d4e0938eb6c1aec546a9` |
| 8 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/declarations/builtin-initialize-source-edition-2.md) | 81 | `declaration-track:8d433b9d6787da1f2e985bf35e5b37527591da53af43888c7d7d668dc73f00f4` |
| 9 | `def` | [wrapRpcProcedure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/declarations/wraprpcprocedure.md) | 84 | `declaration-track:c346a34d3f7a01e1371ecbe0cda01e4c8816e38f3b0bbbfb48ee100bba8e5ea6` |
| 10 | `def` | [registerBuiltinRpcProcedure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/declarations/registerbuiltinrpcprocedure.md) | 110 | `declaration-track:eb5b3c56dccf910143ef563542f81f4e27bf7d6dd18587ca58e8874343902a68` |
| 11 | `def` | [registerRpcProcedure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/declarations/registerrpcprocedure.md) | 123 | `declaration-track:74e3e812049d0002cbf68c55aaf40b412116978970160de2f634eb4538d5e732` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicRpcProcedure.lean/declarations/builtin-initialize-source-edition-4.md) | 149 | `declaration-track:cd80b1307550db9256088c9b778b0b53da0f5193d8d27efea4d053557e107ab5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7ab3aab82e9626ba81748b6696d462cdcf900008a83a81e53d9e088d381f410 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant10aa4274aff055b43a4c3ab7618fb6da117130999e9de59534204c9b5c83660b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant10aa4274aff055b43a4c3ab7618fb6da117130999e9de59534204c9b5c83660b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
