# Verification target: Topology Continuous Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1944ed7b3b9d6ff1052c8e78160b6c21d4f00bb6",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant03f1a62895989b1339f72eda4cdbffc209a4409793003e4929900498b9610453.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1944ed7b3b9d6ff1052c8e78160b6c21d4f00bb6`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuous/Variant03f1a62895989b1339f72eda4cdbffc209a4409793003e4929900498b9610453.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuous/Variant03f1a62895989b1339f72eda4cdbffc209a4409793003e4929900498b9610453.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ClusterPt` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_def](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-def.md) | 37 | `result-track:7ad60990a0ddc588a5b4338a2545a1767ffea9c953c8cd72a10e151be9bc4b3a` |
| 2 | `theorem` | [IsOpen.preimage](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/isopen-preimage.md) | 44 | `result-track:ba39b968bd44c9d099ab95694e38809d6cfef21ed2abaca83944597a68cb50a9` |
| 3 | `lemma` | [Equiv.continuous_symm_iff](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/equiv-continuous-symm-iff.md) | 48 | `result-track:599ff25f53cbaa48ff0c207df9c8010e277b2f2f03b47a05c02741450ed23341` |
| 4 | `lemma` | [Equiv.isOpenMap_symm_iff](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/equiv-isopenmap-symm-iff.md) | 51 | `result-track:18e0152dd62c7acca386c0a117558bf513166ceb8731a4ef28ff595c78e76e7c` |
| 5 | `theorem` | [continuous_congr](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-congr.md) | 54 | `result-track:002c42546c8c1938ab0a0e781033f520133d7e1c6238cd84d0e32ae3c0a5ca31` |
| 6 | `theorem` | [Continuous.congr](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-congr-source-edition-2.md) | 58 | `result-track:2000ced7dbbec1d66c22aed98b972c35bb15aa9bf98bd7e23051e37b7a355536` |
| 7 | `theorem` | [ContinuousAt.tendsto](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuousat-tendsto.md) | 61 | `result-track:6879847054e219db3355b8499c908561bdced48865dca2045d5ffa69a434410f` |
| 8 | `theorem` | [continuousAt_def](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuousat-def.md) | 65 | `result-track:1d7f57304d3b91f8a529af46723c0e04c8a6e741b19b6cbdd1fcb26255450736` |
| 9 | `theorem` | [continuousAt_congr](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuousat-congr-source-edition-2.md) | 68 | `result-track:d627604268d27caf673b1e4a7e5db8b54446db01cec664a1bc48654b53d44002` |
| 10 | `theorem` | [ContinuousAt.congr](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuousat-congr.md) | 72 | `result-track:1a792d7c298a8a363871fa2fd0b35a9a3a847f63b542e2f6b486320f01192576` |
| 11 | `theorem` | [ContinuousAt.preimage_mem_nhds](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuousat-preimage-mem-nhds.md) | 76 | `result-track:56d98363d743ca02646ee920cb40360f61ec78c10521de6323889efbf2fe84dc` |
| 12 | `theorem` | [ContinuousAt.eventually_mem](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuousat-eventually-mem.md) | 83 | `result-track:b266892dcfae65ce0cc425c3cd82f57911e6b111b8703cf1186665ad5ec9e710` |
| 13 | `lemma` | [not_continuousAt_of_tendsto](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/not-continuousat-of-tendsto.md) | 90 | `result-track:cf9a22818caa045102ad3af874a6a3710d5a7a0f852546df89878396a68690d6` |
| 14 | `theorem` | [ClusterPt.map](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/clusterpt-map.md) | 95 | `result-track:6a64a5b8144a4431b5305d94ef4f0679f8b6dd780eb7cc2a32eef7158e959d43` |
| 15 | `theorem` | [preimage_interior_subset_interior_preimage](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/preimage-interior-subset-interior-preimage.md) | 100 | `result-track:61d939207cc44b0122d56368bfdae75e421f1db76560002f94e053fd752a56a2` |
| 16 | `theorem` | [continuous_id](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-id-source-edition-2.md) | 105 | `result-track:d3af2b3da07ed783f67354313a68aad4587875c4308bc9543cdb0accdab4af01` |
| 17 | `theorem` | [continuous_id'](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-id.md) | 110 | `result-track:84042b98b98821f02b82e9765dfaea26371ef4eb4dee4df513bfa5b772d3468e` |
| 18 | `theorem` | [Continuous.comp](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-comp-source-edition-2.md) | 112 | `result-track:cdee293738a0f7fd1b0c893862d3726723e2c94cfe9937a481116872978ca846` |
| 19 | `theorem` | [Continuous.comp'](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-comp.md) | 118 | `result-track:04708757f98b5c0107f273635dd0f3856970bbfda0604af5c6da2d18fd66c1e9` |
| 20 | `theorem` | [Continuous.iterate](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-iterate.md) | 121 | `result-track:87a1decbad847e90f7c742351a0afa13a7b35309cefd49915532a9a2cde93163` |
| 21 | `theorem` | [ContinuousAt.comp](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuousat-comp-source-edition-2.md) | 124 | `result-track:9b1a8f0de291c7ac9bf2e89330214d3649ea3fe31d5542f66970e0035606388a` |
| 22 | `theorem` | [ContinuousAt.comp'](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuousat-comp.md) | 129 | `result-track:6e8a644a94754398c2b508e9278839e91b88b2e4b40545c04c55cab32f026c0d` |
| 23 | `theorem` | [ContinuousAt.comp_of_eq](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuousat-comp-of-eq.md) | 133 | `result-track:b373e2afc8be7ad6d4444fb04769fedc90864643399eea553f9c9515ab03aec4` |
| 24 | `theorem` | [Continuous.tendsto](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-tendsto.md) | 136 | `result-track:15bb5b59b7bc27e993622ea33dfb5cb1a0df24356e96fba05fe023499b1f6480` |
| 25 | `theorem` | [Continuous.tendsto'](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-tendsto-source-edition-2.md) | 142 | `result-track:a8dd9c071681d9e77726a85ea44c7f1787a427f84006e64f823b3ae54ceec728` |
| 26 | `theorem` | [Continuous.continuousAt](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-continuousat.md) | 147 | `result-track:1a86c82fe9c803b996d6bac8a1fc93963342ef186bec89f58d999c127bd3a31b` |
| 27 | `theorem` | [continuous_iff_continuousAt](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-iff-continuousat.md) | 150 | `result-track:12de8b1eceb7187778a5d01053554ce590b2ba50bb207102ae393af416804e4d` |
| 28 | `theorem` | [continuousAt_const](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuousat-const.md) | 155 | `result-track:91383ad38cf6d715daa23a6b4375c749daebe0c203449d5c2701a41152e14f0d` |
| 29 | `theorem` | [continuous_const](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-const.md) | 159 | `result-track:7f24a07266ee95cb9cb11fba8ff27d4bd8a71b7da16b4b5526966aa23ec0c374` |
| 30 | `theorem` | [Filter.EventuallyEq.continuousAt](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/filter-eventuallyeq-continuousat.md) | 162 | `result-track:0321e4a1418c8baa3d3d55cc19c7d9259c2afbe0601690c66ce826da63102225` |
| 31 | `theorem` | [continuous_of_const](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-of-const.md) | 166 | `result-track:70ba7891d67f6663bddb4ee5ec08ec0207447d6e7e7a054655aa94ee10770422` |
| 32 | `theorem` | [continuousAt_id](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuousat-id.md) | 170 | `result-track:9215eab686bd147016519f58c43e9f1634c067c0c0001328b8d43037b5c1a244` |
| 33 | `theorem` | [continuousAt_id'](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuousat-id-source-edition-2.md) | 174 | `result-track:d3830bda1e4f2488c43cbb482b206f6353c943d7f0dca82d2a34dbd5fbcb455d` |
| 34 | `theorem` | [ContinuousAt.iterate](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuousat-iterate.md) | 176 | `result-track:fab7ee6a4aa2ec829f3dc0047408b39fa6bb6b6f5224782f56c855f0d37192a1` |
| 35 | `theorem` | [continuous_iff_isClosed](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-iff-isclosed.md) | 180 | `result-track:9bc15f61bc2ce2879330a7d32c75c4489a1d64397afee2a1c46d92ddc689b01e` |
| 36 | `theorem` | [IsClosed.preimage](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/isclosed-preimage.md) | 184 | `result-track:85bc198a6a3580251694adcd903a69edfa68f8bc6d00e3a42c465e479d7b226b` |
| 37 | `theorem` | [mem_closure_image](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/mem-closure-image.md) | 188 | `result-track:984b53d4ae7616d099b9c5e17a06248272a4a90b02b958f866234ad2e9da11fa` |
| 38 | `theorem` | [Continuous.closure_preimage_subset](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-closure-preimage-subset.md) | 193 | `result-track:4b485ee49e4d250f8e0a9e048ee1f3f54c54bb46583359d7a8dcf672119d1542` |
| 39 | `theorem` | [Continuous.frontier_preimage_subset](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-frontier-preimage-subset.md) | 198 | `result-track:fae6f3b42f7b46044ba4829df41d0f18f35b4649b7797eecdd8db4bda797c5d7` |
| 40 | `theorem` | [Set.MapsTo.closure](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/set-mapsto-closure.md) | 203 | `result-track:65ee6db9e2b614790c1f9049cb90cb7004dd2f90f251d53191706140ff63e7c1` |
| 41 | `theorem` | [image_closure_subset_closure_image](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/image-closure-subset-closure-image.md) | 209 | `result-track:ecc3eb41642ba7475c9b6934a49fef6a1ac2c0792979692b0630acc822080108` |
| 42 | `theorem` | [closure_image_closure](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/closure-image-closure.md) | 213 | `result-track:51ce14008c79bba389547ce2626c2cd5669565b418c4ef8bfb84499323270db0` |
| 43 | `theorem` | [closure_subset_preimage_closure_image](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/closure-subset-preimage-closure-image.md) | 219 | `result-track:0b6fe65e018f1d6cd1390be6741c9bdd948959f21eb38f737dadd49e066b0ef1` |
| 44 | `theorem` | [map_mem_closure](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/map-mem-closure.md) | 223 | `result-track:940db1af8ac002a2b31c837fa3cc3aacb3059d60c85235b3ff0ef81c23cdbff8` |
| 45 | `theorem` | [Set.MapsTo.closure_left](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/set-mapsto-closure-left.md) | 228 | `result-track:ab19bb6664659cf501792eeec38036cfee607267dedac733c06773b25f0ced8e` |
| 46 | `theorem` | [Filter.Tendsto.lift'_closure](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/filter-tendsto-lift-closure.md) | 232 | `result-track:cc04948bd32addd8482b650a5c54014de35c5acba2a80d9bf2c39671f63daf78` |
| 47 | `theorem` | [tendsto_lift'_closure_nhds](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/tendsto-lift-closure-nhds.md) | 237 | `result-track:b3e329e25d43a7b7b7089d5730875b34da880c7708b9be0e3397adfca9167353` |
| 48 | `theorem` | [Function.Surjective.denseRange](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/function-surjective-denserange.md) | 251 | `result-track:31e6713d07813b22f239838a3354fd1549fec5c984442e834e98e866b0f02dbb` |
| 49 | `theorem` | [denseRange_id](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/denserange-id.md) | 254 | `result-track:6fb3dd8a100cfebe82a1555c3443e06dcc9534228fe9e4cb28bbe83402d8d396` |
| 50 | `theorem` | [denseRange_iff_closure_range](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/denserange-iff-closure-range.md) | 257 | `result-track:ad5f96eef55d27dd59d053df1c81f876f84048cd7a13ee097aa5aa6f387d4f90` |
| 51 | `theorem` | [DenseRange.closure_range](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/denserange-closure-range.md) | 260 | `result-track:0b4ea469a76ddd7f33787f9bfa47a3d75a7519119598207d58c6cadcbcfd18c2` |
| 52 | `lemma` | [denseRange_subtype_val](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/denserange-subtype-val.md) | 264 | `result-track:b8bf89f5338748fa288154afe2acfe587c2bb2dc280176b2e9c04645ccb671e3` |
| 53 | `theorem` | [Dense.denseRange_val](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/dense-denserange-val.md) | 267 | `result-track:4860579869401e1a2529fd31894d53807a8ee389c6312438a000fd3a5c89f807` |
| 54 | `theorem` | [Continuous.range_subset_closure_image_dense](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/continuous-range-subset-closure-image-dense.md) | 270 | `result-track:2e244963924ac57e1aa1c79816cf09676a882287ae169112dfd8a4a279ddc44d` |
| 55 | `theorem` | [DenseRange.dense_image](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/denserange-dense-image.md) | 276 | `result-track:e789fb6cbcf2a6772dad09bc5691caf09c71f47702dff21336d694a03bfa3bea` |
| 56 | `theorem` | [DenseRange.subset_closure_image_preimage_of_isOpen](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/denserange-subset-closure-image-preimage-of-isopen.md) | 282 | `result-track:3ca0f5b5983075d6a9e0ca590c335157f44089b2d4696a752810ef97f6edf700` |
| 57 | `theorem` | [DenseRange.dense_of_mapsTo](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/denserange-dense-of-mapsto.md) | 289 | `result-track:e90cb627a9384909e8ae01da89ce04f381e7d6afb9cb39149a585939113efb80` |
| 58 | `theorem` | [DenseRange.comp](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/denserange-comp.md) | 295 | `result-track:04cdf629743f0bcd45c914d9fed09ad48fcb7df92e349e55def5c170a8a0ef19` |
| 59 | `theorem` | [DenseRange.nonempty_iff](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/denserange-nonempty-iff.md) | 300 | `result-track:b1f55e195bf7b03f75456a1e727cd0b9324f27e74116aa0c40adffffc66e53d9` |
| 60 | `theorem` | [DenseRange.nonempty](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/denserange-nonempty.md) | 303 | `result-track:d474b05987e6e8844a00419252749b9e3749d7227e2365209c0ef001796863dd` |
| 61 | `def` | [DenseRange.some](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/denserange-some.md) | 307 | `declaration-track:d379c7738825e344b3e1fc93b2efb96c0c1868cfb93cd847e479b52f8cf1c048` |
| 62 | `theorem` | [DenseRange.exists_mem_open](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/denserange-exists-mem-open.md) | 310 | `result-track:803f01170148f8fa155c0f056f57b6c17eeadde1bbd68d5ab27739720fcb849c` |
| 63 | `theorem` | [DenseRange.mem_nhds](../../../../../GeneralTopology/MapsAndGeneralTypesOfTopologicalSpacesDefinedByMaps/TopologyContinuousNamespaced.lean/declarations/denserange-mem-nhds.md) | 314 | `result-track:57e5bee5a0dba474f8da34e80be9571da32e7567fe32f272f7abafe07cade5b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbd7b58d22e49e6d3271d4e604917c381e4bb341fa5a8870d8a9d85a59001148 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Continuous/Variant03f1a62895989b1339f72eda4cdbffc209a4409793003e4929900498b9610453.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Continuous/Variant03f1a62895989b1339f72eda4cdbffc209a4409793003e4929900498b9610453.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
