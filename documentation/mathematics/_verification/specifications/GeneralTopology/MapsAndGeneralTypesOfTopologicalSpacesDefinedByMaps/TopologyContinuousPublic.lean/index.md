# Verification target: Topology Continuous Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "620526f00d25f19d30d07ba5cad2b7a3370ba6bb",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/index.md) · [Full source](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `620526f00d25f19d30d07ba5cad2b7a3370ba6bb`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuous/Variant14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuous/Variant14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_def](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-def.md) | 35 | `result-track:f5d0f25d238d8fe3036c8081ead990abbd1b9e4ca077a98deca6b4e3808a80d9` |
| 2 | `theorem` | [IsOpen.preimage](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/isopen-preimage.md) | 42 | `result-track:ab36ed4931a8638789aded2c22f46a2f56bae3bbf70b06f67ca9a66049131b1b` |
| 3 | `lemma` | [Equiv.continuous_symm_iff](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/equiv-continuous-symm-iff.md) | 46 | `result-track:c05fd4a9c0eb3ebd08ae4441cf52f2e73d3037ff002637d6ba815c18dc634fb2` |
| 4 | `lemma` | [Equiv.isOpenMap_symm_iff](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/equiv-isopenmap-symm-iff.md) | 49 | `result-track:f8dff9e8b183c4bb2d6da1b279ddae2a68a2f62b87235aa83592ced467d52343` |
| 5 | `theorem` | [continuous_congr](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-congr.md) | 52 | `result-track:3db109496187a95588f2c001ca797a55c55fb055df3160eabe82d85597fe4495` |
| 6 | `theorem` | [Continuous.congr](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-congr-source-edition-2.md) | 56 | `result-track:4ce66d362e05c9ed0b7be9bc6808458947d762fcf71722bafb762353cfd2c686` |
| 7 | `theorem` | [ContinuousAt.tendsto](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuousat-tendsto.md) | 59 | `result-track:36216d219ce6b1d0df3598c245ea69e95210f6103ec906be8373b446bb7e1e86` |
| 8 | `theorem` | [continuousAt_def](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuousat-def.md) | 63 | `result-track:776458fede870e64a8dac37bc421f1bcf63076e9fe53f9cfebddf532cf7751b4` |
| 9 | `theorem` | [continuousAt_congr](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuousat-congr.md) | 66 | `result-track:ad357c07efddbd022a4361962fc123992858db76bad143bda6ca963e0315c526` |
| 10 | `theorem` | [ContinuousAt.congr](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuousat-congr-source-edition-2.md) | 70 | `result-track:df03a0ba62828b8ab8c6dc640fa600acd4f159b5272e2672055f70ad625facbc` |
| 11 | `theorem` | [ContinuousAt.preimage_mem_nhds](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuousat-preimage-mem-nhds.md) | 74 | `result-track:fbd8d49e3521edbb913740f1ba6aa836b1f3ff521008a848a0574bbe044eaa60` |
| 12 | `theorem` | [ContinuousAt.eventually_mem](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuousat-eventually-mem.md) | 81 | `result-track:a72dd527f304bd0a774daed53aea24ee7dfe10c4ed2d9b30a433a0c994526db8` |
| 13 | `lemma` | [not_continuousAt_of_tendsto](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/not-continuousat-of-tendsto.md) | 88 | `result-track:aa8504e00750cad98dab7b4fca8f4eac8dc883108d69d4806b57762252d303d6` |
| 14 | `theorem` | [ClusterPt.map](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/clusterpt-map.md) | 93 | `result-track:dd036331720612d54dffb05ea50ba5387dc7f4d5027b68c46864382ff6a2eb8d` |
| 15 | `theorem` | [preimage_interior_subset_interior_preimage](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/preimage-interior-subset-interior-preimage.md) | 98 | `result-track:aff5c50538f05cfe59ab3ecb8c71ae550395340ec972a2fb9e038309811d0b42` |
| 16 | `theorem` | [continuous_iff_preimage_interior_subset_interior_preimage](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-iff-preimage-interior-subset-interior-preimage.md) | 102 | `result-track:9d4f73cff79900a074f76c401516a7c584daf441109eab5fb489ba38b01c2252` |
| 17 | `theorem` | [continuous_id](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-id-source-edition-2.md) | 108 | `result-track:c95037e1a2e5411257d7d1b9e4c975eaacc7b7d9788561348a1e1185448427ee` |
| 18 | `theorem` | [continuous_id'](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-id.md) | 113 | `result-track:70d5558bb0891b580c7b6db5451415a397f049477b3a3232cff11498d368b2d9` |
| 19 | `theorem` | [Continuous.comp](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-comp.md) | 115 | `result-track:67ca432bab9fad38c36104c1192f8de92f4819dfed27b913d264bd5525f83c29` |
| 20 | `theorem` | [Continuous.comp'](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-comp-source-edition-2.md) | 121 | `result-track:e9a03cd84e427c7380f858b8a1a6eec44d50d546b40ce4d8d8d91eae15557b68` |
| 21 | `theorem` | [Continuous.iterate](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-iterate.md) | 125 | `result-track:e6fe6b74e8d0f6cd577bd0da330ac8b0a444119e5bcd56303a4aee0ce9cf885c` |
| 22 | `theorem` | [ContinuousAt.comp](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuousat-comp.md) | 128 | `result-track:0ac2acaed0aa1aa54fe42b61f87eb22740162a8af83978c7eb4ea81ecfc4056f` |
| 23 | `theorem` | [ContinuousAt.comp'](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuousat-comp-source-edition-2.md) | 133 | `result-track:826a73dd05158df517352a1f55f6209870f5a36565166907bfaf6dcf8753d7e1` |
| 24 | `theorem` | [ContinuousAt.comp_of_eq](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuousat-comp-of-eq.md) | 137 | `result-track:e7fcf32854d87b3b2191c0cd2a03ef5de13a10afeb968c788f74d6dcd9faaaa4` |
| 25 | `theorem` | [Continuous.tendsto](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-tendsto-source-edition-2.md) | 140 | `result-track:6a54a9f8dbf01beed89a73759d0d7187756076578ec7f31ada02250beaa524ca` |
| 26 | `theorem` | [Continuous.tendsto'](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-tendsto.md) | 146 | `result-track:527a89717d72bf96cbad8ca3e77fd79b6fab7d120e90bf89691b49559026efcd` |
| 27 | `theorem` | [Continuous.continuousAt](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-continuousat.md) | 151 | `result-track:435fa4fb4a383df1c738944d74dc85b254fd35b6378395ccc81ba52a325a65f2` |
| 28 | `theorem` | [continuous_iff_continuousAt](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-iff-continuousat.md) | 154 | `result-track:9ef0bbbdd3acdefc747d20ca3208ee25143d61853507c6d95bd87bf893c5cd1c` |
| 29 | `theorem` | [continuousAt_const](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuousat-const.md) | 159 | `result-track:077d3318311a2c08162ab5b6abb80e9c8e64d36b8bd12e4f6a6a0575181f3997` |
| 30 | `theorem` | [continuous_const](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-const.md) | 163 | `result-track:6c09d4e24c089d7580c5b0dc11d5aba2ac6c0da084afcdfbec9ad86cc8fd25cd` |
| 31 | `theorem` | [Filter.EventuallyEq.continuousAt](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/filter-eventuallyeq-continuousat.md) | 166 | `result-track:1cfa1125e8ae00798a6c81bb20ddf3153af70b621ed603397e287d6bdbac93b4` |
| 32 | `theorem` | [continuous_of_const](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-of-const.md) | 170 | `result-track:87dc6040d3f0fa60752eef9e8bb7f768416326b27b90fafeb7489289cfba47a8` |
| 33 | `theorem` | [continuousAt_id](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuousat-id.md) | 174 | `result-track:160a02bef1309306743ecb045a45dc639581b9e87f0970052a926bc34554952f` |
| 34 | `theorem` | [continuousAt_id'](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuousat-id-source-edition-2.md) | 178 | `result-track:45d5edb5cfb7f46634ec70d3690b6b94d86f0d4ece0e8b85f3d33fe79d1c1040` |
| 35 | `theorem` | [ContinuousAt.iterate](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuousat-iterate.md) | 180 | `result-track:1008ce87345440d81dbd149c052ee542ad104b1e26df36eccfae6ed55024f258` |
| 36 | `theorem` | [continuous_iff_isClosed](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-iff-isclosed.md) | 184 | `result-track:96638e69b02f25016fe3448ebc23c481b515df713e80c4d2ead8608bb0bce2fb` |
| 37 | `theorem` | [IsClosed.preimage](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/isclosed-preimage.md) | 188 | `result-track:fbc6f10109b41bcb8daeb9b7ad392a2cf5c3ec72c278cbd0ad6e6eb205d80a00` |
| 38 | `theorem` | [mem_closure_image](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/mem-closure-image.md) | 192 | `result-track:a8f369642dc6cb97b46911add3db4f32ff505145c0972ea22b5876aeba9ee4bd` |
| 39 | `theorem` | [Continuous.closure_preimage_subset](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-closure-preimage-subset.md) | 197 | `result-track:bb164bd4e5cafb1465d542d1b2386f10c061db24f919c62e68ebc42235d39c46` |
| 40 | `theorem` | [Continuous.frontier_preimage_subset](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-frontier-preimage-subset.md) | 202 | `result-track:0409ab19150d8cc70e1d7c5eb78f649bef1487cd9e9eefaa4f61746bb95a018a` |
| 41 | `theorem` | [Set.MapsTo.closure](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/set-mapsto-closure.md) | 207 | `result-track:583e8c3113fc31912e9cb552f8a1b79156797a7320995d5c9205d2add72edc30` |
| 42 | `theorem` | [image_closure_subset_closure_image](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/image-closure-subset-closure-image.md) | 213 | `result-track:954ce89e5b0203687975fcbef88dd4f668d3c29d2f626e51d9ca99221756c8dd` |
| 43 | `theorem` | [closure_image_closure](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/closure-image-closure.md) | 217 | `result-track:abeaad79f6b9080a96273858d385c3d0fa751ddc8b0f903ef73f4ec470284e4c` |
| 44 | `theorem` | [closure_subset_preimage_closure_image](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/closure-subset-preimage-closure-image.md) | 223 | `result-track:9965ac38a5df0108b883917ffe2cbe8f5ab8288d98e9802aa55ea3c08f2ef464` |
| 45 | `lemma` | [nonempty_preimage_closure_image](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/nonempty-preimage-closure-image.md) | 227 | `result-track:343303c3c666654ded89c8813e1d93a2ba421846ed20b8a9404d2ffb927d65ff` |
| 46 | `theorem` | [continuous_iff_image_closure_subset_closure_image](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-iff-image-closure-subset-closure-image.md) | 231 | `result-track:3433b564b89f2e159ffc767ee1cf8d16d0e8763d2bd42db602a16de031d6b0ab` |
| 47 | `theorem` | [map_mem_closure](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/map-mem-closure.md) | 237 | `result-track:308a00fe6ecac1dbe00019a1e014f26775d11fb9846c91f9195fbf306464db51` |
| 48 | `theorem` | [Set.MapsTo.closure_left](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/set-mapsto-closure-left.md) | 242 | `result-track:1c179856cf09df9ddfd7e264a0daaadf8da09f74c6ca21e5ea15f1efde62945a` |
| 49 | `theorem` | [Filter.Tendsto.lift'_closure](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/filter-tendsto-lift-closure.md) | 246 | `result-track:af0e7bdba7105d75c60aa9c3d7df258d28c5f29858754e48ef089c054782f434` |
| 50 | `theorem` | [tendsto_lift'_closure_nhds](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/tendsto-lift-closure-nhds.md) | 251 | `result-track:019cbbfa94bb5382a00f644f01156d455fad8d06b8b5d780be885c538b984b9a` |
| 51 | `theorem` | [Function.Surjective.denseRange](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/function-surjective-denserange.md) | 265 | `result-track:58defd9ffa67462a6025c430ba299b9924613886b650fb4649935511e0f3a21f` |
| 52 | `theorem` | [denseRange_id](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/denserange-id.md) | 268 | `result-track:76bb7ec68cf966efc1394f11e6401c4e011c5998b25a519fbfa86e4a5f7dcfae` |
| 53 | `theorem` | [denseRange_iff_closure_range](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/denserange-iff-closure-range.md) | 271 | `result-track:8cc704b89c11cb8be62588b48dcc8d5637b54c8493c3f98a79213b025319a515` |
| 54 | `theorem` | [DenseRange.closure_range](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/denserange-closure-range.md) | 274 | `result-track:5ed2c038bc8888650b26524546b613fd011aa1ba3cce609a36e3492b603ce424` |
| 55 | `lemma` | [denseRange_subtype_val](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/denserange-subtype-val.md) | 278 | `result-track:cbbf73c6aea212d3e43610bbbed6d4d8d163a74c57a5cf30c3706d7ae2f44c0c` |
| 56 | `theorem` | [Dense.denseRange_val](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/dense-denserange-val.md) | 281 | `result-track:e3db8db9c58df448603b750ba34efb098794d3b58e090fe5b3b025b196babe4b` |
| 57 | `theorem` | [Continuous.range_subset_closure_image_dense](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/continuous-range-subset-closure-image-dense.md) | 284 | `result-track:95d707161033cac444806c9b4b1b13339b211d41e8513520b25d73b428735d6d` |
| 58 | `theorem` | [DenseRange.dense_image](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/denserange-dense-image.md) | 290 | `result-track:594005c447fd2321c3aec3c20e84451e33c3b4abbc2735a3a134fc86d56c3daf` |
| 59 | `theorem` | [DenseRange.subset_closure_image_preimage_of_isOpen](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/denserange-subset-closure-image-preimage-of-isopen.md) | 296 | `result-track:c14cbe163a02f5179d2f9bfe06482e64c67868d09c74e4f2038f904800e4a664` |
| 60 | `theorem` | [DenseRange.dense_of_mapsTo](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/denserange-dense-of-mapsto.md) | 303 | `result-track:51a5678dd9d75b289abb9bd669dc84523162d24ecfe6ce4e605af344ff2ecb93` |
| 61 | `theorem` | [DenseRange.comp](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/denserange-comp.md) | 309 | `result-track:8328ee166dacac9278030498f33ac041aae25a003d4e62ed5c03f0ecb008c19f` |
| 62 | `theorem` | [DenseRange.nonempty_iff](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/denserange-nonempty-iff.md) | 314 | `result-track:299206c1643cbf3bfd92e79d2625b7e5316dae3e46eaf2c226293c427ecd0011` |
| 63 | `theorem` | [DenseRange.nonempty](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/denserange-nonempty.md) | 317 | `result-track:a7a83510b913974eb9ad34cba4b3118f5a73faa7d9fd96e44762db7fcc5df5b1` |
| 64 | `def` | [DenseRange.some](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/denserange-some.md) | 321 | `declaration-track:52f453504a2d1063126a11d830ef8563ff9cbb9c744dbff099f57491c38aa29e` |
| 65 | `theorem` | [DenseRange.exists_mem_open](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/denserange-exists-mem-open.md) | 324 | `result-track:26d6546061d26d143a4c0c52c04a293df7d997634d1f0aed5d42120c9ebec092` |
| 66 | `theorem` | [DenseRange.mem_nhds](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousPublic.lean/declarations/denserange-mem-nhds.md) | 328 | `result-track:105cd4ca35168c93d5806cb72d981dac9e7bccf9943501f19772c331dc922293` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aace7a3067623627380dfa5318579d318d2e97d08432628aaa32859c1ccfb3ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Continuous/Variant14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Continuous/Variant14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
