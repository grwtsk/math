# Topology Sequences Namespaced Seq Closure

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b3ec6186dde3020e737d12e81b5d5e1fc6e4f6e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/TopologySequencesNamespacedSeqClosure.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [seqClosure](declarations/seqclosure.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [subset_seqClosure](declarations/subset-seqclosure.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [seqClosure_subset_closure](declarations/seqclosure-subset-closure.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [IsSeqClosed](declarations/isseqclosed.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsSeqClosed.seqClosure_eq](declarations/isseqclosed-seqclosure-eq.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isSeqClosed_of_seqClosure_eq](declarations/isseqclosed-of-seqclosure-eq.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isSeqClosed_iff](declarations/isseqclosed-iff.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsClosed.isSeqClosed](declarations/isclosed-isseqclosed.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `class` | [FrechetUrysohnSpace](declarations/frecheturysohnspace.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [seqClosure_eq_closure](declarations/seqclosure-eq-closure.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_closure_iff_seq_limit](declarations/mem-closure-iff-seq-limit.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [tendsto_nhds_iff_seq_tendsto](declarations/tendsto-nhds-iff-seq-tendsto.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto](declarations/frecheturysohnspace-of-seq-tendsto-imp-tendsto.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [SequentialSpace](declarations/sequentialspace.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsSeqClosed.isClosed](declarations/isseqclosed-isclosed.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isSeqClosed_iff_isClosed](declarations/isseqclosed-iff-isclosed.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [SeqContinuous](declarations/seqcontinuous.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsSeqClosed.preimage](declarations/isseqclosed-preimage.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Continuous.seqContinuous](declarations/continuous-seqcontinuous.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [SeqContinuous.continuous](declarations/seqcontinuous-continuous.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [continuous_iff_seqContinuous](declarations/continuous-iff-seqcontinuous.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [QuotientMap.sequentialSpace](declarations/quotientmap-sequentialspace.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [IsSeqCompact](declarations/isseqcompact.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `class` | [SeqCompactSpace](declarations/seqcompactspace.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsSeqCompact.subseq_of_frequently_in](declarations/isseqcompact-subseq-of-frequently-in.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [SeqCompactSpace.tendsto_subseq](declarations/seqcompactspace-tendsto-subseq.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsCompact.isSeqCompact](declarations/iscompact-isseqcompact.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsCompact.tendsto_subseq'](declarations/iscompact-tendsto-subseq.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsCompact.tendsto_subseq](declarations/iscompact-tendsto-subseq-source-edition-2.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [CompactSpace.tendsto_subseq](declarations/compactspace-tendsto-subseq.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsSeqCompact.exists_tendsto_of_frequently_mem](declarations/isseqcompact-exists-tendsto-of-frequently-mem.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsSeqCompact.exists_tendsto](declarations/isseqcompact-exists-tendsto.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsSeqCompact.totallyBounded](declarations/isseqcompact-totallybounded.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsSeqCompact.isComplete](declarations/isseqcompact-iscomplete.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsSeqCompact.isCompact](declarations/isseqcompact-iscompact.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [UniformSpace.isCompact_iff_isSeqCompact](declarations/uniformspace-iscompact-iff-isseqcompact.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [UniformSpace.compactSpace_iff_seqCompactSpace](declarations/uniformspace-compactspace-iff-seqcompactspace.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [SeqCompact.lebesgue_number_lemma_of_metric](declarations/seqcompact-lebesgue-number-lemma-of-metric.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [tendsto_subseq_of_frequently_bounded](declarations/tendsto-subseq-of-frequently-bounded.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [tendsto_subseq_of_bounded](declarations/tendsto-subseq-of-bounded.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8528f4c04a37c0fecd8c8b89e5f4a4d87f37fc3a1bc735c7de87a92e0770e54b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
