# File Worker Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3ccbe3ecb534e94337108b08e68657d0584bbed`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FileWorkerNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RefreshInfo](declarations/refreshinfo.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [PartialHandlerInfo](declarations/partialhandlerinfo.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [OutputMessage](declarations/outputmessage.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [OutputMessage.ofLspResponse](declarations/outputmessage-oflspresponse.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [OutputMessage.ofMsg](declarations/outputmessage-ofmsg.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [WorkerContext](declarations/workercontext.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [WorkerContext.modifyGetPartialHandler](declarations/workercontext-modifygetpartialhandler.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [WorkerContext.modifyPartialHandler](declarations/workercontext-modifypartialhandler.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [WorkerContext.updateRequestsInFlight](declarations/workercontext-updaterequestsinflight.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [WorkerContext.initPendingServerRequest](declarations/workercontext-initpendingserverrequest.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [WorkerContext.resolveServerRequestResponse](declarations/workercontext-resolveserverrequestresponse.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mkIleanInfoNotification](declarations/mkileaninfonotification.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkIleanHeaderSetupInfoNotification](declarations/mkileanheadersetupinfonotification.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mkIleanInfoUpdateNotification](declarations/mkileaninfoupdatenotification.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mkIleanInfoFinalNotification](declarations/mkileaninfofinalnotification.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkImportClosureNotification](declarations/mkimportclosurenotification.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [ReportSnapshotsState](declarations/reportsnapshotsstate.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [MemorizedInteractiveDiagnostics](declarations/memorizedinteractivediagnostics.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [publishDiagnostics](declarations/publishdiagnostics.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [reportSnapshots](declarations/reportsnapshots.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [PendingRequest](declarations/pendingrequest.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [PendingRequestMap](declarations/pendingrequestmap.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [AvailableImportsCache](declarations/availableimportscache.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [WorkerState](declarations/workerstate.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [WorkerM](declarations/workerm.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [setupImports](declarations/setupimports.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [initializeWorker](declarations/initializeworker.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [sendServerRequest](declarations/sendserverrequest.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [sendUntypedServerRequest](declarations/senduntypedserverrequest.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [updatePendingRequests](declarations/updatependingrequests.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [updateDocument](declarations/updatedocument.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [handleDidChange](declarations/handledidchange.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [handleCancelRequest](declarations/handlecancelrequest.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [handleStaleDependency](declarations/handlestaledependency.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [handleRpcRelease](declarations/handlerpcrelease.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [handleRpcKeepAlive](declarations/handlerpckeepalive.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [handleRpcConnect](declarations/handlerpcconnect.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [parseParams](declarations/parseparams.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [handleNotification](declarations/handlenotification.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [queueRequest](declarations/queuerequest.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [handleImportCompletionRequest](declarations/handleimportcompletionrequest.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [handleStatefulPreRequestSpecialCases](declarations/handlestatefulprerequestspecialcases.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [handleGetInteractiveDiagnosticsRequest](declarations/handlegetinteractivediagnosticsrequest.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [handlePreRequestSpecialCases?](declarations/handleprerequestspecialcases.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [handlePostRequestSpecialCases](declarations/handlepostrequestspecialcases.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [emitRequestResponse](declarations/emitrequestresponse.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [handleRequest](declarations/handlerequest.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [handleResponse](declarations/handleresponse.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [handleResponseError](declarations/handleresponseerror.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [mainLoop](declarations/mainloop.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [runRefreshTasks](declarations/runrefreshtasks.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [initAndRunWorker](declarations/initandrunworker.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [workerMain](declarations/workermain.md) | 1086 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b5b8732472e14e39c864d406a3fcbec704f6916354a4f903747b8f04cffaaf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variant638ab0e5c275845ba6fad8b7cd6fdbd588100e5bdc2f15a8ebf083dd9050d5e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
