# Verification target: GRWTSK.Topology.GeneralTopology.Sequences.Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b3ec6186dde3020e737d12e81b5d5e1fc6e4f6e",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b3ec6186dde3020e737d12e81b5d5e1fc6e4f6e`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.SubsetProperties` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [seqClosure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/seqclosure--43ed2d99bb03bda7dc76f08e.md) | 85 | `declaration-track:43ed2d99bb03bda7dc76f08e5f5adc5e860a9483e99687eeda83448c46509564` |
| 2 | `theorem` | [subset_seqClosure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/subset-seqclosure--194b8b172fa09f4073ef50e6.md) | 89 | `result-track:194b8b172fa09f4073ef50e6c59a098f043ac18cfdea48fa109534f5281e0cfa` |
| 3 | `theorem` | [seqClosure_subset_closure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/seqclosure-subset-closure--9e58995910cd142b466d78d1.md) | 95 | `result-track:9e58995910cd142b466d78d15ecc08fccfd1054f20bf24ccef7951945d78ecc2` |
| 4 | `def` | [IsSeqClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqclosed--8341fbb8c577b03610e85022.md) | 102 | `declaration-track:8341fbb8c577b03610e850220a0e6a1a67ab04fc37854d6907e63694c3219d97` |
| 5 | `theorem` | [IsSeqClosed.seqClosure_eq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqclosed-seqclosure-eq--d326b6b506ee9eb99c62397f.md) | 107 | `result-track:d326b6b506ee9eb99c62397ff0249fe6b5b5b80aa59d2c592751dc18bebd226a` |
| 6 | `theorem` | [isSeqClosed_of_seqClosure_eq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqclosed-of-seqclosure-eq--d1c687320ea7c2e853e5b0ab.md) | 112 | `result-track:d1c687320ea7c2e853e5b0ab1dfa53d42b3cc7f412d26807b5d529a167bf9a24` |
| 7 | `theorem` | [isSeqClosed_iff](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqclosed-iff--95dccbf013d5e3a2da21027c.md) | 117 | `result-track:95dccbf013d5e3a2da21027c935b4b9fa6c561bdbffbf851e90027008b6862ba` |
| 8 | `theorem` | [IsClosed.isSeqClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isclosed-isseqclosed--f318327f0a2ba76739bde003.md) | 122 | `result-track:f318327f0a2ba76739bde003f02dda594a071927ea0815108505e24b5b607fa1` |
| 9 | `class` | [FrechetUrysohnSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/frecheturysohnspace--9569663ff3273752c0916f09.md) | 129 | `declaration-track:9569663ff3273752c0916f0915f9ce5dd5078b6ea08745bd4797695998c54e36` |
| 10 | `theorem` | [seqClosure_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/seqclosure-eq-closure--49d83e53c109bbbf96231384.md) | 133 | `result-track:49d83e53c109bbbf962313848082d28a0daac007a8a907fc3ea33a6308933917` |
| 11 | `theorem` | [mem_closure_iff_seq_limit](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/mem-closure-iff-seq-limit--061b4ba8f9aa92a455704988.md) | 139 | `result-track:061b4ba8f9aa92a455704988f41df69cb3b8155f3e60770b69b8b7b11c5cda03` |
| 12 | `theorem` | [tendsto_nhds_iff_seq_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/tendsto-nhds-iff-seq-tendsto--b9844d591036a9dbaff4361b.md) | 151 | `result-track:b9844d591036a9dbaff4361b27611fbf3c4ca6091d2292eb569977cc953c5106` |
| 13 | `theorem` | [FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/frecheturysohnspace-of-seq-tendsto-imp-tendsto--7e4f3d173897b13e3b9d81a5.md) | 165 | `result-track:7e4f3d173897b13e3b9d81a5c258ab229dbf0f2b9449cc60c4129d2a8ba17778` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/instance--7820ee6093911fd0e1792ea4.md) | 181 | `declaration-track:7820ee6093911fd0e1792ea4389b2875f0d33f4db1dd1cfa65c6522f4bb64a28` |
| 15 | `class` | [SequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/sequentialspace--a7e9513609fd908b2ade9706.md) | 188 | `declaration-track:a7e9513609fd908b2ade97064b5a552fdb42dacb002768b4a4df4c6b9c57b667` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/instance--a4df8e18a00869953418f5e6.md) | 194 | `declaration-track:a4df8e18a00869953418f5e6e0490474851d0f02bd29e66053dcba286c178e92` |
| 17 | `theorem` | [IsSeqClosed.isClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqclosed-isclosed--7c5fec81d4d55cca96e4c771.md) | 200 | `result-track:7c5fec81d4d55cca96e4c77142b5578697290a1ab875e893afd5be73efab5f6c` |
| 18 | `theorem` | [isSeqClosed_iff_isClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqclosed-iff-isclosed--e8ed9ca0ed91f03621af68ea.md) | 206 | `result-track:e8ed9ca0ed91f03621af68ead4beb4f76172cdda08bbb50cd02b37a23cb9fb20` |
| 19 | `def` | [SeqContinuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/seqcontinuous--94f82babbd7495f2f0504183.md) | 212 | `declaration-track:94f82babbd7495f2f0504183301cfe3584c1b6eec831ba00f66b7de7a636a9ab` |
| 20 | `theorem` | [IsSeqClosed.preimage](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqclosed-preimage--2c336c573b875363cf385ac8.md) | 218 | `result-track:2c336c573b875363cf385ac8710f2842f62170eda806de454926ccfdbee1889c` |
| 21 | `theorem` | [Continuous.seqContinuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/continuous-seqcontinuous--4796f224c0a8f45b667bddb5.md) | 223 | `result-track:4796f224c0a8f45b667bddb5131dbdc28529995178d10285f2aa4eaa11f15170` |
| 22 | `theorem` | [SeqContinuous.continuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/seqcontinuous-continuous--b8c5ae6c7721c73f44234cb1.md) | 228 | `result-track:b8c5ae6c7721c73f44234cb1056475c80eab64a474987c15f30a7f7e4b2826a7` |
| 23 | `theorem` | [continuous_iff_seqContinuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/continuous-iff-seqcontinuous--5453d2bc832e7ed9d31ae03b.md) | 235 | `result-track:5453d2bc832e7ed9d31ae03beb6a8d421d47e8b0f48c1433ce830e328b5785ed` |
| 24 | `theorem` | [QuotientMap.sequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/quotientmap-sequentialspace--f500028d6a2364dee2d4dc5b.md) | 240 | `result-track:f500028d6a2364dee2d4dc5b07db6c7470ad6b1d75e68e02e176c50ff43cb37c` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/instance--4efec16859ee3e7bb8ff9620.md) | 246 | `declaration-track:4efec16859ee3e7bb8ff9620314fd3c3eb504026a9e1e212197f14a860d728bb` |
| 26 | `def` | [IsSeqCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqcompact--cd4bb3b0662996e6b676f939.md) | 259 | `declaration-track:cd4bb3b0662996e6b676f939e30316eeff77aea5f2d3cf7444b16e20a80fe009` |
| 27 | `class` | [SeqCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/seqcompactspace--75f79d92e3f8a4da1afaf9d2.md) | 266 | `declaration-track:75f79d92e3f8a4da1afaf9d214e4a1275e0a8ec733cd3693bee82ec4a49b4d8d` |
| 28 | `theorem` | [IsSeqCompact.subseq_of_frequently_in](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqcompact-subseq-of-frequently-in--e5949b2c02f0c0b03ecfda08.md) | 273 | `result-track:e5949b2c02f0c0b03ecfda089985ddc2fa9455f144d6dab0d99fa7d843d46e07` |
| 29 | `theorem` | [SeqCompactSpace.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/seqcompactspace-tendsto-subseq--eca30209d9ba1ec08faaca20.md) | 281 | `result-track:eca30209d9ba1ec08faaca208ec59bcf10ec031d3696a508f16e77a36a0527da` |
| 30 | `theorem` | [IsCompact.isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/iscompact-isseqcompact--e0fe5db6444a19ef93c7e419.md) | 293 | `result-track:e0fe5db6444a19ef93c7e4191bd3c15fe5016ec977892886dff3923b52d7e90f` |
| 31 | `theorem` | [IsCompact.tendsto_subseq'](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/iscompact-tendsto-subseq--219a5cae98cda1a4f9ecec20.md) | 299 | `result-track:219a5cae98cda1a4f9ecec20ba084272dc33e83495a5737fb9e1f5e1707318c9` |
| 32 | `theorem` | [IsCompact.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/iscompact-tendsto-subseq--4d792d795ce69451f73b9bf7.md) | 305 | `result-track:4d792d795ce69451f73b9bf7f06c3684915b75c26ed8fc92e6ec82c7592a1ee5` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/instance--ca4e536a4c1afde8fa761d2f.md) | 311 | `declaration-track:ca4e536a4c1afde8fa761d2fa8260469ec6e7b9ae60201dcce28d0a81a5e6545` |
| 34 | `theorem` | [CompactSpace.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/compactspace-tendsto-subseq--1f223628bed043b085f391b3.md) | 316 | `result-track:1f223628bed043b085f391b3ca8f64bf94f990aa263fb554e373ccee3b1bc048` |
| 35 | `theorem` | [IsSeqCompact.exists_tendsto_of_frequently_mem](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqcompact-exists-tendsto-of-frequently-mem--71c6f852cf70785b0bb94afd.md) | 333 | `result-track:71c6f852cf70785b0bb94afd8c55af062a4034eea24ae45a62bf4f8b3fe651e1` |
| 36 | `theorem` | [IsSeqCompact.exists_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqcompact-exists-tendsto--f1f153d65b986c7c7b735af2.md) | 339 | `result-track:f1f153d65b986c7c7b735af22dae4c5f63075dc9eeaa824987c253e7dcd2eef8` |
| 37 | `theorem` | [IsSeqCompact.totallyBounded](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqcompact-totallybounded--00117e37269934a86a687938.md) | 345 | `result-track:00117e37269934a86a6879382580bef6efb8c6d6b6d889c6b2654bd8b0985b19` |
| 38 | `theorem` | [IsSeqCompact.isComplete](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqcompact-iscomplete--c874e7836fb946f68582b8a6.md) | 362 | `result-track:c874e7836fb946f68582b8a6724301fca81505221b8af4a232eefd1f6ac534c6` |
| 39 | `theorem` | [IsSeqCompact.isCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/isseqcompact-iscompact--49e5fff11829edd5ecafaff8.md) | 393 | `result-track:49e5fff11829edd5ecafaff8e46fd40f557a96d76635dd09b0b2675ca62a9f98` |
| 40 | `theorem` | [UniformSpace.isCompact_iff_isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/uniformspace-iscompact-iff-isseqcompact--973e88cca35fe6c0bdcec8ea.md) | 399 | `result-track:973e88cca35fe6c0bdcec8ea4eb81821e66c19733410bc3b5678797d6e213b24` |
| 41 | `theorem` | [UniformSpace.compactSpace_iff_seqCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/uniformspace-compactspace-iff-seqcompactspace--80d46002d2b3520adea0fca0.md) | 403 | `result-track:80d46002d2b3520adea0fca00f9527821e649fa18a7119037955067e315f5a3d` |
| 42 | `theorem` | [SeqCompact.lebesgue_number_lemma_of_metric](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/seqcompact-lebesgue-number-lemma-of-metric--ab9995dd3be779356f10b00f.md) | 415 | `result-track:ab9995dd3be779356f10b00fb38d32cd7ecafba90524836e7564c8e0d5667b40` |
| 43 | `theorem` | [tendsto_subseq_of_frequently_bounded](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/tendsto-subseq-of-frequently-bounded--6f594211da1b63e78fd6a1d7.md) | 426 | `result-track:6f594211da1b63e78fd6a1d7c1fb75330270d11ba4d82931683346dd3645ae7b` |
| 44 | `theorem` | [tendsto_subseq_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant7dbbdee4930e0e340690fb19d6fe73fa5c65a4bfd2ebe89ee1839614bbb123f3.lean/declarations/tendsto-subseq-of-bounded--a0bd1ca1d56adefbae184fbd.md) | 436 | `result-track:a0bd1ca1d56adefbae184fbda692fd5484a7e04baf83594fb523f3e03f4e086e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
