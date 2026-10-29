# Basic Basic Namespaced Public Fun Id

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**88 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant49d221efd24db57acd9d64d1bd8002f92d056a16a38f7e19fd2a6778ae0e506a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8b29f559a3be0a469e4963bd24f62fc7c044162`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicFunId.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FunId](declarations/funid.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Index](declarations/index.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [VarId](declarations/varid.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [JoinPointId](declarations/joinpointid.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [Index.lt](declarations/index-lt.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [IRType](declarations/irtype.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [isScalar](declarations/isscalar.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [isObj](declarations/isobj.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [isPossibleRef](declarations/ispossibleref.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [isDefiniteRef](declarations/isdefiniteref.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [isErased](declarations/iserased.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [isVoid](declarations/isvoid.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [boxed](declarations/boxed.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `inductive` | [Arg](declarations/arg.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Arg.beq](declarations/arg-beq.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [LitVal](declarations/litval.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [CtorInfo](declarations/ctorinfo.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [CtorInfo.isRef](declarations/ctorinfo-isref.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [CtorInfo.isScalar](declarations/ctorinfo-isscalar.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [CtorInfo.type](declarations/ctorinfo-type.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [Expr](declarations/expr.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [Param](declarations/param.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `inductive` | [Alt](declarations/alt.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `inductive` | [FnBody](declarations/fnbody.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [FnBody.nil](declarations/fnbody-nil.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [FnBody.isTerminal](declarations/fnbody-isterminal.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FnBody.body](declarations/fnbody-body.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [FnBody.setBody](declarations/fnbody-setbody.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [FnBody.resetBody](declarations/fnbody-resetbody.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [FnBody.split](declarations/fnbody-split.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Alt.body](declarations/alt-body.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Alt.setBody](declarations/alt-setbody.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Alt.modifyBody](declarations/alt-modifybody.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Alt.modifyBodyM](declarations/alt-modifybodym.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Alt.isDefault](declarations/alt-isdefault.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [push](declarations/push.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [flattenAux](declarations/flattenaux.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [FnBody.flatten](declarations/fnbody-flatten.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [reshapeAux](declarations/reshapeaux.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [reshape](declarations/reshape.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [modifyJPs](declarations/modifyjps.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [modifyJPsM](declarations/modifyjpsm.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [DeclInfo](declarations/declinfo.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `inductive` | [Decl](declarations/decl.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [name](declarations/name.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [params](declarations/params.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [resultType](declarations/resulttype.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [isExtern](declarations/isextern.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [getInfo](declarations/getinfo.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [updateBody!](declarations/updatebody.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [mkDummyExternDecl](declarations/mkdummyexterndecl.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `abbrev` | [IndexSet](declarations/indexset.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [mkIndexSet](declarations/mkindexset.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `inductive` | [LocalContextEntry](declarations/localcontextentry.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [LocalContext](declarations/localcontext.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [LocalContext.addLocal](declarations/localcontext-addlocal.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [LocalContext.addJP](declarations/localcontext-addjp.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [LocalContext.addParam](declarations/localcontext-addparam.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [LocalContext.addParams](declarations/localcontext-addparams.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [LocalContext.isJP](declarations/localcontext-isjp.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [LocalContext.getJPBody](declarations/localcontext-getjpbody.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [LocalContext.getJPParams](declarations/localcontext-getjpparams.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [LocalContext.isParam](declarations/localcontext-isparam.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [LocalContext.isLocalVar](declarations/localcontext-islocalvar.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [LocalContext.contains](declarations/localcontext-contains.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [LocalContext.eraseJoinPointDecl](declarations/localcontext-erasejoinpointdecl.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [LocalContext.getType](declarations/localcontext-gettype.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [LocalContext.getValue](declarations/localcontext-getvalue.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `abbrev` | [IndexRenaming](declarations/indexrenaming.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `class` | [AlphaEqv](declarations/alphaeqv.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [VarId.alphaEqv](declarations/varid-alphaeqv.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [Arg.alphaEqv](declarations/arg-alphaeqv.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [args.alphaEqv](declarations/args-alphaeqv.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Expr.alphaEqv](declarations/expr-alphaeqv.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [addVarRename](declarations/addvarrename.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [addParamRename](declarations/addparamrename.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [addParamsRename](declarations/addparamsrename.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [FnBody.alphaEqv](declarations/fnbody-alphaeqv.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [FnBody.beq](declarations/fnbody-beq.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `abbrev` | [VarIdSet](declarations/varidset.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [mkIf](declarations/mkif.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [getUnboxOpName](declarations/getunboxopname.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b4a6a74c4582ad4f6e4690a1a048df4cd735c4f6b6204c5323c75fca23ee8bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant49d221efd24db57acd9d64d1bd8002f92d056a16a38f7e19fd2a6778ae0e506a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
