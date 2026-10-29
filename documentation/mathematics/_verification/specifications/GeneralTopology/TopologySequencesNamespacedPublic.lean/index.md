# Verification target: Topology Sequences Namespaced Public

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

[Module and every result](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/source.md)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subset_seqClosure](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/subset-seqclosure.md) | 87 | `result-track:032b89852acede2f997802906048e4161c51b8095d4873eeebd3e1328f7e3b02` |
| 2 | `theorem` | [seqClosure_subset_closure](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/seqclosure-subset-closure.md) | 92 | `result-track:2d130f2f5ae1e59f80e74e23a4dbf68c6d8a768f593ab291c10f943e2d6729f4` |
| 3 | `theorem` | [IsSeqClosed.seqClosure_eq](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isseqclosed-seqclosure-eq.md) | 96 | `result-track:66902ccf3d229e55dbff279a269cccd1489d76798ac05643db6a3bcfbddd3a59` |
| 4 | `theorem` | [isSeqClosed_of_seqClosure_eq](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isseqclosed-of-seqclosure-eq.md) | 100 | `result-track:48153390c26046426aea36847a85dae0d2f84b336ee2b31eecc49726eee2d909` |
| 5 | `theorem` | [isSeqClosed_iff](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isseqclosed-iff.md) | 104 | `result-track:2f6c87756133249a4567d7cdd5274f7cc3dd136e92edb3cbffe7eb58370dc499` |
| 6 | `theorem` | [IsClosed.isSeqClosed](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isclosed-isseqclosed.md) | 108 | `result-track:6d2a1d318b8172314b80f5fd6d5272a87f35401b8628d1891bb90c23db82290e` |
| 7 | `theorem` | [seqClosure_eq_closure](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/seqclosure-eq-closure.md) | 111 | `result-track:3e23054e843d0ac4111d3fb72d9dc41e4c7c23df223b61e115f16b2f37039484` |
| 8 | `theorem` | [mem_closure_iff_seq_limit](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/mem-closure-iff-seq-limit.md) | 116 | `result-track:65af2f6a33806ab1c86cb1006ec32af71a902561a95b870497b220a52f852036` |
| 9 | `theorem` | [tendsto_nhds_iff_seq_tendsto](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/tendsto-nhds-iff-seq-tendsto.md) | 127 | `result-track:f617c610126f709ef055f7b7e1799e72caf50ef85a3a492a2b3ac07b3f90dd3b` |
| 10 | `theorem` | [FrechetUrysohnSpace.of_seq_tendsto_imp_tendsto](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/frecheturysohnspace-of-seq-tendsto-imp-tendsto.md) | 140 | `result-track:7f64a0a43b2ff80d6323794fa2010775ebd07eec41b4eed3d3a9fb779b168c78` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/instance.md) | 156 | `declaration-track:4bc967249e3d2b0b3fbb467b8ee199df8ff6d263c9c2ab609ba94276eba66531` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 162 | `declaration-track:e481f651eaa44614394c04658773782770d8956de832d57c77a778a1ea2f1393` |
| 13 | `theorem` | [Topology.IsInducing.frechetUrysohnSpace](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/topology-isinducing-frecheturysohnspace.md) | 166 | `result-track:cc97ab1cae3fcbca8025d02264dfc55b86240a8514b1bd05414db0417570701b` |
| 14 | `instance` | [Subtype.instFrechetUrysohnSpace](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/subtype-instfrecheturysohnspace.md) | 176 | `declaration-track:1525a0a4526df7b0bc9bbc8becbed4687af9569e763abd40e76795f1dd048ddf` |
| 15 | `theorem` | [isSeqClosed_iff_isClosed](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isseqclosed-iff-isclosed.md) | 181 | `result-track:e82c2eecc67a2ea71e40ab2b2682b849135ac0b9c68c426e3e91787fdf6df53f` |
| 16 | `lemma` | [isClosed_iUnion_closure_singleton_of_not_tendsto](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isclosed-iunion-closure-singleton-of-not-tendsto.md) | 185 | `result-track:b41af3c38f822035751ce334c605a6c3739a80df0c799ec706f67415bb3fe016` |
| 17 | `lemma` | [isClosed_range_of_not_tendsto](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isclosed-range-of-not-tendsto.md) | 209 | `result-track:9bd7a45f412bfa7eccc9df8db3bd6de882f5c70a2b9353e886976a4dda9eaa99` |
| 18 | `theorem` | [IsSeqClosed.preimage](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isseqclosed-preimage.md) | 216 | `result-track:59f8f56d99cf198316a83d5a6bb671c835da393e4e04ca12f54d63256ac4c58b` |
| 19 | `theorem` | [Continuous.seqContinuous](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/continuous-seqcontinuous.md) | 220 | `result-track:685a26e276a799d3d65b6e958b787c02a0ba0d465419ca967bc9066c26897f80` |
| 20 | `theorem` | [SeqContinuous.continuous](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/seqcontinuous-continuous.md) | 224 | `result-track:0a344d503e8f61c8752777eb88ae7da2175fa2b61a91d3fd27c0074e8d227903` |
| 21 | `theorem` | [continuous_iff_seqContinuous](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/continuous-iff-seqcontinuous.md) | 230 | `result-track:89dc7d469c82a0500369f0b857c9304130785c0e7cbe8a4367aa750e8b075480` |
| 22 | `theorem` | [SequentialSpace.coinduced](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/sequentialspace-coinduced.md) | 234 | `result-track:8d80f65ae94f7ec5fa4f9c4e874b7adab1c4b7b5d740ed73225e9c0688fe750a` |
| 23 | `theorem` | [SequentialSpace.iSup](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/sequentialspace-isup.md) | 239 | `result-track:159a1fe454720cd5987cb1503232930c651b5b41a027785ddb82d220a92d6212` |
| 24 | `theorem` | [SequentialSpace.sup](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/sequentialspace-sup.md) | 246 | `result-track:dc5b9711e91a3b474eceec2231540aa14be8a7e97264b786efb427326653b3e5` |
| 25 | `lemma` | [Topology.IsQuotientMap.sequentialSpace](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/topology-isquotientmap-sequentialspace.md) | 252 | `result-track:28a82bf30ff08524e822052ce088a568a4957559babf0617c4c720dfbf334c8d` |
| 26 | `instance` | [Quotient.instSequentialSpace](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/quotient-instsequentialspace.md) | 256 | `declaration-track:67976644d3c95eea6a92992bbacb25ed5861f9c1e399068a435887906763fafd` |
| 27 | `instance` | [Sum.instSequentialSpace](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/sum-instsequentialspace.md) | 261 | `declaration-track:430006c946aab6c82ad991b60571798b6aa1bd8b90656b4748f6caeb02a83fb8` |
| 28 | `instance` | [Sigma.instSequentialSpace](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/sigma-instsequentialspace.md) | 266 | `declaration-track:d16f5674b8c59e0aebe889d731e39d33caabab9cece40c53edee8e8d2c3e5474` |
| 29 | `theorem` | [IsSeqCompact.subseq_of_frequently_in](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isseqcompact-subseq-of-frequently-in.md) | 278 | `result-track:8c7c5bc60160d2a9e0428bcbd4c4707107c292250bb99cd1a1c1e2f81a6bc51b` |
| 30 | `theorem` | [SeqCompactSpace.tendsto_subseq](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/seqcompactspace-tendsto-subseq.md) | 285 | `result-track:eb152d8f70690d8c4cc1c9f8cff985618046b31b9ed1dfeb199214f06c5acff8` |
| 31 | `theorem` | [IsCompact.isSeqCompact](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/iscompact-isseqcompact.md) | 296 | `result-track:26663774d89be4dbed63f6572db6b38d8fc822657041b404767b55782263fef8` |
| 32 | `theorem` | [IsCompact.tendsto_subseq'](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/iscompact-tendsto-subseq.md) | 301 | `result-track:47fb9697b7dee56f55fc4cb09333fe3b4cdfda22c2abc2885626169770998243` |
| 33 | `theorem` | [IsCompact.tendsto_subseq](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/iscompact-tendsto-subseq-source-edition-2.md) | 306 | `result-track:910bb9810e6b24132539dbfa0570abff1a76f6b1b0fa2b76ec3b300e0001648b` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 311 | `declaration-track:d6bcf49d49eb3de84d4a6166a6e3a65f1c492a1a4abecb79f66277e3dfd888c8` |
| 35 | `theorem` | [CompactSpace.tendsto_subseq](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/compactspace-tendsto-subseq.md) | 315 | `result-track:98ec37708b6a9a8c43541581d2f11f622f21c01e452af661e6f1b9a5eaee1490` |
| 36 | `theorem` | [IsSeqCompact.image](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isseqcompact-image.md) | 326 | `result-track:d0151e8eb52a5e2ea63597aeaca6e19ea53320aaa591deccd07d2946bbf9a7dc` |
| 37 | `theorem` | [IsSeqCompact.range](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isseqcompact-range.md) | 336 | `result-track:062aa8bd579e09502fc9d33ad7e96448994c69cf95e4be0c291604a3dd61b05d` |
| 38 | `theorem` | [IsSeqCompact.exists_tendsto_of_frequently_mem](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isseqcompact-exists-tendsto-of-frequently-mem.md) | 352 | `result-track:82c313e39032c1876e0e2a66d078136f22f0e145db6901fde135f2ca5c0ba071` |
| 39 | `theorem` | [IsSeqCompact.exists_tendsto](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isseqcompact-exists-tendsto.md) | 357 | `result-track:9ede096c308336163700ab4e05ce68e0640b11754c7a4792d94288b455c98635` |
| 40 | `theorem` | [IsSeqCompact.totallyBounded](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isseqcompact-totallybounded.md) | 362 | `result-track:0b41ea17dbdb9748a2b8ba28f3a50d2fde76ddaa61d3af060a06362ba60a7463` |
| 41 | `theorem` | [IsSeqCompact.isComplete](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isseqcompact-iscomplete.md) | 378 | `result-track:18bbd32f73180123374d40a39a7034d7208090ab8c932446e65d957891919194` |
| 42 | `theorem` | [IsSeqCompact.isCompact](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/isseqcompact-iscompact.md) | 414 | `result-track:e62369fed00f1b95bb58ef214f9345731ccc2d6e4ed759a5387af344d43b42a5` |
| 43 | `theorem` | [isCompact_iff_isSeqCompact](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/iscompact-iff-isseqcompact.md) | 421 | `result-track:8ad233f013142f549aeeb6fdaa3805ebc356600dd4147a2396e88635265e2dba` |
| 44 | `theorem` | [compactSpace_iff_seqCompactSpace](../../../../GeneralTopology/TopologySequencesNamespacedPublic.lean/declarations/compactspace-iff-seqcompactspace.md) | 424 | `result-track:cbf3438766455dfda417e7526e0ad27d68c9dfbad1f36104058e74741651a819` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18097704e162a9db5a7ad5ab60c4a34289383863b54e8871e50721caa9fa35d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Sequences/Variant583a89aeb0e2058524c77137a839d902f2d7a8c3f921bd0c50c86d8bd296b1f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
