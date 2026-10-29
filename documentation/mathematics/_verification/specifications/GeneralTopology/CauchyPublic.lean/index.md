# Verification target: Cauchy Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86640c96b74c3a4161ecae8151f0cdec46f6d64c",
  "lexical_observation_count": 145,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CauchyPublic.lean/index.md) · [Full source](../../../../GeneralTopology/CauchyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86640c96b74c3a4161ecae8151f0cdec46f6d64c`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean.json)

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
| 1 | `def` | [Cauchy](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy.md) | 32 | `declaration-track:4ad7e00971594c6b0dea8f5e260082302c3712e10083948860dd60e9e3e933ea` |
| 2 | `def` | [IsComplete](../../../../GeneralTopology/CauchyPublic.lean/declarations/iscomplete.md) | 37 | `declaration-track:268477d9bad9d424705748019ea0494185b61d14f57a4b2b3fd9bbf73036faf5` |
| 3 | `theorem` | [Filter.HasBasis.cauchy_iff](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-hasbasis-cauchy-iff.md) | 40 | `result-track:885adffb5dea68f37d2506f37ad7c80c22cd90b8ba71c43ebafd0d5c1492dd55` |
| 4 | `theorem` | [cauchy_iff'](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-iff.md) | 47 | `result-track:2333e558144468cf1d0e02b2532d6420a204573281de4fb6b6824fe49e6871e8` |
| 5 | `theorem` | [cauchy_iff](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-iff-source-edition-2.md) | 51 | `result-track:88b9caa28e4e5a8cc351e0abeaae32a66c7904182e6738e441a731dda5852880` |
| 6 | `lemma` | [cauchy_iff_le](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-iff-le.md) | 55 | `result-track:fb3536e1a1c03eb14bd367b00d333556790453b63b34cc0bebbf819ff958a86d` |
| 7 | `theorem` | [Cauchy.ultrafilter_of](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-ultrafilter-of.md) | 59 | `result-track:77d634f0efc3a40c484c27c8d9cf99175e077f5775511c522324bccd993def64` |
| 8 | `theorem` | [cauchy_map_iff](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-map-iff-source-edition-2.md) | 65 | `result-track:6a389376b2987f05121c9c85ed757f1542a66521d44d946f3b38b607ccb05524` |
| 9 | `theorem` | [cauchy_map_iff'](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-map-iff.md) | 69 | `result-track:216ae607a74c9ac8401b339a06034e1d6979b2125cf4f8fe741245284804cb27` |
| 10 | `theorem` | [Cauchy.mono](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-mono.md) | 73 | `result-track:7ed314bb702aa9a8d791db36600a6afd8b874175aa267678e38a5a303909dbca` |
| 11 | `theorem` | [Cauchy.mono'](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-mono-source-edition-2.md) | 76 | `result-track:e8f06b9f66efd54fea5e997289dab669e82c6bdd4f7f835af93edba19ca92bb5` |
| 12 | `theorem` | [cauchy_nhds](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-nhds.md) | 79 | `result-track:01e01ddc4f2d0788cf1dfaea248ce3799972b97ade6d95af5ce520c85c67c86b` |
| 13 | `theorem` | [cauchy_pure](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-pure.md) | 82 | `result-track:564f7717eed994b8f621873bf25472009407192199c7cc164b6e780e3400b987` |
| 14 | `theorem` | [Filter.Tendsto.cauchy_map](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-tendsto-cauchy-map.md) | 85 | `result-track:38d23f5f54736418dc2b4d81f047ea02dddd832f4cfc064739d9a8161d6aea6e` |
| 15 | `lemma` | [Cauchy.mono_uniformSpace](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-mono-uniformspace.md) | 89 | `result-track:6d4616aa4a67d474321e5e1ddab686c1b9cff91dbf028be53fdf9edad79e35aa` |
| 16 | `lemma` | [cauchy_inf_uniformSpace](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-inf-uniformspace.md) | 93 | `result-track:52d003e99e6d77e5721b45b644f5707877559c24ae110718d0b4ff2c3d97fb58` |
| 17 | `lemma` | [cauchy_iInf_uniformSpace](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-iinf-uniformspace-source-edition-2.md) | 99 | `result-track:661c9fb2509d0e698c096513db1a0ba9b53ed4b12cb7dd4ec501d2e1f5e50592` |
| 18 | `lemma` | [cauchy_iInf_uniformSpace'](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-iinf-uniformspace.md) | 105 | `result-track:21048d0eab676bbc13c079da4ee1d6abf4f98be14c958914702716f96f10af98` |
| 19 | `lemma` | [cauchy_comap_uniformSpace](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-comap-uniformspace.md) | 110 | `result-track:003972bcf3464d51163fbc611ddc0445e30d82f895fe58831691fe02c850776b` |
| 20 | `lemma` | [cauchy_prod_iff](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-prod-iff.md) | 115 | `result-track:bf4c4faff064781cfe245eb5fe6973a272516f57fc9c18b873dd7b4b8b368047` |
| 21 | `theorem` | [Cauchy.prod](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-prod.md) | 119 | `result-track:9195b7bf466bc8d8bd7d0fb884df7d7585a54bbf853f92bc3b4d53bd31964326` |
| 22 | `theorem` | [le_nhds_of_cauchy_adhp_aux](../../../../GeneralTopology/CauchyPublic.lean/declarations/le-nhds-of-cauchy-adhp-aux.md) | 128 | `result-track:e479e24bba1d7e9f4de7f7d84a122fb4c4442aaaf1d3005ef4bf85186f83a53a` |
| 23 | `theorem` | [le_nhds_of_cauchy_adhp](../../../../GeneralTopology/CauchyPublic.lean/declarations/le-nhds-of-cauchy-adhp.md) | 142 | `result-track:24d80ca4723a370d76f386493cb2bbf5456f5ba91e45657940cb22a54b9e1eef` |
| 24 | `theorem` | [le_nhds_iff_adhp_of_cauchy](../../../../GeneralTopology/CauchyPublic.lean/declarations/le-nhds-iff-adhp-of-cauchy.md) | 150 | `result-track:6d3ba082ae8e44304f6c85e5166dc6b593383eb99c0b17e10b2a72ad4850fe9c` |
| 25 | `theorem` | [Cauchy.map](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-map.md) | 154 | `result-track:088f2c828822975d6e672405c68ecfff1b969677318a55284421b22f8909b623` |
| 26 | `theorem` | [Cauchy.comap](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-comap-source-edition-2.md) | 162 | `result-track:ca6f9cc9261d24727192d01f4c51dbc575c507afc5efae0a1da96d3ab7ec2cb3` |
| 27 | `theorem` | [Cauchy.comap'](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-comap.md) | 171 | `result-track:78075b7e592bf6a1124d40d357fb16988bb44a329d4261de8e63bd4b62625b64` |
| 28 | `lemma` | [Cauchy.map_of_le](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-map-of-le.md) | 176 | `result-track:a4c8da6f2c693617953aedd91597970e6369cfda3220cbafdbd076da8c19f986` |
| 29 | `def` | [CauchySeq](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq.md) | 187 | `declaration-track:680ee3064ad748fccb071967581735fbed72b75553cc778c1e12d54d2f74198c` |
| 30 | `theorem` | [CauchySeq.tendsto_uniformity](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-tendsto-uniformity.md) | 190 | `result-track:70a54a054d664b8faf9e140724a66a7bbc027a27cd0c83cfb9916693c39c2698` |
| 31 | `theorem` | [CauchySeq.nonempty](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-nonempty.md) | 194 | `result-track:3f37b6660c2080c13ee0a872f0c67ebe05548adb9cfad37a8b78021113e1b207` |
| 32 | `theorem` | [CauchySeq.mem_entourage](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-mem-entourage.md) | 197 | `result-track:96dd77ac9ec47fd4bae161568039371cbb22a227fa1af344bca26c9564a13b5b` |
| 33 | `theorem` | [Filter.Tendsto.cauchySeq](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-tendsto-cauchyseq.md) | 203 | `result-track:4925affe8bf793d0be5bae8c55897ad5fd14d2652d21c56df121781943b891c5` |
| 34 | `theorem` | [cauchySeq_const](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-const.md) | 207 | `result-track:14f8c91ec90b82ade31ef3b1dd00be27e75ca62773c5b89e5c8d4a527c9dc529` |
| 35 | `theorem` | [cauchySeq_iff_tendsto](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-iff-tendsto.md) | 210 | `result-track:4803a1b971e50cd0d799d469fc3ec0677c5cba43758e5c9e8d3275315338ef16` |
| 36 | `theorem` | [CauchySeq.comp_tendsto](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-comp-tendsto.md) | 214 | `result-track:a7c7ce1131b7081622476b6a44ccb137191d6fd1a56a8bcc7f2b4d2330d49e33` |
| 37 | `theorem` | [CauchySeq.comp_injective](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-comp-injective.md) | 218 | `result-track:858ccbad1978c46c52711622472385977f41473599a0e12c7f7823d58b2368cf` |
| 38 | `theorem` | [Function.Bijective.cauchySeq_comp_iff](../../../../GeneralTopology/CauchyPublic.lean/declarations/function-bijective-cauchyseq-comp-iff.md) | 222 | `result-track:278e5c8b0ab8d2c9f0166f2a9ece9bc9480b5f7adfb2cf1e9b78d26fd6b58571` |
| 39 | `theorem` | [CauchySeq.subseq_subseq_mem](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-subseq-subseq-mem.md) | 228 | `result-track:51182f77f41f20184c47ff6a6fcbb6df1810f8028fcad9693b2ea3a156d55bc3` |
| 40 | `theorem` | [cauchySeq_iff'](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-iff-source-edition-2.md) | 235 | `result-track:c1ff8646bf2a2f1bdbfc441cf1425aaa3695c6de4b3fc07c121298a0efc64fde` |
| 41 | `theorem` | [cauchySeq_iff](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-iff.md) | 239 | `result-track:5d608eac05d28b4b9ce8e853d762e4646d4aeeb5098b6cbf85fa176deec55792` |
| 42 | `theorem` | [CauchySeq.prodMap](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-prodmap.md) | 243 | `result-track:f3cf8b7e49cd8d0ad1b1a3af2f80e5de4dd66c2cf4b79117414c3bc97943ec51` |
| 43 | `theorem` | [CauchySeq.prodMk](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-prodmk.md) | 247 | `result-track:6086518231cf4f63ecd7d4038c8b9ddfdc051834021347c65502f280d545ac9c` |
| 44 | `theorem` | [CauchySeq.eventually_eventually](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-eventually-eventually.md) | 252 | `result-track:5d9403d88efbfb65b37f697a52854b2f0a1b414d962eaaa7146607dd028eaf51` |
| 45 | `theorem` | [UniformContinuous.comp_cauchySeq](../../../../GeneralTopology/CauchyPublic.lean/declarations/uniformcontinuous-comp-cauchyseq.md) | 256 | `result-track:73c32040116fea434792ad250c9a6797cfd068631e53c6e6601d7b2db8cc228e` |
| 46 | `theorem` | [CauchySeq.subseq_mem](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-subseq-mem.md) | 260 | `result-track:63014eff3315d576717338a542743b88172587a41eb86dc7496e3625043607c9` |
| 47 | `theorem` | [Filter.Tendsto.subseq_mem_entourage](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-tendsto-subseq-mem-entourage.md) | 270 | `result-track:82d53cb60d5cc68136778c0be8378b15d30d26295c012ada4ef6a505bd4ef1f7` |
| 48 | `theorem` | [tendsto_nhds_of_cauchySeq_of_subseq](../../../../GeneralTopology/CauchyPublic.lean/declarations/tendsto-nhds-of-cauchyseq-of-subseq.md) | 279 | `result-track:3c4ee7149f280829a9c37c993a1251903d7a04b69dd387ee2f7a65d223d31170` |
| 49 | `theorem` | [cauchySeq_shift](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-shift.md) | 285 | `result-track:6f479e61cf2768016c085db42f8f8826ab7ab486b0118b898270151c0593c9da` |
| 50 | `theorem` | [Filter.HasBasis.cauchySeq_iff](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-hasbasis-cauchyseq-iff-source-edition-2.md) | 295 | `result-track:da2ce4edcc2e21a68bcb507d7226ca21513b0670aaf6b27c3e2be52858a3ae8e` |
| 51 | `theorem` | [Filter.HasBasis.cauchySeq_iff'](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-hasbasis-cauchyseq-iff.md) | 303 | `result-track:5d6557eff201712d0a463f70200020ddc02175c3a4ac4d99f95e726427313d5d` |
| 52 | `theorem` | [cauchySeq_of_controlled](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-of-controlled.md) | 313 | `result-track:11fe44140d1885900b8cc631ffcdb5c61f52d8f982f5a86bb80d82097f3605a0` |
| 53 | `theorem` | [isComplete_iff_clusterPt](../../../../GeneralTopology/CauchyPublic.lean/declarations/iscomplete-iff-clusterpt.md) | 325 | `result-track:30ac1d2fc3bdb81e29b6f2604c3cd799e7805f99dee83fd155c88fe91f9eadb4` |
| 54 | `theorem` | [isComplete_iff_ultrafilter](../../../../GeneralTopology/CauchyPublic.lean/declarations/iscomplete-iff-ultrafilter-source-edition-2.md) | 330 | `result-track:9f6e276767d344ed69c4efdb41ff1307433cf2d8642c5cff0318459644bdcdc3` |
| 55 | `theorem` | [isComplete_iff_ultrafilter'](../../../../GeneralTopology/CauchyPublic.lean/declarations/iscomplete-iff-ultrafilter.md) | 337 | `result-track:875e31b10bb935d78bd67469479d20fbb3594346b2622e11db6922c55db2eedf` |
| 56 | `theorem` | [IsComplete.union](../../../../GeneralTopology/CauchyPublic.lean/declarations/iscomplete-union.md) | 341 | `result-track:709b292fa92c1b8494d3a6e21cf6a951aedb9fc0e9153bba485eeccb3c760f17` |
| 57 | `theorem` | [isComplete_iUnion_separated](../../../../GeneralTopology/CauchyPublic.lean/declarations/iscomplete-iunion-separated.md) | 348 | `result-track:a3249d0952e02bf28c1e40ed956826e976cb0a75885ebb1f7600c5d988e830c4` |
| 58 | `class` | [CompleteSpace](../../../../GeneralTopology/CauchyPublic.lean/declarations/completespace.md) | 371 | `declaration-track:4c071178e0b1f47279475aee7405f9aded4ccc7f05d82e7a9f62fa7e53dbc130` |
| 59 | `theorem` | [isComplete_univ](../../../../GeneralTopology/CauchyPublic.lean/declarations/iscomplete-univ.md) | 375 | `result-track:b325637ef1106dd3e204ac9e7d5245df342ffc6a3935459659ae143b3d0b226e` |
| 60 | `instance` | [CompleteSpace.prod](../../../../GeneralTopology/CauchyPublic.lean/declarations/completespace-prod.md) | 382 | `declaration-track:1e12dfc9d1a648c83189a5cfd7911d68bec1fe49198c23077563c833e4a9fab9` |
| 61 | `lemma` | [CompleteSpace.fst_of_prod](../../../../GeneralTopology/CauchyPublic.lean/declarations/completespace-fst-of-prod.md) | 389 | `result-track:322c95cc883e3e1cb7a96ce32b00e2e28e7e3a6e5f08c7eb6108333ed077919c` |
| 62 | `lemma` | [CompleteSpace.snd_of_prod](../../../../GeneralTopology/CauchyPublic.lean/declarations/completespace-snd-of-prod.md) | 396 | `result-track:4dab3ea21e88765904aaf6bf5fbd35e07702a2a49792cb5b1cc5a817a06af986` |
| 63 | `lemma` | [completeSpace_prod_of_nonempty](../../../../GeneralTopology/CauchyPublic.lean/declarations/completespace-prod-of-nonempty.md) | 403 | `result-track:b6b9b779648eabff5c6afe1831044c87a3201e6f6d402265c09c00699982ed60` |
| 64 | `theorem` | [completeSpace_of_isComplete_univ](../../../../GeneralTopology/CauchyPublic.lean/declarations/completespace-of-iscomplete-univ.md) | 408 | `result-track:0c3429cbcfce127ed35dd2d59d183712a020866d7746a394a80de14f8dc0a7d4` |
| 65 | `theorem` | [completeSpace_iff_isComplete_univ](../../../../GeneralTopology/CauchyPublic.lean/declarations/completespace-iff-iscomplete-univ.md) | 411 | `result-track:af9da8c1ca2cd6d6659ea3a27fb337bceaaf233eae7eeb3bc30d09cfe7c79fed` |
| 66 | `theorem` | [completeSpace_iff_ultrafilter](../../../../GeneralTopology/CauchyPublic.lean/declarations/completespace-iff-ultrafilter.md) | 414 | `result-track:0166b796650ab24717b265dc8a596c8fc812ec318d571f995590d5b5ac6a01c8` |
| 67 | `theorem` | [cauchy_iff_exists_le_nhds](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-iff-exists-le-nhds.md) | 418 | `result-track:f8675d88b9cfec5f2ecfd581ee533d393447ad7d7f0004c91690d082151314a8` |
| 68 | `theorem` | [cauchy_map_iff_exists_tendsto](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-map-iff-exists-tendsto.md) | 422 | `result-track:6e24699ce483a1b582083a91b15926dc61c8691fd11312dbc954504f3dd60eef` |
| 69 | `theorem` | [cauchySeq_tendsto_of_complete](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-tendsto-of-complete.md) | 427 | `result-track:73e31cffc2cc3ee932b19403dac7daed65316b04b7dfb671863c53d7b56fc407` |
| 70 | `theorem` | [cauchySeq_tendsto_of_isComplete](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-tendsto-of-iscomplete.md) | 432 | `result-track:33e3e4c0de95a9b2bdf65ef72ae450a0d6f21b22decb9da1d8b7f101e9bae5ae` |
| 71 | `theorem` | [Cauchy.le_nhds_lim](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchy-le-nhds-lim.md) | 437 | `result-track:213a38a5e9a81cf4782b05b6db638680dbd4f030ed53f42d0908d853f3a17a5b` |
| 72 | `theorem` | [CauchySeq.tendsto_limUnder](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-tendsto-limunder.md) | 441 | `result-track:8b9f2554cccd4347aac90b0bf068d9bc682eec98eabcb59a88b729e5adb5c45f` |
| 73 | `theorem` | [IsClosed.isComplete](../../../../GeneralTopology/CauchyPublic.lean/declarations/isclosed-iscomplete.md) | 445 | `result-track:fcc6cc25e93d74d01c4f01814a81ba5d23fe4e305227597fe2efc21af9c92794` |
| 74 | `theorem` | [eq_pure_of_cauchy](../../../../GeneralTopology/CauchyPublic.lean/declarations/eq-pure-of-cauchy.md) | 456 | `result-track:aca1e9e9a716acc092dab9c0dfb4418583f80ffa5cae0e6a33cf015b114b2f38` |
| 75 | `instance` | [(anonymous)](../../../../GeneralTopology/CauchyPublic.lean/declarations/instance-source-edition-3.md) | 465 | `declaration-track:faedc4dd85f4e9f553fa00a263995d53bfa1a7cd2acead37cf33996f7e364e13` |
| 76 | `def` | [cauchyConst](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyconst.md) | 471 | `declaration-track:064926d627a34470c7ca96a97b365e034b1cf0735544f5b8137110d2f004ac1c` |
| 77 | `theorem` | [eq_pure_cauchyConst](../../../../GeneralTopology/CauchyPublic.lean/declarations/eq-pure-cauchyconst.md) | 474 | `result-track:7e81394d08a033ece9dbf08297001235ade0c0be05830ce5501c154b37960a41` |
| 78 | `def` | [TotallyBounded](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded.md) | 481 | `declaration-track:5bfd8bbcb6164a573d2cecbcd90abadccad8b98958ed1a77870128bdbc76e950` |
| 79 | `def` | [Filter.TotallyBounded](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded.md) | 486 | `declaration-track:203a8250a6158e06ec373e2cc52e9703372f841f8073558a86097ef958aac3be` |
| 80 | `theorem` | [Filter.totallyBounded_principal_iff](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-principal-iff.md) | 489 | `result-track:48a632fecd888a21b96d684e5e907208b3f01a8f2f68640e41a3a131a3827490` |
| 81 | `theorem` | [Filter.TotallyBounded.exists_subset_of_mem](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-exists-subset-of-mem.md) | 493 | `result-track:6c69087eabc5168aae073e679692235bcbb720a02b53ddfa64a07996c5fd3a78` |
| 82 | `theorem` | [TotallyBounded.exists_subset](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-exists-subset.md) | 509 | `result-track:7f44e2d54f104ae38144687d57b561592c5b1f890a8681f676083503f8025b57` |
| 83 | `theorem` | [totallyBounded_iff_subset](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-iff-subset.md) | 515 | `result-track:7d0775da01522e59c1238cac8720432d12e4d487628b8b08bed480e8ecb489f8` |
| 84 | `theorem` | [Filter.HasBasis.totallyBounded_iff](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-hasbasis-totallybounded-iff.md) | 520 | `result-track:89ed71d4a78f82474c674ed8291e1b149c631d239472f201defb445ea28e1f96` |
| 85 | `theorem` | [Filter.HasBasis.filter_totallyBounded_iff](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-hasbasis-filter-totallybounded-iff.md) | 526 | `result-track:d50454d6201e824af8bc17c64f1b9110d2b39c5bac9ce254bdf51662aaba9074` |
| 86 | `theorem` | [totallyBounded_of_forall_isSymm](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-of-forall-issymm.md) | 532 | `result-track:119592457f038e7a02c3e0ebfd6c6ed93d0a3b3d5115a9173977a453d6df4ebe` |
| 87 | `theorem` | [TotallyBounded.subset](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-subset.md) | 538 | `result-track:526ad7aab2b32672f13ea9d90f97dc2e0472fcdcba7359527092643a9ff7be8e` |
| 88 | `theorem` | [Filter.TotallyBounded.mono](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-mono.md) | 543 | `result-track:4c6037221028d6ae2c07fd361190cf3e96c55a19143c25647eff1155c3816c01` |
| 89 | `theorem` | [Filter.TotallyBounded.totallyBounded_setOfPred_clusterPt](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-totallybounded-setofpred-clusterpt.md) | 547 | `result-track:c06c6f9e8f8f1130cee8f43e3e7176ce07f8b0042517ed2612c9f6208752a61e` |
| 90 | `theorem` | [TotallyBounded.closure](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-closure-source-edition-2.md) | 561 | `result-track:e1b3769fb120ebfae38cf0ecf18e09e4912e960142784333b8dfa48018eba596` |
| 91 | `lemma` | [totallyBounded_closure](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-closure.md) | 566 | `result-track:19eddc5434db9a0e19b46230d155fe311a2ec0e9604eae2fe58717f4bc384824` |
| 92 | `lemma` | [Filter.totallyBounded_iSup](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-isup.md) | 570 | `result-track:06d9dcfb0af0e3a82e50ff502a51cfc0397993bed9fc49e9ae5cc576d2c9befd` |
| 93 | `lemma` | [Filter.totallyBounded_biSup](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-bisup.md) | 578 | `result-track:98ad3bf77e4c7284725a6a7f329b8e4fcf9ed3bfdf7141ca2cd4ab9a880b9f3a` |
| 94 | `lemma` | [totallyBounded_sSup](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-ssup.md) | 583 | `result-track:222e7c4c788eb478fd77b8c394c9d65431dc362e5d89fd5f33c8dea179e9ec87` |
| 95 | `lemma` | [totallyBounded_iUnion](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-iunion.md) | 590 | `result-track:2a05c234913d6a7363ef564f668a17db46813a11e4c316caecfdd280327aa743` |
| 96 | `lemma` | [totallyBounded_biUnion](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-biunion.md) | 597 | `result-track:158038d8096c7ba2e190be5c52013ceb09ce6e1c3eca0e3a006d986dfe42576e` |
| 97 | `lemma` | [totallyBounded_sUnion](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-sunion.md) | 604 | `result-track:e9867439078b525b34b1f31e035c8b034a079a04ab97719fffceb531317a5ed5` |
| 98 | `lemma` | [Set.Finite.totallyBounded](../../../../GeneralTopology/CauchyPublic.lean/declarations/set-finite-totallybounded.md) | 609 | `result-track:01ca4fa657201fd7114ecd3eed853c88b0ba249fdafb01367149b49c3431f3bb` |
| 99 | `lemma` | [Set.Subsingleton.totallyBounded](../../../../GeneralTopology/CauchyPublic.lean/declarations/set-subsingleton-totallybounded.md) | 613 | `result-track:21fdcc1f451f57620f157461669207fca1a3e56f47ee1b8719493ea48f706419` |
| 100 | `lemma` | [totallyBounded_singleton](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-singleton.md) | 618 | `result-track:41523f09ad37e8c4d511fc14a47c0fe8284616b8220f0f24187975f1dcc289de` |
| 101 | `theorem` | [totallyBounded_empty](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-empty.md) | 621 | `result-track:7da08cc648533bfb58dfe68a57e2874f2bb2f9f262c2e0d59e2943c907fc635c` |
| 102 | `theorem` | [Filter.totallyBounded_bot](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-bot.md) | 624 | `result-track:25a6e94663233619c4f266891e9211558bedf1acab5f36bb5604a0a170415999` |
| 103 | `lemma` | [totallyBounded_union](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-union.md) | 631 | `result-track:7f238fbf244c8df6142ba5cad475301f428cb768983a72c51bd6764830e749a5` |
| 104 | `lemma` | [TotallyBounded.union](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-union-source-edition-2.md) | 637 | `result-track:a7687762e70fc15d5a4f853f9a86c882c09427962d77852289a2d06dd5dab9b6` |
| 105 | `lemma` | [totallyBounded_insert](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-insert.md) | 642 | `result-track:5f2fe6552517be4ceaa45467517d273b4be14774425f926cbb4063114818b8ac` |
| 106 | `lemma` | [Filter.totallyBounded_sup](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-sup.md) | 649 | `result-track:682c020eee47a94998d5bfdbd83719fc2df53d9fc0789697f9d6a8912b63802b` |
| 107 | `lemma` | [Filter.TotallyBounded.sup](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-sup-source-edition-2.md) | 654 | `result-track:9acda2f83b41bacbb419a54224fca749cd8d925480b92d4e9ad7c3c06e79f2fe` |
| 108 | `theorem` | [Filter.TotallyBounded.map](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-map.md) | 658 | `result-track:48e859edd061aa128454f74fa0602c5372a4d8766d5b7d47b4053b3e31fa87eb` |
| 109 | `theorem` | [TotallyBounded.image](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-image.md) | 664 | `result-track:c92fe5c535aca34138ec0e064d24eaf35b8810151784e1932c84e5006f6f2921` |
| 110 | `theorem` | [Ultrafilter.cauchy_of_totallyBounded'](../../../../GeneralTopology/CauchyPublic.lean/declarations/ultrafilter-cauchy-of-totallybounded-source-edition-2.md) | 669 | `result-track:f49105558f6cf710eb215b8b900f29dcea9fad4b166f1931a34082dd18f31ee5` |
| 111 | `theorem` | [Ultrafilter.cauchy_of_totallyBounded](../../../../GeneralTopology/CauchyPublic.lean/declarations/ultrafilter-cauchy-of-totallybounded.md) | 680 | `result-track:c3657039fb2cb27c6c0cd9e98b20877907186b3519693939944c5002af468129` |
| 112 | `theorem` | [Filter.totallyBounded_iff_filter](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-iff-filter.md) | 684 | `result-track:78689ebdcbdb76e04fc58ac88625857f7c7d69da73cee31fb7f657dac38d4736` |
| 113 | `theorem` | [Filter.totallyBounded_iff_ultrafilter](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-iff-ultrafilter.md) | 706 | `result-track:6ac9b2f5eb230cf23066c879afe2dddd98704e6582905d2552b25d1d3acb1810` |
| 114 | `theorem` | [totallyBounded_iff_filter](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-iff-filter.md) | 713 | `result-track:39b943796c7720f001f76530dbafb6a793e9ed6bb0e465045e96bf2fe69d8cd2` |
| 115 | `theorem` | [totallyBounded_iff_ultrafilter](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-iff-ultrafilter.md) | 717 | `result-track:4794ed7dbc011fa94e17dd393d9c1fc109c409637f3fc91b8898d84a5e49986c` |
| 116 | `theorem` | [isCompact_iff_totallyBounded_isComplete](../../../../GeneralTopology/CauchyPublic.lean/declarations/iscompact-iff-totallybounded-iscomplete.md) | 721 | `result-track:8a82f78f62e2390d83e62d4c431849f6fdf7f1c109effe47fb9e2cce96066974` |
| 117 | `theorem` | [IsCompact.totallyBounded](../../../../GeneralTopology/CauchyPublic.lean/declarations/iscompact-totallybounded.md) | 734 | `result-track:1cc54dd6ad959b050456bf9f4682bb0adf1d466f8f451eba32a088cf4504fdda` |
| 118 | `theorem` | [IsCompact.isComplete](../../../../GeneralTopology/CauchyPublic.lean/declarations/iscompact-iscomplete.md) | 737 | `result-track:d4fded01bf2cbaa2ffdcb6e2d776145a0d8255cf6911561dcbede2b301a88b5a` |
| 119 | `instance` | [(anonymous)](../../../../GeneralTopology/CauchyPublic.lean/declarations/instance-source-edition-2.md) | 741 | `declaration-track:e1d4f094629e581f0555f9c2b73de453693f6a9467586894fad7aaa10b26d931` |
| 120 | `theorem` | [TotallyBounded.isCompact_of_isComplete](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-iscompact-of-iscomplete.md) | 745 | `result-track:45f8e18546866aec5f95a9d21a8206f76dac8bb5c10e4214e4251e0856cfa9c5` |
| 121 | `theorem` | [TotallyBounded.isCompact_of_isClosed](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-iscompact-of-isclosed.md) | 748 | `result-track:c84499f418ae66024ff4e611a3f6bcd1a6c7723e2aeae293ce189456a8949c75` |
| 122 | `theorem` | [Filter.TotallyBounded.isCompact_setOfPred_clusterPt](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-iscompact-setofpred-clusterpt.md) | 751 | `result-track:50ccb5fe03079a93c8b284662e18e3734c307a6578a4821fad21efa7a8ca7f91` |
| 123 | `theorem` | [Filter.TotallyBounded.exists_clusterPt](../../../../GeneralTopology/CauchyPublic.lean/declarations/filter-totallybounded-exists-clusterpt.md) | 759 | `result-track:e17f777a95463e49ad6c860923fe212065ca33fc3d4b1aa6e717536ebbf4f7be` |
| 124 | `theorem` | [CauchySeq.totallyBounded_range](../../../../GeneralTopology/CauchyPublic.lean/declarations/cauchyseq-totallybounded-range.md) | 769 | `result-track:0b6915d4b99c07fd00a7abc915f5c0100108b547eb54f5120edbf611459349ec` |
| 125 | `def` | [interUnionBalls](../../../../GeneralTopology/CauchyPublic.lean/declarations/interunionballs.md) | 783 | `declaration-track:f679510121915277fed3491374437c1e14fb5c696530a0365a6354f52879db57` |
| 126 | `lemma` | [totallyBounded_interUnionBalls](../../../../GeneralTopology/CauchyPublic.lean/declarations/totallybounded-interunionballs.md) | 786 | `result-track:9ba592a75389cc4aac8a624dc7742c2d997ba5beb9391c9af441f4209d033049` |
| 127 | `theorem` | [isCompact_closure_interUnionBalls](../../../../GeneralTopology/CauchyPublic.lean/declarations/iscompact-closure-interunionballs.md) | 801 | `result-track:586777308ca8b2eb241e1c7b6e01971333a84fed7989bdd726da627bd7e00100` |
| 128 | `def` | [setSeqAux](../../../../GeneralTopology/CauchyPublic.lean/declarations/setseqaux.md) | 831 | `declaration-track:f44748cb2fafad2ede0d55f40ef3471cf733ac23aff8a2d40fb2bfa044a99b36` |
| 129 | `def` | [setSeq](../../../../GeneralTopology/CauchyPublic.lean/declarations/setseq.md) | 836 | `declaration-track:dcadea9d91eb3b533e3071f9340f3db28806304464c02df1d9606982eaf46b69` |
| 130 | `theorem` | [setSeq_mem](../../../../GeneralTopology/CauchyPublic.lean/declarations/setseq-mem.md) | 839 | `result-track:3198011ba760c3422bb6157f265dd1024f4b337d0f71fabecbc904c9253d9af5` |
| 131 | `theorem` | [setSeq_mono](../../../../GeneralTopology/CauchyPublic.lean/declarations/setseq-mono.md) | 842 | `result-track:f17cc9568bff838cbe7762cd5e63e62f51ef4d3983b65d154e7c4b67c8b5d0d4` |
| 132 | `theorem` | [setSeq_sub_aux](../../../../GeneralTopology/CauchyPublic.lean/declarations/setseq-sub-aux.md) | 845 | `result-track:957970481321b2e22593ffdcd2f12fa3fe3cc69bfb5188a0e4d54a89573b75e9` |
| 133 | `theorem` | [setSeq_prod_subset](../../../../GeneralTopology/CauchyPublic.lean/declarations/setseq-prod-subset.md) | 848 | `result-track:6d7475d4470c98a06cd8c77868de6e92948627c26a02f3bc7931c3b4578a1d1a` |
| 134 | `def` | [seq](../../../../GeneralTopology/CauchyPublic.lean/declarations/seq.md) | 857 | `declaration-track:91225f3a4f2ce283d8d550a5ea4db4521049822a7557734b635f388aef96aad3` |
| 135 | `theorem` | [seq_mem](../../../../GeneralTopology/CauchyPublic.lean/declarations/seq-mem.md) | 860 | `result-track:a65c3b55e251147a7e61ab58ce42a7666f61ab5be5c02e18ecbdd0de69ff894f` |
| 136 | `theorem` | [seq_pair_mem](../../../../GeneralTopology/CauchyPublic.lean/declarations/seq-pair-mem.md) | 863 | `result-track:82a0c7fa996cdce47801be58771726175db288890a11a56d115c5b53f3ed043a` |
| 137 | `theorem` | [seq_is_cauchySeq](../../../../GeneralTopology/CauchyPublic.lean/declarations/seq-is-cauchyseq.md) | 867 | `result-track:2ba332a0d4a5dbb2ce8bf8e4239de465d361ceebb3456b7d8e45868087439b28` |
| 138 | `theorem` | [le_nhds_of_seq_tendsto_nhds](../../../../GeneralTopology/CauchyPublic.lean/declarations/le-nhds-of-seq-tendsto-nhds.md) | 871 | `result-track:58dc2e16e3f882ad346d2763effd1cd12df989b671edc9eec76dcebea21dee45` |
| 139 | `theorem` | [complete_of_convergent_controlled_sequences](../../../../GeneralTopology/CauchyPublic.lean/declarations/complete-of-convergent-controlled-sequences.md) | 896 | `result-track:57f21167cb72e5e7cf504bddeed734a34fed3ca3cd5ad684bb5a4d886837b1a3` |
| 140 | `theorem` | [complete_of_cauchySeq_tendsto](../../../../GeneralTopology/CauchyPublic.lean/declarations/complete-of-cauchyseq-tendsto.md) | 909 | `result-track:fbc2a26e91bf12ff891e57c8a1e7935103ee69ba89b5841336217e7c934e6235` |
| 141 | `instance` | [(anonymous)](../../../../GeneralTopology/CauchyPublic.lean/declarations/instance.md) | 918 | `declaration-track:a8dc98612b6ee1ef0e49e19afb838b0deb8fd29040ca8aebe8ad9f533203add3` |
| 142 | `instance` | [secondCountable_of_separable](../../../../GeneralTopology/CauchyPublic.lean/declarations/secondcountable-of-separable.md) | 924 | `declaration-track:956290a750e3018eee4321e8dafb4f934ab8ebff08c5bc7f766ca349e7aa4dff` |
| 143 | `theorem` | [subset_countable_closure_of_almost_dense_set](../../../../GeneralTopology/CauchyPublic.lean/declarations/subset-countable-closure-of-almost-dense-set.md) | 949 | `result-track:9c1e13d39d99db8aab84a203c01a4c498e36b37ec3f9df7148446e39c84dc93a` |
| 144 | `theorem` | [secondCountable_of_almost_dense_set](../../../../GeneralTopology/CauchyPublic.lean/declarations/secondcountable-of-almost-dense-set.md) | 971 | `result-track:0aebac3e4a8617960203d635aee46cff0b592b78a99ed1d6686c405ed9cd6c83` |
| 145 | `lemma` | [_root_.TotallyBounded.isSeparable](../../../../GeneralTopology/CauchyPublic.lean/declarations/root-totallybounded-isseparable.md) | 982 | `result-track:646e71e83089983bd6feae63945acd0c6086dc3bcad395b54df1c8b90152d548` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a1d7a66d3869d0d90c7f10e0b7a14c68a5e2aaf5e6f91a4270cac42707ca462 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant68117051ca85f05bbde595bbbb1dae4b57052c6d3d0fcda3059551b2527874b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
