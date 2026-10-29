# Loop Public Iter

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**92 observed declarations and anonymous commands**, 85 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantfc4c1c5869a88df8f26c737242d4bac6cab0b4e627fb76c43a08dc40c969b972.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92acd4bd9fd33431483f0b676259dc3911c2db2f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/LoopPublicIter.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.forIn'_eq](declarations/iter-forin-eq-source-edition-2.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Iter.forIn_eq](declarations/iter-forin-eq.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Iter.forIn'_congr](declarations/iter-forin-congr-source-edition-2.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Iter.forIn_congr](declarations/iter-forin-congr.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Iter.forIn'_eq_forIn'_toIterM](declarations/iter-forin-eq-forin-toiterm.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Iter.forIn_eq_forIn_toIterM](declarations/iter-forin-eq-forin-toiterm-source-edition-2.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Iter.forIn'_eq_match_step](declarations/iter-forin-eq-match-step-source-edition-2.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Iter.forIn_eq_match_step](declarations/iter-forin-eq-match-step.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Iter.forIn'_toList.aux](declarations/iter-forin-tolist-aux.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Iter.isPlausibleStep_iff_step_eq](declarations/iter-isplausiblestep-iff-step-eq.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Iter.mem_toList_iff_isPlausibleIndirectOutput](declarations/iter-mem-tolist-iff-isplausibleindirectoutput.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Iter.mem_toArray_iff_isPlausibleIndirectOutput](declarations/iter-mem-toarray-iff-isplausibleindirectoutput.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Iter.forIn'_toList](declarations/iter-forin-tolist-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Iter.forIn'_toArray](declarations/iter-forin-toarray-source-edition-2.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Iter.forIn'_eq_forIn'_toList](declarations/iter-forin-eq-forin-tolist.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Iter.forIn'_eq_forIn'_toArray](declarations/iter-forin-eq-forin-toarray.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Iter.forIn_toList](declarations/iter-forin-tolist.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Iter.forIn_toArray](declarations/iter-forin-toarray.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Iter.foldM_eq_forIn](declarations/iter-foldm-eq-forin.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Iter.foldM_eq_foldM_toIterM](declarations/iter-foldm-eq-foldm-toiterm.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Iter.forIn_yield_eq_foldM](declarations/iter-forin-yield-eq-foldm.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Iter.foldM_eq_match_step](declarations/iter-foldm-eq-match-step.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Iter.foldlM_toList](declarations/iter-foldlm-tolist.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Iter.foldlM_toArray](declarations/iter-foldlm-toarray.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IterM.forIn_eq_foldM](declarations/iterm-forin-eq-foldm.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Iter.fold_eq_forIn](declarations/iter-fold-eq-forin.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Iter.fold_eq_foldM](declarations/iter-fold-eq-foldm.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Iter.fold_eq_fold_toIterM](declarations/iter-fold-eq-fold-toiterm.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Iter.forIn_pure_yield_eq_fold](declarations/iter-forin-pure-yield-eq-fold.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Iter.fold_eq_match_step](declarations/iter-fold-eq-match-step.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Iter.fold_hom](declarations/iter-fold-hom.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Iter.toList_eq_fold](declarations/iter-tolist-eq-fold.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Iter.toArray_eq_fold](declarations/iter-toarray-eq-fold.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Iter.foldl_toList](declarations/iter-foldl-tolist.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Iter.foldl_toArray](declarations/iter-foldl-toarray.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Iter.length_eq_length_toIterM](declarations/iter-length-eq-length-toiterm.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Iter.count_eq_count_toIterM](declarations/iter-count-eq-count-toiterm.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Iter.length_eq_fold](declarations/iter-length-eq-fold.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [Iter.count_eq_fold](declarations/iter-count-eq-fold.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Iter.length_eq_forIn](declarations/iter-length-eq-forin.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [Iter.count_eq_forIn](declarations/iter-count-eq-forin.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Iter.length_eq_match_step](declarations/iter-length-eq-match-step.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [Iter.count_eq_match_step](declarations/iter-count-eq-match-step.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Iter.size_toArray_eq_length](declarations/iter-size-toarray-eq-length.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [Iter.size_toArray_eq_count](declarations/iter-size-toarray-eq-count.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Iter.length_toList_eq_length](declarations/iter-length-tolist-eq-length.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [Iter.length_toList_eq_count](declarations/iter-length-tolist-eq-count.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Iter.length_toListRev_eq_length](declarations/iter-length-tolistrev-eq-length.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [Iter.length_toListRev_eq_count](declarations/iter-length-tolistrev-eq-count.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Iter.anyM_eq_forIn](declarations/iter-anym-eq-forin.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Iter.anyM_eq_match_step](declarations/iter-anym-eq-match-step.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Iter.anyM_toList](declarations/iter-anym-tolist.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Iter.anyM_toArray](declarations/iter-anym-toarray.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Iter.any_eq_anyM](declarations/iter-any-eq-anym.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Iter.anyM_pure](declarations/iter-anym-pure.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Iter.any_eq_match_step](declarations/iter-any-eq-match-step.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Iter.any_eq_forIn](declarations/iter-any-eq-forin.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Iter.any_toList](declarations/iter-any-tolist.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Iter.any_toArray](declarations/iter-any-toarray.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [Iter.allM_eq_forIn](declarations/iter-allm-eq-forin.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Iter.allM_eq_match_step](declarations/iter-allm-eq-match-step.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Iter.all_eq_allM](declarations/iter-all-eq-allm.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Iter.allM_pure](declarations/iter-allm-pure.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Iter.all_eq_match_step](declarations/iter-all-eq-match-step.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Iter.all_eq_forIn](declarations/iter-all-eq-forin.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Iter.all_toList](declarations/iter-all-tolist.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Iter.all_toArray](declarations/iter-all-toarray.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Iter.allM_eq_not_anyM_not](declarations/iter-allm-eq-not-anym-not.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Iter.all_eq_not_any_not](declarations/iter-all-eq-not-any-not.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Iter.findSomeM?_eq_match_step](declarations/iter-findsomem-eq-match-step.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Iter.findSomeM?_toList](declarations/iter-findsomem-tolist.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Iter.findSome?_eq_findSomeM?](declarations/iter-findsome-eq-findsomem.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Iter.findSome?_eq_findSome?_toIterM](declarations/iter-findsome-eq-findsome-toiterm.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Iter.findSome?_eq_match_step](declarations/iter-findsome-eq-match-step.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Iter.findSome?_toList](declarations/iter-findsome-tolist.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Iter.findSomeM?_pure](declarations/iter-findsomem-pure.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Iter.findM?_eq_findSomeM?](declarations/iter-findm-eq-findsomem.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Iter.findM?_eq_match_step](declarations/iter-findm-eq-match-step.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Iter.findM?_toList](declarations/iter-findm-tolist.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Iter.findM?_eq_findM?_toList](declarations/iter-findm-eq-findm-tolist.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Iter.find?_eq_findM?](declarations/iter-find-eq-findm.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [Iter.find?_eq_find?_toIterM](declarations/iter-find-eq-find-toiterm.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Iter.find?_eq_findSome?](declarations/iter-find-eq-findsome.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Iter.find?_eq_match_step](declarations/iter-find-eq-match-step.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Iter.find?_toList](declarations/iter-find-tolist.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Iter.findM?_pure](declarations/iter-findm-pure.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Iter.first?_eq_first?_toIterM](declarations/iter-first-eq-first-toiterm.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Iter.first?_eq_match_step](declarations/iter-first-eq-match-step.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Iter.head?_toList](declarations/iter-head-tolist.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Iter.isEmpty_eq_isEmpty_toIterM](declarations/iter-isempty-eq-isempty-toiterm.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Iter.isEmpty_eq_match_step](declarations/iter-isempty-eq-match-step.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Iter.isEmpty_toList](declarations/iter-isempty-tolist.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=003ac3673442d0606f84855febb2cb3c87c526035691e30ee9afe0a5f50617a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantfc4c1c5869a88df8f26c737242d4bac6cab0b4e627fb76c43a08dc40c969b972.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
