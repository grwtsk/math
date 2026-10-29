# Compiler MNamespaced Public Phase

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**89 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantb8fa8ab142ee950a013890bda94d2272c06e34cffca71e8afe55da03b0bcc836.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd464ab07750f699b5847fb3bae2487d8c3668a0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMNamespacedPublicPhase.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Phase](declarations/phase.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Phase.toPurity](declarations/phase-topurity.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [CompilerM.State](declarations/compilerm-state.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [CompilerM.Context](declarations/compilerm-context.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [CompilerM](declarations/compilerm.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [withPhase](declarations/withphase.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [getPhase](declarations/getphase.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [getPurity](declarations/getpurity.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [inBasePhase](declarations/inbasephase.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [getType](declarations/gettype.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [getBinderName](declarations/getbindername.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [findParam?](declarations/findparam.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [findLetDecl?](declarations/findletdecl.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [findFunDecl?](declarations/findfundecl.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [findLetValue?](declarations/findletvalue.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [isConstructorApp](declarations/isconstructorapp.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Arg.isConstructorApp](declarations/arg-isconstructorapp.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [getParam](declarations/getparam.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [getLetDecl](declarations/getletdecl.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [getFunDecl](declarations/getfundecl.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [modifyLCtx](declarations/modifylctx.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [eraseLetDecl](declarations/eraseletdecl.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [eraseFunDecl](declarations/erasefundecl.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [eraseCode](declarations/erasecode.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [eraseParam](declarations/eraseparam.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [eraseParams](declarations/eraseparams.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [eraseCodeDecl](declarations/erasecodedecl.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [eraseCodeDecls](declarations/erasecodedecls.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [eraseDecl](declarations/erasedecl.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [Decl.erase](declarations/decl-erase.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [FVarSubst](declarations/fvarsubst.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [normExprImp](declarations/normexprimp.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `inductive` | [NormFVarResult](declarations/normfvarresult.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [normFVarImp](declarations/normfvarimp.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [normArgImp](declarations/normargimp.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [normArgsImp](declarations/normargsimp.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [normLetValueImp](declarations/normletvalueimp.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `class` | [MonadFVarSubst](declarations/monadfvarsubst.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `class` | [MonadFVarSubstState](declarations/monadfvarsubststate.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [addSubst](declarations/addsubst.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [addFVarSubst](declarations/addfvarsubst.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [normFVar](declarations/normfvar.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [normExpr](declarations/normexpr.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [normArg](declarations/normarg.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [normLetValue](declarations/normletvalue.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [normExprCore](declarations/normexprcore.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [normArgs](declarations/normargs.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [mkFreshBinderName](declarations/mkfreshbindername.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [ensureNotAnonymous](declarations/ensurenotanonymous.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [mkParam](declarations/mkparam.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [mkLetDecl](declarations/mkletdecl.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [mkFunDecl](declarations/mkfundecl.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [mkLetDeclErased](declarations/mkletdeclerased.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [mkReturnErased](declarations/mkreturnerased.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [updateParamImp](declarations/updateparamimp.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `opaque` | [Param.update](declarations/param-update.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [updateParamBorrowImp](declarations/updateparamborrowimp.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `opaque` | [Param.updateBorrow](declarations/param-updateborrow.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [updateLetDeclImp](declarations/updateletdeclimp.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `opaque` | [LetDecl.update](declarations/letdecl-update.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [LetDecl.updateValue](declarations/letdecl-updatevalue.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [updateFunDeclImp](declarations/updatefundeclimp.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `opaque` | [FunDecl.update](declarations/fundecl-update.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `abbrev` | [FunDecl.update'](declarations/fundecl-update-source-edition-2.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `abbrev` | [FunDecl.updateValue](declarations/fundecl-updatevalue.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [normParam](declarations/normparam.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [normParams](declarations/normparams.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [normLetDecl](declarations/normletdecl.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `abbrev` | [NormalizerM](declarations/normalizerm.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [withNormFVarResult](declarations/withnormfvarresult.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [normFunDeclImp](declarations/normfundeclimp.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [normCodeImp](declarations/normcodeimp.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [normFunDecl](declarations/normfundecl.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [normCode](declarations/normcode.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [replaceExprFVars](declarations/replaceexprfvars.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [replaceFVars](declarations/replacefvars.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [mkFreshJpName](declarations/mkfreshjpname.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [mkAuxParam](declarations/mkauxparam.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [getConfig](declarations/getconfig.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [CompilerM.run](declarations/compilerm-run.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `structure` | [CacheExtension](declarations/cacheextension.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [register](declarations/register.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [insert](declarations/insert.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [find?](declarations/find.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28a1921a83834819774acf99659f9cb4977f7b5f51b89062bff00acf9cb3f294 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variantb8fa8ab142ee950a013890bda94d2272c06e34cffca71e8afe55da03b0bcc836.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
