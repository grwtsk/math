# Finset Sort Sort Val

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f42f74d2392968fe7a1508c0ca714c202bbe279c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/FinsetSortSortVal.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sort](declarations/sort.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sort_val](declarations/sort-val.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [sort_mk](declarations/sort-mk.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [sort_sorted](declarations/sort-sorted.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sort_eq](declarations/sort-eq.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sort_nodup](declarations/sort-nodup.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sort_toFinset](declarations/sort-tofinset.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_sort](declarations/mem-sort.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [length_sort](declarations/length-sort.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sort_empty](declarations/sort-empty.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sort_singleton](declarations/sort-singleton.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_sort](declarations/map-sort.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [_root_.StrictMonoOn.map_finsetSort](declarations/root-strictmonoon-map-finsetsort.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sort_cons](declarations/sort-cons.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sort_insert](declarations/sort-insert.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sort_range](declarations/sort-range.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sort_perm_toList](declarations/sort-perm-tolist.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [_root_.List.toFinset_sort](declarations/root-list-tofinset-sort.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sort_sorted_lt](declarations/sort-sorted-lt.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sort_sorted_gt](declarations/sort-sorted-gt.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sorted_zero_eq_min'_aux](declarations/sorted-zero-eq-min-aux.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sorted_zero_eq_min'](declarations/sorted-zero-eq-min.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [min'_eq_sorted_zero](declarations/min-eq-sorted-zero.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sorted_last_eq_max'_aux](declarations/sorted-last-eq-max-aux.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sorted_last_eq_max'](declarations/sorted-last-eq-max.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [max'_eq_sorted_last](declarations/max-eq-sorted-last.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [orderIsoOfFin](declarations/orderisooffin.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [orderEmbOfFin](declarations/orderemboffin.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_orderIsoOfFin_apply](declarations/coe-orderisooffin-apply.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [orderIsoOfFin_symm_apply](declarations/orderisooffin-symm-apply.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [orderEmbOfFin_apply](declarations/orderemboffin-apply.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [orderEmbOfFin_mem](declarations/orderemboffin-mem.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [range_orderEmbOfFin](declarations/range-orderemboffin.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [image_orderEmbOfFin_univ](declarations/image-orderemboffin-univ.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [map_orderEmbOfFin_univ](declarations/map-orderemboffin-univ.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [listMap_orderEmbOfFin_finRange](declarations/listmap-orderemboffin-finrange.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [orderEmbOfFin_zero](declarations/orderemboffin-zero.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [orderEmbOfFin_last](declarations/orderemboffin-last.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [orderEmbOfFin_singleton](declarations/orderemboffin-singleton.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [orderEmbOfFin_unique](declarations/orderemboffin-unique.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [orderEmbOfFin_unique'](declarations/orderemboffin-unique-source-edition-2.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [orderEmbOfFin_eq_orderEmbOfFin_iff](declarations/orderemboffin-eq-orderemboffin-iff.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [orderEmbOfCardLe](declarations/orderembofcardle.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [orderEmbOfCardLe_mem](declarations/orderembofcardle-mem.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [sort_univ](declarations/sort-univ.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [Fintype.orderIsoFinOfCardEq](declarations/fintype-orderisofinofcardeq.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [nonempty_orderEmbedding_of_finite_infinite](declarations/nonempty-orderembedding-of-finite-infinite.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68c4da770ec5cff2cbf9bfbb23c82f91c7850496ea67f18015adbcc9c95776cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
