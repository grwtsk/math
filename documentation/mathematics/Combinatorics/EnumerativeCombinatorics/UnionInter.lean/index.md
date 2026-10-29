# Union Inter

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**78 observed declarations and anonymous commands**, 71 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/UnionInter/Variante80c96ab0a70092fdec3819d50694f8cde20875530eb3ba33cedd000fd9ce123.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e5ea8fdfe098759f2defd40906529623e581d89`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/UnionInter.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [union](declarations/union.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [union_def](declarations/union-def.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [le_union_left](declarations/le-union-left.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [le_union_right](declarations/le-union-right.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [eq_union_left](declarations/eq-union-left.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [union_le_union_right](declarations/union-le-union-right.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [union_le](declarations/union-le.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mem_union](declarations/mem-union.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [map_union](declarations/map-union.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [zero_union](declarations/zero-union.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [union_zero](declarations/union-zero.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [count_union](declarations/count-union.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [filter_union](declarations/filter-union.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [inter](declarations/inter.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [inter_zero](declarations/inter-zero.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [zero_inter](declarations/zero-inter.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [cons_inter_of_pos](declarations/cons-inter-of-pos.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [cons_inter_of_neg](declarations/cons-inter-of-neg.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [inter_le_left](declarations/inter-le-left.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [inter_le_right](declarations/inter-le-right.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [le_inter](declarations/le-inter.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [mem_inter](declarations/mem-inter.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instLattice](declarations/instlattice.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [sup_eq_union](declarations/sup-eq-union.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [inf_eq_inter](declarations/inf-eq-inter.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [le_inter_iff](declarations/le-inter-iff.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [union_le_iff](declarations/union-le-iff.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [union_comm](declarations/union-comm.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [inter_comm](declarations/inter-comm.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [eq_union_right](declarations/eq-union-right.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [union_le_union_left](declarations/union-le-union-left.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [union_le_add](declarations/union-le-add.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [union_add_distrib](declarations/union-add-distrib.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [add_union_distrib](declarations/add-union-distrib.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [cons_union_distrib](declarations/cons-union-distrib.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [inter_add_distrib](declarations/inter-add-distrib.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [add_inter_distrib](declarations/add-inter-distrib.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [cons_inter_distrib](declarations/cons-inter-distrib.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [union_add_inter](declarations/union-add-inter.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [sub_add_inter](declarations/sub-add-inter.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [sub_inter](declarations/sub-inter.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [count_inter](declarations/count-inter.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [coe_inter](declarations/coe-inter.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [instDistribLattice](declarations/instdistriblattice.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [filter_inter](declarations/filter-inter.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [replicate_inter](declarations/replicate-inter.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [inter_replicate](declarations/inter-replicate.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [inter_add_sub_of_add_eq_add](declarations/inter-add-sub-of-add-eq-add.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [Disjoint](declarations/disjoint.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [disjoint_left](declarations/disjoint-left.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coe_disjoint](declarations/coe-disjoint.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [disjoint_right](declarations/disjoint-right.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [disjoint_iff_ne](declarations/disjoint-iff-ne.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [disjoint_of_subset_left](declarations/disjoint-of-subset-left.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [disjoint_of_subset_right](declarations/disjoint-of-subset-right.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [zero_disjoint](declarations/zero-disjoint.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [singleton_disjoint](declarations/singleton-disjoint.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [disjoint_singleton](declarations/disjoint-singleton.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [disjoint_add_left](declarations/disjoint-add-left.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [disjoint_add_right](declarations/disjoint-add-right.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [disjoint_cons_left](declarations/disjoint-cons-left.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [disjoint_cons_right](declarations/disjoint-cons-right.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [inter_eq_zero_iff_disjoint](declarations/inter-eq-zero-iff-disjoint.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [disjoint_union_left](declarations/disjoint-union-left.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [disjoint_union_right](declarations/disjoint-union-right.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [add_eq_union_iff_disjoint](declarations/add-eq-union-iff-disjoint.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [add_eq_union_left_of_le](declarations/add-eq-union-left-of-le.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [add_eq_union_right_of_le](declarations/add-eq-union-right-of-le.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [disjoint_map_map](declarations/disjoint-map-map.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [map_set_pairwise](declarations/map-set-pairwise.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [nodup_add](declarations/nodup-add.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [disjoint_of_nodup_add](declarations/disjoint-of-nodup-add.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Nodup.add_iff](declarations/nodup-add-iff.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [Nodup.inter_left](declarations/nodup-inter-left.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [Nodup.inter_right](declarations/nodup-inter-right.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [nodup_union](declarations/nodup-union.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=583e39db0785823f946ce287ae8b0cc5143229b1ab54e719740c13b4273b99e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/UnionInter/Variante80c96ab0a70092fdec3819d50694f8cde20875530eb3ba33cedd000fd9ce123.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
