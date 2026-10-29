# Basic Basic Public Eval Term With Ref

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da8b588ad75bbac0d376f2746fc662d763a88267`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicEvalTermWithRef.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [evalTermWithRef](declarations/evaltermwithref.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [evalExprWithElab](declarations/evalexprwithelab.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evalTermOrExprWithElab](declarations/evaltermorexprwithelab.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [stripParens](declarations/stripparens.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [EvalTerm.evalTermWithInfo](declarations/evalterm-evaltermwithinfo.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [EvalTerm.evalTermWithInfo'](declarations/evalterm-evaltermwithinfo-source-edition-2.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [EvalExpr.withWHNF](declarations/evalexpr-withwhnf.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ConfigItem.isAnonymous](declarations/configitem-isanonymous.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ConfigItem.root](declarations/configitem-root.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ConfigItem.getRootStr](declarations/configitem-getrootstr.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [ConfigItem.prevRoot?](declarations/configitem-prevroot.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [ConfigItem.prevRoot](declarations/configitem-prevroot-source-edition-2.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ConfigItem.getCurrOptionName](declarations/configitem-getcurroptionname.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [ConfigItem.shift](declarations/configitem-shift.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ConfigItem.checkNotBool](declarations/configitem-checknotbool.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [ConfigItem.throwInvalidOption](declarations/configitem-throwinvalidoption.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [ConfigItem.throwCannotSetOption](declarations/configitem-throwcannotsetoption.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ConfigItem.addConstInfo](declarations/configitem-addconstinfo.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ConfigItem.addCompletionInfo](declarations/configitem-addcompletioninfo.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [foldConfigM](declarations/foldconfigm.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [foldConfigsM](declarations/foldconfigsm.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [EvalConfigItem.trySet](declarations/evalconfigitem-tryset.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [EvalConfigItem.defaultOnErr](declarations/evalconfigitem-defaultonerr.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [EvalConfigItem.setConfig](declarations/evalconfigitem-setconfig-source-edition-2.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [EvalConfigItem.setConfigs](declarations/evalconfigitem-setconfigs-source-edition-2.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [runConfigElab](declarations/runconfigelab.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [EvalConfigItem.setConfig'](declarations/evalconfigitem-setconfig.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [EvalConfigItem.setConfigs'](declarations/evalconfigitem-setconfigs.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ae8d76b6be4550fc90ce738f3ee07a7890659c6a38a3937d0e6b1f6c6a7b877 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
