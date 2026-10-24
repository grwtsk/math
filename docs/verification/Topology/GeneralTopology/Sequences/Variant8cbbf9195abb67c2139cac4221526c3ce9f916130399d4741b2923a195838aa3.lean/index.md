# Verification target: GRWTSK.Topology.GeneralTopology.Sequences.Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b886689c265cafe71afa294c77c18c9ffec30b9b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b886689c265cafe71afa294c77c18c9ffec30b9b`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Defs.Sequences` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subset_seqClosure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/subset-seqclosure--ef6755cd9db748e279999265.md) | 83 | `result-track:ef6755cd9db748e2799992658cd162362882304af68a655ec4b0dd0fad29c245` |
| 2 | `theorem` | [seqClosure_subset_closure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/seqclosure-subset-closure--6ef33a90a3d9992ee6e01285.md) | 88 | `result-track:6ef33a90a3d9992ee6e01285b4329d743d88c4a59837ffab22c6ad5aea1252a5` |
| 3 | `theorem` | [IsSeqClosed.seqClosure_eq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isseqclosed-seqclosure-eq--e564871baf1602d6aecccc5d.md) | 92 | `result-track:e564871baf1602d6aecccc5d0c33ec496881e0cb546421e596d4bb5896d92db4` |
| 4 | `theorem` | [isSeqClosed_of_seqClosure_eq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isseqclosed-of-seqclosure-eq--3e48bbfaa8618c56d585a8a4.md) | 96 | `result-track:3e48bbfaa8618c56d585a8a45b687d682b19363eb505ff8beb7f5f42682b25d5` |
| 5 | `theorem` | [isSeqClosed_iff](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isseqclosed-iff--efa79a76b834551350d3ed49.md) | 100 | `result-track:efa79a76b834551350d3ed4930377c562ae0e0bbe25ee425e135f5ed401df310` |
| 6 | `theorem` | [IsClosed.isSeqClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isclosed-isseqclosed--cb8dc7bbd0cf5df6493d7dc1.md) | 104 | `result-track:cb8dc7bbd0cf5df6493d7dc119e56b218ab57cc1bfe604becb4e7deb5046986b` |
| 7 | `theorem` | [seqClosure_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/seqclosure-eq-closure--a708dd1ed8ced1270d58bcb7.md) | 107 | `result-track:a708dd1ed8ced1270d58bcb720baf8f517e398e2c70045fd59eb9c8c550307af` |
| 8 | `theorem` | [mem_closure_iff_seq_limit](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/mem-closure-iff-seq-limit--3b8fe20bf41475cd4143d725.md) | 112 | `result-track:3b8fe20bf41475cd4143d725ab89fd67ef49a79dd2e3e0654b1480f1fdce2416` |
| 9 | `theorem` | [tendsto_nhds_iff_seq_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/tendsto-nhds-iff-seq-tendsto--52ae112a3b595fa84ae3144b.md) | 123 | `result-track:52ae112a3b595fa84ae3144bdf290e9986b784b9d926863d34f48a7811a52e65` |
| 10 | `theorem` | [FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/frecheturysohnspace-of-seq-tendsto-imp-tendsto--1430f29e2e8aede2a0fb22a4.md) | 136 | `result-track:1430f29e2e8aede2a0fb22a48fc81334a35c9aa9709b9e739c6cbaf5f37f55fd` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/instance--3c754562950fa236d110452e.md) | 152 | `declaration-track:3c754562950fa236d110452ea54d2c6bcb723cf5262b2d6810ac989888ef24b0` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/instance--ab6af6e85e8650a31453e5bf.md) | 158 | `declaration-track:ab6af6e85e8650a31453e5bf33613439c09d09d86270a6c528b385132eefab9b` |
| 13 | `theorem` | [Topology.IsInducing.frechetUrysohnSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/topology-isinducing-frecheturysohnspace--4dea571b962f258a2993f1cf.md) | 162 | `result-track:4dea571b962f258a2993f1cf1b0497b6e1ce05931a7e3937f88ecb5061346f4b` |
| 14 | `instance` | [Subtype.instFrechetUrysohnSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/subtype-instfrecheturysohnspace--798458bb4135c8542d25c4e2.md) | 175 | `declaration-track:798458bb4135c8542d25c4e25f61adb50df31eed9b391c5c26f254efcf572317` |
| 15 | `theorem` | [isSeqClosed_iff_isClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isseqclosed-iff-isclosed--50df668578b93c2e1ce68696.md) | 180 | `result-track:50df668578b93c2e1ce68696641cbf43a619ce925905732c83c3bd5ac1e00c93` |
| 16 | `theorem` | [IsSeqClosed.preimage](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isseqclosed-preimage--7b73c7e4973b6e0aa6300d9e.md) | 185 | `result-track:7b73c7e4973b6e0aa6300d9e085d211e783b7fc74f48e194802e298e8e99a1f8` |
| 17 | `theorem` | [Continuous.seqContinuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/continuous-seqcontinuous--6c0cca81f5ea0242c86ecee7.md) | 189 | `result-track:6c0cca81f5ea0242c86ecee7519f4c56a697a3db966ebaa1c914cb7f8c234120` |
| 18 | `theorem` | [SeqContinuous.continuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/seqcontinuous-continuous--0de9131221a68736539dc963.md) | 193 | `result-track:0de9131221a68736539dc9633b8ffd8df440a86c85240d2777a1ab584f63f308` |
| 19 | `theorem` | [continuous_iff_seqContinuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/continuous-iff-seqcontinuous--6cb80be499e876c160c69a57.md) | 199 | `result-track:6cb80be499e876c160c69a57fc79520b5b58f1bae3ef8fc33a3ff8f064d4c8c8` |
| 20 | `theorem` | [SequentialSpace.coinduced](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/sequentialspace-coinduced--efb594248ceab95ebbcfaf58.md) | 203 | `result-track:efb594248ceab95ebbcfaf5891e6bed15ab92e90f7edfba48eb3a1ab1f522a6f` |
| 21 | `theorem` | [SequentialSpace.iSup](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/sequentialspace-isup--74fe3b41082711760ae56b1d.md) | 208 | `result-track:74fe3b41082711760ae56b1d9c654d089583b9176e25534738c9c5581a6675fd` |
| 22 | `theorem` | [SequentialSpace.sup](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/sequentialspace-sup--3c71ce67f0b011ed831b5080.md) | 215 | `result-track:3c71ce67f0b011ed831b5080def2c0f82c463ca2e819fa5a0bb0ebe6d1096a7c` |
| 23 | `lemma` | [Topology.IsQuotientMap.sequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/topology-isquotientmap-sequentialspace--09097056945b07ab48a92125.md) | 221 | `result-track:09097056945b07ab48a921256afb1e802585f766e3362dc6d9615e2c34ec5822` |
| 24 | `instance` | [Quotient.instSequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/quotient-instsequentialspace--ae856a063fd479f153e09a9b.md) | 228 | `declaration-track:ae856a063fd479f153e09a9bdfdfb1675d8d11f0aa14709fbbc395009e351bc9` |
| 25 | `instance` | [Sum.instSequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/sum-instsequentialspace--8a4eb3bac06b5f9ad51a9065.md) | 233 | `declaration-track:8a4eb3bac06b5f9ad51a906505f02bd45e5ba70a9c080d849b5161ee50fcb0ed` |
| 26 | `instance` | [Sigma.instSequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/sigma-instsequentialspace--f2da5b2c47d5b98d3bcb4ded.md) | 238 | `declaration-track:f2da5b2c47d5b98d3bcb4ded9525a535e4d4e1513b328cfea6e68f98bd768800` |
| 27 | `theorem` | [IsSeqCompact.subseq_of_frequently_in](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isseqcompact-subseq-of-frequently-in--2dbad6b2ee51d03888d1a83c.md) | 250 | `result-track:2dbad6b2ee51d03888d1a83c88a6cf2bb496d360358001d9b296f70e1c4cf5d4` |
| 28 | `theorem` | [SeqCompactSpace.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/seqcompactspace-tendsto-subseq--669ee5bd83501b057ffbbc86.md) | 257 | `result-track:669ee5bd83501b057ffbbc86b915a4932f795f0d56643c8988fffe5b8356ab4f` |
| 29 | `theorem` | [IsCompact.isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/iscompact-isseqcompact--d824680f636924c16738fc02.md) | 268 | `result-track:d824680f636924c16738fc0296e255fef861e68d946bc86403e8a52ad2f43a41` |
| 30 | `theorem` | [IsCompact.tendsto_subseq'](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/iscompact-tendsto-subseq--a416ad38b0261ed1de728728.md) | 273 | `result-track:a416ad38b0261ed1de728728bc31b37002b430bd5f945aa1ea53a983ee735303` |
| 31 | `theorem` | [IsCompact.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/iscompact-tendsto-subseq--dab12e7ffad92a3b4b25deff.md) | 278 | `result-track:dab12e7ffad92a3b4b25deffdbee8556fd938a46d557cc4579d463cecbb95ca8` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/instance--7ed02c64a57c207c9f412659.md) | 283 | `declaration-track:7ed02c64a57c207c9f412659d5fdce60e5acaf531385a0866e03819f65ea5284` |
| 33 | `theorem` | [CompactSpace.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/compactspace-tendsto-subseq--807e5804101f191e65d50edf.md) | 287 | `result-track:807e5804101f191e65d50edfa19f56663920bda24f889df8c961a5aa53a6c3d7` |
| 34 | `theorem` | [IsSeqCompact.image](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isseqcompact-image--60dc27f78867309620e6015c.md) | 298 | `result-track:60dc27f78867309620e6015cd8768fc86701026bc04a3d2fbd6785aa7826e679` |
| 35 | `theorem` | [IsSeqCompact.range](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isseqcompact-range--ec4878cb165db268ea9a1285.md) | 308 | `result-track:ec4878cb165db268ea9a1285fb14f5de607cb58d011afc7c68aa4d2201b8240b` |
| 36 | `theorem` | [IsSeqCompact.exists_tendsto_of_frequently_mem](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isseqcompact-exists-tendsto-of-frequently-mem--bee2af00d406e7e1dbe6bb7f.md) | 324 | `result-track:bee2af00d406e7e1dbe6bb7f89bb144231ccd59ce7d71cd356b964421921b525` |
| 37 | `theorem` | [IsSeqCompact.exists_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isseqcompact-exists-tendsto--0bb43091a21d9b068edc4eed.md) | 329 | `result-track:0bb43091a21d9b068edc4eed8371f43a0c4eac18a872942efd3fef5ac3d4cc26` |
| 38 | `theorem` | [IsSeqCompact.totallyBounded](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isseqcompact-totallybounded--da579578704b8f45482c9d6e.md) | 334 | `result-track:da579578704b8f45482c9d6eaffe4ff139b9420c3cee887739680403a2ebab95` |
| 39 | `theorem` | [IsSeqCompact.isComplete](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isseqcompact-iscomplete--578da5c32d61f6bbe51b07a9.md) | 350 | `result-track:578da5c32d61f6bbe51b07a9838288d6c09c66297bc3278da7bcfdbad3b04046` |
| 40 | `theorem` | [IsSeqCompact.isCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/isseqcompact-iscompact--fc0cb0fdebf599a6de7ebab2.md) | 380 | `result-track:fc0cb0fdebf599a6de7ebab226cf651a5330340a07628d15ef1d6496a76f7094` |
| 41 | `theorem` | [UniformSpace.isCompact_iff_isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/uniformspace-iscompact-iff-isseqcompact--e8a5168a5d19694a83e33bb4.md) | 385 | `result-track:e8a5168a5d19694a83e33bb44c116391e9d887f127b4de8788b922ebcd15dd6d` |
| 42 | `theorem` | [UniformSpace.compactSpace_iff_seqCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/declarations/uniformspace-compactspace-iff-seqcompactspace--cba173cf9f5df7c2fe30d3c1.md) | 388 | `result-track:cba173cf9f5df7c2fe30d3c1024e41ebd6bd01bb6fb07f4ba5dd6e6b0e3b6d6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
