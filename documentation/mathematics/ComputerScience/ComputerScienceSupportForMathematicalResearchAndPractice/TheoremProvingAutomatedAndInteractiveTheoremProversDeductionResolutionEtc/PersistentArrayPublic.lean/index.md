# Persistent Array Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**69 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PersistentArray/Varianta69fed319f385ca93450a873d4cbffdced0d6eba3bc241caef26ae8690b1f4a8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e252526851a5eb4bb988d67dd8854b90a2cf970c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentArrayPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [PersistentArrayNode](declarations/persistentarraynode.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [isNode](declarations/isnode.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [PersistentArray.initShift](declarations/persistentarray-initshift.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [PersistentArray.branching](declarations/persistentarray-branching.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [PersistentArray](declarations/persistentarray.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [PArray](declarations/parray.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [empty](declarations/empty.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [isEmpty](declarations/isempty.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mkEmptyArray](declarations/mkemptyarray.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [mul2Shift](declarations/mul2shift.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [div2Shift](declarations/div2shift.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [mod2Shift](declarations/mod2shift.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [getAux](declarations/getaux.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [get!](declarations/get.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [setAux](declarations/setaux.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [set](declarations/set.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [modifyAux](declarations/modifyaux.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [modify](declarations/modify.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [mkNewPath](declarations/mknewpath.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [insertNewLeaf](declarations/insertnewleaf.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mkNewTail](declarations/mknewtail.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [tooBig](declarations/toobig.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [push](declarations/push.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [emptyArray](declarations/emptyarray.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [popLeaf](declarations/popleaf.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [pop](declarations/pop.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [foldlMAux](declarations/foldlmaux.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [foldlFromMAux](declarations/foldlfrommaux.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [foldlM](declarations/foldlm.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [foldrMAux](declarations/foldrmaux.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [foldrM](declarations/foldrm.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [forInAux](declarations/forinaux.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [forIn](declarations/forin.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [findSomeMAux](declarations/findsomemaux.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [findSomeM?](declarations/findsomem.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [findSomeRevMAux](declarations/findsomerevmaux.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [findSomeRevM?](declarations/findsomerevm.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [forMAux](declarations/formaux.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [forMFrom0](declarations/formfrom0.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [forFromMAux](declarations/forfrommaux.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [forM](declarations/form.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [foldl](declarations/foldl.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [foldr](declarations/foldr.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [filter](declarations/filter.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toArray](declarations/toarray.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [append](declarations/append.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [findSome?](declarations/findsome.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [findSomeRev?](declarations/findsomerev.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [toList](declarations/tolist.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [anyMAux](declarations/anymaux.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [anyM](declarations/anym.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [allM](declarations/allm.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [any](declarations/any.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [all](declarations/all.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [mapMAux](declarations/mapmaux.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [mapM](declarations/mapm.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [map](declarations/map.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `structure` | [Stats](declarations/stats.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [collectStats](declarations/collectstats.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [stats](declarations/stats-source-edition-2.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [Stats.toString](declarations/stats-tostring.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [mkPersistentArray](declarations/mkpersistentarray.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [mkPArray](declarations/mkparray.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [List.toPArray'](declarations/list-toparray.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [Array.toPArray'](declarations/array-toparray.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=966224b61fa6cd79c1fc79d1faae70cefbd4d2a6e2a64fe16bc27a3b3142c9b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PersistentArray/Varianta69fed319f385ca93450a873d4cbffdced0d6eba3bc241caef26ae8690b1f4a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
