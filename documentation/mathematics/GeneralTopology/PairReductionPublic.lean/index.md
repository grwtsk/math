# Pair Reduction Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa9a0345e8f8bb40ece9f794eeb8fc539879f458`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/PairReductionPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_radius_le](declarations/exists-radius-le.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [logSizeRadius](declarations/logsizeradius.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [one_le_logSizeRadius](declarations/one-le-logsizeradius.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [card_le_logSizeRadius_le_pow_logSizeRadius](declarations/card-le-logsizeradius-le-pow-logsizeradius.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [pow_logSizeRadius_le_card_le_logSizeRadius](declarations/pow-logsizeradius-le-card-le-logsizeradius.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [logSizeBallStruct](declarations/logsizeballstruct.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [logSizeBallStruct.smallBall](declarations/logsizeballstruct-smallball.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [logSizeBallStruct.ball](declarations/logsizeballstruct-ball.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [logSizeBallSeq](declarations/logsizeballseq.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [finset_logSizeBallSeq_zero](declarations/finset-logsizeballseq-zero.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [point_logSizeBallSeq_zero](declarations/point-logsizeballseq-zero.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [radius_logSizeBallSeq_zero](declarations/radius-logsizeballseq-zero.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [finset_logSizeBallSeq_add_one](declarations/finset-logsizeballseq-add-one.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [point_logSizeBallSeq_add_one](declarations/point-logsizeballseq-add-one.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [radius_logSizeBallSeq_add_one](declarations/radius-logsizeballseq-add-one.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [finset_logSizeBallSeq_add_one_subset](declarations/finset-logsizeballseq-add-one-subset.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [antitone_logSizeBallSeq_add_one_subset](declarations/antitone-logsizeballseq-add-one-subset.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [finset_logSizeBallSeq_subset_logSizeBallSeq_init](declarations/finset-logsizeballseq-subset-logsizeballseq-init.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [radius_logSizeBallSeq_le](declarations/radius-logsizeballseq-le.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [one_le_radius_logSizeBallSeq](declarations/one-le-radius-logsizeballseq.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [point_mem_finset_logSizeBallSeq](declarations/point-mem-finset-logsizeballseq.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [point_mem_logSizeBallSeq_init](declarations/point-mem-logsizeballseq-init.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [point_notMem_finset_logSizeBallSeq_add_one](declarations/point-notmem-finset-logsizeballseq-add-one.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [finset_logSizeBallSeq_add_one_ssubset](declarations/finset-logsizeballseq-add-one-ssubset.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [card_finset_logSizeBallSeq_add_one_lt](declarations/card-finset-logsizeballseq-add-one-lt.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [card_finset_logSizeBallSeq_le](declarations/card-finset-logsizeballseq-le.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [card_finset_logSizeBallSeq_card_eq_zero](declarations/card-finset-logsizeballseq-card-eq-zero.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [disjoint_smallBall_logSizeBallSeq](declarations/disjoint-smallball-logsizeballseq.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [pairSetSeq](declarations/pairsetseq.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [pairSet](declarations/pairset.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [pairSet_empty_eq_empty](declarations/pairset-empty-eq-empty.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [pairSet_subset](declarations/pairset-subset.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [card_pairSetSeq_le_logSizeRadius_mul](declarations/card-pairsetseq-le-logsizeradius-mul.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [logSizeRadius_le_card_smallBall](declarations/logsizeradius-le-card-smallball.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [card_pairSet_le](declarations/card-pairset-le.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [edist_le_of_mem_pairSet](declarations/edist-le-of-mem-pairset.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [iSup_edist_pairSet](declarations/isup-edist-pairset.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [EMetric.pair_reduction](declarations/emetric-pair-reduction.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94ad94e023a74a7faa096cc8b6843c93b1454e01fd503a9462aedd70df957d14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
