# To LCNFPublic

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `855a348185006c9b3aaf13af2db2ac63ba492853`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToLCNFPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [isLCProof](declarations/islcproof.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mkLcProof](declarations/mklcproof.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Element](declarations/element.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [BindCasesM.State](declarations/bindcasesm-state.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [BindCasesM](declarations/bindcasesm.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [bindCases](declarations/bindcases.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [seqToCode](declarations/seqtocode.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [Context](declarations/context.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [CacheKey](declarations/cachekey.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [State](declarations/state.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [M](declarations/m.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [liftMetaM](declarations/liftmetam.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [pushElement](declarations/pushelement.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mkUnreachable](declarations/mkunreachable.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mkAuxLetDecl](declarations/mkauxletdecl.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [letValueToArg](declarations/letvaluetoarg.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [toCode](declarations/tocode.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [run](declarations/run.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [withExpectedType](declarations/withexpectedtype.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [withoutExpectedType](declarations/withoutexpectedtype.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isTypeFormerType](declarations/istypeformertype.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [withNewScope](declarations/withnewscope.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [applyToAny](declarations/applytoany.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [toLCNFType](declarations/tolcnftype.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [cleanupBinderName](declarations/cleanupbindername.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mkParam](declarations/mkparam.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mkLetDecl](declarations/mkletdecl.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [visitLambda](declarations/visitlambda.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [visitBoundedLambda](declarations/visitboundedlambda.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [mustEtaExpand](declarations/mustetaexpand.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [etaExpandN](declarations/etaexpandn.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [checkComputable](declarations/checkcomputable.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [etaReduceImplicit](declarations/etareduceimplicit.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [litToValue](declarations/littovalue.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [toLCNF](declarations/tolcnf.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b06ec2b7a505adff4d9bf639b2cb8484963646076f7912eac25bbc64e6f5fe3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToLCNF/Variant83bffaa6fddff8f743be0f3d0bc1112a1f09403003ac511c115e68a0d578210d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
