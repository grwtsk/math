# Simp Lemmas Namespaced Public Reader TRun

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**92 observed declarations and anonymous commands**, 92 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant4f8c7fb82d67c60b04f124bbbc25e6a18b5c77b3eba0d8c97d8354ab5503abee.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5d092fd5ae70a181c6af0cb256a09e5e5c7eb43`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpLemmasNamespacedPublicReaderTRun.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [ReaderT_run](declarations/readert-run.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [StateT_run](declarations/statet-run.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ExceptT_run](declarations/exceptt-run.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [OptionT_run](declarations/optiont-run.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [pure](declarations/pure.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [bind](declarations/bind.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [map](declarations/map.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [seq](declarations/seq.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [monadLift_StateT](declarations/monadlift-statet.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [monadLift_ReaderT](declarations/monadlift-readert.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [monadLift_ExceptT](declarations/monadlift-exceptt.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [monadLift_OptionT](declarations/monadlift-optiont.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [monadLift_trans](declarations/monadlift-trans.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [monadLift_refl](declarations/monadlift-refl.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lift_StateT](declarations/lift-statet.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lift_ExceptT](declarations/lift-exceptt.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lift_OptionT](declarations/lift-optiont.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [read_MonadReaderOf](declarations/read-monadreaderof.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [readThe_MonadReaderOf](declarations/readthe-monadreaderof.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [read_MonadReader](declarations/read-monadreader.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [get_MonadStateOf](declarations/get-monadstateof.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [get_MonadState](declarations/get-monadstate.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [getThe_MonadStateOf](declarations/getthe-monadstateof.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [set_MonadStateOf](declarations/set-monadstateof.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [set_MonadState](declarations/set-monadstate.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [modifyGet_MonadStateOf](declarations/modifyget-monadstateof.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [modifyGet_MonadState](declarations/modifyget-monadstate.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [modifyGetThe_MonadStateOf](declarations/modifygetthe-monadstateof.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [modify_MonadStateOf](declarations/modify-monadstateof.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [modifyThe_MonadStateOf](declarations/modifythe-monadstateof.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [getModify_MonadStateOf](declarations/getmodify-monadstateof.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [read_ReaderT](declarations/read-readert.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [adapt_ReaderT](declarations/adapt-readert.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [get_StateT](declarations/get-statet.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [set_StateT](declarations/set-statet.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [modifyGet_StateT](declarations/modifyget-statet.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [adapt_ExceptT](declarations/adapt-exceptt.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [get_EStateM](declarations/get-estatem.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [set_EStateM](declarations/set-estatem.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [modifyGet_EStateM](declarations/modifyget-estatem.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [adaptExcept_EStateM](declarations/adaptexcept-estatem.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [monadMap_StateT](declarations/monadmap-statet.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [monadMap_ReaderT](declarations/monadmap-readert.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [monadMap_ExceptT](declarations/monadmap-exceptt.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [monadMap_OptionT](declarations/monadmap-optiont.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [monadMap_trans](declarations/monadmap-trans.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [monadMap_refl](declarations/monadmap-refl.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [withReader_ReaderT](declarations/withreader-readert.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [withReader_MonadWithReaderOf](declarations/withreader-monadwithreaderof.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [withReader_MonadWithReader](declarations/withreader-monadwithreader.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [withTheReader_MonadWithReaderOf](declarations/withthereader-monadwithreaderof.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [liftWith_StateT](declarations/liftwith-statet.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [liftWith_ReaderT](declarations/liftwith-readert.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [liftWith_ExceptT](declarations/liftwith-exceptt.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [liftWith_OptionT](declarations/liftwith-optiont.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [liftWith_trans](declarations/liftwith-trans.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [liftWith_refl](declarations/liftwith-refl.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [restoreM_StateT](declarations/restorem-statet.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [restoreM_ReaderT](declarations/restorem-readert.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [restoreM_ExceptT](declarations/restorem-exceptt.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [restoreM_OptionT](declarations/restorem-optiont.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [restoreM_trans](declarations/restorem-trans.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [restoreM_refl](declarations/restorem-refl.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [controlAt_MonadControlT](declarations/controlat-monadcontrolt.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [control_MonadControlT](declarations/control-monadcontrolt.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [throw_MonadExcept](declarations/throw-monadexcept.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [throwThe](declarations/throwthe.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [throw_Except](declarations/throw-except.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [throw_ExceptT](declarations/throw-exceptt.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [throw_Option](declarations/throw-option.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [throw_OptionT](declarations/throw-optiont.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [throw_EStateM](declarations/throw-estatem.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [throw_ReaderT](declarations/throw-readert.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [throw_StateT](declarations/throw-statet.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [throw_lift_ExceptT](declarations/throw-lift-exceptt.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [throw_lift_OptionT](declarations/throw-lift-optiont.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [tryCatch_MonadExcept](declarations/trycatch-monadexcept.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [tryCatchThe](declarations/trycatchthe.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [tryCatch_Except](declarations/trycatch-except.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [tryCatch_ExceptT](declarations/trycatch-exceptt.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [tryCatch_Option](declarations/trycatch-option.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [tryCatch_OptionT](declarations/trycatch-optiont.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [tryCatch_EStateM](declarations/trycatch-estatem.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [tryCatch_ReaderT](declarations/trycatch-readert.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [tryCatch_StateT](declarations/trycatch-statet.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [tryCatch_lift_ExceptT](declarations/trycatch-lift-exceptt.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [tryCatch_lift_OptionT](declarations/trycatch-lift-optiont.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [orElse_EStateM](declarations/orelse-estatem.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [orElse_Except](declarations/orelse-except.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [orElse_ExceptT](declarations/orelse-exceptt.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [orElse_Option](declarations/orelse-option.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [orElse_OptionT](declarations/orelse-optiont.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca7d46ce11dd2c5cd8c628b8eab189cab931b073e67bf94c540720129de2a55a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpLemmas/Variant4f8c7fb82d67c60b04f124bbbc25e6a18b5c77b3eba0d8c97d8354ab5503abee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
