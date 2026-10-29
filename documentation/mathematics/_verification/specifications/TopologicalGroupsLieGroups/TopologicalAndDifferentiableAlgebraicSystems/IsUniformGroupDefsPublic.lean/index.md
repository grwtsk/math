# Verification target: Is Uniform Group Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2d31affc2b2cd879c6538fe49e479210a7934e4",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variantba72a4d85a4a1cda8b0dff2d41b615eae2122bc5b684e31543898292abce0808.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2d31affc2b2cd879c6538fe49e479210a7934e4`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variantba72a4d85a4a1cda8b0dff2d41b615eae2122bc5b684e31543898292abce0808.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variantba72a4d85a4a1cda8b0dff2d41b615eae2122bc5b684e31543898292abce0808.lean.json)

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
| 1 | `class` | [IsRightUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isrightuniformaddgroup.md) | 69 | `declaration-track:a67806f57b3242ef9b33f8fcf08deac7c35d8fe0a0bdf0ee38f5fb698fe7eb1a` |
| 2 | `class` | [IsRightUniformGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isrightuniformgroup.md) | 81 | `declaration-track:e688777d584896937137ed3a98de632530cd21211d78e6bdb78136e27ccfc13e` |
| 3 | `class` | [IsLeftUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isleftuniformaddgroup.md) | 92 | `declaration-track:6a0b7391abf9100a20e2bb03d02dc23783fc3487fda070705f25fbe670889588` |
| 4 | `class` | [IsLeftUniformGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isleftuniformgroup.md) | 104 | `declaration-track:b78b91267df14cf1951ee070ceece4feeb1432f1693a049c9592893047b467eb` |
| 5 | `lemma` | [uniformity_eq_comap_mul_inv_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformity-eq-comap-mul-inv-nhds-one.md) | 120 | `result-track:b29ce90a2b0ee307e6e41d9c12ac7918439655129b3ecb4730d95b39fd386d78` |
| 6 | `lemma` | [uniformity_eq_comap_inv_mul_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformity-eq-comap-inv-mul-nhds-one.md) | 125 | `result-track:e4277d4c77109902869733de1d03095956c9779700b8ea7cbfd47ad943cbfc5e` |
| 7 | `lemma` | [uniformity_eq_comap_mul_inv_nhds_one_swapped](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformity-eq-comap-mul-inv-nhds-one-swapped.md) | 130 | `result-track:5f24d04f4059a70d594a1078a6887aff350ac1b29ed189eefff0b20f6bdb5d32` |
| 8 | `lemma` | [uniformity_eq_comap_inv_mul_nhds_one_swapped](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformity-eq-comap-inv-mul-nhds-one-swapped.md) | 136 | `result-track:e9eb43ef3cab5e03bcd3887d01af90ec53e8859693e733a2211954c4d6d9059e` |
| 9 | `theorem` | [uniformity_eq_comap_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformity-eq-comap-nhds-one.md) | 142 | `result-track:06c4543b7fbd9837850fcdb3bc800009a1403733820b18499fe42a0e314bdd7f` |
| 10 | `theorem` | [uniformity_eq_comap_nhds_one_swapped](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformity-eq-comap-nhds-one-swapped.md) | 147 | `result-track:554a293fd053bf320bc96d3fbccdc25f866176245bcd9582e30b7a460d54ec13` |
| 11 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/instance.md) | 155 | `declaration-track:69abc53620843c41cf17be8f7617ccbab77225bf5eab60b0ebbf0e41e3454b9d` |
| 12 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/instance-source-edition-3.md) | 162 | `declaration-track:cb9a20836241025b7dc854c46f3a401ff258d19788342bb863b759527a6c942a` |
| 13 | `class` | [IsUniformGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isuniformgroup.md) | 189 | `declaration-track:ea58a0225754466ab61ad468b0c6484665191f778e123f9d9b1daa424e3c0f21` |
| 14 | `class` | [IsUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isuniformaddgroup.md) | 204 | `declaration-track:9426b97449216104f49d468f5023fc4403f2718b4cc02ab03b7dd40eed9d1d3c` |
| 15 | `theorem` | [IsUniformGroup.mk'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isuniformgroup-mk.md) | 210 | `result-track:d6b1cd82aadbaf454ebf6ed64c92f252d949c1aa7c1cb7a621813c2bffe41a5e` |
| 16 | `theorem` | [uniformContinuous_div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-div.md) | 219 | `result-track:1853888c9b96d1235a1777aeedd8332f27122e0e84289d5b0700ac85bb8b868d` |
| 17 | `theorem` | [UniformContinuous.div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-div-source-edition-2.md) | 223 | `result-track:24e5d57533ff54c727e15da4bf84db359dbf9aba0532f008def76e4d2a6e3bd4` |
| 18 | `theorem` | [UniformContinuous.inv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-inv-source-edition-2.md) | 228 | `result-track:96a5efe6b5c92929dcd3ad020b9c4213f3f94c84f0f538ded892008dc329a250` |
| 19 | `theorem` | [uniformContinuous_inv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-inv.md) | 234 | `result-track:65611ef8e0a3d93f830f92abbea2c766ba98536953e2812aa33e6db68d32fdf6` |
| 20 | `theorem` | [UniformContinuous.mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-mul-source-edition-2.md) | 238 | `result-track:f36a273a4daaabd603ca69a932a9d2d81ed03f19df7d1a9b01748b88a9562b7e` |
| 21 | `theorem` | [Finset.uniformContinuous_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/finset-uniformcontinuous-prod.md) | 244 | `result-track:f0649ac6efd03aa59419c36d6dbf2883544a5ccb4da98669699b6dea6da0adbe` |
| 22 | `theorem` | [uniformContinuous_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-mul.md) | 255 | `result-track:55fd23568abf3103970e6be2437fc1266a648770abe74f0bbed7a0aec8e91822` |
| 23 | `theorem` | [UniformContinuous.mul_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-mul-const.md) | 259 | `result-track:c5b0a8fd51ea0c011354a6f21a7e2b637cbe10c44427f4de70ee17175a225194` |
| 24 | `theorem` | [UniformContinuous.const_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-const-mul.md) | 264 | `result-track:45cbdd54092a6aa896bf7892465139c6cce9e60d478dbf53aff1b2e3df3cc15c` |
| 25 | `theorem` | [uniformContinuous_mul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-mul-left.md) | 269 | `result-track:19d8f0813aff65a20a99e1ac806523dd3a9f6edc519bf14e547389bc4eb56516` |
| 26 | `theorem` | [uniformContinuous_mul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-mul-right.md) | 273 | `result-track:74dd4fe7dd6a9bae3de333324b4f15b7955e5ebf7e3d73b09f1c2e87b93c1348` |
| 27 | `theorem` | [UniformContinuous.div_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-div-const-source-edition-2.md) | 277 | `result-track:affdb6c9492ffa8afd0ed64362a4870438ce4b9379f00d302c042e1490490deb` |
| 28 | `theorem` | [uniformContinuous_div_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-div-const.md) | 282 | `result-track:7044d4d8d3d16b600513a2d74197cc42b27d8207df4a6b853840b0ed9c24b88f` |
| 29 | `theorem` | [Filter.Tendsto.uniformity_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/filter-tendsto-uniformity-mul.md) | 286 | `result-track:ca5b2af8753f19367b5e9de5630d3c4fdfcf6f475c29a4925a295aa05f10f2db` |
| 30 | `theorem` | [Filter.Tendsto.uniformity_inv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/filter-tendsto-uniformity-inv.md) | 294 | `result-track:b199ae4728067a643052372f3e1a1ae927bcf9f605597b70f04975c599553189` |
| 31 | `theorem` | [Filter.Tendsto.uniformity_inv_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/filter-tendsto-uniformity-inv-iff.md) | 301 | `result-track:87c0d99bbf46c52e5144d721cba5fd3fccd7262224cf9fe063ac54f6cf7ffbf4` |
| 32 | `theorem` | [Filter.Tendsto.uniformity_div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/filter-tendsto-uniformity-div.md) | 306 | `result-track:26c7b86f9f2ec21a460505be59561b9574f069dcb7f2c72e0d559d221cf9d920` |
| 33 | `theorem` | [Filter.Tendsto.uniformity_mul_iff_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/filter-tendsto-uniformity-mul-iff-right.md) | 318 | `result-track:2494417aee4b3d0865255d377c27e4c17185b448600bab457bc816ed83fe814f` |
| 34 | `theorem` | [Filter.Tendsto.uniformity_mul_iff_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/filter-tendsto-uniformity-mul-iff-left.md) | 329 | `result-track:0f17fb59151d81a7eea0795ffbb0ac3c8d9276937b86c90b27ba49804422c556` |
| 35 | `theorem` | [UniformContinuous.pow_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-pow-const.md) | 335 | `result-track:024debd10904d20aeaf9ece9877e5c63fd27c9f4714d4da63aea3106084d23be` |
| 36 | `theorem` | [uniformContinuous_pow_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-pow-const-source-edition-2.md) | 345 | `result-track:fd7888ee3dfe4c4894164ff16f88aad0c18181e2cd6711c71531fcb3cfe9ca4f` |
| 37 | `theorem` | [UniformContinuous.zpow_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-zpow-const-source-edition-2.md) | 349 | `result-track:71b4db1326d58e5107d9e0dad0435db00525c7bd0ede8694d42eb046d81a6915` |
| 38 | `theorem` | [uniformContinuous_zpow_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-zpow-const.md) | 359 | `result-track:51a5e9e20ebaf628cce1158f3d612fd2fd73fbe9747af5a291390ff4ad5270ad` |
| 39 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/instance-source-edition-4.md) | 363 | `declaration-track:dc07066a57080f350c6f8909714e10812bf821e1e203aab80883c306767edddc` |
| 40 | `theorem` | [uniformity_translate_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformity-translate-mul.md) | 371 | `result-track:f29f252a1b0cd2e79fc62a3ef9182fbdb7ace9ead77083552af91900fdf7dea7` |
| 41 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/instance-source-edition-2.md) | 383 | `declaration-track:900a0cad769b262c3d769df3d322d13622192289420a3bf953a0e5025a9fdbbc` |
| 42 | `instance` | [IsUniformGroup.isRightUniformGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isuniformgroup-isrightuniformgroup.md) | 395 | `declaration-track:1ba783e7a2369f30ab5ba6428e5a909b5ab2e06b5d3860202a642a9cf6e2f0ad` |
| 43 | `instance` | [IsUniformGroup.isLeftUniformGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isuniformgroup-isleftuniformgroup.md) | 404 | `declaration-track:a2c689dc216144f425173de934ecb3694232aa778dfdfbc1f20f5a8737b87f22` |
| 44 | `theorem` | [IsUniformGroup.ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isuniformgroup-ext.md) | 413 | `result-track:d7b7f2ee8be4eb4fc7563949e3db2fe462eaa2db383c2e35e378613d3f37bd83` |
| 45 | `theorem` | [IsUniformGroup.ext_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isuniformgroup-ext-iff.md) | 420 | `result-track:31459b2f2563488584120e180c6e5cad8f4c7d38b2125d98c41a9f57d686f1ae` |
| 46 | `theorem` | [IsUniformGroup.uniformity_countably_generated](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isuniformgroup-uniformity-countably-generated.md) | 428 | `result-track:f0ad6f73b0017a9eac262564de1ce139d1985ca2225b677404ea5fb4a5877439` |
| 47 | `theorem` | [comap_conj_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/comap-conj-nhds-one.md) | 445 | `result-track:135868aaf2b6a79ab725024730ee32d1a8a8344bbe07b055c56c3d92d2b1820e` |
| 48 | `theorem` | [tendsto_conj_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/tendsto-conj-nhds-one.md) | 464 | `result-track:1c6773a44b269f61d1fcf153461426bc7168c9e4af9024c059ff2e1bd6023f23` |
| 49 | `theorem` | [Filter.Tendsto.conj_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/filter-tendsto-conj-nhds-one.md) | 473 | `result-track:be265617b7d918bcdf2bee5a725da6221bf4c159a9967f4814c94c6919d1e6d5` |
| 50 | `theorem` | [IsUniformGroup.of_left_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isuniformgroup-of-left-right.md) | 481 | `result-track:a7957137cb7fde08890fc44e20a933595aa4dc169661d073433c3bedae1ab3c8` |
| 51 | `theorem` | [isUniformGroup_iff_left_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isuniformgroup-iff-left-right.md) | 502 | `result-track:9538b782f80b70929f9520a885e9bc121bb29f34ca46caac049dea33d192bd28` |
| 52 | `theorem` | [eventually_forall_conj_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/eventually-forall-conj-nhds-one.md) | 506 | `result-track:b846e0f064df18995a56a4fd9280440c0129bc82a32f87f41429f4cb480cac5f` |
| 53 | `theorem` | [Filter.HasBasis.uniformity_of_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/filter-hasbasis-uniformity-of-nhds-one.md) | 514 | `result-track:7f499b12cef18514814282a4ab297179b90ed5f5b799eca7bfd8edb270b97ece` |
| 54 | `theorem` | [Filter.HasBasis.uniformity_of_nhds_one_inv_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/filter-hasbasis-uniformity-of-nhds-one-inv-mul.md) | 521 | `result-track:48581e4dfbf0b34bb9bec03927d5115224dbdc7635ce8ae732a009ee2bc4273f` |
| 55 | `theorem` | [Filter.HasBasis.uniformity_of_nhds_one_swapped](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/filter-hasbasis-uniformity-of-nhds-one-swapped.md) | 528 | `result-track:95ada6ff88f1099d2b876e09e5e1463c5c4e579446fdf7e74cdeb06cb4fb0d49` |
| 56 | `theorem` | [Filter.HasBasis.uniformity_of_nhds_one_inv_mul_swapped](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/filter-hasbasis-uniformity-of-nhds-one-inv-mul-swapped.md) | 535 | `result-track:f3863654b184cddbf853404c59cad408e3fc51e63c1f925aa246278029967622` |
| 57 | `theorem` | [uniformContinuous_of_tendsto_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-of-tendsto-one.md) | 542 | `result-track:23e1ab70239ad0846f12e2900c289a5fe0484beb332749bb97409de0ef9c62d4` |
| 58 | `theorem` | [uniformContinuous_of_continuousAt_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-of-continuousat-one.md) | 558 | `result-track:3127322982626f41284cf704a044583895d945ec93010d5387b28b0c75e563f1` |
| 59 | `theorem` | [MonoidHom.uniformContinuous_of_continuousAt_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/monoidhom-uniformcontinuous-of-continuousat-one.md) | 565 | `result-track:7ce6859f37e587dea4d02b858f7775d416700fa01f04ebbf66aa5f0fddff4347` |
| 60 | `theorem` | [IsUniformGroup.uniformContinuous_iff_isOpen_ker](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isuniformgroup-uniformcontinuous-iff-isopen-ker.md) | 573 | `result-track:c36b10cf9a7729c679fca72cb84d227bdd16fc77e8a4fd0783b7e9fac8bbc3c8` |
| 61 | `theorem` | [uniformContinuous_monoidHom_of_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformcontinuous-monoidhom-of-continuous.md) | 584 | `result-track:4e698bc045f82ffb41c9bc49527e92ac6c38289974d54d25ed5090d0023f53ac` |
| 62 | `theorem` | [MonoidHom.isUniformInducing_of_isInducing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/monoidhom-isuniforminducing-of-isinducing.md) | 592 | `result-track:2a97e49e45e983026cbfdf909554e7019733d3cde291a0e043ecf62d6371cb3a` |
| 63 | `theorem` | [MonoidHom.isUniformEmbedding_of_isEmbedding](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/monoidhom-isuniformembedding-of-isembedding.md) | 599 | `result-track:517b4c36d6bc48154da6c1fe6781da2278f9d952f6b19ba9b561b3adc6cad8a0` |
| 64 | `def` | [IsTopologicalGroup.rightUniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/istopologicalgroup-rightuniformspace.md) | 627 | `declaration-track:56bc1fb30c72a9c1cda86817aebfd92b61f4af8c1f6650d2dec714c7bf9b6e84` |
| 65 | `theorem` | [uniformity_eq_comap_nhds_one'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformity-eq-comap-nhds-one-source-edition-2.md) | 644 | `result-track:cebe963068fc819e1f737b4cb193bf60f214f52b1111cee5152caf6188c75cbf` |
| 66 | `def` | [IsTopologicalGroup.leftUniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/istopologicalgroup-leftuniformspace.md) | 670 | `declaration-track:1ccfedc23a5425ee9743fc3a180862678bcd390e453b6073b452bf77ea905ff7` |
| 67 | `theorem` | [uniformity_eq_comap_nhds_one_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/uniformity-eq-comap-nhds-one-left.md) | 687 | `result-track:77764faacb4b7273a1363944e889e6f66ff4f3e788afb5f5ef78c29fd8f80fa7` |
| 68 | `theorem` | [isUniformGroup_of_commGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isuniformgroup-of-commgroup.md) | 708 | `result-track:291901bedc2fdd0ce0b6bb6a2443118c8bf42ecd9931713782618832be1e8c89` |
| 69 | `theorem` | [IsUniformGroup.rightUniformSpace_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/IsUniformGroupDefsPublic.lean/declarations/isuniformgroup-rightuniformspace-eq.md) | 731 | `result-track:9010b7f3f4dd59094f645989e2096a39258d96d3ff6fee3d2c1e06fa861f881e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fcb6b7435707a3ff9c6bd81edfad5e4e376372e55c7c3f7518390e9d84c636af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Defs/Variantba72a4d85a4a1cda8b0dff2d41b615eae2122bc5b684e31543898292abce0808.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Defs/Variantba72a4d85a4a1cda8b0dff2d41b615eae2122bc5b684e31543898292abce0808.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
