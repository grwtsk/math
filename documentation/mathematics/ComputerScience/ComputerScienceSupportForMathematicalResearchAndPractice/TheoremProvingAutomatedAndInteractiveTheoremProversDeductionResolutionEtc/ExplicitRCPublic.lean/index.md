# Explicit RCPublic

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b7ef1e41b5cea84d054d59625e52fafc96b4c26`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExplicitRCPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DerivedValInfo](declarations/derivedvalinfo.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [DerivedValMap](declarations/derivedvalmap.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [State](declarations/state-source-edition-2.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [M](declarations/m.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [addDerivedValue](declarations/addderivedvalue.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [addBorrowedValue](declarations/addborrowedvalue.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [addDerivedLetValue](declarations/addderivedletvalue.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [visitParam](declarations/visitparam.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [removeFromParents](declarations/removefromparents.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [collectCode](declarations/collectcode.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [collect](declarations/collect.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [VarInfo](declarations/varinfo.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [VarMap](declarations/varmap.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [LiveVars](declarations/livevars.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [LiveVars.union](declarations/livevars-union.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [LiveVars.erase](declarations/livevars-erase.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [LiveVars.insertBorrow](declarations/livevars-insertborrow.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [LiveVars.insertLive](declarations/livevars-insertlive.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [JPLiveVarMap](declarations/jplivevarmap.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [Context](declarations/context.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [State](declarations/state.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [RcM](declarations/rcm.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [getVarInfo](declarations/getvarinfo.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [getJpLiveVars](declarations/getjplivevars.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [isLive](declarations/islive.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [isBorrowed](declarations/isborrowed.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [modifyLive](declarations/modifylive.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [withParams](declarations/withparams.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [withLetDecl](declarations/withletdecl.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [withCtorAlt](declarations/withctoralt.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [withCollectLiveVars](declarations/withcollectlivevars.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [addDescendants](declarations/adddescendants.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [useVar](declarations/usevar.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [useArgs](declarations/useargs.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [useLetValue](declarations/useletvalue.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [bindVar](declarations/bindvar.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [setRetLiveVars](declarations/setretlivevars.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [addInc](declarations/addinc.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [addDec](declarations/adddec.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [addPrologForAlt](declarations/addprologforalt.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [isFirstOcc](declarations/isfirstocc.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [isBorrowParamAux](declarations/isborrowparamaux.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [isBorrowParam](declarations/isborrowparam.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [getNumConsumptions](declarations/getnumconsumptions.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [addIncBeforeAux](declarations/addincbeforeaux.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [addIncBefore](declarations/addincbefore.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [addIncBeforeConsumeAll](declarations/addincbeforeconsumeall.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [addDecAfterFullApp](declarations/adddecafterfullapp.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [addDecIfNeeded](declarations/adddecifneeded.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [addDecForDeadParams](declarations/adddecfordeadparams.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [LetDecl.explicitRc](declarations/letdecl-explicitrc.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [Code.explicitRc](declarations/code-explicitrc.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [Decl.explicitRc](declarations/decl-explicitrc.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [runExplicitRc](declarations/runexplicitrc.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [explicitRc](declarations/explicitrc.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fc41c1c685aaa4f1db9a4f71271023751f0917dea04ebeba895ae01d45ee2c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitRC/Variant92ddda0e93a0736bcc7bd9accbe702e60c9bf613313a90c34f1b2a46bb6ca1b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
