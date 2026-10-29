# File Worker Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf8058ac800a67394e26aa4752539ddd979877c1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FileWorkerPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RefreshInfo](declarations/refreshinfo.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [PartialHandlerInfo](declarations/partialhandlerinfo.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [OutputMessage](declarations/outputmessage.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [OutputMessage.ofLspResponse](declarations/outputmessage-oflspresponse.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [OutputMessage.ofMsg](declarations/outputmessage-ofmsg.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [WorkerContext](declarations/workercontext.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [WorkerContext.modifyGetPartialHandler](declarations/workercontext-modifygetpartialhandler.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [WorkerContext.modifyPartialHandler](declarations/workercontext-modifypartialhandler.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [WorkerContext.updateRequestsInFlight](declarations/workercontext-updaterequestsinflight.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [WorkerContext.initPendingServerRequest](declarations/workercontext-initpendingserverrequest.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [WorkerContext.resolveServerRequestResponse](declarations/workercontext-resolveserverrequestresponse.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mkIleanInfoNotification](declarations/mkileaninfonotification.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkIleanHeaderSetupInfoNotification](declarations/mkileanheadersetupinfonotification.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mkIleanInfoUpdateNotification](declarations/mkileaninfoupdatenotification.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mkIleanInfoFinalNotification](declarations/mkileaninfofinalnotification.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkImportClosureNotification](declarations/mkimportclosurenotification.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [ReportSnapshotsState](declarations/reportsnapshotsstate.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [MemorizedInteractiveDiagnostics](declarations/memorizedinteractivediagnostics.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [publishDiagnostics](declarations/publishdiagnostics.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [reportSnapshots](declarations/reportsnapshots.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [PendingRequest](declarations/pendingrequest.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [PendingRequestMap](declarations/pendingrequestmap.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [AvailableImportsCache](declarations/availableimportscache.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [WorkerState](declarations/workerstate.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [WorkerM](declarations/workerm.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [setupImports](declarations/setupimports.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [initializeWorker](declarations/initializeworker.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [sendServerRequest](declarations/sendserverrequest.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [sendUntypedServerRequest](declarations/senduntypedserverrequest.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [updatePendingRequests](declarations/updatependingrequests.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [updateDocument](declarations/updatedocument.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [handleDidChange](declarations/handledidchange.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [handleCancelRequest](declarations/handlecancelrequest.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [handleStaleDependency](declarations/handlestaledependency.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [handleRpcRelease](declarations/handlerpcrelease.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [handleRpcKeepAlive](declarations/handlerpckeepalive.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [handleRpcConnect](declarations/handlerpcconnect.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [parseParams](declarations/parseparams.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [handleNotification](declarations/handlenotification.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [queueRequest](declarations/queuerequest.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [handleImportCompletionRequest](declarations/handleimportcompletionrequest.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [handleStatefulPreRequestSpecialCases](declarations/handlestatefulprerequestspecialcases.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [handleGetInteractiveDiagnosticsRequest](declarations/handlegetinteractivediagnosticsrequest.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [handlePreRequestSpecialCases?](declarations/handleprerequestspecialcases.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [handlePostRequestSpecialCases](declarations/handlepostrequestspecialcases.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [emitRequestResponse](declarations/emitrequestresponse.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [handleRequest](declarations/handlerequest.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [handleResponse](declarations/handleresponse.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [handleResponseError](declarations/handleresponseerror.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [mainLoop](declarations/mainloop.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [runRefreshTasks](declarations/runrefreshtasks.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [initAndRunWorker](declarations/initandrunworker.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [workerMain](declarations/workermain.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26a31fe4cca0f295568104658e2ece60ddc04d47aff091c2beb675941845ca1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FileWorker/Variantc938b3b122afda96dd4f2a73a39425e60d71845780b6f6d2d3a8a554b2ea3623.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
