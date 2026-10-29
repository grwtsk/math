# Basic Basic Public Fun Id

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**88 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f67ddee0a326b2caae8bbcaab2488a99823bf0d10da7c3a17bd7972e4723d25.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `015625ea663b40ca53ede1d4c221358c4a685d5a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicFunId.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FunId](declarations/funid.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Index](declarations/index.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [VarId](declarations/varid.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [JoinPointId](declarations/joinpointid.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [Index.lt](declarations/index-lt.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [IRType](declarations/irtype.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [isScalar](declarations/isscalar.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [isObj](declarations/isobj.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [isPossibleRef](declarations/ispossibleref.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [isDefiniteRef](declarations/isdefiniteref.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [isErased](declarations/iserased.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [isVoid](declarations/isvoid.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [boxed](declarations/boxed.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `inductive` | [Arg](declarations/arg.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Arg.beq](declarations/arg-beq.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [LitVal](declarations/litval.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [CtorInfo](declarations/ctorinfo.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [CtorInfo.isRef](declarations/ctorinfo-isref.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [CtorInfo.isScalar](declarations/ctorinfo-isscalar.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [CtorInfo.type](declarations/ctorinfo-type.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [Expr](declarations/expr.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [Param](declarations/param.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `inductive` | [Alt](declarations/alt.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `inductive` | [FnBody](declarations/fnbody.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [FnBody.nil](declarations/fnbody-nil.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [FnBody.isTerminal](declarations/fnbody-isterminal.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FnBody.body](declarations/fnbody-body.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [FnBody.setBody](declarations/fnbody-setbody.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [FnBody.resetBody](declarations/fnbody-resetbody.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [FnBody.split](declarations/fnbody-split.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Alt.body](declarations/alt-body.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Alt.setBody](declarations/alt-setbody.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Alt.modifyBody](declarations/alt-modifybody.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Alt.modifyBodyM](declarations/alt-modifybodym.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Alt.isDefault](declarations/alt-isdefault.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [push](declarations/push.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [flattenAux](declarations/flattenaux.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [FnBody.flatten](declarations/fnbody-flatten.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [reshapeAux](declarations/reshapeaux.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [reshape](declarations/reshape.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [modifyJPs](declarations/modifyjps.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [modifyJPsM](declarations/modifyjpsm.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [DeclInfo](declarations/declinfo.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `inductive` | [Decl](declarations/decl.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [name](declarations/name.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [params](declarations/params.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [resultType](declarations/resulttype.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [isExtern](declarations/isextern.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [getInfo](declarations/getinfo.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [updateBody!](declarations/updatebody.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [mkDummyExternDecl](declarations/mkdummyexterndecl.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `abbrev` | [IndexSet](declarations/indexset.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [mkIndexSet](declarations/mkindexset.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `inductive` | [LocalContextEntry](declarations/localcontextentry.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [LocalContext](declarations/localcontext.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [LocalContext.addLocal](declarations/localcontext-addlocal.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [LocalContext.addJP](declarations/localcontext-addjp.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [LocalContext.addParam](declarations/localcontext-addparam.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [LocalContext.addParams](declarations/localcontext-addparams.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [LocalContext.isJP](declarations/localcontext-isjp.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [LocalContext.getJPBody](declarations/localcontext-getjpbody.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [LocalContext.getJPParams](declarations/localcontext-getjpparams.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [LocalContext.isParam](declarations/localcontext-isparam.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [LocalContext.isLocalVar](declarations/localcontext-islocalvar.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [LocalContext.contains](declarations/localcontext-contains.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [LocalContext.eraseJoinPointDecl](declarations/localcontext-erasejoinpointdecl.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [LocalContext.getType](declarations/localcontext-gettype.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [LocalContext.getValue](declarations/localcontext-getvalue.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `abbrev` | [IndexRenaming](declarations/indexrenaming.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `class` | [AlphaEqv](declarations/alphaeqv.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [VarId.alphaEqv](declarations/varid-alphaeqv.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [Arg.alphaEqv](declarations/arg-alphaeqv.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [args.alphaEqv](declarations/args-alphaeqv.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Expr.alphaEqv](declarations/expr-alphaeqv.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [addVarRename](declarations/addvarrename.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [addParamRename](declarations/addparamrename.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [addParamsRename](declarations/addparamsrename.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [FnBody.alphaEqv](declarations/fnbody-alphaeqv.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [FnBody.beq](declarations/fnbody-beq.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `abbrev` | [VarIdSet](declarations/varidset.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [mkIf](declarations/mkif.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [getUnboxOpName](declarations/getunboxopname.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f45095194499452b02323e40bcbec5c0b5032a15a3bb46051497a4d9ea1e3cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f67ddee0a326b2caae8bbcaab2488a99823bf0d10da7c3a17bd7972e4723d25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
