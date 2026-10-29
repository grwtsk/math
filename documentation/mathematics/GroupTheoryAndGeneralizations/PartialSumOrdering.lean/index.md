# Partial Sum Ordering

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/Sequences/PartialSumOrdering.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e0d451eed2d082fa55d5b667183d85e6bb619cd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/PartialSumOrdering.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [prefixSum](declarations/prefixsum.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [postSums](declarations/postsums.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ValidPartialSumOrder](declarations/validpartialsumorder.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [RootedValidPartialSumOrder](declarations/rootedvalidpartialsumorder.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [DistinctNonzeroLabels](declarations/distinctnonzerolabels.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ZeroSumInterval](declarations/zerosuminterval.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [prefixSum_zero](declarations/prefixsum-zero.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [prefixSum_length](declarations/prefixsum-length.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [prefixSum_succ](declarations/prefixsum-succ.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_postIndices](declarations/mem-postindices.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [intervalSum_eq_sub](declarations/intervalsum-eq-sub.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [zeroSumInterval_iff_prefixSum_eq](declarations/zerosuminterval-iff-prefixsum-eq.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [valid_iff_prefixSum_ne](declarations/valid-iff-prefixsum-ne.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [valid_iff_no_zeroSumInterval](declarations/valid-iff-no-zerosuminterval.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rooted_iff_valid_and_nonzero_prefix](declarations/rooted-iff-valid-and-nonzero-prefix.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rooted_iff_no_zeroSumInterval](declarations/rooted-iff-no-zerosuminterval.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rooted_implies_valid](declarations/rooted-implies-valid.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [nonzero_no_singleton_interval](declarations/nonzero-no-singleton-interval.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [valid_iff_no_long_zeroSumInterval](declarations/valid-iff-no-long-zerosuminterval.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rooted_iff_no_long_zeroSumInterval](declarations/rooted-iff-no-long-zerosuminterval.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [translated_postSums_nodup_iff](declarations/translated-postsums-nodup-iff.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sum_Icc_eq_prefixSum_sub](declarations/sum-icc-eq-prefixsum-sub.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [valid_ofFn_iff_no_zero_sum_Icc](declarations/valid-offn-iff-no-zero-sum-icc.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [permutation_preserves_total](declarations/permutation-preserves-total.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [distinctNonzeroLabels_length_le](declarations/distinctnonzerolabels-length-le.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [zmod5_unrooted_return](declarations/zmod5-unrooted-return.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ordinary_does_not_imply_rooted](declarations/ordinary-does-not-imply-rooted.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [zero_label_can_repeat_postSum](declarations/zero-label-can-repeat-postsum.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [duplicate_labels_can_have_valid_postSums](declarations/duplicate-labels-can-have-valid-postsums.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [reordering_changes_intermediate_prefix](declarations/reordering-changes-intermediate-prefix.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=53e5f50e8a3ad368350d4305a6cdf0a355b793df31898225ff530b225bd4257c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/Sequences/PartialSumOrdering.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumOrdering.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
