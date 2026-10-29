# Syntax Public Lean

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**95 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant09d5f566052ea955fa734ec8c836abde0143472a852e2e37fb994366279bc658.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a17195ddf4be1b4cdc46b257d1506a6febe1af2c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxPublicLean.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Lean.Syntax.Range](declarations/lean-syntax-range.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Lean.Syntax.Range.contains](declarations/lean-syntax-range-contains.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Lean.Syntax.Range.includes](declarations/lean-syntax-range-includes.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Lean.Syntax.Range.overlaps](declarations/lean-syntax-range-overlaps.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Lean.Syntax.Range.bsize](declarations/lean-syntax-range-bsize.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [SourceInfo.updateTrailing](declarations/sourceinfo-updatetrailing.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [SourceInfo.getRange?](declarations/sourceinfo-getrange.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SourceInfo.getRangeWithTrailing?](declarations/sourceinfo-getrangewithtrailing.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [SourceInfo.nonCanonicalSynthetic](declarations/sourceinfo-noncanonicalsynthetic.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [IsNode](declarations/isnode.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [SyntaxNode](declarations/syntaxnode.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [unreachIsNodeMissing](declarations/unreachisnodemissing.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [unreachIsNodeAtom](declarations/unreachisnodeatom.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [unreachIsNodeIdent](declarations/unreachisnodeident.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [isLitKind](declarations/islitkind.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [getKind](declarations/getkind.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [withArgs](declarations/withargs.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [getNumArgs](declarations/getnumargs.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getArg](declarations/getarg.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [getArgs](declarations/getargs.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [modifyArgs](declarations/modifyargs.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [structRangeEq](declarations/structrangeeq.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [structRangeEqWithTraceReuse](declarations/structrangeeqwithtracereuse.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [eqWithInfo](declarations/eqwithinfo.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [eqWithInfoAndTraceReuse](declarations/eqwithinfoandtracereuse.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [getAtomVal](declarations/getatomval.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [setAtomVal](declarations/setatomval.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ifNode](declarations/ifnode.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [ifNodeKind](declarations/ifnodekind.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [asNode](declarations/asnode.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [getIdAt](declarations/getidat.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [hasIdent](declarations/hasident.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [modifyArgs](declarations/modifyargs-source-edition-2.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [modifyArg](declarations/modifyarg.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [replaceM](declarations/replacem.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [rewriteBottomUpM](declarations/rewritebottomupm.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [rewriteBottomUp](declarations/rewritebottomup.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [updateInfo](declarations/updateinfo.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [chooseNiceTrailStop](declarations/choosenicetrailstop.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [updateLeadingAux](declarations/updateleadingaux.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [updateLeading](declarations/updateleading.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [updateTrailing](declarations/updatetrailing.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [identComponents](declarations/identcomponents.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [TopDown](declarations/topdown-source-edition-2.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [topDown](declarations/topdown.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [reprint](declarations/reprint.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [hasMissing](declarations/hasmissing.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [getRange?](declarations/getrange.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [getRangeWithTrailing?](declarations/getrangewithtrailing.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [ofRange](declarations/ofrange.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [Traverser](declarations/traverser.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [fromSyntax](declarations/fromsyntax.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [setCur](declarations/setcur.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [down](declarations/down.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [up](declarations/up.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [left](declarations/left.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [right](declarations/right.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `class` | [MonadTraverser](declarations/monadtraverser.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [getCur](declarations/getcur.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [setCur](declarations/setcur-source-edition-2.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [goDown](declarations/godown.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [goUp](declarations/goup.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [goLeft](declarations/goleft.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [goRight](declarations/goright.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [getIdx](declarations/getidx.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [getIdAt](declarations/getidat-source-edition-2.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [mkListNode](declarations/mklistnode.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [isQuot](declarations/isquot.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [getQuotContent](declarations/getquotcontent.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [isAntiquot](declarations/isantiquot.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [isAntiquots](declarations/isantiquots.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [getCanonicalAntiquot](declarations/getcanonicalantiquot.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [mkAntiquotNode](declarations/mkantiquotnode.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [isEscapedAntiquot](declarations/isescapedantiquot.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [unescapeAntiquot](declarations/unescapeantiquot.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [getAntiquotTerm](declarations/getantiquotterm.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [antiquotKind?](declarations/antiquotkind.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [antiquotKinds](declarations/antiquotkinds.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [antiquotSpliceKind?](declarations/antiquotsplicekind.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [isAntiquotSplice](declarations/isantiquotsplice.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [getAntiquotSpliceContents](declarations/getantiquotsplicecontents.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [getAntiquotSpliceSuffix](declarations/getantiquotsplicesuffix.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [mkAntiquotSpliceNode](declarations/mkantiquotsplicenode.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [antiquotSuffixSplice?](declarations/antiquotsuffixsplice.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [isAntiquotSuffixSplice](declarations/isantiquotsuffixsplice.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [getAntiquotSuffixSpliceInner](declarations/getantiquotsuffixspliceinner.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [mkAntiquotSuffixSpliceNode](declarations/mkantiquotsuffixsplicenode.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [isTokenAntiquot](declarations/istokenantiquot.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [isAnyAntiquot](declarations/isanyantiquot.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `abbrev` | [Stack](declarations/stack.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [findStack?](declarations/findstack.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [Stack.matches](declarations/stack-matches.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [addTrailing?](declarations/addtrailing.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [addTrailing](declarations/addtrailing-source-edition-2.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afe9013e43ca8185d283ad3f5493691a9a5efb6d373d1f901f1285b1f5c047c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant09d5f566052ea955fa734ec8c836abde0143472a852e2e37fb994366279bc658.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
