# Widget Library Rewrite Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant56ebb8d660651653f9bfe719837cc214248b19cd42e30ec6181916594bae4ecf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0a5a65b9e2d0cabd8a46a05baeeb364331aa3dc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/WidgetLibraryRewritePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RewriteLemma](declarations/rewritelemma.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [isMVarSwap](declarations/ismvarswap.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [eqOrIff?](declarations/eqoriff.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [addRewriteEntry](declarations/addrewriteentry.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [addLocalRewriteEntry](declarations/addlocalrewriteentry.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [ExtState](declarations/extstate.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `initialize` | [(anonymous)](declarations/initialize-source-edition-3.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `initialize` | [(anonymous)](declarations/initialize-source-edition-2.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [getImportCandidates](declarations/getimportcandidates.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [getModuleCandidates](declarations/getmodulecandidates.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [Rewrite](declarations/rewrite.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [checkRewrite](declarations/checkrewrite.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `initialize` | [(anonymous)](declarations/initialize.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [checkAndSortRewriteLemmas](declarations/checkandsortrewritelemmas.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [getImportRewrites](declarations/getimportrewrites.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [getModuleRewrites](declarations/getmodulerewrites.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getHypotheses](declarations/gethypotheses.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [getHypothesisRewrites](declarations/gethypothesisrewrites.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [getBinderInfos](declarations/getbinderinfos.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [isExplicitEq](declarations/isexpliciteq.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [filterRewrites](declarations/filterrewrites.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [mkRewrite](declarations/mkrewrite.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [tacticPasteString](declarations/tacticpastestring.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [tacticSyntax](declarations/tacticsyntax.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [RewriteInterface](declarations/rewriteinterface.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Rewrite.toInterface](declarations/rewrite-tointerface.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `inductive` | [Kind](declarations/kind.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [getRewriteInterfaces](declarations/getrewriteinterfaces.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [pattern](declarations/pattern.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [renderRewrites](declarations/renderrewrites.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [rpc](declarations/rpc.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [LibraryRewriteComponent](declarations/libraryrewritecomponent.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `elab` | [(anonymous)](declarations/elab.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Rewrite.toMessageData](declarations/rewrite-tomessagedata.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [SectionToMessageData](declarations/sectiontomessagedata.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `syntax` | [(anonymous)](declarations/syntax.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [elabrw??Command](declarations/elabrw-command.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8d4338d46a6a5dd6ad15891f060f1686ecb9a30789330a6b49242a06d456938 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant56ebb8d660651653f9bfe719837cc214248b19cd42e30ec6181916594bae4ecf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
