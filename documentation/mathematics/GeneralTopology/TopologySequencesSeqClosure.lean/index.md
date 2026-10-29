# Topology Sequences Seq Closure

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd0d40a0bf02b9ca989694919f0eebf6818824be`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/TopologySequencesSeqClosure.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [seqClosure](declarations/seqclosure.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [subset_seqClosure](declarations/subset-seqclosure.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [seqClosure_subset_closure](declarations/seqclosure-subset-closure.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [IsSeqClosed](declarations/isseqclosed.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsSeqClosed.seqClosure_eq](declarations/isseqclosed-seqclosure-eq.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isSeqClosed_of_seqClosure_eq](declarations/isseqclosed-of-seqclosure-eq.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isSeqClosed_iff](declarations/isseqclosed-iff.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsClosed.isSeqClosed](declarations/isclosed-isseqclosed.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `class` | [FrechetUrysohnSpace](declarations/frecheturysohnspace.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [seqClosure_eq_closure](declarations/seqclosure-eq-closure.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_closure_iff_seq_limit](declarations/mem-closure-iff-seq-limit.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [tendsto_nhds_iff_seq_tendsto](declarations/tendsto-nhds-iff-seq-tendsto.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto](declarations/frecheturysohnspace-of-seq-tendsto-imp-tendsto.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [SequentialSpace](declarations/sequentialspace.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsSeqClosed.isClosed](declarations/isseqclosed-isclosed.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isSeqClosed_iff_isClosed](declarations/isseqclosed-iff-isclosed.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [SeqContinuous](declarations/seqcontinuous.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsSeqClosed.preimage](declarations/isseqclosed-preimage.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Continuous.seqContinuous](declarations/continuous-seqcontinuous.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [SeqContinuous.continuous](declarations/seqcontinuous-continuous.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [continuous_iff_seqContinuous](declarations/continuous-iff-seqcontinuous.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [QuotientMap.sequentialSpace](declarations/quotientmap-sequentialspace.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [IsSeqCompact](declarations/isseqcompact.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `class` | [SeqCompactSpace](declarations/seqcompactspace.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsSeqCompact.subseq_of_frequently_in](declarations/isseqcompact-subseq-of-frequently-in.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [SeqCompactSpace.tendsto_subseq](declarations/seqcompactspace-tendsto-subseq.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsCompact.isSeqCompact](declarations/iscompact-isseqcompact.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsCompact.tendsto_subseq'](declarations/iscompact-tendsto-subseq.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsCompact.tendsto_subseq](declarations/iscompact-tendsto-subseq-source-edition-2.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [CompactSpace.tendsto_subseq](declarations/compactspace-tendsto-subseq.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsSeqCompact.exists_tendsto_of_frequently_mem](declarations/isseqcompact-exists-tendsto-of-frequently-mem.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsSeqCompact.exists_tendsto](declarations/isseqcompact-exists-tendsto.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsSeqCompact.totallyBounded](declarations/isseqcompact-totallybounded.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsSeqCompact.isComplete](declarations/isseqcompact-iscomplete.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsSeqCompact.isCompact](declarations/isseqcompact-iscompact.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [UniformSpace.isCompact_iff_isSeqCompact](declarations/uniformspace-iscompact-iff-isseqcompact.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [UniformSpace.compactSpace_iff_seqCompactSpace](declarations/uniformspace-compactspace-iff-seqcompactspace.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [SeqCompact.lebesgue_number_lemma_of_metric](declarations/seqcompact-lebesgue-number-lemma-of-metric.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [tendsto_subseq_of_frequently_bounded](declarations/tendsto-subseq-of-frequently-bounded.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [tendsto_subseq_of_bounded](declarations/tendsto-subseq-of-bounded.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0c4362817b30d6f3759dd3287442b4b252b0e9b9622fab54fc2b636b3ea763e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
