# Syntax Namespaced Public Lean

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**95 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ae2f43f42bcee91140c4db6987b1b19bb78e887`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SyntaxNamespacedPublicLean.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Lean.Syntax.Range](declarations/lean-syntax-range.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Lean.Syntax.Range.contains](declarations/lean-syntax-range-contains.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Lean.Syntax.Range.includes](declarations/lean-syntax-range-includes.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Lean.Syntax.Range.overlaps](declarations/lean-syntax-range-overlaps.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Lean.Syntax.Range.bsize](declarations/lean-syntax-range-bsize.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [SourceInfo.updateTrailing](declarations/sourceinfo-updatetrailing.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [SourceInfo.getRange?](declarations/sourceinfo-getrange.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SourceInfo.getRangeWithTrailing?](declarations/sourceinfo-getrangewithtrailing.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [SourceInfo.nonCanonicalSynthetic](declarations/sourceinfo-noncanonicalsynthetic.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [IsNode](declarations/isnode.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [SyntaxNode](declarations/syntaxnode.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [unreachIsNodeMissing](declarations/unreachisnodemissing.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [unreachIsNodeAtom](declarations/unreachisnodeatom.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [unreachIsNodeIdent](declarations/unreachisnodeident.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [isLitKind](declarations/islitkind.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [getKind](declarations/getkind.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [withArgs](declarations/withargs.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [getNumArgs](declarations/getnumargs.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getArg](declarations/getarg.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [getArgs](declarations/getargs.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [modifyArgs](declarations/modifyargs.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [structRangeEq](declarations/structrangeeq.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [structRangeEqWithTraceReuse](declarations/structrangeeqwithtracereuse.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [eqWithInfo](declarations/eqwithinfo.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [eqWithInfoAndTraceReuse](declarations/eqwithinfoandtracereuse.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [getAtomVal](declarations/getatomval.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [setAtomVal](declarations/setatomval.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ifNode](declarations/ifnode.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [ifNodeKind](declarations/ifnodekind.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [asNode](declarations/asnode.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [getIdAt](declarations/getidat-source-edition-2.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [hasIdent](declarations/hasident.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [modifyArgs](declarations/modifyargs-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [modifyArg](declarations/modifyarg.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [replaceM](declarations/replacem.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [rewriteBottomUpM](declarations/rewritebottomupm.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [rewriteBottomUp](declarations/rewritebottomup.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [updateInfo](declarations/updateinfo.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [chooseNiceTrailStop](declarations/choosenicetrailstop.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [updateLeadingAux](declarations/updateleadingaux.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [updateLeading](declarations/updateleading.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [updateTrailing](declarations/updatetrailing.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [identComponents](declarations/identcomponents.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [TopDown](declarations/topdown-source-edition-2.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [topDown](declarations/topdown.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [reprint](declarations/reprint.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [hasMissing](declarations/hasmissing.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [getRange?](declarations/getrange.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [getRangeWithTrailing?](declarations/getrangewithtrailing.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [ofRange](declarations/ofrange.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [Traverser](declarations/traverser.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [fromSyntax](declarations/fromsyntax.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [setCur](declarations/setcur-source-edition-2.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [down](declarations/down.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [up](declarations/up.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [left](declarations/left.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [right](declarations/right.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `class` | [MonadTraverser](declarations/monadtraverser.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [getCur](declarations/getcur.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [setCur](declarations/setcur.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [goDown](declarations/godown.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [goUp](declarations/goup.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [goLeft](declarations/goleft.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [goRight](declarations/goright.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [getIdx](declarations/getidx.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [getIdAt](declarations/getidat.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [mkListNode](declarations/mklistnode.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [isQuot](declarations/isquot.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [getQuotContent](declarations/getquotcontent.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [isAntiquot](declarations/isantiquot.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [isAntiquots](declarations/isantiquots.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [getCanonicalAntiquot](declarations/getcanonicalantiquot.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [mkAntiquotNode](declarations/mkantiquotnode.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [isEscapedAntiquot](declarations/isescapedantiquot.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [unescapeAntiquot](declarations/unescapeantiquot.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [getAntiquotTerm](declarations/getantiquotterm.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [antiquotKind?](declarations/antiquotkind.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [antiquotKinds](declarations/antiquotkinds.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [antiquotSpliceKind?](declarations/antiquotsplicekind.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [isAntiquotSplice](declarations/isantiquotsplice.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [getAntiquotSpliceContents](declarations/getantiquotsplicecontents.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [getAntiquotSpliceSuffix](declarations/getantiquotsplicesuffix.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [mkAntiquotSpliceNode](declarations/mkantiquotsplicenode.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [antiquotSuffixSplice?](declarations/antiquotsuffixsplice.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [isAntiquotSuffixSplice](declarations/isantiquotsuffixsplice.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [getAntiquotSuffixSpliceInner](declarations/getantiquotsuffixspliceinner.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [mkAntiquotSuffixSpliceNode](declarations/mkantiquotsuffixsplicenode.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [isTokenAntiquot](declarations/istokenantiquot.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [isAnyAntiquot](declarations/isanyantiquot.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `abbrev` | [Stack](declarations/stack.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [findStack?](declarations/findstack.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [Stack.matches](declarations/stack-matches.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [addTrailing?](declarations/addtrailing-source-edition-2.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [addTrailing](declarations/addtrailing.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae6e9e19adad08616f98155baabc0efc134627c5946b89a34164a708bc7c23bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant0ff05f35682b9082a3e6b8d19a81cdbdc1820cae57f7b7d6fc6c79f02402ddd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
