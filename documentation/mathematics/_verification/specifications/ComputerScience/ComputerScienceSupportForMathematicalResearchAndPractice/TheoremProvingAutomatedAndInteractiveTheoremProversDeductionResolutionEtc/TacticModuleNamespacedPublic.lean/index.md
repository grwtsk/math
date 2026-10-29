# Verification target: Tactic Module Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cf76646a476458159968607aa90e48ef58ed52b",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cf76646a476458159968607aa90e48ef58ed52b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean.json)

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
| 1 | `def` | [NF](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/nf.md) | 63 | `declaration-track:223dc22f3e7fac24bcc89612b9d0a454da7a27814c1565f8319089893d02af29` |
| 2 | `def` | [cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/cons.md) | 70 | `declaration-track:8108f97bbab3fbef6ffc70f6fd836fda1c4152eaf52c0c716390e0cf670e8556` |
| 3 | `theorem` | [inductionOn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/inductionon.md) | 77 | `result-track:f390c335a012e72f735bfb28ee395c210211188f162a7d4c74cffb0b3365dc6e` |
| 4 | `def` | [eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/eval.md) | 84 | `declaration-track:199329d3e3887d7ec6a50ec081761bb80d67d9135fb91f518663028811f807af` |
| 5 | `theorem` | [eval_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/eval-cons.md) | 86 | `result-track:c28c8e8127afce2f51054fba6b3c054e878a10b28b98ab4de06a2185a3e38913` |
| 6 | `theorem` | [eval_nil](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/eval-nil.md) | 90 | `result-track:b0dee292a8707f187ec10ab2d39bc7da2babfc6cab333c777375d9be2e1aa19d` |
| 7 | `theorem` | [eval_cons_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/eval-cons-eq.md) | 93 | `result-track:6f81ed643ccc31006e430fd413b26b531a780292dcf09dc219dccf8e099a14fc` |
| 8 | `theorem` | [atom_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/atom-eq-eval.md) | 99 | `result-track:01df6ceb48c3c4c48debc7195c86790b37c7374aac8e5b5b00740f83cc9aa74a` |
| 9 | `theorem` | [zero_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/zero-eq-eval.md) | 102 | `result-track:e270446e0be039701fc238534c96080e3628359eb8769f19538ff83b33b1dc74` |
| 10 | `theorem` | [add_eq_eval₁](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/add-eq-eval-source-edition-4.md) | 104 | `result-track:f78ca1495a92c2b0f7e302e66b163b2881be63517e84371ff6ae2560d22639e4` |
| 11 | `theorem` | [add_eq_eval₂](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/add-eq-eval.md) | 109 | `result-track:3338fdb70a3cba7b8cde5934114927c58ab3a3124977a9b6e342ceef4b2b57bf` |
| 12 | `theorem` | [add_eq_eval₃](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/add-eq-eval-source-edition-2.md) | 118 | `result-track:3e30ca50a4af12186211ddb59d1af3321e759df6b8cf2325f25b9abf55a18423` |
| 13 | `theorem` | [add_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/add-eq-eval-source-edition-3.md) | 127 | `result-track:65177ba5e213a1cb91130adb81330ad4a6912ca321dc968d067d7ac87fa14557` |
| 14 | `theorem` | [sub_eq_eval₁](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/sub-eq-eval-source-edition-4.md) | 134 | `result-track:ec3dcca794be6c19a3d0b046ca99fb9b656e01cb2a2fb4fabbf7327305eadcec` |
| 15 | `theorem` | [sub_eq_eval₂](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/sub-eq-eval.md) | 139 | `result-track:368e4be65f4fbaf387b4d9b1557bb424e5dc3725ed66cabe98f22914db0a6b3f` |
| 16 | `theorem` | [sub_eq_eval₃](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/sub-eq-eval-source-edition-3.md) | 148 | `result-track:a60556bfb1aec7e54e09505a80a4bc8b5e0e653cfeae7a081e4627c21942762a` |
| 17 | `theorem` | [sub_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/sub-eq-eval-source-edition-2.md) | 155 | `result-track:43f0c78fcdc6b02d1d02db0afa623cd437aba26eabca8e99bab4455a046c4b95` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 164 | `declaration-track:e70be703275b1d8ae9628e1457d64e5bf79ba07fa1236e94a1a7d86855c220ce` |
| 19 | `theorem` | [neg_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/neg-cons.md) | 167 | `result-track:912d28178d2c8875e4aa3bf1fc18c029e2bcceb045f9aa7f3454ae0e97583dc5` |
| 20 | `theorem` | [eval_neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/eval-neg.md) | 169 | `result-track:1e9f93b6072b8580f683c6fc642e6b04d7f061159b8bae44f3c025590e057085` |
| 21 | `theorem` | [zero_sub_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/zero-sub-eq-eval.md) | 174 | `result-track:3c2fd4048c4d80c968d8abba589a9c6d74ea6ec758ef88f36008730113020ca3` |
| 22 | `theorem` | [neg_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/neg-eq-eval.md) | 178 | `result-track:cb0c4380766479a0924e83a90a9fc4b0bd67f89bd4cc90904ffac8cdfe04c8c9` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/instance.md) | 183 | `declaration-track:45b5f9bfce4f9811323e7e873bc0bda308dab8d4a63aa866e1bf0676e5059168` |
| 24 | `theorem` | [smul_apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/smul-apply.md) | 186 | `result-track:2ca817e6e3b974d8ed7c80dd53ed8660157d0f5e06891abfbd6edded796f25f7` |
| 25 | `theorem` | [smul_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/smul-cons.md) | 189 | `result-track:a0c28dbfc89ef9636c4a70cbe0658d0851903115b2808e5ed1f4d9c33a392c9f` |
| 26 | `theorem` | [eval_smul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/eval-smul.md) | 192 | `result-track:f64d44617ed9747d5401abd86ae054e285e45ba2f64cfeefe391c027257aadf1` |
| 27 | `theorem` | [smul_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/smul-eq-eval.md) | 199 | `result-track:fefad092afe6f3f6c1686f6004ede51e3b4f4f51157d3c8f1c2205f8d6c70d2a` |
| 28 | `theorem` | [eq_cons_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/eq-cons-cons.md) | 206 | `result-track:fe3e500aabf6cb8bfcddeeb7bb80cddfdc0f3367a7d7c9feba687fe9eac89b90` |
| 29 | `theorem` | [eq_cons_const](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/eq-cons-const.md) | 211 | `result-track:ca13347a97146a54b7662d877f3e69ad726d8b6123d03940edae6dc42ed5f8c9` |
| 30 | `theorem` | [eq_const_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/eq-const-cons.md) | 216 | `result-track:c30d6e8f989bcd9d84d908744c4cc27c4cdb536fd8da802c63656dab25017862` |
| 31 | `theorem` | [eq_of_eval_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/eq-of-eval-eq-eval.md) | 221 | `result-track:1e469b3a8cfec6f382763f7549627cdacc1a8b9d58bb2fd07b89b1b03b72c8f3` |
| 32 | `def` | [algebraMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/algebramap.md) | 233 | `declaration-track:42b4bc21864319c6ffbc7214ec467c602880e4f1816babc943db466e5b442fd2` |
| 33 | `theorem` | [algebraMap_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/algebramap-cons.md) | 236 | `result-track:25b33db7b391de1071f18eabd11c8b4ec25e2010b095d89dbd0c906f8921961f` |
| 34 | `theorem` | [eval_algebraMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/eval-algebramap.md) | 239 | `result-track:88df829ea3a17596ebb20672dc833eebe4cb8c1b48262c620df1699ebb181729` |
| 35 | `abbrev` | [qNF](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/qnf.md) | 267 | `declaration-track:eec3511004529a436d9ea2311310b143480964efda3b80494bd6dfee26aab73b` |
| 36 | `def` | [toNF](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/tonf.md) | 276 | `declaration-track:190c0ee984ae569acaa189e81d53bc318ea99662c49679876699ad870fcc0b84` |
| 37 | `def` | [onScalar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/onscalar.md) | 284 | `declaration-track:71679b8d3236ee5cc48c63cbc43ad35de8dc4a07bd679bcb455b553fc6b23195` |
| 38 | `def` | [add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/add.md) | 300 | `declaration-track:998dd454946eddcb9c2f5b79e668aad7335c311a28c28ecd7fe1f47a4c739368` |
| 39 | `def` | [mkAddProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/mkaddproof.md) | 315 | `declaration-track:55b56ec71c703ea744537d0181eaf8d8cb2108c640a4649e8e8219164d756e12` |
| 40 | `def` | [sub](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/sub.md) | 345 | `declaration-track:3681aa0676124081242d5239ba345881ca88064aa15af626f6e93c45f9b45c42` |
| 41 | `def` | [mkSubProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/mksubproof.md) | 360 | `declaration-track:9e9a65ee41ce57b66603763937b6a972f396c1c48c98a7de092847aff874133c` |
| 42 | `def` | [matchRings](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/matchrings.md) | 390 | `declaration-track:1ad21a912258b051abc03584eca94615ccc58d4a175c9bdcba2b4fbe3da08694` |
| 43 | `def` | [parse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/parse.md) | 445 | `declaration-track:feba5e12e638253b63ebb7e7d899c0f7365aba6d021c3737ebd2a3d8e2bb8369` |
| 44 | `def` | [reduceCoefficientwise](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/reducecoefficientwise.md) | 516 | `declaration-track:d2c92ee233579e582c03d8c6fa6b7f0a06daf1f866d00370fc72aeba301aeab2` |
| 45 | `def` | [matchScalarsAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/matchscalarsaux.md) | 558 | `declaration-track:27eb8c6a98cd85588bc76c9c81c709b8453b5da1799865a92f6543d3ab67edb6` |
| 46 | `def` | [algebraMapThms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/algebramapthms.md) | 600 | `declaration-track:13d8d56c7ae344f3f1bd1ca2ba5646effe4f4c794c582d5028ba5690c73ad4eb` |
| 47 | `def` | [postprocessCtx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/postprocessctx.md) | 603 | `declaration-track:a1d22cc67240b15b534836cdf5cd8c8a8d8770ea6f6977d3781f65ad07f26d2f` |
| 48 | `def` | [postprocess](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/postprocess.md) | 620 | `declaration-track:fd283cd825495d479b3d51b8c27bafcea7540df3f66647f0fc4613cf4b77a375` |
| 49 | `def` | [matchScalars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/matchscalars.md) | 629 | `declaration-track:0e9e4d110f03aa1976fd3b78dbcb87c699d3fc39c71a3fbeaa07248e4474018b` |
| 50 | `def` | [normalizeScalar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/normalizescalar.md) | 636 | `declaration-track:f2084ca3d0b0091c2dacb561222154b55a840de2579c14f39f11f110bd183371` |
| 51 | `def` | [qNF.rebuild](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/qnf-rebuild.md) | 646 | `declaration-track:da726ad3928f9c4335364ab3bd8d3b777e628d7872e6500971338e400b64201c` |
| 52 | `def` | [qNF.liftToBase?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/qnf-lifttobase.md) | 664 | `declaration-track:187fcee40003965e312855a56a4a9f4c4dc1c2b19336715ec9ecd08a1d613839` |
| 53 | `def` | [eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/eval-source-edition-2.md) | 684 | `declaration-track:a14931c11aabe6b15ff53e11e694ccf5d4efa291c4ab3a15f8611c0de7e96fb2` |
| 54 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/elab.md) | 742 | `declaration-track:36551bed7fbd9e6dd4621805c5fe012d58e9b888456c2435b93b2dda089a3914` |
| 55 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticModuleNamespacedPublic.lean/declarations/elab-source-edition-2.md) | 771 | `declaration-track:bf3e985253fab697ecae818be505589f58e5d6158fa2d81a6681e41a62d4523c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd26edd71ae42606bf1086b0660f0f57c4bc14574b852bd9dbf9a4b5175cf8f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Module/Variant85065c794586f1d3c50a936544c02d7ab62df2fc89806a591afd12b838822590.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
