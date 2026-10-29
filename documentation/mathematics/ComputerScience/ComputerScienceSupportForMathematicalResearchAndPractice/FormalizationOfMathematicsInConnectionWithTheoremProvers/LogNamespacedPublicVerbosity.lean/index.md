# Log Namespaced Public Verbosity

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**143 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variantb58b72d802d5f53b83ebb44d9fd2d78703f61ee249745cfe0f6b5e1a90fae118.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b2fc686a115c8da9127902b45ff3adcd06f7302`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LogNamespacedPublicVerbosity.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Verbosity](declarations/verbosity.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-24.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-32.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [AnsiMode](declarations/ansimode.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [AnsiMode.isEnabled](declarations/ansimode-isenabled.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Ansi.chalk](declarations/ansi-chalk.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [OutStream](declarations/outstream.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [OutStream.get](declarations/outstream-get.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-31.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `inductive` | [LogLevel](declarations/loglevel.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-34.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-21.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [LogLevel.icon](declarations/loglevel-icon.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [LogLevel.ansiColor](declarations/loglevel-ansicolor.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [LogLevel.ofString?](declarations/loglevel-ofstring.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [LogLevel.toString](declarations/loglevel-tostring.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [LogLevel.ofMessageSeverity](declarations/loglevel-ofmessageseverity.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [LogLevel.toMessageSeverity](declarations/loglevel-tomessageseverity.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Verbosity.minLogLv](declarations/verbosity-minloglv.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [LogEntry](declarations/logentry.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [LogEntry.toString](declarations/logentry-tostring.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-37.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [LogEntry.trace](declarations/logentry-trace.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [LogEntry.info](declarations/logentry-info.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [LogEntry.warning](declarations/logentry-warning.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [LogEntry.error](declarations/logentry-error.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [LogEntry.ofSerialMessage](declarations/logentry-ofserialmessage.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [LogEntry.ofMessage](declarations/logentry-ofmessage.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `class` | [MonadLog](declarations/monadlog.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [logVerbose](declarations/logverbose.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [logInfo](declarations/loginfo.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [logWarning](declarations/logwarning.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [logError](declarations/logerror.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [logSerialMessage](declarations/logserialmessage.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [logMessage](declarations/logmessage.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [logToStream](declarations/logtostream.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `abbrev` | [nop](declarations/nop.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-38.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `abbrev` | [lift](declarations/lift.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-25.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `abbrev` | [stream](declarations/stream.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [error](declarations/error.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [OutStream.logEntry](declarations/outstream-logentry.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `abbrev` | [OutStream.logger](declarations/outstream-logger.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `abbrev` | [MonadLog.stdout](declarations/monadlog-stdout.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `abbrev` | [MonadLog.stderr](declarations/monadlog-stderr.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [OutStream.getLogger](declarations/outstream-getlogger.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `abbrev` | [MonadLogT](declarations/monadlogt.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-35.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [adaptMethods](declarations/adaptmethods.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [ignoreLog](declarations/ignorelog.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `structure` | [Log](declarations/log.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance-source-edition-28.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-26.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `structure` | [Log.Pos](declarations/log-pos.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-23.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance-source-edition-30.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-36.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-33.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [empty](declarations/empty.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-29.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [size](declarations/size.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [isEmpty](declarations/isempty.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [hasEntries](declarations/hasentries.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [endPos](declarations/endpos.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [push](declarations/push.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [append](declarations/append.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [extract](declarations/extract.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [dropFrom](declarations/dropfrom.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [takeFrom](declarations/takefrom.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [split](declarations/split.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [toString](declarations/tostring.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [replay](declarations/replay.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [filter](declarations/filter.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [any](declarations/any.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [maxLv](declarations/maxlv.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [pushLogEntry](declarations/pushlogentry.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `abbrev` | [MonadLog.ofMonadState](declarations/monadlog-ofmonadstate.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [getLog](declarations/getlog.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [getLogPos](declarations/getlogpos.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [takeLog](declarations/takelog.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [takeLogFrom](declarations/takelogfrom.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [dropLogFrom](declarations/droplogfrom.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [extractLog](declarations/extractlog.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [withExtractLog](declarations/withextractlog.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [throwIfLogs](declarations/throwiflogs.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [withLogErrorPos](declarations/withlogerrorpos.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [errorWithLog](declarations/errorwithlog.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [withLoggedIO](declarations/withloggedio.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [ELog.error](declarations/elog-error.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `abbrev` | [ELog.monadError](declarations/elog-monaderror.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [ELog.failure](declarations/elog-failure.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [ELog.orElse](declarations/elog-orelse.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `abbrev` | [ELog.alternative](declarations/elog-alternative.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `abbrev` | [LogT](declarations/logt.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `abbrev` | [run](declarations/run-source-edition-6.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `abbrev` | [run'](declarations/run-source-edition-7.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [takeAndRun](declarations/takeandrun.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [replayLog](declarations/replaylog-source-edition-3.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `abbrev` | [ELogT](declarations/elogt.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `abbrev` | [ELogResult](declarations/elogresult.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [(anonymous)](declarations/instance-source-edition-27.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `instance` | [(anonymous)](declarations/instance-source-edition-22.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `abbrev` | [run](declarations/run-source-edition-3.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `abbrev` | [run'](declarations/run-source-edition-8.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `abbrev` | [toLogT](declarations/tologt.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `abbrev` | [toLogT?](declarations/tologt-source-edition-2.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `abbrev` | [run?](declarations/run-source-edition-2.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `abbrev` | [run?'](declarations/run.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [catchLog](declarations/catchlog.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [takeAndRun](declarations/takeandrun-source-edition-2.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [replayLog?](declarations/replaylog.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [replayLog](declarations/replaylog-source-edition-2.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `structure` | [LogConfig](declarations/logconfig.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [LogConfig.getLogger](declarations/logconfig-getlogger.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `abbrev` | [LogIO](declarations/logio.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [toBaseIO](declarations/tobaseio-source-edition-2.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `abbrev` | [captureLog](declarations/capturelog.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `abbrev` | [LoggerIO](declarations/loggerio.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [toBaseIO](declarations/tobaseio.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [captureLog](declarations/capturelog-source-edition-2.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `abbrev` | [run?](declarations/run-source-edition-4.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [run?'](declarations/run-source-edition-5.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab4f23c5cb844d860955eb9e3de48e4af9785922fa23d4f0ce60b9725fc1f1ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Log/Variantb58b72d802d5f53b83ebb44d9fd2d78703f61ee249745cfe0f6b5e1a90fae118.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
