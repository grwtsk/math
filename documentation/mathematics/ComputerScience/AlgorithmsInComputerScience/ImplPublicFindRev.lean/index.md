# Impl Public Find Rev

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45a614232e9f6e8dd3bb837139440fd61fdcdb60`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/ImplPublicFindRev.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [setTR](declarations/settr.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [set_eq_setTR](declarations/set-eq-settr.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [filterMapTR](declarations/filtermaptr.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [filterMap_eq_filterMapTR](declarations/filtermap-eq-filtermaptr.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [reduceOption](declarations/reduceoption.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [foldrTR](declarations/foldrtr.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [foldr_eq_foldrTR](declarations/foldr-eq-foldrtr.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [flatMapTR](declarations/flatmaptr.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [flatMap_eq_flatMapTR](declarations/flatmap-eq-flatmaptr.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [flattenTR](declarations/flattentr.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [flatten_eq_flattenTR](declarations/flatten-eq-flattentr.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [takeTR](declarations/taketr.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [take_eq_takeTR](declarations/take-eq-taketr.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [takeWhileTR](declarations/takewhiletr.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [takeWhile_eq_takeWhileTR](declarations/takewhile-eq-takewhiletr.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [dropLastTR](declarations/droplasttr.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [dropLast_eq_dropLastTR](declarations/droplast-eq-droplasttr.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [findRev?TR](declarations/findrev-tr.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [find?_singleton](declarations/find-singleton.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [find?_append](declarations/find-append.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [findRev?_eq_findRev?TR](declarations/findrev-eq-findrev-tr.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [findRev?_eq_find?_reverse](declarations/findrev-eq-find-reverse.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [findSomeRev?TR](declarations/findsomerev-tr.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [findSome?_singleton](declarations/findsome-singleton.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [findSome?_append](declarations/findsome-append.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [findSomeRev?_eq_findSomeRev?TR](declarations/findsomerev-eq-findsomerev-tr.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [findSomeRev?_eq_findSome?_reverse](declarations/findsomerev-eq-findsome-reverse.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [replaceTR](declarations/replacetr.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [replace_eq_replaceTR](declarations/replace-eq-replacetr.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [modifyTR](declarations/modifytr.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [modifyTR_go_eq](declarations/modifytr-go-eq.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [modify_eq_modifyTR](declarations/modify-eq-modifytr.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [insertIdxTR](declarations/insertidxtr.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [insertIdxTR_go_eq](declarations/insertidxtr-go-eq.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [insertIdx_eq_insertIdxTR](declarations/insertidx-eq-insertidxtr.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [eraseTR](declarations/erasetr.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [erase_eq_eraseTR](declarations/erase-eq-erasetr.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [erasePTR](declarations/eraseptr.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [eraseP_eq_erasePTR](declarations/erasep-eq-eraseptr.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [eraseIdxTR](declarations/eraseidxtr.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [eraseIdx_eq_eraseIdxTR](declarations/eraseidx-eq-eraseidxtr.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [zipWithTR](declarations/zipwithtr.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [zipWith_eq_zipWithTR](declarations/zipwith-eq-zipwithtr.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [zipIdxTR](declarations/zipidxtr.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [zipIdx_eq_zipIdxTR](declarations/zipidx-eq-zipidxtr.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [intercalateTR](declarations/intercalatetr.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [intercalate_eq_intercalateTR](declarations/intercalate-eq-intercalatetr.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fd1aafa981919554734601e00ba15465679baef6a9d505b45e1ce42a221481e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Impl/Variantbb7570239a6aba62a513a791dbeea72a0c3fc721b90ddfa9d959350ab6a8bbb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
