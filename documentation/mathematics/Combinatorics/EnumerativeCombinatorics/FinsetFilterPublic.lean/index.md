# Finset Filter Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Filter/Variant7e79aa65a47a4552534e7042f18751f575cc4ba2b4252ac2fb4fa65d88369c2d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91a06e3060103e858fdd34a61021255b49605c3b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/FinsetFilterPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [filter](declarations/filter.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [knownToBeFinsetNotSet](declarations/knowntobefinsetnotset.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [elabFinsetBuilderSep](declarations/elabfinsetbuildersep.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [filter_val](declarations/filter-val.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [filter_subset](declarations/filter-subset.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_filter](declarations/mem-filter.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_of_mem_filter](declarations/mem-of-mem-filter.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [filter_ssubset](declarations/filter-ssubset.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [filter_filter](declarations/filter-filter.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [filter_comm](declarations/filter-comm.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [filter_congr_decidable](declarations/filter-congr-decidable.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [filter_true](declarations/filter-true.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [filter_false](declarations/filter-false.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [filter_eq_self](declarations/filter-eq-self.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [filter_eq_empty_iff](declarations/filter-eq-empty-iff.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [filter_nonempty_iff](declarations/filter-nonempty-iff.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [filter_true_of_mem](declarations/filter-true-of-mem.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [filter_false_of_mem](declarations/filter-false-of-mem.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [filter_const](declarations/filter-const.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [filter_congr](declarations/filter-congr.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [filter_empty](declarations/filter-empty.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [filter_subset_filter](declarations/filter-subset-filter.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [monotone_filter_left](declarations/monotone-filter-left.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [monotone_filter_right](declarations/monotone-filter-right.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_filter](declarations/coe-filter.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [subset_coe_filter_of_subset_forall](declarations/subset-coe-filter-of-subset-forall.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [disjoint_filter_filter](declarations/disjoint-filter-filter.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [_root_.Set.pairwiseDisjoint_filter](declarations/root-set-pairwisedisjoint-filter.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [disjoint_filter_and_not_filter](declarations/disjoint-filter-and-not-filter.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [filter_inj](declarations/filter-inj.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [filter_inj'](declarations/filter-inj-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [filter_mem_eq_of_subset](declarations/filter-mem-eq-of-subset.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e9705dc0f241ae3bd40a0f5faaabb67566b43e49379d6071992d15e064a8798 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Filter/Variant7e79aa65a47a4552534e7042f18751f575cc4ba2b4252ac2fb4fa65d88369c2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
