# Verification target: Basic Basic Namespaced Public Eval Term With Ref

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6586ec16c89bf98fe7ca76b5f365cb44e8b3b4d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6586ec16c89bf98fe7ca76b5f365cb44e8b3b4d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval.Util` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalTermWithRef](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/evaltermwithref.md) | 31 | `declaration-track:d0f3dc61c2d42133ec603df0ac0de4cbdd7ba3ab2dfb039a2fbd12b984a8d31f` |
| 2 | `def` | [evalExprWithElab](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/evalexprwithelab.md) | 37 | `declaration-track:b1a25890bc9473d4abef743ad45abcce105dcfaef51a9dd1958bf26011f55da4` |
| 3 | `def` | [evalTermOrExprWithElab](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/evaltermorexprwithelab.md) | 58 | `declaration-track:8286f1d2bef798563f41e8a8b22bb3af13daaf495b0c612bddf17eebf33e6367` |
| 4 | `def` | [stripParens](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/stripparens.md) | 65 | `declaration-track:41608ac30fafa55cfb3aa02fdd82bd3774f5a3dcb2786e045b3dfeba2b4b1f21` |
| 5 | `def` | [EvalTerm.evalTermWithInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/evalterm-evaltermwithinfo-source-edition-2.md) | 69 | `declaration-track:be6459ed5bee53a1dca2bf4074f84282eb8860916b3c70eb053aa73eb69536e4` |
| 6 | `def` | [EvalTerm.evalTermWithInfo'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/evalterm-evaltermwithinfo.md) | 79 | `declaration-track:050e3e4e2df3f67355ece92b3d184fe6e6e45b38afc1f4fa8f422454bdbbdaf5` |
| 7 | `def` | [EvalExpr.withWHNF](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/evalexpr-withwhnf.md) | 91 | `declaration-track:a766c98f6d8ca2fab98177b0c4f311269a7a31769bcc3107479337a2717ef112` |
| 8 | `def` | [ConfigItem.isAnonymous](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/configitem-isanonymous.md) | 100 | `declaration-track:fef792eea1432db2dbe180dbb558b70990e875415812b4edb1af9ee9797a8642` |
| 9 | `def` | [ConfigItem.root](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/configitem-root.md) | 102 | `declaration-track:9d5c87ce97a47c964d70ea852780d0cfb219fea44358c07c66b1370b95ef9e3e` |
| 10 | `def` | [ConfigItem.getRootStr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/configitem-getrootstr.md) | 107 | `declaration-track:0a4213258d992517621453cb14b3465460a04a4e56b1d195075316728dbe54fa` |
| 11 | `def` | [ConfigItem.prevRoot?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/configitem-prevroot.md) | 113 | `declaration-track:9fcf388332cdb6fa1a5ed25b312dfaff321443b282004fc410ef0801873cffb5` |
| 12 | `def` | [ConfigItem.prevRoot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/configitem-prevroot-source-edition-2.md) | 116 | `declaration-track:f8f2823bb253b46fba49b917614adbc41faee317d9bae6882af796217d5fd3a2` |
| 13 | `def` | [ConfigItem.getCurrOptionName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/configitem-getcurroptionname.md) | 127 | `declaration-track:e99f4115beb532a5b38ffba266556a42d1eb6e19206e1284e689c22a0321ceb1` |
| 14 | `def` | [ConfigItem.shift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/configitem-shift.md) | 134 | `declaration-track:0bc1e69b1a9a863692dc44575dde93f5c6b2f2976c1e72780113d7f71878d9ab` |
| 15 | `def` | [ConfigItem.checkNotBool](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/configitem-checknotbool.md) | 139 | `declaration-track:b9a3a18236c8107d894f2fa3fd52eab5a89574294881f0ffb332a8e0b2ddfc03` |
| 16 | `def` | [ConfigItem.throwInvalidOption](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/configitem-throwinvalidoption.md) | 143 | `declaration-track:86cf48de325439ea1a6fea946b01c14836aa46c63632977f66153dd5b004c256` |
| 17 | `def` | [ConfigItem.throwCannotSetOption](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/configitem-throwcannotsetoption.md) | 149 | `declaration-track:135e3bb9c720ade90889156c8bde9726edb6642206feebfd202ac67413297367` |
| 18 | `def` | [ConfigItem.addConstInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/configitem-addconstinfo.md) | 155 | `declaration-track:8f39bb458682f3d7bdb170ebc2fa9857e6c042a10aee5b7cb88369f09c008892` |
| 19 | `def` | [ConfigItem.addCompletionInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/configitem-addcompletioninfo.md) | 160 | `declaration-track:6b4fcc43e505b3fa2a4035e20d7eae057323cfeba99adb078dd50e82d90a3162` |
| 20 | `def` | [foldConfigM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/foldconfigm.md) | 195 | `declaration-track:3bf68bfc53e72d86c4fa703ce3b0cb3686ad77c2f91a7658e1fde4fbc19d14ed` |
| 21 | `def` | [foldConfigsM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/foldconfigsm.md) | 242 | `declaration-track:76671f9b8d14ba2403c354bc841f915ccbf73d3efb5b46f98b54d0e75a2faac5` |
| 22 | `def` | [EvalConfigItem.trySet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/evalconfigitem-tryset.md) | 250 | `declaration-track:f614b8bce52d6cfd39a980b8e785d1760a03ae29f1ac18986e75a57523935630` |
| 23 | `def` | [EvalConfigItem.defaultOnErr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/evalconfigitem-defaultonerr.md) | 272 | `declaration-track:25a651b5094c08aadae3d0fc3c6598c61f75ad87fdc011cfa3fe7bbeb8fb4273` |
| 24 | `def` | [EvalConfigItem.setConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/evalconfigitem-setconfig.md) | 296 | `declaration-track:8e110c8bfbd59b0f35ff008c34ac6d660ef2cdb42d7600340fb15f0e9b9779e5` |
| 25 | `def` | [EvalConfigItem.setConfigs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/evalconfigitem-setconfigs.md) | 310 | `declaration-track:1289e3fee82cc4a8c430bfb870e691c56f5ea4bd0e042b3e77fc1dd51dee4882` |
| 26 | `def` | [runConfigElab](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/runconfigelab.md) | 320 | `declaration-track:9342fc9e9f32abbc5e06283d523ded734fc688186cffcb6758306b1bc939d409` |
| 27 | `def` | [EvalConfigItem.setConfig'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/evalconfigitem-setconfig-source-edition-2.md) | 326 | `declaration-track:9d72451935727f3d7885d73bb2bbdcc5c922a0a35a63931fa54850ad59f486df` |
| 28 | `def` | [EvalConfigItem.setConfigs'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicEvalTermWithRef.lean/declarations/evalconfigitem-setconfigs-source-edition-2.md) | 340 | `declaration-track:86b02e26a8abda250464fdf417cbcb65926f0c2a56e2c7ee63fbf0aad424e38e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a16d62b5af830f68d0baa0dcf8c38a0d5ba5e464128ed9925ea1563a91e9de8d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca06e116b9b91f8833e6c8f512c9cf32d87499e451cc71a777d83180d4e39347.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
