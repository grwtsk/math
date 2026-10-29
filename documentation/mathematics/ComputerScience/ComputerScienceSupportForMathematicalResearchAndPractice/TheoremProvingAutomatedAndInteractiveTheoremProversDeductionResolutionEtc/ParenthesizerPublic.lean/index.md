# Parenthesizer Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**98 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variantc4cdd08609b6da0b0e153a441f216f2ac8242dd9e8e9b8a11d07261206ce31f2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9738d1e854c12ce303f093f67cde2a0703839fd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParenthesizerPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](declarations/context.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [State](declarations/state.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [ParenthesizerM](declarations/parenthesizerm.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Parenthesizer](declarations/parenthesizer.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ParenthesizerM.orElse](declarations/parenthesizerm-orelse.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-2.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [CategoryParenthesizer](declarations/categoryparenthesizer.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-3.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [throwBacktrack](declarations/throwbacktrack.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [addPrecCheck](declarations/addpreccheck.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [visitArgs](declarations/visitargs.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [maybeParenthesize](declarations/maybeparenthesize.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [visitToken](declarations/visittoken.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [orelse.parenthesizer](declarations/orelse-parenthesizer.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [recover.parenthesizer](declarations/recover-parenthesizer-source-edition-2.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [recover'.parenthesizer](declarations/recover-parenthesizer.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `opaque` | [mkAntiquot.parenthesizer'](declarations/mkantiquot-parenthesizer.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [liftCoreM](declarations/liftcorem.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `opaque` | [interpretParserDescr'](declarations/interpretparserdescr.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [parenthesizerForKindUnsafe](declarations/parenthesizerforkindunsafe.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `opaque` | [parenthesizerForKind](declarations/parenthesizerforkind.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [withAntiquot.parenthesizer](declarations/withantiquot-parenthesizer.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [withAntiquotSuffixSplice.parenthesizer](declarations/withantiquotsuffixsplice-parenthesizer.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [tokenWithAntiquot.parenthesizer](declarations/tokenwithantiquot-parenthesizer.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [parenthesizeCategoryCore](declarations/parenthesizecategorycore.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [categoryParser.parenthesizer](declarations/categoryparser-parenthesizer.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [parserOfStack.parenthesizer](declarations/parserofstack-parenthesizer.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [term.parenthesizer](declarations/term-parenthesizer.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [tactic.parenthesizer](declarations/tactic-parenthesizer.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [level.parenthesizer](declarations/level-parenthesizer.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [rawStx.parenthesizer](declarations/rawstx-parenthesizer.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [error.parenthesizer](declarations/error-parenthesizer.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [errorAtSavedPos.parenthesizer](declarations/erroratsavedpos-parenthesizer.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [atomic.parenthesizer](declarations/atomic-parenthesizer.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [lookahead.parenthesizer](declarations/lookahead-parenthesizer.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [notFollowedBy.parenthesizer](declarations/notfollowedby-parenthesizer.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [andthen.parenthesizer](declarations/andthen-parenthesizer.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [checkKind](declarations/checkkind.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [node.parenthesizer](declarations/node-parenthesizer.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [checkPrec.parenthesizer](declarations/checkprec-parenthesizer.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [withFn.parenthesizer](declarations/withfn-parenthesizer.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [leadingNode.parenthesizer](declarations/leadingnode-parenthesizer.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [trailingNode.parenthesizer](declarations/trailingnode-parenthesizer.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [rawCh.parenthesizer](declarations/rawch-parenthesizer.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [symbolNoAntiquot.parenthesizer](declarations/symbolnoantiquot-parenthesizer.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [nonReservedSymbolNoAntiquot.parenthesizer](declarations/nonreservedsymbolnoantiquot-parenthesizer.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [unicodeSymbolNoAntiquot.parenthesizer](declarations/unicodesymbolnoantiquot-parenthesizer.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [identNoAntiquot.parenthesizer](declarations/identnoantiquot-parenthesizer.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [rawIdentNoAntiquot.parenthesizer](declarations/rawidentnoantiquot-parenthesizer.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [identEq.parenthesizer](declarations/identeq-parenthesizer.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [charLitNoAntiquot.parenthesizer](declarations/charlitnoantiquot-parenthesizer.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [strLitNoAntiquot.parenthesizer](declarations/strlitnoantiquot-parenthesizer.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [nameLitNoAntiquot.parenthesizer](declarations/namelitnoantiquot-parenthesizer.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [numLitNoAntiquot.parenthesizer](declarations/numlitnoantiquot-parenthesizer.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [scientificLitNoAntiquot.parenthesizer](declarations/scientificlitnoantiquot-parenthesizer.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [fieldIdx.parenthesizer](declarations/fieldidx-parenthesizer.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [manyNoAntiquot.parenthesizer](declarations/manynoantiquot-parenthesizer.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [many1NoAntiquot.parenthesizer](declarations/many1noantiquot-parenthesizer.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [many1Unbox.parenthesizer](declarations/many1unbox-parenthesizer.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [optionalNoAntiquot.parenthesizer](declarations/optionalnoantiquot-parenthesizer.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [sepByNoAntiquot.parenthesizer](declarations/sepbynoantiquot-parenthesizer.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [sepBy1NoAntiquot.parenthesizer](declarations/sepby1noantiquot-parenthesizer.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [withPosition.parenthesizer](declarations/withposition-parenthesizer.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [withPositionAfterLinebreak.parenthesizer](declarations/withpositionafterlinebreak-parenthesizer.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [withoutInfo.parenthesizer](declarations/withoutinfo-parenthesizer.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [checkStackTop.parenthesizer](declarations/checkstacktop-parenthesizer.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [checkWsBefore.parenthesizer](declarations/checkwsbefore-parenthesizer.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [checkNoWsBefore.parenthesizer](declarations/checknowsbefore-parenthesizer.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [checkLinebreakBefore.parenthesizer](declarations/checklinebreakbefore-parenthesizer.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [checkTailWs.parenthesizer](declarations/checktailws-parenthesizer.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [checkColEq.parenthesizer](declarations/checkcoleq-parenthesizer.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [checkColGe.parenthesizer](declarations/checkcolge-parenthesizer.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [checkColGt.parenthesizer](declarations/checkcolgt-parenthesizer.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [checkLineEq.parenthesizer](declarations/checklineeq-parenthesizer.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [eoi.parenthesizer](declarations/eoi-parenthesizer.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [checkNoImmediateColon.parenthesizer](declarations/checknoimmediatecolon-parenthesizer.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [skip.parenthesizer](declarations/skip-parenthesizer.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [pushNone.parenthesizer](declarations/pushnone-parenthesizer.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [hygieneInfoNoAntiquot.parenthesizer](declarations/hygieneinfonoantiquot-parenthesizer.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [interpolatedStr.parenthesizer](declarations/interpolatedstr-parenthesizer.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [hexnum.parenthesizer](declarations/hexnum-parenthesizer.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [ite](declarations/ite.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `abbrev` | [ParenthesizerAliasValue](declarations/parenthesizeraliasvalue.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-4.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [registerAlias](declarations/registeralias.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [(anonymous)](declarations/instance.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [parenthesize](declarations/parenthesize.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [parenthesizeCategory](declarations/parenthesizecategory.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [parenthesizeTerm](declarations/parenthesizeterm.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [parenthesizeTactic](declarations/parenthesizetactic.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [parenthesizeCommand](declarations/parenthesizecommand.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-5.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4974abd31e861222ee26515071343fa40e628a6d4d7dc381e14b6acafcd5787 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variantc4cdd08609b6da0b0e153a441f216f2ac8242dd9e8e9b8a11d07261206ce31f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
