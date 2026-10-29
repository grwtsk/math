# Multiset Nodup Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b87a513d25d7457617e3e6b24e611948c27a0b41`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/MultisetNodupNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Nodup](declarations/nodup.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_nodup](declarations/coe-nodup.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [nodup_zero](declarations/nodup-zero.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [nodup_cons](declarations/nodup-cons.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Nodup.cons](declarations/nodup-cons-source-edition-2.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [nodup_singleton](declarations/nodup-singleton.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Nodup.of_cons](declarations/nodup-of-cons.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Nodup.not_mem](declarations/nodup-not-mem.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [nodup_of_le](declarations/nodup-of-le.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [not_nodup_pair](declarations/not-nodup-pair.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nodup_iff_le](declarations/nodup-iff-le.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [nodup_iff_ne_cons_cons](declarations/nodup-iff-ne-cons-cons.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nodup_iff_count_le_one](declarations/nodup-iff-count-le-one.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [count_eq_one_of_mem](declarations/count-eq-one-of-mem.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [count_eq_of_nodup](declarations/count-eq-of-nodup.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nodup_iff_pairwise](declarations/nodup-iff-pairwise.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Nodup.pairwise](declarations/nodup-pairwise.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Pairwise.forall](declarations/pairwise-forall.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [nodup_add](declarations/nodup-add.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [disjoint_of_nodup_add](declarations/disjoint-of-nodup-add.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Nodup.add_iff](declarations/nodup-add-iff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Nodup.of_map](declarations/nodup-of-map.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Nodup.map_on](declarations/nodup-map-on.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Nodup.map](declarations/nodup-map.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [inj_on_of_nodup_map](declarations/inj-on-of-nodup-map.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [nodup_map_iff_inj_on](declarations/nodup-map-iff-inj-on.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Nodup.filter](declarations/nodup-filter.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nodup_attach](declarations/nodup-attach.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Nodup.pmap](declarations/nodup-pmap.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [nodupDecidable](declarations/nodupdecidable.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Nodup.erase_eq_filter](declarations/nodup-erase-eq-filter.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Nodup.erase](declarations/nodup-erase.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Nodup.mem_erase_iff](declarations/nodup-mem-erase-iff.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Nodup.not_mem_erase](declarations/nodup-not-mem-erase.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Nodup.product](declarations/nodup-product.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Nodup.sigma](declarations/nodup-sigma.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Nodup.filterMap](declarations/nodup-filtermap.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [nodup_range](declarations/nodup-range.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Nodup.inter_left](declarations/nodup-inter-left.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Nodup.inter_right](declarations/nodup-inter-right.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [nodup_union](declarations/nodup-union.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [nodup_bind](declarations/nodup-bind.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Nodup.ext](declarations/nodup-ext.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [le_iff_subset](declarations/le-iff-subset.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [range_le](declarations/range-le.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mem_sub_of_nodup](declarations/mem-sub-of-nodup.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_eq_map_of_bij_of_nodup](declarations/map-eq-map-of-bij-of-nodup.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df7b562decb6a802054583937e90a61a21cf4c0ff10e2756f91a9dfcea345f97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
