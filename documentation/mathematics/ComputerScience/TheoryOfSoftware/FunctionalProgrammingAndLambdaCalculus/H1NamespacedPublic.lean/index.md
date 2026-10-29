# H1 Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**103 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e244ad062e99c3043e796a2a97ac54bbdb7a8215`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [StepResult](declarations/stepresult.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [PulledChunk](declarations/pulledchunk.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Machine](declarations/machine.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [modifyWriter](declarations/modifywriter.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [modifyReader](declarations/modifyreader.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [setReaderState](declarations/setreaderstate.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [setWriterState](declarations/setwriterstate.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [addEvent](declarations/addevent.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [setEvent](declarations/setevent.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [setError](declarations/seterror.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [disableKeepAlive](declarations/disablekeepalive.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [setFailure](declarations/setfailure.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [failBadMessage](declarations/failbadmessage.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [updateKeepAlive](declarations/updatekeepalive.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `inductive` | [BodyMode](declarations/bodymode.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [responseMustNotHaveBody](declarations/responsemustnothavebody.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [isValidRequestTargetForMethod](declarations/isvalidrequesttargetformethod.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [isDefaultTunnelPort](declarations/isdefaulttunnelport.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [hostAuthorityMatchesConnectAuthority](declarations/hostauthoritymatchesconnectauthority.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [hasSingleAcceptedHostHeader](declarations/hassingleacceptedhostheader.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [checkReceivingMessageHead](declarations/checkreceivingmessagehead.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [hasFramingHeaders](declarations/hasframingheaders.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [checkSendingMessageHead](declarations/checksendingmessagehead.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [checkMessageHead](declarations/checkmessagehead.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [hasExpectContinue](declarations/hasexpectcontinue.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [normalizeFramingHeaders](declarations/normalizeframingheaders.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [responseForbidsFramingHeaders](declarations/responseforbidsframingheaders.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [drainBodyInternally](declarations/drainbodyinternally.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mkPulledChunk?](declarations/mkpulledchunk.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [fitsBodyLimit](declarations/fitsbodylimit.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [maxBufferedInputBytes](declarations/maxbufferedinputbytes.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [addBodyBytes](declarations/addbodybytes.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [failed](declarations/failed.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [isReaderComplete](declarations/isreadercomplete.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [isReaderClosed](declarations/isreaderclosed.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [isReaderAwaitingContinue](declarations/isreaderawaitingcontinue.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [shouldFlush](declarations/shouldflush.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [isWaitingMessage](declarations/iswaitingmessage.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [halted](declarations/halted.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [canPullBody](declarations/canpullbody.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [canPullBodyNow](declarations/canpullbodynow.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [parseWith](declarations/parsewith.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [resetForNextMessage](declarations/resetfornextmessage.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [exceedsBodyLimitForMode](declarations/exceedsbodylimitformode.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [readerStateForMode](declarations/readerstateformode.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [waitingContinueAfterHeaders](declarations/waitingcontinueafterheaders.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [advanceAfterHeaders](declarations/advanceafterheaders.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [processHeaders](declarations/processheaders.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [writeHead](declarations/writehead.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [feed](declarations/feed.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [closeReader](declarations/closereader.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [closeWriter](declarations/closewriter.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [userClosedBody](declarations/userclosedbody.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [noMoreInput](declarations/nomoreinput.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [setKnownSize](declarations/setknownsize.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [suppressOutgoingBody](declarations/suppressoutgoingbody.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [failOnFramingHeaders](declarations/failonframingheaders.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [reconcileOutgoingFraming](declarations/reconcileoutgoingframing.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [maybeSuppressOutgoingBody](declarations/maybesuppressoutgoingbody.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [isWriterClosed](declarations/iswriterclosed.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [send](declarations/send.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [canContinue](declarations/cancontinue.md) | 961 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [closeWithError](declarations/closewitherror.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [sendData](declarations/senddata.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [takeEvents](declarations/takeevents.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [takeOutput](declarations/takeoutput.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [closeOnBadMessage](declarations/closeonbadmessage.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [bufferedUserDataBytes](declarations/buffereduserdatabytes.md) | 1041 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [processCompleteStep](declarations/processcompletestep.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [completeWriterMessage](declarations/completewritermessage.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [completeOmittedBody](declarations/completeomittedbody.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [processFixedZeroBody](declarations/processfixedzerobody.md) | 1100 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [processFixedBufferedBody](declarations/processfixedbufferedbody.md) | 1115 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [processFixedIdleBody](declarations/processfixedidlebody.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [processFixedBody](declarations/processfixedbody.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [processChunkedBody](declarations/processchunkedbody.md) | 1173 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [processClosingFrameBody](declarations/processclosingframebody.md) | 1186 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [processWrite](declarations/processwrite.md) | 1205 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [errorResponseStatus](declarations/errorresponsestatus.md) | 1240 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [handleReaderFailed](declarations/handlereaderfailed.md) | 1256 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [bodyNoProgress](declarations/bodynoprogress.md) | 1278 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [bodyTooLarge](declarations/bodytoolarge.md) | 1286 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [emitBodyChunk](declarations/emitbodychunk.md) | 1297 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [parseFixedZeroBody](declarations/parsefixedzerobody.md) | 1318 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [parseFixedBody](declarations/parsefixedbody.md) | 1325 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [parseChunkSizeBody](declarations/parsechunksizebody.md) | 1340 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [parseLastChunkBodyState](declarations/parselastchunkbodystate.md) | 1360 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [parseChunkedBodyState](declarations/parsechunkedbodystate.md) | 1372 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [parseCloseDelimitedBody](declarations/parseclosedelimitedbody.md) | 1391 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [parseBody](declarations/parsebody.md) | 1407 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [typedHeader?](declarations/typedheader.md) | 1419 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [classifyStartLineHardError](declarations/classifystartlineharderror.md) | 1426 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [processReceivingStartLine](declarations/processreceivingstartline.md) | 1436 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [processSendingStartLine](declarations/processsendingstartline.md) | 1458 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [processNeedStartLine](declarations/processneedstartline.md) | 1489 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [processParsedHeader](declarations/processparsedheader.md) | 1510 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [processNeedHeader](declarations/processneedheader.md) | 1536 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [processReadBodyState](declarations/processreadbodystate.md) | 1550 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [processReaderCompleteState](declarations/processreadercompletestate.md) | 1561 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [processRead](declarations/processread.md) | 1596 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [step](declarations/step.md) | 1623 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [pullNextChunk](declarations/pullnextchunk.md) | 1635 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [pullBody](declarations/pullbody.md) | 1658 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35f82109a6e32f840314bd1e831595723c54c6468fc512043b398488816768af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
