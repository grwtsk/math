# Explicit RCNamespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant66685bf60b73a066353ebc0f5438e5626535824c45414d2188bb2bc573a1c881.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fccd73159010e91632d3e5eb7c9381f8b9a829b3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DerivedValInfo](declarations/derivedvalinfo.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [DerivedValMap](declarations/derivedvalmap.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [State](declarations/state.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [M](declarations/m.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [addDerivedValue](declarations/addderivedvalue.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [addBorrowedValue](declarations/addborrowedvalue.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [addDerivedLetValue](declarations/addderivedletvalue.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [visitParam](declarations/visitparam.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [removeFromParents](declarations/removefromparents.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [collectCode](declarations/collectcode.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [collect](declarations/collect.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [VarInfo](declarations/varinfo.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [VarMap](declarations/varmap.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [LiveVars](declarations/livevars.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [LiveVars.union](declarations/livevars-union.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [LiveVars.erase](declarations/livevars-erase.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [LiveVars.insertBorrow](declarations/livevars-insertborrow.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [LiveVars.insertLive](declarations/livevars-insertlive.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [JPLiveVarMap](declarations/jplivevarmap.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [Context](declarations/context.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [State](declarations/state-source-edition-2.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [RcM](declarations/rcm.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [getVarInfo](declarations/getvarinfo.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [getJpLiveVars](declarations/getjplivevars.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [isLive](declarations/islive.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [isBorrowed](declarations/isborrowed.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [modifyLive](declarations/modifylive.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [withParams](declarations/withparams.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [withLetDecl](declarations/withletdecl.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [withCtorAlt](declarations/withctoralt.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [withCollectLiveVars](declarations/withcollectlivevars.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [addDescendants](declarations/adddescendants.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [useVar](declarations/usevar.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [useArgs](declarations/useargs.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [useLetValue](declarations/useletvalue.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [bindVar](declarations/bindvar.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [setRetLiveVars](declarations/setretlivevars.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [addInc](declarations/addinc.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [addDec](declarations/adddec.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [addPrologForAlt](declarations/addprologforalt.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [isFirstOcc](declarations/isfirstocc.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [isBorrowParamAux](declarations/isborrowparamaux.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [isBorrowParam](declarations/isborrowparam.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [getNumConsumptions](declarations/getnumconsumptions.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [addIncBeforeAux](declarations/addincbeforeaux.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [addIncBefore](declarations/addincbefore.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [addIncBeforeConsumeAll](declarations/addincbeforeconsumeall.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [addDecAfterFullApp](declarations/adddecafterfullapp.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [addDecIfNeeded](declarations/adddecifneeded.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [addDecForDeadParams](declarations/adddecfordeadparams.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [LetDecl.explicitRc](declarations/letdecl-explicitrc.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [Code.explicitRc](declarations/code-explicitrc.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [Decl.explicitRc](declarations/decl-explicitrc.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [runExplicitRc](declarations/runexplicitrc.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [explicitRc](declarations/explicitrc.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4adbda2462e2aa41cab4b5b17a08f4f4e9834ccf1362831e893c9c306e8777f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant66685bf60b73a066353ebc0f5438e5626535824c45414d2188bb2bc573a1c881.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
