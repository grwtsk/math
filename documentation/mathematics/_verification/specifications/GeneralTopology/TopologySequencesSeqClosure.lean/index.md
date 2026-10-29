# Verification target: Topology Sequences Seq Closure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd0d40a0bf02b9ca989694919f0eebf6818824be",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/index.md) · [Full source](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd0d40a0bf02b9ca989694919f0eebf6818824be`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.SubsetProperties` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [seqClosure](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/seqclosure.md) | 77 | `declaration-track:f4bd787b4c72a16442c0b9386fa8d90b00699bf5b1991293487fc7cf8c231806` |
| 2 | `theorem` | [subset_seqClosure](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/subset-seqclosure.md) | 81 | `result-track:6d8979836ea56295ba0ef9d4595cdd617265d53a3eed8575a255d01b72d02815` |
| 3 | `theorem` | [seqClosure_subset_closure](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/seqclosure-subset-closure.md) | 87 | `result-track:813c23306f620af966fd8c1423f9c96047e9c172553fbc8f189cf4e70481303b` |
| 4 | `def` | [IsSeqClosed](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqclosed.md) | 94 | `declaration-track:7610dc7e3b903fd7fc126769e65f48e944be676a682e2a993d09b3a329ccf69a` |
| 5 | `theorem` | [IsSeqClosed.seqClosure_eq](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqclosed-seqclosure-eq.md) | 99 | `result-track:10d9513434572f51e085b9bc229a108d7e779131169293bcdbf42cba14ea2e42` |
| 6 | `theorem` | [isSeqClosed_of_seqClosure_eq](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqclosed-of-seqclosure-eq.md) | 104 | `result-track:49ea5122ae176ff6cf0f0f41945be536e3d824b6764404263ad167bd1f5a2990` |
| 7 | `theorem` | [isSeqClosed_iff](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqclosed-iff.md) | 109 | `result-track:2b72e41e15233311e0ff1789474717b42c552a534e77524a5200b590ff123030` |
| 8 | `theorem` | [IsClosed.isSeqClosed](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isclosed-isseqclosed.md) | 114 | `result-track:e947481e7d39f7dd3651d42621ceff3e0092baa48b005fa2f81549e8c97c7741` |
| 9 | `class` | [FrechetUrysohnSpace](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/frecheturysohnspace.md) | 121 | `declaration-track:cc27bc1ac7eae67d511a0d339c28fae2aaa1c3637c6961529acc7c5f71a446cf` |
| 10 | `theorem` | [seqClosure_eq_closure](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/seqclosure-eq-closure.md) | 125 | `result-track:6fa3ea9006eccc9ad84d1a773e2a9a32074ac4b94cae8f89d85aeff1fc0610fe` |
| 11 | `theorem` | [mem_closure_iff_seq_limit](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/mem-closure-iff-seq-limit.md) | 131 | `result-track:182cc0e3ede79883554c27d356e5389d27db6157a39844836ca2505e17181aad` |
| 12 | `theorem` | [tendsto_nhds_iff_seq_tendsto](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/tendsto-nhds-iff-seq-tendsto.md) | 143 | `result-track:72ac184b7fafbe4c4d7db9ef26fdda350530b42107382f99e6c7df808322a577` |
| 13 | `theorem` | [FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/frecheturysohnspace-of-seq-tendsto-imp-tendsto.md) | 157 | `result-track:73b13b07cc1f33b5ca4edbdb3887df175803da79978759a63c6498f9d22d8103` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/instance-source-edition-2.md) | 173 | `declaration-track:27e01cdf0daebcc82d09235e3781e5743722d13e67e8220328752f4b61b4a08a` |
| 15 | `class` | [SequentialSpace](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/sequentialspace.md) | 180 | `declaration-track:ce463a1c952947d154c4cf005be4fdc4d2accf9bfefc1cd02cada78e229b6ce5` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/instance-source-edition-3.md) | 186 | `declaration-track:7bc75acca313d360833e1117e534e5275b2ac36eadf0b6a93499cec67a284578` |
| 17 | `theorem` | [IsSeqClosed.isClosed](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqclosed-isclosed.md) | 192 | `result-track:bc0be1fb27e02a396d6e2b24090f87a7614e31e500f8b2db020dfe71740d51cc` |
| 18 | `theorem` | [isSeqClosed_iff_isClosed](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqclosed-iff-isclosed.md) | 198 | `result-track:a04e758b05917474e58326bc64f77ac67022fe3783120f8aa64e0972aaccc454` |
| 19 | `def` | [SeqContinuous](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/seqcontinuous.md) | 204 | `declaration-track:2a1cbde4b0859a3afde03e89b759c6396e0b72786ead8adf563720838d85fe1b` |
| 20 | `theorem` | [IsSeqClosed.preimage](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqclosed-preimage.md) | 210 | `result-track:1f717f7c1b9f65622e6828a0dc652fce41ddde868ac61faf286513c771baef88` |
| 21 | `theorem` | [Continuous.seqContinuous](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/continuous-seqcontinuous.md) | 215 | `result-track:639ff69169d33e6007d230418926937fd95674382c344d9eccad734aaf49a72b` |
| 22 | `theorem` | [SeqContinuous.continuous](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/seqcontinuous-continuous.md) | 220 | `result-track:4ed72ba09e02c22b03362df5e2b8d71e27c765748a502247f69544c5481e8377` |
| 23 | `theorem` | [continuous_iff_seqContinuous](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/continuous-iff-seqcontinuous.md) | 227 | `result-track:0e7f4dd3b22c16d6385e66e5f112146daf2883428d859f8032f4032582f77f64` |
| 24 | `theorem` | [QuotientMap.sequentialSpace](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/quotientmap-sequentialspace.md) | 232 | `result-track:5486a254b587148122f4929c11db38fbd065e956aee8ca8916e9b67ef9d98248` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/instance.md) | 238 | `declaration-track:112187a04427456ff4c25900e11212c7fce7f5042d9e3283bfdd9d46129fec6d` |
| 26 | `def` | [IsSeqCompact](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqcompact.md) | 251 | `declaration-track:1e839c1ec7472ecc14e236e6b239c8d63c88a94d90de4fdec9e72352a027a1f9` |
| 27 | `class` | [SeqCompactSpace](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/seqcompactspace.md) | 258 | `declaration-track:fa0b716fdca079fe9cffcaf0631dc7addffca61c0d7c331e3b254a40fe493006` |
| 28 | `theorem` | [IsSeqCompact.subseq_of_frequently_in](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqcompact-subseq-of-frequently-in.md) | 265 | `result-track:7510d35733e20d9641946217e10c057fb793e06ef40f1324cd2c56402c10b5db` |
| 29 | `theorem` | [SeqCompactSpace.tendsto_subseq](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/seqcompactspace-tendsto-subseq.md) | 273 | `result-track:f266e2697d1f4f1f51fb7acfbe97d6a28e43ba32d459bdf292f27173fe71a57d` |
| 30 | `theorem` | [IsCompact.isSeqCompact](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/iscompact-isseqcompact.md) | 285 | `result-track:8565dc20171debdf4d702d9d68f22df875993f7cdcb84c484697dfe78fc5cc41` |
| 31 | `theorem` | [IsCompact.tendsto_subseq'](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/iscompact-tendsto-subseq.md) | 291 | `result-track:080ec9eeb3f27c3e080d19812cb2c21b59884323016dbcc16b402a2a8f50c481` |
| 32 | `theorem` | [IsCompact.tendsto_subseq](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/iscompact-tendsto-subseq-source-edition-2.md) | 297 | `result-track:45bcd9d692568eb73dbda127f46a9368c9e68a63456273413f5875fe411349f8` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/instance-source-edition-4.md) | 303 | `declaration-track:a3e95b50de5a2aa7b37f6408c57e260ee0658d9432746edccfc483858ac0d13c` |
| 34 | `theorem` | [CompactSpace.tendsto_subseq](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/compactspace-tendsto-subseq.md) | 308 | `result-track:04bca42b3498de9ef05a97cf2396babb52dc04231f9e7de93ecc399910e5424c` |
| 35 | `theorem` | [IsSeqCompact.exists_tendsto_of_frequently_mem](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqcompact-exists-tendsto-of-frequently-mem.md) | 325 | `result-track:63f4f7329c5956f8a416254bbfdfc036608fa91dfaa35a63ea119d388cf154ce` |
| 36 | `theorem` | [IsSeqCompact.exists_tendsto](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqcompact-exists-tendsto.md) | 331 | `result-track:e699c01217db65cbb58b1330a86d69a3b6989d72b03d969bebf8113c1cfec435` |
| 37 | `theorem` | [IsSeqCompact.totallyBounded](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqcompact-totallybounded.md) | 337 | `result-track:4f2d13ce88498e62985bb580b7254bf954a5fa623b3a7f97cc757a14b04d19d6` |
| 38 | `theorem` | [IsSeqCompact.isComplete](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqcompact-iscomplete.md) | 354 | `result-track:fdffa5032b5e34ba0fc7e479cbfd2a9b2d499378ff367278d4895b9eee825966` |
| 39 | `theorem` | [IsSeqCompact.isCompact](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/isseqcompact-iscompact.md) | 385 | `result-track:2f8ef92ee344e2ca5733471d1efd6b5ce662712a628a89e87cf009a84cab1bdf` |
| 40 | `theorem` | [UniformSpace.isCompact_iff_isSeqCompact](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/uniformspace-iscompact-iff-isseqcompact.md) | 391 | `result-track:1610c5a9e2a81d7d968100fc12f3bdeb6d15288346f624e11c0ffb2db5dbaf5f` |
| 41 | `theorem` | [UniformSpace.compactSpace_iff_seqCompactSpace](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/uniformspace-compactspace-iff-seqcompactspace.md) | 395 | `result-track:2f4cd439ab5825bb00fd94c681ac4d901c6c796946cd15c8986ed3e1873a6e7a` |
| 42 | `theorem` | [SeqCompact.lebesgue_number_lemma_of_metric](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/seqcompact-lebesgue-number-lemma-of-metric.md) | 407 | `result-track:a982f90950ee9f3e8aab1d8cc39ca9a495e9b572dc91b294a9ee9b872434ccc5` |
| 43 | `theorem` | [tendsto_subseq_of_frequently_bounded](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/tendsto-subseq-of-frequently-bounded.md) | 418 | `result-track:32b26d5e3052dac6bcfd11344a3baf61d73f32c760bb418c1dcd7247ebceb3c4` |
| 44 | `theorem` | [tendsto_subseq_of_bounded](../../../../GeneralTopology/TopologySequencesSeqClosure.lean/declarations/tendsto-subseq-of-bounded.md) | 428 | `result-track:1e8b78292f7f89563b0861c0cf3b5dca74b8c3d14d4213a68b3631e28b474cba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4335527568ccd91d9cac3e5c0b8dc9f36bdd2ba2446605c7756ccd561d353671 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Sequences/Variant94591f1fa0a658ab837cd21b8d7c2fbc9a5a4bf7fad8ac488d69d33f4aea284b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
