# Watchdog Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**131 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dedb28154c483633b49a12d1689938209c1531c4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/WatchdogPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [workerCfg](declarations/workercfg.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [WorkerEvent](declarations/workerevent.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [WorkerState](declarations/workerstate.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [parseParams](declarations/parseparams.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [RequestQueueMap](declarations/requestqueuemap.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [empty](declarations/empty.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [enqueue](declarations/enqueue.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [erase](declarations/erase-source-edition-2.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [get?](declarations/get.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [contains](declarations/contains-source-edition-3.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [RequestData](declarations/requestdata.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [empty](declarations/empty-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [clearWorkerRequestData](declarations/clearworkerrequestdata.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [enqueue](declarations/enqueue-source-edition-2.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [erase](declarations/erase.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [contains](declarations/contains-source-edition-2.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getUri?](declarations/geturi-source-edition-2.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [getRequest?](declarations/getrequest.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [getRequestQueue](declarations/getrequestqueue.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [RequestDataMutex](declarations/requestdatamutex.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [new](declarations/new.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [clearWorkerRequestData](declarations/clearworkerrequestdata-source-edition-2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [enqueue](declarations/enqueue-source-edition-3.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [erase](declarations/erase-source-edition-3.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [contains](declarations/contains.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [getUri?](declarations/geturi.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [getRequestQueue](declarations/getrequestqueue-source-edition-2.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [FileWorker](declarations/fileworker.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [stdin](declarations/stdin.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stdout](declarations/stdout.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [waitForProc](declarations/waitforproc.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [killProcAndWait](declarations/killprocandwait.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [ImportMap](declarations/importmap.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [ImportData](declarations/importdata.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [ImportData.update](declarations/importdata-update.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [ImportData.eraseImportsOf](declarations/importdata-eraseimportsof.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [RequestIDTranslation](declarations/requestidtranslation.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `abbrev` | [PendingServerRequestMap](declarations/pendingserverrequestmap.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [ServerRequestData](declarations/serverrequestdata.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [ServerRequestData.trackOutboundRequest](declarations/serverrequestdata-trackoutboundrequest.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [ServerRequestData.translateInboundResponse](declarations/serverrequestdata-translateinboundresponse.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [WaitForILeanRequest](declarations/waitforileanrequest.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [ReferenceData](declarations/referencedata.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ReferenceData.modifyReferences](declarations/referencedata-modifyreferences.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [ReferenceData.modifyReferencesM](declarations/referencedata-modifyreferencesm.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [ReferenceData.modifyPendingWaitForILeanRequests](declarations/referencedata-modifypendingwaitforileanrequests.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [ReferenceData.modifyFinalizedWorkerILeanVersions](declarations/referencedata-modifyfinalizedworkerileanversions.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `inductive` | [LogMsg](declarations/logmsg.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `structure` | [LogData](declarations/logdata.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [ServerContext](declarations/servercontext.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `structure` | [ReferenceRequestContext](declarations/referencerequestcontext.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `abbrev` | [ServerM](declarations/serverm.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [readMessage](declarations/readmessage.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [writeMessage](declarations/writemessage.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [writeSerializedMessage](declarations/writeserializedmessage.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [updateFileWorkers](declarations/updatefileworkers.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [getReferences](declarations/getreferences.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [modifyReferences](declarations/modifyreferences.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [modifyReferencesIO](declarations/modifyreferencesio.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [getFileWorker?](declarations/getfileworker.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [fileWorkerExists](declarations/fileworkerexists.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [eraseFileWorker](declarations/erasefileworker.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [setWorkerState](declarations/setworkerstate.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [getWorkerState](declarations/getworkerstate.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [errorPendingRequests](declarations/errorpendingrequests.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [eraseGetPendingRequest](declarations/erasegetpendingrequest.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [erasePendingRequest](declarations/erasependingrequest.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [handleILeanHeaderSetupInfo](declarations/handleileanheadersetupinfo.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [handleIleanInfoUpdate](declarations/handleileaninfoupdate.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [handleIleanInfoFinal](declarations/handleileaninfofinal.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [emitServerRequestResponse](declarations/emitserverrequestresponse.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [emitServerRequestResponseError](declarations/emitserverrequestresponseerror.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `structure` | [ModuleQueryMatchScore](declarations/modulequerymatchscore.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [ModuleQueryMatchScore.compare](declarations/modulequerymatchscore-compare.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `structure` | [ModuleQueryMatch](declarations/modulequerymatch.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [ModuleQueryMatch.fastCompare](declarations/modulequerymatch-fastcompare.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [ModuleQueryMatch.compare](declarations/modulequerymatch-compare.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [matchAgainstQuery?](declarations/matchagainstquery.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [handleQueryModule](declarations/handlequerymodule.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [handleImportClosure](declarations/handleimportclosure.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [findDefinitions](declarations/finddefinitions.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [parseRequestParams?](declarations/parserequestparams.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [parseNotificationParams?](declarations/parsenotificationparams.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [parseResponseResult?](declarations/parseresponseresult.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [bendLocationLinks](declarations/bendlocationlinks.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [handleResponseSpecialCases](declarations/handleresponsespecialcases.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [forwardMessages](declarations/forwardmessages.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [startFileWorker](declarations/startfileworker.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [terminateFileWorker](declarations/terminatefileworker.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [tryWriteMessage](declarations/trywritemessage.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [notifyAboutStaleDependency](declarations/notifyaboutstaledependency.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [handleReference](declarations/handlereference.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `structure` | [CallHierarchyItemData](declarations/callhierarchyitemdata.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [CallHierarchyItemData.fromItem?](declarations/callhierarchyitemdata-fromitem.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [callHierarchyItemOf?](declarations/callhierarchyitemof.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [handlePrepareCallHierarchy](declarations/handlepreparecallhierarchy.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [handleCallHierarchyIncomingCalls](declarations/handlecallhierarchyincomingcalls.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [handleCallHierarchyOutgoingCalls](declarations/handlecallhierarchyoutgoingcalls.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [handlePrepareModuleHierarchy](declarations/handlepreparemodulehierarchy.md) | 1141 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [sortModuleImports](declarations/sortmoduleimports.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [handleModuleHierarchyImports](declarations/handlemodulehierarchyimports.md) | 1151 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [handleModuleHierarchyImportedBy](declarations/handlemodulehierarchyimportedby.md) | 1164 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [handleWorkspaceSymbol](declarations/handleworkspacesymbol.md) | 1174 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [handlePrepareRename](declarations/handlepreparerename.md) | 1199 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [handleRename](declarations/handlerename.md) | 1207 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [handleDidOpen](declarations/handledidopen.md) | 1228 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [handleDidChange](declarations/handledidchange.md) | 1242 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [handleDidSave](declarations/handledidsave.md) | 1266 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [handleDidClose](declarations/handledidclose.md) | 1277 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [handleDidChangeWatchedFiles](declarations/handledidchangewatchedfiles.md) | 1280 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [handleCancelRequest](declarations/handlecancelrequest.md) | 1310 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [forwardNotification](declarations/forwardnotification.md) | 1316 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [forwardRequestToWorker](declarations/forwardrequesttoworker.md) | 1322 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [handleReferenceRequest](declarations/handlereferencerequest.md) | 1349 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [handleRequest](declarations/handlerequest.md) | 1371 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `def` | [handleNotification](declarations/handlenotification.md) | 1437 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [handleResponse](declarations/handleresponse.md) | 1460 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [handleResponseError](declarations/handleresponseerror.md) | 1465 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [shutdown](declarations/shutdown.md) | 1477 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `inductive` | [ServerEvent](declarations/serverevent.md) | 1485 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [runClientTask](declarations/runclienttask.md) | 1490 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [mainLoop](declarations/mainloop.md) | 1501 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [mkLeanServerCapabilities](declarations/mkleanservercapabilities.md) | 1558 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [initAndRunWatchdogAux](declarations/initandrunwatchdogaux.md) | 1612 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [findWorkerPath](declarations/findworkerpath.md) | 1663 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [startLoadingReferences](declarations/startloadingreferences.md) | 1678 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [runMessageLoggingTask](declarations/runmessageloggingtask.md) | 1696 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [initAndRunWatchdog](declarations/initandrunwatchdog.md) | 1722 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [watchdogMain](declarations/watchdogmain.md) | 1776 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06a1dded4bd6a2ba4a382852244828f48456bb01938517bbc84fecd0aaeee050 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variantb7effb6f7e34f7a3b634cf6b4dc3772ddf1ccbfc418f351115755b85e8a5e642.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
