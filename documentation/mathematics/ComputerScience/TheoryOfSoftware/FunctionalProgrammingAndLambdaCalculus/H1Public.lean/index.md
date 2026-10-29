# H1 Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**103 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebfa37bf07bbdf9ecde9e0ba367ba6db9b9b9c35`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [StepResult](declarations/stepresult.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [PulledChunk](declarations/pulledchunk.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Machine](declarations/machine.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [modifyWriter](declarations/modifywriter.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [modifyReader](declarations/modifyreader.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [setReaderState](declarations/setreaderstate.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [setWriterState](declarations/setwriterstate.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [addEvent](declarations/addevent.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [setEvent](declarations/setevent.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [setError](declarations/seterror.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [disableKeepAlive](declarations/disablekeepalive.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [setFailure](declarations/setfailure.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [failBadMessage](declarations/failbadmessage.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [updateKeepAlive](declarations/updatekeepalive.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `inductive` | [BodyMode](declarations/bodymode.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [responseMustNotHaveBody](declarations/responsemustnothavebody.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [isValidRequestTargetForMethod](declarations/isvalidrequesttargetformethod.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [isDefaultTunnelPort](declarations/isdefaulttunnelport.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [hostAuthorityMatchesConnectAuthority](declarations/hostauthoritymatchesconnectauthority.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [hasSingleAcceptedHostHeader](declarations/hassingleacceptedhostheader.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [checkReceivingMessageHead](declarations/checkreceivingmessagehead.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [hasFramingHeaders](declarations/hasframingheaders.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [checkSendingMessageHead](declarations/checksendingmessagehead.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [checkMessageHead](declarations/checkmessagehead.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [hasExpectContinue](declarations/hasexpectcontinue.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [normalizeFramingHeaders](declarations/normalizeframingheaders.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [responseForbidsFramingHeaders](declarations/responseforbidsframingheaders.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [drainBodyInternally](declarations/drainbodyinternally.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mkPulledChunk?](declarations/mkpulledchunk.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [fitsBodyLimit](declarations/fitsbodylimit.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [maxBufferedInputBytes](declarations/maxbufferedinputbytes.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [addBodyBytes](declarations/addbodybytes.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [failed](declarations/failed.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [isReaderComplete](declarations/isreadercomplete.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [isReaderClosed](declarations/isreaderclosed.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [isReaderAwaitingContinue](declarations/isreaderawaitingcontinue.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [shouldFlush](declarations/shouldflush.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [isWaitingMessage](declarations/iswaitingmessage.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [halted](declarations/halted.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [canPullBody](declarations/canpullbody.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [canPullBodyNow](declarations/canpullbodynow.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [parseWith](declarations/parsewith.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [resetForNextMessage](declarations/resetfornextmessage.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [exceedsBodyLimitForMode](declarations/exceedsbodylimitformode.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [readerStateForMode](declarations/readerstateformode.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [waitingContinueAfterHeaders](declarations/waitingcontinueafterheaders.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [advanceAfterHeaders](declarations/advanceafterheaders.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [processHeaders](declarations/processheaders.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [writeHead](declarations/writehead.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [feed](declarations/feed.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [closeReader](declarations/closereader.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [closeWriter](declarations/closewriter.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [userClosedBody](declarations/userclosedbody.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [noMoreInput](declarations/nomoreinput.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [setKnownSize](declarations/setknownsize.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [suppressOutgoingBody](declarations/suppressoutgoingbody.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [failOnFramingHeaders](declarations/failonframingheaders.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [reconcileOutgoingFraming](declarations/reconcileoutgoingframing.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [maybeSuppressOutgoingBody](declarations/maybesuppressoutgoingbody.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [isWriterClosed](declarations/iswriterclosed.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [send](declarations/send.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [canContinue](declarations/cancontinue.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [closeWithError](declarations/closewitherror.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [sendData](declarations/senddata.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [takeEvents](declarations/takeevents.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [takeOutput](declarations/takeoutput.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [closeOnBadMessage](declarations/closeonbadmessage.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [bufferedUserDataBytes](declarations/buffereduserdatabytes.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [processCompleteStep](declarations/processcompletestep.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [completeWriterMessage](declarations/completewritermessage.md) | 1072 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [completeOmittedBody](declarations/completeomittedbody.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [processFixedZeroBody](declarations/processfixedzerobody.md) | 1092 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [processFixedBufferedBody](declarations/processfixedbufferedbody.md) | 1107 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [processFixedIdleBody](declarations/processfixedidlebody.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [processFixedBody](declarations/processfixedbody.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [processChunkedBody](declarations/processchunkedbody.md) | 1165 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [processClosingFrameBody](declarations/processclosingframebody.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [processWrite](declarations/processwrite.md) | 1197 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [errorResponseStatus](declarations/errorresponsestatus.md) | 1232 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [handleReaderFailed](declarations/handlereaderfailed.md) | 1248 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [bodyNoProgress](declarations/bodynoprogress.md) | 1270 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [bodyTooLarge](declarations/bodytoolarge.md) | 1278 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [emitBodyChunk](declarations/emitbodychunk.md) | 1289 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [parseFixedZeroBody](declarations/parsefixedzerobody.md) | 1310 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [parseFixedBody](declarations/parsefixedbody.md) | 1317 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [parseChunkSizeBody](declarations/parsechunksizebody.md) | 1332 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [parseLastChunkBodyState](declarations/parselastchunkbodystate.md) | 1352 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [parseChunkedBodyState](declarations/parsechunkedbodystate.md) | 1364 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [parseCloseDelimitedBody](declarations/parseclosedelimitedbody.md) | 1383 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [parseBody](declarations/parsebody.md) | 1399 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [typedHeader?](declarations/typedheader.md) | 1411 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [classifyStartLineHardError](declarations/classifystartlineharderror.md) | 1418 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [processReceivingStartLine](declarations/processreceivingstartline.md) | 1428 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [processSendingStartLine](declarations/processsendingstartline.md) | 1450 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [processNeedStartLine](declarations/processneedstartline.md) | 1481 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [processParsedHeader](declarations/processparsedheader.md) | 1502 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [processNeedHeader](declarations/processneedheader.md) | 1528 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [processReadBodyState](declarations/processreadbodystate.md) | 1542 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [processReaderCompleteState](declarations/processreadercompletestate.md) | 1553 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [processRead](declarations/processread.md) | 1588 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [step](declarations/step.md) | 1615 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [pullNextChunk](declarations/pullnextchunk.md) | 1627 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [pullBody](declarations/pullbody.md) | 1650 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=311dd221287df1ceca195300ffb08e41cddb75c9799eaf339163a0c4b8c5f944 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
