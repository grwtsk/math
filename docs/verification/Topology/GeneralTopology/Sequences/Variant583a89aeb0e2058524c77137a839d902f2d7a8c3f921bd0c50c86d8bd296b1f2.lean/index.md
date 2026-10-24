# Verification target: GRWTSK.Topology.GeneralTopology.Sequences.Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae9139a6671e75e5e8d2f7fa20c66b31e9a6e1e5",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae9139a6671e75e5e8d2f7fa20c66b31e9a6e1e5`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subset_seqClosure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/subset-seqclosure--032b89852acede2f99780290.md) | 87 | `result-track:032b89852acede2f997802906048e4161c51b8095d4873eeebd3e1328f7e3b02` |
| 2 | `theorem` | [seqClosure_subset_closure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/seqclosure-subset-closure--2d130f2f5ae1e59f80e74e23.md) | 92 | `result-track:2d130f2f5ae1e59f80e74e23a4dbf68c6d8a768f593ab291c10f943e2d6729f4` |
| 3 | `theorem` | [IsSeqClosed.seqClosure_eq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isseqclosed-seqclosure-eq--66902ccf3d229e55dbff279a.md) | 96 | `result-track:66902ccf3d229e55dbff279a269cccd1489d76798ac05643db6a3bcfbddd3a59` |
| 4 | `theorem` | [isSeqClosed_of_seqClosure_eq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isseqclosed-of-seqclosure-eq--48153390c26046426aea3684.md) | 100 | `result-track:48153390c26046426aea36847a85dae0d2f84b336ee2b31eecc49726eee2d909` |
| 5 | `theorem` | [isSeqClosed_iff](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isseqclosed-iff--2f6c87756133249a4567d7cd.md) | 104 | `result-track:2f6c87756133249a4567d7cdd5274f7cc3dd136e92edb3cbffe7eb58370dc499` |
| 6 | `theorem` | [IsClosed.isSeqClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isclosed-isseqclosed--6d2a1d318b8172314b80f5fd.md) | 108 | `result-track:6d2a1d318b8172314b80f5fd6d5272a87f35401b8628d1891bb90c23db82290e` |
| 7 | `theorem` | [seqClosure_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/seqclosure-eq-closure--3e23054e843d0ac4111d3fb7.md) | 111 | `result-track:3e23054e843d0ac4111d3fb72d9dc41e4c7c23df223b61e115f16b2f37039484` |
| 8 | `theorem` | [mem_closure_iff_seq_limit](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/mem-closure-iff-seq-limit--65af2f6a33806ab1c86cb100.md) | 116 | `result-track:65af2f6a33806ab1c86cb1006ec32af71a902561a95b870497b220a52f852036` |
| 9 | `theorem` | [tendsto_nhds_iff_seq_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/tendsto-nhds-iff-seq-tendsto--f617c610126f709ef055f7b7.md) | 127 | `result-track:f617c610126f709ef055f7b7e1799e72caf50ef85a3a492a2b3ac07b3f90dd3b` |
| 10 | `theorem` | [FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/frecheturysohnspace-of-seq-tendsto-imp-tendsto--7f64a0a43b2ff80d6323794f.md) | 140 | `result-track:7f64a0a43b2ff80d6323794fa2010775ebd07eec41b4eed3d3a9fb779b168c78` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/instance--4bc967249e3d2b0b3fbb467b.md) | 156 | `declaration-track:4bc967249e3d2b0b3fbb467b8ee199df8ff6d263c9c2ab609ba94276eba66531` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/instance--e481f651eaa44614394c0465.md) | 162 | `declaration-track:e481f651eaa44614394c04658773782770d8956de832d57c77a778a1ea2f1393` |
| 13 | `theorem` | [Topology.IsInducing.frechetUrysohnSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/topology-isinducing-frecheturysohnspace--cc97ab1cae3fcbca8025d022.md) | 166 | `result-track:cc97ab1cae3fcbca8025d02264dfc55b86240a8514b1bd05414db0417570701b` |
| 14 | `instance` | [Subtype.instFrechetUrysohnSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/subtype-instfrecheturysohnspace--1525a0a4526df7b0bc9bbc8b.md) | 176 | `declaration-track:1525a0a4526df7b0bc9bbc8becbed4687af9569e763abd40e76795f1dd048ddf` |
| 15 | `theorem` | [isSeqClosed_iff_isClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isseqclosed-iff-isclosed--e82c2eecc67a2ea71e40ab2b.md) | 181 | `result-track:e82c2eecc67a2ea71e40ab2b2682b849135ac0b9c68c426e3e91787fdf6df53f` |
| 16 | `lemma` | [isClosed_iUnion_closure_singleton_of_not_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isclosed-iunion-closure-singleton-of-not-tendsto--b41af3c38f822035751ce334.md) | 185 | `result-track:b41af3c38f822035751ce334c605a6c3739a80df0c799ec706f67415bb3fe016` |
| 17 | `lemma` | [isClosed_range_of_not_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isclosed-range-of-not-tendsto--9bd7a45f412bfa7eccc9df8d.md) | 209 | `result-track:9bd7a45f412bfa7eccc9df8db3bd6de882f5c70a2b9353e886976a4dda9eaa99` |
| 18 | `theorem` | [IsSeqClosed.preimage](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isseqclosed-preimage--59f8f56d99cf198316a83d5a.md) | 216 | `result-track:59f8f56d99cf198316a83d5a6bb671c835da393e4e04ca12f54d63256ac4c58b` |
| 19 | `theorem` | [Continuous.seqContinuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/continuous-seqcontinuous--685a26e276a799d3d65b6e95.md) | 220 | `result-track:685a26e276a799d3d65b6e958b787c02a0ba0d465419ca967bc9066c26897f80` |
| 20 | `theorem` | [SeqContinuous.continuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/seqcontinuous-continuous--0a344d503e8f61c8752777eb.md) | 224 | `result-track:0a344d503e8f61c8752777eb88ae7da2175fa2b61a91d3fd27c0074e8d227903` |
| 21 | `theorem` | [continuous_iff_seqContinuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/continuous-iff-seqcontinuous--89dc7d469c82a0500369f0b8.md) | 230 | `result-track:89dc7d469c82a0500369f0b857c9304130785c0e7cbe8a4367aa750e8b075480` |
| 22 | `theorem` | [SequentialSpace.coinduced](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/sequentialspace-coinduced--8d80f65ae94f7ec5fa4f9c4e.md) | 234 | `result-track:8d80f65ae94f7ec5fa4f9c4e874b7adab1c4b7b5d740ed73225e9c0688fe750a` |
| 23 | `theorem` | [SequentialSpace.iSup](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/sequentialspace-isup--159a1fe454720cd5987cb150.md) | 239 | `result-track:159a1fe454720cd5987cb1503232930c651b5b41a027785ddb82d220a92d6212` |
| 24 | `theorem` | [SequentialSpace.sup](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/sequentialspace-sup--dc5b9711e91a3b474eceec22.md) | 246 | `result-track:dc5b9711e91a3b474eceec2231540aa14be8a7e97264b786efb427326653b3e5` |
| 25 | `lemma` | [Topology.IsQuotientMap.sequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/topology-isquotientmap-sequentialspace--28a82bf30ff08524e822052c.md) | 252 | `result-track:28a82bf30ff08524e822052ce088a568a4957559babf0617c4c720dfbf334c8d` |
| 26 | `instance` | [Quotient.instSequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/quotient-instsequentialspace--67976644d3c95eea6a92992b.md) | 256 | `declaration-track:67976644d3c95eea6a92992bbacb25ed5861f9c1e399068a435887906763fafd` |
| 27 | `instance` | [Sum.instSequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/sum-instsequentialspace--430006c946aab6c82ad991b6.md) | 261 | `declaration-track:430006c946aab6c82ad991b60571798b6aa1bd8b90656b4748f6caeb02a83fb8` |
| 28 | `instance` | [Sigma.instSequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/sigma-instsequentialspace--d16f5674b8c59e0aebe889d7.md) | 266 | `declaration-track:d16f5674b8c59e0aebe889d731e39d33caabab9cece40c53edee8e8d2c3e5474` |
| 29 | `theorem` | [IsSeqCompact.subseq_of_frequently_in](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isseqcompact-subseq-of-frequently-in--8c7c5bc60160d2a9e0428bcb.md) | 278 | `result-track:8c7c5bc60160d2a9e0428bcbd4c4707107c292250bb99cd1a1c1e2f81a6bc51b` |
| 30 | `theorem` | [SeqCompactSpace.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/seqcompactspace-tendsto-subseq--eb152d8f70690d8c4cc1c9f8.md) | 285 | `result-track:eb152d8f70690d8c4cc1c9f8cff985618046b31b9ed1dfeb199214f06c5acff8` |
| 31 | `theorem` | [IsCompact.isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/iscompact-isseqcompact--26663774d89be4dbed63f657.md) | 296 | `result-track:26663774d89be4dbed63f6572db6b38d8fc822657041b404767b55782263fef8` |
| 32 | `theorem` | [IsCompact.tendsto_subseq'](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/iscompact-tendsto-subseq--47fb9697b7dee56f55fc4cb0.md) | 301 | `result-track:47fb9697b7dee56f55fc4cb09333fe3b4cdfda22c2abc2885626169770998243` |
| 33 | `theorem` | [IsCompact.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/iscompact-tendsto-subseq--910bb9810e6b24132539dbfa.md) | 306 | `result-track:910bb9810e6b24132539dbfa0570abff1a76f6b1b0fa2b76ec3b300e0001648b` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/instance--d6bcf49d49eb3de84d4a6166.md) | 311 | `declaration-track:d6bcf49d49eb3de84d4a6166a6e3a65f1c492a1a4abecb79f66277e3dfd888c8` |
| 35 | `theorem` | [CompactSpace.tendsto_subseq](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/compactspace-tendsto-subseq--98ec37708b6a9a8c43541581.md) | 315 | `result-track:98ec37708b6a9a8c43541581d2f11f622f21c01e452af661e6f1b9a5eaee1490` |
| 36 | `theorem` | [IsSeqCompact.image](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isseqcompact-image--d0151e8eb52a5e2ea63597ae.md) | 326 | `result-track:d0151e8eb52a5e2ea63597aeaca6e19ea53320aaa591deccd07d2946bbf9a7dc` |
| 37 | `theorem` | [IsSeqCompact.range](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isseqcompact-range--062aa8bd579e09502fc9d33a.md) | 336 | `result-track:062aa8bd579e09502fc9d33ad7e96448994c69cf95e4be0c291604a3dd61b05d` |
| 38 | `theorem` | [IsSeqCompact.exists_tendsto_of_frequently_mem](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isseqcompact-exists-tendsto-of-frequently-mem--82c313e39032c1876e0e2a66.md) | 352 | `result-track:82c313e39032c1876e0e2a66d078136f22f0e145db6901fde135f2ca5c0ba071` |
| 39 | `theorem` | [IsSeqCompact.exists_tendsto](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isseqcompact-exists-tendsto--9ede096c308336163700ab4e.md) | 357 | `result-track:9ede096c308336163700ab4e05ce68e0640b11754c7a4792d94288b455c98635` |
| 40 | `theorem` | [IsSeqCompact.totallyBounded](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isseqcompact-totallybounded--0b41ea17dbdb9748a2b8ba28.md) | 362 | `result-track:0b41ea17dbdb9748a2b8ba28f3a50d2fde76ddaa61d3af060a06362ba60a7463` |
| 41 | `theorem` | [IsSeqCompact.isComplete](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isseqcompact-iscomplete--18bbd32f73180123374d40a3.md) | 378 | `result-track:18bbd32f73180123374d40a39a7034d7208090ab8c932446e65d957891919194` |
| 42 | `theorem` | [IsSeqCompact.isCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/isseqcompact-iscompact--e62369fed00f1b95bb58ef21.md) | 414 | `result-track:e62369fed00f1b95bb58ef214f9345731ccc2d6e4ed759a5387af344d43b42a5` |
| 43 | `theorem` | [isCompact_iff_isSeqCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/iscompact-iff-isseqcompact--8ad233f013142f549aeeb6fd.md) | 421 | `result-track:8ad233f013142f549aeeb6fdaa3805ebc356600dd4147a2396e88635265e2dba` |
| 44 | `theorem` | [compactSpace_iff_seqCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean/declarations/compactspace-iff-seqcompactspace--cbf3438766455dfda417e752.md) | 424 | `result-track:cbf3438766455dfda417e7526e0ad27d68c9dfbad1f36104058e74741651a819` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
