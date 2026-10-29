# Basic Basic Namespaced Public Vector

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**105 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc2ebdf98025c4f294b5205616e4b2c2e70e2d418eef5efba36dd771961dfecb8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10f34f7f4d727896ff250bceccdcc04a1af8ce7b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicVector.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Vector](declarations/vector.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Array.toVector](declarations/array-tovector.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [size](declarations/size.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `syntax` | [(anonymous)](declarations/syntax.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [unexpandMk](declarations/unexpandmk.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [toList](declarations/tolist.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [elimAsArray](declarations/elimasarray.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [elimAsList](declarations/elimaslist.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [emptyWithCapacity](declarations/emptywithcapacity.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [replicate](declarations/replicate.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [singleton](declarations/singleton.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [get](declarations/get.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [uget](declarations/uget.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [contains](declarations/contains.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [Mem](declarations/mem.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [getD](declarations/getd.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [back!](declarations/back-source-edition-3.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [back?](declarations/back.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [back](declarations/back-source-edition-2.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [head](declarations/head.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [push](declarations/push.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [pop](declarations/pop.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [set](declarations/set-source-edition-2.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [setIfInBounds](declarations/setifinbounds.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [set!](declarations/set.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [foldlM](declarations/foldlm.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [foldrM](declarations/foldrm.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [foldl](declarations/foldl.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [foldr](declarations/foldr.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [append](declarations/append.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [cast](declarations/cast.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [extract](declarations/extract.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [take](declarations/take.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [take_eq_extract](declarations/take-eq-extract.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [drop](declarations/drop.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [drop_eq_cast_extract](declarations/drop-eq-cast-extract.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [shrink](declarations/shrink.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [shrink_eq_take](declarations/shrink-eq-take.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [map](declarations/map.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [mapIdx](declarations/mapidx.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [mapFinIdx](declarations/mapfinidx.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [mapM](declarations/mapm.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [forM](declarations/form.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [flatMapM](declarations/flatmapm.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [mapFinIdxM](declarations/mapfinidxm.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [mapIdxM](declarations/mapidxm.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [firstM](declarations/firstm.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [flatten](declarations/flatten.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [flatMap](declarations/flatmap.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [zipIdx](declarations/zipidx.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [zip](declarations/zip.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [zipWith](declarations/zipwith.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [unzip](declarations/unzip.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [ofFn](declarations/offn.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [swap](declarations/swap.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [swapIfInBounds](declarations/swapifinbounds.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [swapAt](declarations/swapat.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [swapAt!](declarations/swapat-source-edition-2.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [range](declarations/range-source-edition-2.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [range'](declarations/range.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [isEqv](declarations/iseqv.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [reverse](declarations/reverse.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [eraseIdx](declarations/eraseidx.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [eraseIdx!](declarations/eraseidx-source-edition-2.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [insertIdx](declarations/insertidx.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [insertIdx!](declarations/insertidx-source-edition-2.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [tail](declarations/tail.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [tail_eq_cast_extract](declarations/tail-eq-cast-extract.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [finIdxOf?](declarations/finidxof.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [findFinIdx?](declarations/findfinidx.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [findM?](declarations/findm.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [findSomeM?](declarations/findsomem.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [findRevM?](declarations/findrevm.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [findSomeRevM?](declarations/findsomerevm.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [find?](declarations/find.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [findRev?](declarations/findrev.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [findSome?](declarations/findsome.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [findSomeRev?](declarations/findsomerev.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [isPrefixOf](declarations/isprefixof.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [anyM](declarations/anym.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [allM](declarations/allm.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [any](declarations/any.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [all](declarations/all.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [countP](declarations/countp.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [count](declarations/count.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [replace](declarations/replace.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [sum](declarations/sum.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [prod](declarations/prod.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [leftpad](declarations/leftpad.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [rightpad](declarations/rightpad.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [mem_toArray_iff](declarations/mem-toarray-iff.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [forM_eq_forM](declarations/form-eq-form.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [instLT](declarations/instlt.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `instance` | [instLE](declarations/instle.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [lex](declarations/lex.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c13a6c7d6eccd5b4ccec7e32da98612762661853f661788a42975636e583373 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc2ebdf98025c4f294b5205616e4b2c2e70e2d418eef5efba36dd771961dfecb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
