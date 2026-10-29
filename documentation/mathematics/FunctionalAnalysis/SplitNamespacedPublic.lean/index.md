# Split Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6797b4068735b75a0d033c627995fe25d26d24b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/SplitNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [splitLower](declarations/splitlower.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_splitLower](declarations/coe-splitlower.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [splitLower_le](declarations/splitlower-le.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [splitLower_eq_bot](declarations/splitlower-eq-bot.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [splitLower_eq_self](declarations/splitlower-eq-self.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [splitLower_def](declarations/splitlower-def.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [splitUpper](declarations/splitupper.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_splitUpper](declarations/coe-splitupper.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [splitUpper_le](declarations/splitupper-le.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [splitUpper_eq_bot](declarations/splitupper-eq-bot.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [splitUpper_eq_self](declarations/splitupper-eq-self.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [splitUpper_def](declarations/splitupper-def.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [disjoint_splitLower_splitUpper](declarations/disjoint-splitlower-splitupper.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [splitLower_ne_splitUpper](declarations/splitlower-ne-splitupper.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [split](declarations/split.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_split_iff](declarations/mem-split-iff.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_split_iff'](declarations/mem-split-iff-source-edition-2.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [iUnion_split](declarations/iunion-split.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isPartitionSplit](declarations/ispartitionsplit.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sum_split_boxes](declarations/sum-split-boxes.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [split_of_notMem_Ioo](declarations/split-of-notmem-ioo.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_eq_of_mem_split_of_mem_le](declarations/coe-eq-of-mem-split-of-mem-le.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_eq_of_mem_split_of_lt_mem](declarations/coe-eq-of-mem-split-of-lt-mem.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [restrict_split](declarations/restrict-split.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [inf_split](declarations/inf-split.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [splitMany](declarations/splitmany.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [splitMany_empty](declarations/splitmany-empty.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [splitMany_insert](declarations/splitmany-insert.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [splitMany_le_split](declarations/splitmany-le-split.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isPartition_splitMany](declarations/ispartition-splitmany.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [iUnion_splitMany](declarations/iunion-splitmany.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [inf_splitMany](declarations/inf-splitmany.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [not_disjoint_imp_le_of_subset_of_mem_splitMany](declarations/not-disjoint-imp-le-of-subset-of-mem-splitmany.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [eventually_not_disjoint_imp_le_of_mem_splitMany](declarations/eventually-not-disjoint-imp-le-of-mem-splitmany.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eventually_splitMany_inf_eq_filter](declarations/eventually-splitmany-inf-eq-filter.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_splitMany_inf_eq_filter_of_finite](declarations/exists-splitmany-inf-eq-filter-of-finite.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsPartition.exists_splitMany_le](declarations/ispartition-exists-splitmany-le.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [exists_iUnion_eq_sdiff](declarations/exists-iunion-eq-sdiff.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [compl](declarations/compl.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [iUnion_compl](declarations/iunion-compl.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [compl_congr](declarations/compl-congr.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IsPartition.compl_eq_bot](declarations/ispartition-compl-eq-bot.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [compl_top](declarations/compl-top.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0a1e06658c0e03b7511f395fd510dc51970ccc46cb22f614ae434904c51d593 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Split/Variantf5ea0eda0c928b319e42a0fe4007211ccf62c78bb5b876b347194d84e0fe9b72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
