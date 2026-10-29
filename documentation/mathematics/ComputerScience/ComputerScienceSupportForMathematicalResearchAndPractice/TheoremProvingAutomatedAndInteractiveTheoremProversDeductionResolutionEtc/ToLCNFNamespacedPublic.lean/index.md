# To LCNFNamespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9900b6b8e441e5bb8f21a9b575b6eff78c654d7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToLCNFNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [isLCProof](declarations/islcproof.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mkLcProof](declarations/mklcproof.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Element](declarations/element.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [BindCasesM.State](declarations/bindcasesm-state.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [BindCasesM](declarations/bindcasesm.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [bindCases](declarations/bindcases.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [seqToCode](declarations/seqtocode.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [Context](declarations/context.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [CacheKey](declarations/cachekey.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [State](declarations/state.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [M](declarations/m.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [liftMetaM](declarations/liftmetam.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [pushElement](declarations/pushelement.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mkUnreachable](declarations/mkunreachable.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mkAuxLetDecl](declarations/mkauxletdecl.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [letValueToArg](declarations/letvaluetoarg.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [toCode](declarations/tocode.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [run](declarations/run.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [withExpectedType](declarations/withexpectedtype.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [withoutExpectedType](declarations/withoutexpectedtype.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isTypeFormerType](declarations/istypeformertype.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [withNewScope](declarations/withnewscope.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [applyToAny](declarations/applytoany.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [toLCNFType](declarations/tolcnftype.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [cleanupBinderName](declarations/cleanupbindername.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mkParam](declarations/mkparam.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mkLetDecl](declarations/mkletdecl.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [visitLambda](declarations/visitlambda.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [visitBoundedLambda](declarations/visitboundedlambda.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [mustEtaExpand](declarations/mustetaexpand.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [etaExpandN](declarations/etaexpandn.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [checkComputable](declarations/checkcomputable.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [etaReduceImplicit](declarations/etareduceimplicit.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [litToValue](declarations/littovalue.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [toLCNF](declarations/tolcnf.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=870c8668ad36896fac337345da6ce0f7853e4bedc00a7c9e22a488526246cb77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variantb7d21ce49a9de666235533a6a451ae1c9b5e71ee23f82882d5b6752e2b36fe80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
