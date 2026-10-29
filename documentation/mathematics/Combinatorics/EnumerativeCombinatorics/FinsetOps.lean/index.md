# Finset Ops

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinsetOps/Variant63cb7a034c27fc6e19faff65baa5299b4743b62cf1f5fa279b1177337b3e6f9f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fdba5f4a32459bea6d96a0a07e13dc9d8ff00ec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/FinsetOps.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ndinsert](declarations/ndinsert.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_ndinsert](declarations/coe-ndinsert.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ndinsert_zero](declarations/ndinsert-zero.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ndinsert_of_mem](declarations/ndinsert-of-mem.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ndinsert_of_notMem](declarations/ndinsert-of-notmem.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_ndinsert](declarations/mem-ndinsert.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [le_ndinsert_self](declarations/le-ndinsert-self.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_ndinsert_self](declarations/mem-ndinsert-self.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_ndinsert_of_mem](declarations/mem-ndinsert-of-mem.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [length_ndinsert_of_mem](declarations/length-ndinsert-of-mem.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [length_ndinsert_of_notMem](declarations/length-ndinsert-of-notmem.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [dedup_cons](declarations/dedup-cons.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Nodup.ndinsert](declarations/nodup-ndinsert.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ndinsert_le](declarations/ndinsert-le.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [attach_ndinsert](declarations/attach-ndinsert.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [disjoint_ndinsert_left](declarations/disjoint-ndinsert-left.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [disjoint_ndinsert_right](declarations/disjoint-ndinsert-right.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ndunion](declarations/ndunion.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_ndunion](declarations/coe-ndunion.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [zero_ndunion](declarations/zero-ndunion.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cons_ndunion](declarations/cons-ndunion.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_ndunion](declarations/mem-ndunion.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [le_ndunion_right](declarations/le-ndunion-right.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [subset_ndunion_right](declarations/subset-ndunion-right.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ndunion_le_add](declarations/ndunion-le-add.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ndunion_le](declarations/ndunion-le.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [subset_ndunion_left](declarations/subset-ndunion-left.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [le_ndunion_left](declarations/le-ndunion-left.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ndunion_le_union](declarations/ndunion-le-union.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Nodup.ndunion](declarations/nodup-ndunion.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ndunion_eq_union](declarations/ndunion-eq-union.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [dedup_add](declarations/dedup-add.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Disjoint.ndunion_eq](declarations/disjoint-ndunion-eq.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Subset.ndunion_eq_right](declarations/subset-ndunion-eq-right.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [ndinter](declarations/ndinter.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_ndinter](declarations/coe-ndinter.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [zero_ndinter](declarations/zero-ndinter.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [cons_ndinter_of_mem](declarations/cons-ndinter-of-mem.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ndinter_cons_of_notMem](declarations/ndinter-cons-of-notmem.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mem_ndinter](declarations/mem-ndinter.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Nodup.ndinter](declarations/nodup-ndinter.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [le_ndinter](declarations/le-ndinter.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ndinter_le_left](declarations/ndinter-le-left.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ndinter_subset_left](declarations/ndinter-subset-left.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ndinter_subset_right](declarations/ndinter-subset-right.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ndinter_le_right](declarations/ndinter-le-right.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [inter_le_ndinter](declarations/inter-le-ndinter.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [ndinter_eq_inter](declarations/ndinter-eq-inter.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Nodup.inter](declarations/nodup-inter.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ndinter_eq_zero_iff_disjoint](declarations/ndinter-eq-zero-iff-disjoint.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Subset.ndinter_eq_left](declarations/subset-ndinter-eq-left.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e6127a24c7bc97adecb095fda0bcf8a1ed5abb391e2bca9d19bd9e2ddd720c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FinsetOps/Variant63cb7a034c27fc6e19faff65baa5299b4743b62cf1f5fa279b1177337b3e6f9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
