# Verification target: Cauchy Namespaced Cauchy Seq Shift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "768044dc607acfa19eb9c8e0182095611b50e530",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/index.md) · [Full source](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `768044dc607acfa19eb9c8e0182095611b50e530`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cauchy](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy.md) | 33 | `declaration-track:afdebad7d87af4b945bede5c4d54432e25fbeac70c2d9e7eab4fe6cdf3641fa4` |
| 2 | `def` | [IsComplete](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/iscomplete.md) | 38 | `declaration-track:3cdbe17ad31176484a953a9aae76e49f2ad25f1400b464dce3a4b2b4fc950131` |
| 3 | `theorem` | [Filter.HasBasis.cauchy_iff](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/filter-hasbasis-cauchy-iff.md) | 41 | `result-track:02db1f526f7aacafafed860d8a4f74faca59295b7bb580a8eece0bfa4b798730` |
| 4 | `theorem` | [cauchy_iff'](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-iff-source-edition-2.md) | 48 | `result-track:e6e3230405006f3c6c42fb80fd50c3504718f3e708a0768a812ae34635eb4cba` |
| 5 | `theorem` | [cauchy_iff](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-iff.md) | 52 | `result-track:aeb1c149eb294edf31b5f643cd6b3b8f925b95ea5dd2b2e51f8c797bc8758523` |
| 6 | `lemma` | [cauchy_iff_le](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-iff-le.md) | 56 | `result-track:df8edc616d1029a3273db62b08362170ba315aa54525f69972aeafc2c0e3aa69` |
| 7 | `theorem` | [Cauchy.ultrafilter_of](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-ultrafilter-of.md) | 60 | `result-track:ea18e4c4995da0adcac70545630a5ae01ed68b7cfa21d12368df118959488e8d` |
| 8 | `theorem` | [cauchy_map_iff](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-map-iff-source-edition-2.md) | 66 | `result-track:86b874b66d8b0278beb42d54ff6bb67efb541467852c42422927aabd1d6980b6` |
| 9 | `theorem` | [cauchy_map_iff'](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-map-iff.md) | 70 | `result-track:85c0554534a65db69536e06cdc51df7b7254af257e2cb9721bca4d9eeb500d53` |
| 10 | `theorem` | [Cauchy.mono](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-mono-source-edition-2.md) | 74 | `result-track:c0d137bc87a2e903f80368ecfc9a3336e7424fd36113f4d66f12d71e77769083` |
| 11 | `theorem` | [Cauchy.mono'](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-mono.md) | 77 | `result-track:579c22c7be61fbe9c071261466637d3ca0af09e97a209ad20e8b290018af9e23` |
| 12 | `theorem` | [cauchy_nhds](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-nhds.md) | 80 | `result-track:a1f6e901dd7591b5ba14d40005aabeaf6d4817d6e70ba55aef02d836a2f78dba` |
| 13 | `theorem` | [cauchy_pure](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-pure.md) | 83 | `result-track:4c61e2212172565d36967f39dd7ae1279ea023ec4870037bc3c7160a9193f7f9` |
| 14 | `theorem` | [Filter.Tendsto.cauchy_map](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/filter-tendsto-cauchy-map.md) | 86 | `result-track:88b437a595928e139fca64ddf927695296b020b69744770cc21b64df38287827` |
| 15 | `lemma` | [Cauchy.mono_uniformSpace](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-mono-uniformspace.md) | 90 | `result-track:a8784b30fda88c95d09fa31a14e672a520507687a08e48ef0bd0d86f81d1cad6` |
| 16 | `lemma` | [cauchy_inf_uniformSpace](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-inf-uniformspace.md) | 94 | `result-track:7881976d23aeb616bb4e4479b968cbc0fac80ba2894c8055fd2f81be633925cd` |
| 17 | `lemma` | [cauchy_iInf_uniformSpace](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-iinf-uniformspace-source-edition-2.md) | 100 | `result-track:f8da2c07a548587a1d85e77b10e6a67e1e4c2e20e65a70cb3e9aedca035b4ecd` |
| 18 | `lemma` | [cauchy_iInf_uniformSpace'](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-iinf-uniformspace.md) | 106 | `result-track:d53b96a159149266df0c9d619bed0c35228f15acc396353051899f544c9696e6` |
| 19 | `lemma` | [cauchy_comap_uniformSpace](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-comap-uniformspace.md) | 111 | `result-track:13e90c376b2d5973ff8f1ad15f6a2dd50852b1c2407276c39270f5f6a89f5beb` |
| 20 | `lemma` | [cauchy_prod_iff](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-prod-iff.md) | 116 | `result-track:a1c1d110729df5341432c67caff3ac085856fbb5b85d0aa7252b52cb97357490` |
| 21 | `theorem` | [Cauchy.prod](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-prod.md) | 120 | `result-track:2922b336b4df03d1aed7a94531e2dc0ff082da46cafde44ea741397357b40af0` |
| 22 | `theorem` | [le_nhds_of_cauchy_adhp_aux](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/le-nhds-of-cauchy-adhp-aux.md) | 129 | `result-track:5480ff05a8a51ef5bb3349987eb26b554956a9ee0cf3a0babf2d0b2a740f7e76` |
| 23 | `theorem` | [le_nhds_of_cauchy_adhp](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/le-nhds-of-cauchy-adhp.md) | 143 | `result-track:88575ddf2f3bf8d8d8a2fc883e9fe81aa939c19ef07e70e41edfe2cf6181e2fb` |
| 24 | `theorem` | [le_nhds_iff_adhp_of_cauchy](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/le-nhds-iff-adhp-of-cauchy.md) | 151 | `result-track:9eb4a627e6b5a4e1460f407c7f0d17d63bef6564fa805b6cfb7c31d26582dc83` |
| 25 | `theorem` | [Cauchy.map](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-map.md) | 155 | `result-track:cead3085b70b10b6bbf15d43a3313ee6c61ae776e54b3ed1ed5a636c969bc11c` |
| 26 | `theorem` | [Cauchy.comap](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-comap-source-edition-2.md) | 163 | `result-track:a639a2c79d170990ab7a73e7dd096f83a7c31c9981efe987c59718108342166b` |
| 27 | `theorem` | [Cauchy.comap'](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-comap.md) | 172 | `result-track:17549b24e92c39cf6870dc05695d3efd6434ebed2f2c2d7865b34ae363a9f057` |
| 28 | `def` | [CauchySeq](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq.md) | 180 | `declaration-track:968a9be43296177b5537557dd97706e2c2114e8cd7f6b943f400f3999756f350` |
| 29 | `theorem` | [CauchySeq.tendsto_uniformity](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-tendsto-uniformity.md) | 183 | `result-track:768e624674d04cd96b9527567a8a382f67a5163a5744a37cd6d085a531ab46d2` |
| 30 | `theorem` | [CauchySeq.nonempty](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-nonempty.md) | 187 | `result-track:8fed788648b1b33667173968ed1e84f9ea32aa12bd784e268a02be92b8a43951` |
| 31 | `theorem` | [CauchySeq.mem_entourage](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-mem-entourage.md) | 190 | `result-track:4cd88004951349a7cd705305200db77485d0fa3b5353e4ecb6a697a3a4679ce6` |
| 32 | `theorem` | [Filter.Tendsto.cauchySeq](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/filter-tendsto-cauchyseq.md) | 196 | `result-track:d3df3ca6d93817fad0d714253cd93f309816f419795a46f8a4d8579a31354e41` |
| 33 | `theorem` | [cauchySeq_const](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-const.md) | 200 | `result-track:a691d9500c432f7fe58d7efcbd4e7a75572b6ce78ba49c7b74a223936aeefb76` |
| 34 | `theorem` | [cauchySeq_iff_tendsto](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-iff-tendsto.md) | 203 | `result-track:13dbcd432dff3f6036e10116747043e8d90df7b37ad7a9cbcd24a3b2127f5627` |
| 35 | `theorem` | [CauchySeq.comp_tendsto](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-comp-tendsto.md) | 207 | `result-track:5c25409ba178bf7373704510d90097bba0195ab079014568eaebd40efa550fd6` |
| 36 | `theorem` | [CauchySeq.comp_injective](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-comp-injective.md) | 211 | `result-track:0c338c18714650f2d7596098cf25f6998eec4e78fb554c1080385532bb093ff3` |
| 37 | `theorem` | [Function.Bijective.cauchySeq_comp_iff](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/function-bijective-cauchyseq-comp-iff.md) | 215 | `result-track:2c02356471f8a4e414994497ab56a1d931badc2f34d1ae14c8bd33b6d4a0c51f` |
| 38 | `theorem` | [CauchySeq.subseq_subseq_mem](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-subseq-subseq-mem.md) | 221 | `result-track:8ffa6c134b00b36b87b0ed41593e053fc5230c4d08b723c03c1426991c48e26d` |
| 39 | `theorem` | [cauchySeq_iff'](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-iff-source-edition-2.md) | 228 | `result-track:b94e21fdd4adf6edd2e495cd4a8d69d44a9a73d522a9e5db532a83824c5f849f` |
| 40 | `theorem` | [cauchySeq_iff](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-iff.md) | 232 | `result-track:46d9615d4e5bc81f58b0334f1c05d9d953504e40dfa6e38043f159d2542222bc` |
| 41 | `theorem` | [CauchySeq.prodMap](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-prodmap.md) | 236 | `result-track:ed63cbd8ae2fd8eeea70f373a46fb678ab40edf2977616a1fb18ed7b9d9d7696` |
| 42 | `theorem` | [CauchySeq.prodMk](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-prodmk.md) | 243 | `result-track:fde1789bfce650d48167ee20dcf21886562f7c50f66c5ff8a06d65146817744a` |
| 43 | `theorem` | [CauchySeq.eventually_eventually](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-eventually-eventually.md) | 251 | `result-track:823b87be7c563cf006abf55fb2f2b66afb0e41d57623267d969d9eb071cc308c` |
| 44 | `theorem` | [UniformContinuous.comp_cauchySeq](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/uniformcontinuous-comp-cauchyseq.md) | 255 | `result-track:1843eebd355c0a355dce499548b6c161e11bc1e93821fc7508d7c262d30e5640` |
| 45 | `theorem` | [CauchySeq.subseq_mem](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-subseq-mem.md) | 259 | `result-track:61c1d4cb56acb54ce03cae310d18abcb9e2269d25ed62a1149e5a32f39ccc3fc` |
| 46 | `theorem` | [Filter.Tendsto.subseq_mem_entourage](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/filter-tendsto-subseq-mem-entourage.md) | 269 | `result-track:c6315f34fe97d5c6d8fb19e27b5129932c9cf3fc2c268bc6477bfee14921bdb3` |
| 47 | `theorem` | [tendsto_nhds_of_cauchySeq_of_subseq](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/tendsto-nhds-of-cauchyseq-of-subseq.md) | 278 | `result-track:0d6a1b53b29ee8a390167bda47685419f68d68f476dcd7ce6ca8e23458e94619` |
| 48 | `theorem` | [cauchySeq_shift](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-shift.md) | 284 | `result-track:846bd184920fb706eb681ced082f79b0054df9f7e32400308d6177e32eac1822` |
| 49 | `theorem` | [Filter.HasBasis.cauchySeq_iff](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/filter-hasbasis-cauchyseq-iff-source-edition-2.md) | 294 | `result-track:d3cfc0e3dd8452255dca83ba7179cbc2e515f0de483883084dbb1d18cabf675d` |
| 50 | `theorem` | [Filter.HasBasis.cauchySeq_iff'](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/filter-hasbasis-cauchyseq-iff.md) | 302 | `result-track:103aab50c52f8a7ad2c6ca845082f1ab77706beab57c8c06184402d523694b22` |
| 51 | `theorem` | [cauchySeq_of_controlled](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-of-controlled.md) | 312 | `result-track:74af664c8700145926e44f3ae20243e12af7349f1d688a6a530575e9b90f21f7` |
| 52 | `theorem` | [isComplete_iff_clusterPt](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/iscomplete-iff-clusterpt.md) | 324 | `result-track:b57fdd174ac68151866aa3ad36bd3ddd1ecf547c46ccc5510c699d91da6b33b5` |
| 53 | `theorem` | [isComplete_iff_ultrafilter](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/iscomplete-iff-ultrafilter-source-edition-2.md) | 329 | `result-track:ff4abab36458c225c412014c354859c0916279da064e3d8d3964bf53d308dc38` |
| 54 | `theorem` | [isComplete_iff_ultrafilter'](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/iscomplete-iff-ultrafilter.md) | 336 | `result-track:bc9df883cb2fac7c4b9a3d794f16627972207cd5f26896210e8389c8aaf0b03a` |
| 55 | `theorem` | [IsComplete.union](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/iscomplete-union.md) | 340 | `result-track:ca43b6815bdd4dbe6ad5cc646af7d5e509c2258f582dc285254cefbf56bf7ea4` |
| 56 | `theorem` | [isComplete_iUnion_separated](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/iscomplete-iunion-separated.md) | 347 | `result-track:71434b52d2f61929f1c89cd40e10f1f1c4ca0b0f26470a3ffe8dc924f0b1c82f` |
| 57 | `class` | [CompleteSpace](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/completespace.md) | 369 | `declaration-track:cc9535a7b7802d617eb6fca7f5c0f2dc4b633455a42d324a17e4e95c09096550` |
| 58 | `theorem` | [complete_univ](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/complete-univ.md) | 373 | `result-track:148926f1aa84fd5144c964c379841c9522fd3a0821414189bd41df6e0a466a3d` |
| 59 | `instance` | [CompleteSpace.prod](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/completespace-prod.md) | 378 | `declaration-track:c40ad9e0d3257cae8cb2902d780c83bc6f6a7c2982732a9e709d9d428ba70905` |
| 60 | `lemma` | [CompleteSpace.fst_of_prod](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/completespace-fst-of-prod.md) | 385 | `result-track:a01f752698e153cfdb4f1b225551193a1cb0f94a115f371c5e0fee63e4b50219` |
| 61 | `lemma` | [CompleteSpace.snd_of_prod](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/completespace-snd-of-prod.md) | 392 | `result-track:fc2bcc38180bce6ddbe32336087746ce5ed686e2fa65a1a4714e305ed66f5e8a` |
| 62 | `lemma` | [completeSpace_prod_of_nonempty](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/completespace-prod-of-nonempty.md) | 399 | `result-track:4bfebf7e9bd935ec0198836a10a9e9f050e402a2e1474fe2022278183adce94b` |
| 63 | `instance` | [CompleteSpace.mulOpposite](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/completespace-mulopposite.md) | 404 | `declaration-track:e0ce9def3e5c3d1f6541b21733b6d18925c27aced55b1f96a9101f41c2d26acc` |
| 64 | `theorem` | [completeSpace_of_isComplete_univ](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/completespace-of-iscomplete-univ.md) | 411 | `result-track:f0bda5f4a365599fefb7e4787bfc352de67abcf6c7da06692f517d2c2f809b39` |
| 65 | `theorem` | [completeSpace_iff_isComplete_univ](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/completespace-iff-iscomplete-univ.md) | 414 | `result-track:c2ea3c4184594c9003fa969a93e673865b6b04a06d8b1e7a3b7af9bec8a22ee9` |
| 66 | `theorem` | [completeSpace_iff_ultrafilter](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/completespace-iff-ultrafilter.md) | 417 | `result-track:6b70a5bdad78e1e1d105376fbaa16645e92bcf8727e3dd22ec4161ac458a4e52` |
| 67 | `theorem` | [cauchy_iff_exists_le_nhds](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-iff-exists-le-nhds.md) | 421 | `result-track:cb2473e2c9fe1eb34a50fc2b93a94cc8338af5a238358cb49e58f70549043627` |
| 68 | `theorem` | [cauchy_map_iff_exists_tendsto](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-map-iff-exists-tendsto.md) | 425 | `result-track:ca3363400fe9a47a3b818f5123dcc2783bed16686a7229555e24435acd9fb7cb` |
| 69 | `theorem` | [cauchySeq_tendsto_of_complete](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-tendsto-of-complete.md) | 430 | `result-track:fa848ffbb665a00e1391b45737e51dc07bc27fa14112f2e07ab4761ff3b3a8c2` |
| 70 | `theorem` | [cauchySeq_tendsto_of_isComplete](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-tendsto-of-iscomplete.md) | 435 | `result-track:8be33c27ac67125f8edea841e6dce0becbf39beeb03a753db7ac6d6ef83ca0c4` |
| 71 | `theorem` | [Cauchy.le_nhds_lim](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchy-le-nhds-lim.md) | 440 | `result-track:5c16bbd8598709909d6b5eff45b80b941f56bc501723988e47b0714f08476c62` |
| 72 | `theorem` | [CauchySeq.tendsto_limUnder](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-tendsto-limunder.md) | 444 | `result-track:f1f120d75b3c1d0f6ea30adc2a271d965dffcd2983613112185d4757af5b5cf3` |
| 73 | `theorem` | [IsClosed.isComplete](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/isclosed-iscomplete.md) | 448 | `result-track:99c48c98605c347f579df24b422018e309a60e3cd34719d9b66c20ec9516d101` |
| 74 | `def` | [TotallyBounded](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded.md) | 455 | `declaration-track:7e6aa485497b0a27321bba88359d6297d34dc06d01897cd2794f409fc1605f3c` |
| 75 | `theorem` | [TotallyBounded.exists_subset](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-exists-subset.md) | 458 | `result-track:086f09643e83ffa8f617039b7d4d612dd3dbedabaf84ec503b04908ac8c3b650` |
| 76 | `theorem` | [totallyBounded_iff_subset](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-iff-subset.md) | 474 | `result-track:a8a7f5924d6470c7b1aa302137f3153c7b245b3e0ae077afe6159e171ecf0379` |
| 77 | `theorem` | [Filter.HasBasis.totallyBounded_iff](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/filter-hasbasis-totallybounded-iff.md) | 479 | `result-track:10e3e9ab4f55fd813de0e0860060e1b58887303177959e5a6387862479d507f4` |
| 78 | `theorem` | [totallyBounded_of_forall_symm](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-of-forall-symm.md) | 485 | `result-track:ba9659f411f8f67b34f035cef7ac0f8022009f3c320eb06efcfbeb176e11da65` |
| 79 | `theorem` | [TotallyBounded.subset](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-subset.md) | 491 | `result-track:205817dd97e1bcf0e82d20fda4d4a41043efa1cd2a523e11add2d846bac6cee4` |
| 80 | `theorem` | [TotallyBounded.closure](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-closure.md) | 497 | `result-track:120f68ffdd63f5e60bccb6b4b2dae35469d8d68297f53b16f0fc70f4946d6681` |
| 81 | `lemma` | [totallyBounded_closure](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-closure-source-edition-2.md) | 503 | `result-track:44548b7fad357a5482c92267280f8cb25f27b481d0370929e89729d709abb5ce` |
| 82 | `lemma` | [totallyBounded_iUnion](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-iunion.md) | 509 | `result-track:cf59ae7be2c0861d509f8e2c71659c6985a4fe44da3a7f070c518e0fbfbb4dfd` |
| 83 | `lemma` | [totallyBounded_biUnion](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-biunion.md) | 519 | `result-track:e67e311c16931cd5655611e1bccc9ed9e4278efe9ccc6f2063bfdedaaa9a2ebd` |
| 84 | `lemma` | [totallyBounded_sUnion](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-sunion.md) | 526 | `result-track:cdcd6481c4fd6312a10fc240477ec60644f354b86c42716fb94ac83107344521` |
| 85 | `lemma` | [Set.Finite.totallyBounded](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/set-finite-totallybounded.md) | 531 | `result-track:00b6120c67a1942762aade607efe329c6380b82395be7fd83e15e7434f6ee2af` |
| 86 | `lemma` | [Set.Subsingleton.totallyBounded](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/set-subsingleton-totallybounded.md) | 535 | `result-track:dbdb63d7eb30fcb6165190edf5ba04c08dfe1b7939615a352d0deb707efcef4e` |
| 87 | `lemma` | [totallyBounded_singleton](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-singleton.md) | 540 | `result-track:3279c964c44f472a0e8dae9ac5453072885a6b9060f94c5fc4aeef42467d5f10` |
| 88 | `theorem` | [totallyBounded_empty](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-empty.md) | 543 | `result-track:4fa0edb6f2d2fe5ec1990327b89c85d878f2a965fa065c70ae80d90c9e94f399` |
| 89 | `lemma` | [totallyBounded_union](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-union.md) | 548 | `result-track:6905015bc326173022afc7cd87a6cecb4ce52eeae147528ed4ce914da5a20991` |
| 90 | `lemma` | [TotallyBounded.union](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-union-source-edition-2.md) | 554 | `result-track:c93af3a53516e923e6cf91b8b2c4fe15dc8a3062c01d96c3622435763915bf18` |
| 91 | `lemma` | [totallyBounded_insert](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-insert.md) | 559 | `result-track:2488cbb1424df8956bbca17740a681479c517c53a3b55154c606d2b01f2ef271` |
| 92 | `theorem` | [TotallyBounded.image](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-image.md) | 566 | `result-track:f8fcd5d3c08e60fb21f3d0e79a49e036a9db699144ae2adbf14aef8c956eabfa` |
| 93 | `theorem` | [Ultrafilter.cauchy_of_totallyBounded](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/ultrafilter-cauchy-of-totallybounded.md) | 578 | `result-track:3936bccdb53037a07855c6d195d21f190543dea731f0f273692b6b5df2ccddd1` |
| 94 | `theorem` | [totallyBounded_iff_filter](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-iff-filter.md) | 590 | `result-track:1f2e5e5bc16ef837f9915c19e55f449218a9d4e8d3cf96fa67e7a3483c33850a` |
| 95 | `theorem` | [totallyBounded_iff_ultrafilter](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-iff-ultrafilter.md) | 610 | `result-track:30f47938936e4db3df45810146d5eb9606e975f2b5df61c62632bb527720d2f6` |
| 96 | `theorem` | [isCompact_iff_totallyBounded_isComplete](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/iscompact-iff-totallybounded-iscomplete.md) | 616 | `result-track:be62f82579bee3c94197cc1768529a59dae9effce883594031d3d9ff5b46faa0` |
| 97 | `theorem` | [IsCompact.totallyBounded](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/iscompact-totallybounded.md) | 629 | `result-track:31c12180832010cc6146327e3e9b1d67fd8f3cb524c22fe450e034eeba4dc22a` |
| 98 | `theorem` | [IsCompact.isComplete](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/iscompact-iscomplete.md) | 632 | `result-track:7bf8090082a2c1e9a8a3101932b5ed9674ba1fe3e4e17059a8d61f81867e65ab` |
| 99 | `instance` | [(anonymous)](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/instance.md) | 636 | `declaration-track:2bd77b72361aa40a8196f92238cfa2fba01dd46c2d4988695daaa905e44f3b50` |
| 100 | `theorem` | [isCompact_of_totallyBounded_isClosed](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/iscompact-of-totallybounded-isclosed.md) | 640 | `result-track:94269c0e0f9f8aa955093a9c5cddf27d443c831d878acf5ddf716d47c46812f6` |
| 101 | `theorem` | [CauchySeq.totallyBounded_range](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/cauchyseq-totallybounded-range.md) | 645 | `result-track:d9ae05cf998e927ae05c6f9173412a0f83212c16a55d5b1fea7a845f743cc1d5` |
| 102 | `def` | [interUnionBalls](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/interunionballs.md) | 659 | `declaration-track:87d120b583117e4a7e3b033bb9dbe7e6ca9e9e5d4734eb96946235001000a284` |
| 103 | `lemma` | [totallyBounded_interUnionBalls](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/totallybounded-interunionballs.md) | 662 | `result-track:28a1c2d68a05ccd3ffd427d9c4a254b48a8ed25369a3acbc2e9820a9cc479850` |
| 104 | `theorem` | [isCompact_closure_interUnionBalls](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/iscompact-closure-interunionballs.md) | 677 | `result-track:9516da1d4322427044742d512a7a64396da32cac0a6c62d116bc0d482cfa61a5` |
| 105 | `def` | [setSeqAux](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/setseqaux.md) | 707 | `declaration-track:dc48a6eedc353b1e0c39efcc14ba31e35ba3062a8e3531f3077915b5cb5af354` |
| 106 | `def` | [setSeq](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/setseq.md) | 712 | `declaration-track:9709f4c9d184a177728650a3ae64c7779c14e9bcde0ce30e9ae716b4b80b0ece` |
| 107 | `theorem` | [setSeq_mem](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/setseq-mem.md) | 715 | `result-track:f9a3c61003acaa53b8ad16a5e1619e3cd15d7f15b875d8714c9fdbbb3ddc730d` |
| 108 | `theorem` | [setSeq_mono](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/setseq-mono.md) | 718 | `result-track:bce6eb9bd9ce168fed1c39e752a37927786f3596687afad8d347f4a5553250d4` |
| 109 | `theorem` | [setSeq_sub_aux](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/setseq-sub-aux.md) | 721 | `result-track:88b36d392aadb648ec9138de8fc34923ca21fc147a647fd69c9164691a64cbf0` |
| 110 | `theorem` | [setSeq_prod_subset](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/setseq-prod-subset.md) | 724 | `result-track:567d41bb0faa25662ccf6a0336d44d2aea7fbe888e74c97339daea0893547d06` |
| 111 | `def` | [seq](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/seq.md) | 733 | `declaration-track:dd3ed414ef84cc2220a0ab83ca269f025e75843648fda593b63a97f4283044c6` |
| 112 | `theorem` | [seq_mem](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/seq-mem.md) | 736 | `result-track:08ce37ea387fcfcc6573782c2a15b3df5d7b263cb77967838e977d80761fa6e3` |
| 113 | `theorem` | [seq_pair_mem](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/seq-pair-mem.md) | 739 | `result-track:1277f631155b444af316720acca6178722a12ede38275f2d8e38a5c76d43d177` |
| 114 | `theorem` | [seq_is_cauchySeq](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/seq-is-cauchyseq.md) | 743 | `result-track:ae6074aedb12568b771129d291ba30fb0d993d287add8529fdaa40311dea2802` |
| 115 | `theorem` | [le_nhds_of_seq_tendsto_nhds](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/le-nhds-of-seq-tendsto-nhds.md) | 747 | `result-track:addf8dacd95114569de44ece62f6a09271c6b42c86b34072a569ddbb753ae54b` |
| 116 | `theorem` | [complete_of_convergent_controlled_sequences](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/complete-of-convergent-controlled-sequences.md) | 772 | `result-track:bd94c9f7b5aa6a0d2081ed1f122336a0bd1b83baa04a5340c81b4fc8a6dc8a83` |
| 117 | `theorem` | [complete_of_cauchySeq_tendsto](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/complete-of-cauchyseq-tendsto.md) | 785 | `result-track:363a11ff9e1b86d05a805bf1762f76e2ee04b46af443a9426fe87c30a22b01e0` |
| 118 | `instance` | [(anonymous)](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/instance-source-edition-2.md) | 794 | `declaration-track:d396762b1a2cd4f5070a838b2f5c53fa17a9db879aa7dd8fe40e6bbdfde6fe61` |
| 119 | `theorem` | [secondCountable_of_separable](../../../../GeneralTopology/CauchyNamespacedCauchySeqShift.lean/declarations/secondcountable-of-separable.md) | 802 | `result-track:c81935cc3ac13476266e62db56aae5786c2964a0395fb2d894bc92f44105719e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b370a497d53659fc040b62da21a8ffcd9023af67b1544dd742605b9f26a6ba9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant8e9b4b8b8267155849e5528306d39c3823f3132dce616d54b56d30417a1ac197.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
