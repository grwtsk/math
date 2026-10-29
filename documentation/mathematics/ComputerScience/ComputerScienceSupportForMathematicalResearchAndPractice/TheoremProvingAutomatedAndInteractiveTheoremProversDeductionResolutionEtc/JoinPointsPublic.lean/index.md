# Join Points Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e7b71069eeecf913d3110300cf46d26b1a343b6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/JoinPointsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [CandidateInfo](declarations/candidateinfo.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [FindCtx](declarations/findctx.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [FindState](declarations/findstate.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [FindM](declarations/findm.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [ReplaceCtx](declarations/replacectx.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [ReplaceM](declarations/replacem.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [findCandidate?](declarations/findcandidate.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [modifyCandidates](declarations/modifycandidates.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [eraseCandidate](declarations/erasecandidate.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [removeCandidatesInArg](declarations/removecandidatesinarg.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [removeCandidatesInLetValue](declarations/removecandidatesinletvalue.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [addCandidate](declarations/addcandidate.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [addDependency](declarations/adddependency.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [withFnBody](declarations/withfnbody.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [withFnDefined](declarations/withfndefined.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [find](declarations/find.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [replace](declarations/replace.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [ExtendContext](declarations/extendcontext.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [ExtendState](declarations/extendstate.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [ExtendM](declarations/extendm.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [replaceFVar](declarations/replacefvar.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [withNewCandidate](declarations/withnewcandidate.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [withNewCandidates](declarations/withnewcandidates.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [extendByIfNecessary](declarations/extendbyifnecessary.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mergeJpContextIfNecessary](declarations/mergejpcontextifnecessary.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [withNewFunScope](declarations/withnewfunscope.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [withNewJpScope](declarations/withnewjpscope.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [withNewAltScope](declarations/withnewaltscope.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [extend](declarations/extend.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [AnalysisCtx](declarations/analysisctx.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [AnalysisState](declarations/analysisstate.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [ReduceAnalysisM](declarations/reduceanalysism.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [ReduceActionM](declarations/reduceactionm.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [isInJpScope](declarations/isinjpscope.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [reduce](declarations/reduce.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Decl.findJoinPoints?](declarations/decl-findjoinpoints-source-edition-2.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Decl.findJoinPoints](declarations/decl-findjoinpoints.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [findJoinPoints](declarations/findjoinpoints.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Decl.extendJoinPointContext](declarations/decl-extendjoinpointcontext.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [extendJoinPointContext](declarations/extendjoinpointcontext.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-3.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [Decl.commonJoinPointArgs](declarations/decl-commonjoinpointargs.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [commonJoinPointArgs](declarations/commonjoinpointargs.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-2.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c55434a3c79815f9547ca1adedc9e10816d86580030c1bb19b159ea83d263821 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JoinPoints/Variant01c47cca071403dd1eaf967aae1be0f1ec5dce852db59651618d64a2eb0a83da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
