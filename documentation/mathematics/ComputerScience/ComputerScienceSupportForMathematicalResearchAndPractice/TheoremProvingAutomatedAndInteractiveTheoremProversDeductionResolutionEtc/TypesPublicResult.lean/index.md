# Types Public Result

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**105 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `478b7f82f24f885dac2cb1113f049505ee5d7b8d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TypesPublicResult.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Result](declarations/result.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mkEqTransOptProofResult](declarations/mkeqtransoptproofresult.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Result.mkEqTrans](declarations/result-mkeqtrans.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Result.mkEqSymm](declarations/result-mkeqsymm.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [Cache](declarations/cache.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [CongrCache](declarations/congrcache.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Context](declarations/context.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [updateArith](declarations/updatearith.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mkIndexConfig](declarations/mkindexconfig.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mkMetaConfig](declarations/mkmetaconfig.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [mkContext](declarations/mkcontext.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Context.setConfig](declarations/context-setconfig.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Context.setSimpTheorems](declarations/context-setsimptheorems.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Context.setLctxInitIndices](declarations/context-setlctxinitindices.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Context.setAutoUnfold](declarations/context-setautounfold.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Context.setFailIfUnchanged](declarations/context-setfailifunchanged.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Context.setMemoize](declarations/context-setmemoize.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Context.setZetaDeltaSet](declarations/context-setzetadeltaset.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Context.isDeclToUnfold](declarations/context-isdecltounfold.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [UsedSimps](declarations/usedsimps.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [UsedSimps.contains](declarations/usedsimps-contains.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [UsedSimps.insert](declarations/usedsimps-insert.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [UsedSimps.toArray](declarations/usedsimps-toarray.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [Diagnostics](declarations/diagnostics.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [State](declarations/state.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [Stats](declarations/stats.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `opaque` | [MethodsRefPointed](declarations/methodsrefpointed.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [MethodsRef](declarations/methodsref.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [SimpM](declarations/simpm.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [withIncDischargeDepth](declarations/withincdischargedepth.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [withSimpTheorems](declarations/withsimptheorems.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [withInDSimp](declarations/withindsimp.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [withInDSimpWithCache](declarations/withindsimpwithcache.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [withSimpIndexConfig](declarations/withsimpindexconfig.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [withSimpMetaConfig](declarations/withsimpmetaconfig.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `opaque` | [simp](declarations/simp.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `opaque` | [dsimp](declarations/dsimp.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [modifyDiag](declarations/modifydiag.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `inductive` | [Step](declarations/step.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `abbrev` | [Simproc](declarations/simproc.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `abbrev` | [DStep](declarations/dstep.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `abbrev` | [DSimproc](declarations/dsimproc.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [_root_.Lean.TransformStep.toStep](declarations/root-lean-transformstep-tostep.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [mkEqTransResultStep](declarations/mkeqtransresultstep.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [andThen](declarations/andthen.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [dandThen](declarations/dandthen.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [SimprocOLeanEntry](declarations/simprocoleanentry.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `structure` | [SimprocEntry](declarations/simprocentry.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `abbrev` | [SimprocTree](declarations/simproctree.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `structure` | [Simprocs](declarations/simprocs.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [Methods](declarations/methods.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [Methods.toMethodsRefImpl](declarations/methods-tomethodsrefimpl.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `opaque` | [Methods.toMethodsRef](declarations/methods-tomethodsref.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [MethodsRef.toMethodsImpl](declarations/methodsref-tomethodsimpl.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `opaque` | [MethodsRef.toMethods](declarations/methodsref-tomethods.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [getMethods](declarations/getmethods.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [pre](declarations/pre.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [post](declarations/post.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [getContext](declarations/getcontext.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [getConfig](declarations/getconfig.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [getUserConfig](declarations/getuserconfig.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [getUserConfigOption](declarations/getuserconfigoption.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [withUserConfig](declarations/withuserconfig.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [withParent](declarations/withparent.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [getSimpTheorems](declarations/getsimptheorems.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [getSimpCongrTheorems](declarations/getsimpcongrtheorems.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [inDSimp](declarations/indsimp.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [withPreservedCache](declarations/withpreservedcache.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [withFreshCache](declarations/withfreshcache.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [withDischarger](declarations/withdischarger.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [recordTriedSimpTheorem](declarations/recordtriedsimptheorem.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [recordSimpTheorem](declarations/recordsimptheorem.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [recordCongrTheorem](declarations/recordcongrtheorem.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [recordTheoremWithBadKeys](declarations/recordtheoremwithbadkeys.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Result.getProof](declarations/result-getproof-source-edition-2.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [Result.getProof'](declarations/result-getproof.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [Result.mkCast](declarations/result-mkcast.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [Result.mkEqMPR](declarations/result-mkeqmpr.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [Result.mkEqMP](declarations/result-mkeqmp.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [mkCongrFun](declarations/mkcongrfun.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [mkCongrArg](declarations/mkcongrarg.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [mkCongr](declarations/mkcongr-source-edition-2.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [mkImpCongr](declarations/mkimpcongr.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [removeUnnecessaryCasts](declarations/removeunnecessarycasts.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [congrArgs](declarations/congrargs.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [mkCongrFun'](declarations/mkcongrfun-source-edition-2.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [mkCongrPrefix](declarations/mkcongrprefix.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [mkCongrArg'](declarations/mkcongrarg-source-edition-2.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [mkCongr'](declarations/mkcongr.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [simpAppUsingCongr](declarations/simpappusingcongr.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [mkCongrSimp?](declarations/mkcongrsimp.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [tryAutoCongrTheorem?](declarations/tryautocongrtheorem.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [Result.addExtraArgs](declarations/result-addextraargs.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [Step.addExtraArgs](declarations/step-addextraargs.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [DStep.addExtraArgs](declarations/dstep-addextraargs.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [Result.addLambdas](declarations/result-addlambdas.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [Result.addForalls](declarations/result-addforalls.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [withSimpContext](declarations/withsimpcontext.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [updateUsedSimpsWithZetaDeltaCore](declarations/updateusedsimpswithzetadeltacore.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [updateUsedSimpsWithZetaDelta](declarations/updateusedsimpswithzetadelta.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [SimpM.run](declarations/simpm-run.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [applySimpResultToTarget](declarations/applysimpresulttotarget.md) | 1008 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ba07fb366ca509ed6c017bcb56639f286b709e3c7f31881822845ae3a3f4b57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variante2b51b0c728cc1143aab68d9a58a5a1cf8420f4a9f11d3012584fe7a84f143c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
