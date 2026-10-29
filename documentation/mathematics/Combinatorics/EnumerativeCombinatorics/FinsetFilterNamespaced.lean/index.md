# Finset Filter Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91e86144086125c3c7743582c50fee4b6c156c76`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/FinsetFilterNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [filter](declarations/filter.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [knownToBeFinsetNotSet](declarations/knowntobefinsetnotset.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [elabFinsetBuilderSep](declarations/elabfinsetbuildersep.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [filter_val](declarations/filter-val.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [filter_subset](declarations/filter-subset.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_filter](declarations/mem-filter.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_of_mem_filter](declarations/mem-of-mem-filter.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [filter_ssubset](declarations/filter-ssubset.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [filter_filter](declarations/filter-filter.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [filter_comm](declarations/filter-comm.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [filter_congr_decidable](declarations/filter-congr-decidable.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [filter_True](declarations/filter-true.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [filter_False](declarations/filter-false.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [filter_eq_self](declarations/filter-eq-self.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [filter_eq_empty_iff](declarations/filter-eq-empty-iff.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [filter_nonempty_iff](declarations/filter-nonempty-iff.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [filter_true_of_mem](declarations/filter-true-of-mem.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [filter_false_of_mem](declarations/filter-false-of-mem.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [filter_const](declarations/filter-const.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [filter_congr](declarations/filter-congr.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [filter_empty](declarations/filter-empty.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [filter_subset_filter](declarations/filter-subset-filter.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [monotone_filter_left](declarations/monotone-filter-left.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [monotone_filter_right](declarations/monotone-filter-right.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_filter](declarations/coe-filter.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [subset_coe_filter_of_subset_forall](declarations/subset-coe-filter-of-subset-forall.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [disjoint_filter_filter](declarations/disjoint-filter-filter.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Finset Filter Namespaced](declarations/pairwisedisjoint-filter.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [disjoint_filter_and_not_filter](declarations/disjoint-filter-and-not-filter.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [filter_inj](declarations/filter-inj-source-edition-2.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [filter_inj'](declarations/filter-inj.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d5820a5aeb0c2fac8a49a64362cb99c15a6011e9df6990b6e8d14aa61bbd4d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
