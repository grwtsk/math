# Finset Sort

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89c10048c98afc5c53c3006a223c5ef3cc6f1d28`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/FinsetSort.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sort](declarations/sort.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sort_sorted](declarations/sort-sorted.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [sort_eq](declarations/sort-eq.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [sort_nodup](declarations/sort-nodup.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sort_toFinset](declarations/sort-tofinset.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_sort](declarations/mem-sort.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [length_sort](declarations/length-sort.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sort_empty](declarations/sort-empty.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sort_singleton](declarations/sort-singleton.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sort_perm_toList](declarations/sort-perm-tolist.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sort_sorted_lt](declarations/sort-sorted-lt.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sorted_zero_eq_min'_aux](declarations/sorted-zero-eq-min-aux.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sorted_zero_eq_min'](declarations/sorted-zero-eq-min.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [min'_eq_sorted_zero](declarations/min-eq-sorted-zero.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sorted_last_eq_max'_aux](declarations/sorted-last-eq-max-aux.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sorted_last_eq_max'](declarations/sorted-last-eq-max.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [max'_eq_sorted_last](declarations/max-eq-sorted-last.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [orderIsoOfFin](declarations/orderisooffin.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [orderEmbOfFin](declarations/orderemboffin.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_orderIsoOfFin_apply](declarations/coe-orderisooffin-apply.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [orderIsoOfFin_symm_apply](declarations/orderisooffin-symm-apply.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [orderEmbOfFin_apply](declarations/orderemboffin-apply.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [orderEmbOfFin_mem](declarations/orderemboffin-mem.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [range_orderEmbOfFin](declarations/range-orderemboffin.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [orderEmbOfFin_zero](declarations/orderemboffin-zero.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [orderEmbOfFin_last](declarations/orderemboffin-last.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [orderEmbOfFin_singleton](declarations/orderemboffin-singleton.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [orderEmbOfFin_unique](declarations/orderemboffin-unique.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [orderEmbOfFin_unique'](declarations/orderemboffin-unique-source-edition-2.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [orderEmbOfFin_eq_orderEmbOfFin_iff](declarations/orderemboffin-eq-orderemboffin-iff.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [orderEmbOfCardLe](declarations/orderembofcardle.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [orderEmbOfCardLe_mem](declarations/orderembofcardle-mem.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b3565646b14a3c4952e2019a46966a8954c12afbe28d56576754d20430a5fdc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant72adf81c2a1411f223a9ecd6952fa633495723cd3297d411c686afb1b4c99e74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
