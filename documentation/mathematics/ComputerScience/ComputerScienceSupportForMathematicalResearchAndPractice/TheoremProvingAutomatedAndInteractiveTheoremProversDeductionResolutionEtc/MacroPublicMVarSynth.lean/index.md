# Macro Public MVar Synth

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80dd26726f6355f44af9535c64e12a255ff5f39e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MacroPublicMVarSynth.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [ExprBackSubstResult](declarations/exprbacksubstresult.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [MVarSynth](declarations/mvarsynth.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [UnquoteState](declarations/unquotestate.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [UnquoteM](declarations/unquotem.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [QuoteM](declarations/quotem.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [determineLocalInstances](declarations/determinelocalinstances.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [withUnquotedLCtx](declarations/withunquotedlctx.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [addDollar](declarations/adddollar.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [removeDollar](declarations/removedollar.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [stripDollars](declarations/stripdollars.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [addSyntaxDollar](declarations/addsyntaxdollar.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkAbstractedLevelName](declarations/mkabstractedlevelname.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [isAssignablePattern](declarations/isassignablepattern.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [isBad](declarations/isbad.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [whnf](declarations/whnf.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [whnfR](declarations/whnfr.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [unquoteLevel](declarations/unquotelevel.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [unquoteLevelMVar](declarations/unquotelevelmvar.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [unquoteLevelList](declarations/unquotelevellist.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [mkAbstractedName](declarations/mkabstractedname.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `opaque` | [betaRev'](declarations/betarev.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [makeZetaReduce](declarations/makezetareduce.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [makeDefEq](declarations/makedefeq.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [unquoteExprList](declarations/unquoteexprlist.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [unquoteExprMVar](declarations/unquoteexprmvar.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [unquoteExpr](declarations/unquoteexpr.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [substLevel](declarations/substlevel.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [unquoteLevelLCtx](declarations/unquotelevellctx.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [unquoteLCtx](declarations/unquotelctx.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [isLevelFVar](declarations/islevelfvar.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [quoteLevel](declarations/quotelevel.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [quoteLevelList](declarations/quotelevellist.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [quoteExpr](declarations/quoteexpr.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [quoteLCtx](declarations/quotelctx.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [unquoteMVarCore](declarations/unquotemvarcore.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [unquoteMVar](declarations/unquotemvar.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [MVarSynth.isAssigned](declarations/mvarsynth-isassigned.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [MVarSynth.synth](declarations/mvarsynth-synth.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [lctxHasMVar](declarations/lctxhasmvar.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [withProcessPostponed](declarations/withprocesspostponed.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Impl.UnquoteState.withLevelNames](declarations/impl-unquotestate-withlevelnames.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `elab` | [(anonymous)](declarations/elab.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `syntax` | [(anonymous)](declarations/syntax-source-edition-3.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [Impl.macro](declarations/impl-macro.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `syntax` | [(anonymous)](declarations/syntax-source-edition-2.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `macro_rules` | [(anonymous)](declarations/macro-rules-source-edition-2.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `elab_rules` | [(anonymous)](declarations/elab-rules-source-edition-2.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `syntax` | [(anonymous)](declarations/syntax.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `macro_rules` | [(anonymous)](declarations/macro-rules-source-edition-4.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `elab_rules` | [(anonymous)](declarations/elab-rules.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [push](declarations/push.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [floatLevelAntiquot'](declarations/floatlevelantiquot.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [floatExprAntiquot'](declarations/floatexprantiquot-source-edition-2.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [floatExprAntiquot](declarations/floatexprantiquot.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `macro_rules` | [(anonymous)](declarations/macro-rules-source-edition-3.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2c60bc4c697576dcfeef8d9f5e849ca3263473ad19f617dddb660dbbf87796a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
