# Finset Sort Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b0a4c48f708fe480d641bb9df04e8861bca3c39`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/FinsetSortPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sort](declarations/sort.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sort_val](declarations/sort-val.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [pairwise_sort](declarations/pairwise-sort.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [sort_eq](declarations/sort-eq.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sort_nodup](declarations/sort-nodup.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sort_toFinset](declarations/sort-tofinset.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sort_empty](declarations/sort-empty.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sort_singleton](declarations/sort-singleton.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_sort](declarations/map-sort.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [_root_.StrictMonoOn.map_finsetSort](declarations/root-strictmonoon-map-finsetsort.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sort_range](declarations/sort-range.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sort_perm_toList](declarations/sort-perm-tolist.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [_root_.List.toFinset_sort](declarations/root-list-tofinset-sort.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sort_mk](declarations/sort-mk.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_sort](declarations/mem-sort.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [length_sort](declarations/length-sort.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sort_cons](declarations/sort-cons.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sort_insert](declarations/sort-insert.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sortedLT_sort](declarations/sortedlt-sort.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sortedGT_sort](declarations/sortedgt-sort.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sorted_zero_eq_min'_aux](declarations/sorted-zero-eq-min-aux.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sorted_zero_eq_min'](declarations/sorted-zero-eq-min.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [min'_eq_sorted_zero](declarations/min-eq-sorted-zero.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sorted_last_eq_max'_aux](declarations/sorted-last-eq-max-aux.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sorted_last_eq_max'](declarations/sorted-last-eq-max.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [max'_eq_sorted_last](declarations/max-eq-sorted-last.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [orderIsoOfFin](declarations/orderisooffin.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [orderEmbOfFin](declarations/orderemboffin.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_orderIsoOfFin_apply](declarations/coe-orderisooffin-apply.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [orderIsoOfFin_symm_apply](declarations/orderisooffin-symm-apply.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [orderEmbOfFin_apply](declarations/orderemboffin-apply.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [orderEmbOfFin_mem](declarations/orderemboffin-mem.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [range_orderEmbOfFin](declarations/range-orderemboffin.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [image_orderEmbOfFin_univ](declarations/image-orderemboffin-univ.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [map_orderEmbOfFin_univ](declarations/map-orderemboffin-univ.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [listMap_orderEmbOfFin_finRange](declarations/listmap-orderemboffin-finrange.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [orderEmbOfFin_zero](declarations/orderemboffin-zero.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [orderEmbOfFin_last](declarations/orderemboffin-last.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [orderEmbOfFin_singleton](declarations/orderemboffin-singleton.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [orderEmbOfFin_unique](declarations/orderemboffin-unique-source-edition-2.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [orderEmbOfFin_unique'](declarations/orderemboffin-unique.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [orderEmbOfFin_eq_orderEmbOfFin_iff](declarations/orderemboffin-eq-orderemboffin-iff.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [orderEmbOfCardLe](declarations/orderembofcardle.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [orderEmbOfCardLe_mem](declarations/orderembofcardle-mem.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [orderEmbOfFin_compl_singleton](declarations/orderemboffin-compl-singleton.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [orderEmbOfFin_compl_singleton_eq_succAboveOrderEmb](declarations/orderemboffin-compl-singleton-eq-succaboveorderemb.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [orderEmbOfFin_compl_singleton_apply](declarations/orderemboffin-compl-singleton-apply.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [sort_univ](declarations/sort-univ.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [Fintype.orderIsoFinOfCardEq](declarations/fintype-orderisofinofcardeq.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [nonempty_orderEmbedding_of_finite_infinite](declarations/nonempty-orderembedding-of-finite-infinite.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd1e23b24bb5891db9333ff88d9ff6734a306dbf3f870e202ac7e7b866764e9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
