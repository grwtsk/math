# Widget Library Rewrite Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant8e8918ef9b3eec1ec92956d4849dcfcfedf26ab8b3750b7bdc94dda042793998.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c93fa01e4ac2ff2255298b779d4bc4edbb82ae93`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/WidgetLibraryRewriteNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RewriteLemma](declarations/rewritelemma.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [isMVarSwap](declarations/ismvarswap.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [eqOrIff?](declarations/eqoriff.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [addRewriteEntry](declarations/addrewriteentry.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [addLocalRewriteEntry](declarations/addlocalrewriteentry.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [ExtState](declarations/extstate.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `initialize` | [(anonymous)](declarations/initialize-source-edition-2.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `initialize` | [(anonymous)](declarations/initialize-source-edition-3.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [getImportCandidates](declarations/getimportcandidates.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [getModuleCandidates](declarations/getmodulecandidates.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [Rewrite](declarations/rewrite.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [checkRewrite](declarations/checkrewrite.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `initialize` | [(anonymous)](declarations/initialize.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [checkAndSortRewriteLemmas](declarations/checkandsortrewritelemmas.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [getImportRewrites](declarations/getimportrewrites.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [getModuleRewrites](declarations/getmodulerewrites.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getHypotheses](declarations/gethypotheses.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [getHypothesisRewrites](declarations/gethypothesisrewrites.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [getBinderInfos](declarations/getbinderinfos.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [isExplicitEq](declarations/isexpliciteq.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [filterRewrites](declarations/filterrewrites.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [mkRewrite](declarations/mkrewrite.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [tacticPasteString](declarations/tacticpastestring.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [tacticSyntax](declarations/tacticsyntax.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [RewriteInterface](declarations/rewriteinterface.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Rewrite.toInterface](declarations/rewrite-tointerface.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `inductive` | [Kind](declarations/kind.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [getRewriteInterfaces](declarations/getrewriteinterfaces.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [pattern](declarations/pattern.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [renderRewrites](declarations/renderrewrites.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [rpc](declarations/rpc.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [LibraryRewriteComponent](declarations/libraryrewritecomponent.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `elab` | [(anonymous)](declarations/elab.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Rewrite.toMessageData](declarations/rewrite-tomessagedata.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [SectionToMessageData](declarations/sectiontomessagedata.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `syntax` | [(anonymous)](declarations/syntax.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [elabrw??Command](declarations/elabrw-command.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b365f558327139aca70c505b7d136e8166301164de01d0a8b59beb40a258f50 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant8e8918ef9b3eec1ec92956d4849dcfcfedf26ab8b3750b7bdc94dda042793998.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
