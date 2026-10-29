# Verification target: Is Manifold Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d24b8bc50a4f542e6d883e04f5e7191abc7b8e4",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/index.md) · [Full source](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d24b8bc50a4f542e6d883e04f5e7191abc7b8e4`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Bundle` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ChartedSpace` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ModelWithCorners](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcorners.md) | 159 | `declaration-track:f25d7269f51b8b53b10136be8add4637b97369ca69b67e09a9aa5a6c799ec6fa` |
| 2 | `def` | [modelWithCornersSelf](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcornersself.md) | 171 | `declaration-track:109c252658abca1788bb377cb39c5e9a0fefbc4f9b23a83b06c3bdc7ae183a5d` |
| 3 | `def` | [toFun'](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/tofun.md) | 195 | `declaration-track:c6684cfd833b50b1f77eb6eeb52f2c0bf8c123d133e64790fef578f9c92274d7` |
| 4 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 197 | `declaration-track:76733af323334eb71433165f789feb39655a854320530e863979ed0508f94833` |
| 5 | `def` | [symm](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/symm.md) | 200 | `declaration-track:d54e9addc2d50ae978969d8a182c7fbdea3c48ded4d2ce708462bca9ca7c5d8c` |
| 6 | `def` | [Simps.apply](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/simps-apply.md) | 205 | `declaration-track:918399bbca9edbf812241b6e8d3f2ebd832ed35e89166ef5ea65720caca46d9a` |
| 7 | `def` | [Simps.symm_apply](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/simps-symm-apply.md) | 210 | `declaration-track:ec2a2c27efea741678d130275a43edd2bac7eb43020d776a70a19e223943078c` |
| 8 | `theorem` | [toPartialEquiv_coe](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/topartialequiv-coe.md) | 218 | `result-track:9c2eebe04dd9a712bc8da70c7da187b9fe60b19f09e0f53d61e7f6f974cf48b8` |
| 9 | `theorem` | [mk_coe](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/mk-coe.md) | 222 | `result-track:19fda54aa5cf9754ee15397044757e7490cfc71863762bf8a52f767f1ced0559` |
| 10 | `theorem` | [toPartialEquiv_coe_symm](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/topartialequiv-coe-symm.md) | 227 | `result-track:adb277020bc3e898008fe5416a5487a249143194e97af16ba87cced1b26f5afb` |
| 11 | `theorem` | [mk_symm](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/mk-symm.md) | 231 | `result-track:5cd1c7bb5c4d44c32c2be142061e4a8c8196cdf553fbaada35df1645a8dbf2a6` |
| 12 | `theorem` | [continuous](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/continuous.md) | 236 | `result-track:e2d8911e9d751bc1ccb4840a9e2fc3410d7ba8573a48bc36fe1b1e0568527e0a` |
| 13 | `theorem` | [continuousAt](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/continuousat.md) | 239 | `result-track:3ec3233ac1254e2fb19eede9044a90995e7c5fcf5aae90b2b614b64ce8794252` |
| 14 | `theorem` | [continuousWithinAt](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/continuouswithinat.md) | 242 | `result-track:458c541a32bc98aa6bed8995bc1c1d135998514b08504a749785f1b6223dcebc` |
| 15 | `theorem` | [continuous_symm](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/continuous-symm.md) | 246 | `result-track:8ac647d9236648c99ef6f0ba4f76359a1ba671816acdbcf92dcbddd4116c0fcc` |
| 16 | `theorem` | [continuousAt_symm](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/continuousat-symm.md) | 249 | `result-track:eb9773c87596c39ba6880e484ad343f8eb3552db3d7000f9395f059d4b5356d7` |
| 17 | `theorem` | [continuousWithinAt_symm](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/continuouswithinat-symm.md) | 252 | `result-track:e2de8d49d4ded2232d2f48dca32d6fdb66d4d0e3a442361d15c08b3527e22abc` |
| 18 | `theorem` | [continuousOn_symm](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/continuouson-symm.md) | 255 | `result-track:e6f492ea6f4b3cb68c6875456d6e2c05e47bbfcb683b51120607b04cb00dd299` |
| 19 | `theorem` | [target_eq](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/target-eq.md) | 259 | `result-track:855ca10ca863e69af6a31a2c29d434f5e55d94f12c61209f04bca931ae561688` |
| 20 | `theorem` | [uniqueDiffOn](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/uniquediffon.md) | 263 | `result-track:c7e980b5e89e70070c5c25505d3d4756689ef96fd47c29ce16d9f88693dd9f50` |
| 21 | `theorem` | [range_subset_closure_interior](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/range-subset-closure-interior.md) | 266 | `result-track:1acdbbb90ba7fb327b56c7551c47311e86fbf20e2a2bb2c384e2cd9d40dfc81b` |
| 22 | `theorem` | [left_inv](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/left-inv.md) | 271 | `result-track:f0ca1fc1006550dee16da4b5b2a7a13f61a28c66551d3acc0a48680576d9044d` |
| 23 | `theorem` | [leftInverse](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/leftinverse.md) | 273 | `result-track:70819666e45a66fcd964aebb3ee50d862923f8fe59cf649a75c5892d1cdfe7b2` |
| 24 | `theorem` | [injective](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/injective.md) | 276 | `result-track:269cfd9e649ad4846ab79bec2294de5728548f6bad344eb0be022a70fdd156a3` |
| 25 | `theorem` | [symm_comp_self](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/symm-comp-self.md) | 280 | `result-track:60f3369d644935526c0ade9a1055f3e609bfee2c9d00d424c4d80fb86b526b11` |
| 26 | `theorem` | [rightInvOn](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/rightinvon.md) | 283 | `result-track:3b60570a6159b0735c79f251ed9fedd847ba236f373f79a8d09e2e5e83c61f83` |
| 27 | `theorem` | [right_inv](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/right-inv.md) | 287 | `result-track:47fd0e06bc1a611933169c27978fee7d65fb36d8b851944a57414bbcae4f8ea2` |
| 28 | `theorem` | [preimage_image](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/preimage-image.md) | 290 | `result-track:5f7feba1096b83dfb5e12badf02014cc528a022fc93bc96f5f84277d0760fe21` |
| 29 | `theorem` | [image_eq](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/image-eq.md) | 293 | `result-track:25cbbed2ee9ebeb116cec2b50aaddb256c3b8a02a74d87f43bb7c90566aa8813` |
| 30 | `theorem` | [isClosedEmbedding](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/isclosedembedding.md) | 298 | `result-track:81f313f88dd7d0f2da5f05401c651a92af85b184b6a50821a8333786ce9a5786` |
| 31 | `theorem` | [isClosed_range](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/isclosed-range.md) | 301 | `result-track:5babb945e4d59e9145751ff9f38d5d136ec88cde7b6a5eb33c9967aba78974ba` |
| 32 | `theorem` | [range_eq_closure_interior](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/range-eq-closure-interior.md) | 305 | `result-track:e4a5e0c6fa2cad847f0567021d155d4b38952c5fd0475f0caf2339429c80170c` |
| 33 | `theorem` | [map_nhds_eq](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/map-nhds-eq.md) | 308 | `result-track:09315cd167f590de01a6baf5943915fab086c6fcba6f06b3bd0f524a8e37de08` |
| 34 | `theorem` | [map_nhdsWithin_eq](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/map-nhdswithin-eq.md) | 311 | `result-track:6c5792c9ccc1531e17a0990dca1f03221f513acbb16e4a444db2a270b14cbc65` |
| 35 | `theorem` | [image_mem_nhdsWithin](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/image-mem-nhdswithin.md) | 314 | `result-track:ef4cce80a7672fec0e283a4f661e94052bd1b411a29b02868a1bedc9c4138bea` |
| 36 | `theorem` | [symm_map_nhdsWithin_image](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/symm-map-nhdswithin-image.md) | 317 | `result-track:b72ca9181ab0742712b006bb85dc38818615b60f9b4f6e5545596fa1cb22df0c` |
| 37 | `theorem` | [symm_map_nhdsWithin_range](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/symm-map-nhdswithin-range.md) | 320 | `result-track:188b1599e6aa005af0a1490fc5f886e0e59d953a488afff66491cc91aa815201` |
| 38 | `theorem` | [uniqueDiffOn_preimage](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/uniquediffon-preimage.md) | 323 | `result-track:70f23bd858b21f6b268fbd0aa2af7eec1e0b67b47eadcb16799e593ce66c71c1` |
| 39 | `theorem` | [uniqueDiffOn_preimage_source](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/uniquediffon-preimage-source.md) | 328 | `result-track:2e34c04dad9cf5b18bee00e631b26d6630f8a0d33ddcd58e77f7a1829b65cab0` |
| 40 | `theorem` | [uniqueDiffWithinAt_image](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/uniquediffwithinat-image.md) | 332 | `result-track:3672a0a7eb44b47a94e6e2e56ac95ae5a33ae26799d08f6a9d00964d8eb710bd` |
| 41 | `theorem` | [symm_continuousWithinAt_comp_right_iff](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/symm-continuouswithinat-comp-right-iff.md) | 335 | `result-track:da801b590b37e6ed1e48652f601e3d4849ef6bfeea34a53bcc4640a52302826a` |
| 42 | `theorem` | [locallyCompactSpace](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/locallycompactspace.md) | 345 | `result-track:779d6481309f16e3f27d025d75d6cece24dbb7f5301b4134a345942169a82c7c` |
| 43 | `theorem` | [secondCountableTopology](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/secondcountabletopology.md) | 357 | `result-track:ea3d89ba866ae0524d0ec15ea896339823db440a4193fc46f29d2d7e96df9578` |
| 44 | `theorem` | [t1Space](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/t1space.md) | 364 | `result-track:fc9eb60fcedc92d3f15d8ba3e0f38d3f76844fc4499086dc2fba7470b3932bb4` |
| 45 | `theorem` | [modelWithCornersSelf_partialEquiv](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcornersself-partialequiv.md) | 376 | `result-track:812b9c66486516643a68f71029f19f4e548a352829944e9ada61ce33a9c28434` |
| 46 | `theorem` | [modelWithCornersSelf_coe](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcornersself-coe.md) | 380 | `result-track:1fbc52014069ef9dfaffce92e1e051768b0adfce2ed86297b6a657fd5a12178a` |
| 47 | `theorem` | [modelWithCornersSelf_coe_symm](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcornersself-coe-symm.md) | 384 | `result-track:0f38d90c3b72f6e33b1230e1909a3605b7fd828fb9a6a02f9e4c58b984eb5c2b` |
| 48 | `def` | [ModelWithCorners.prod](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcorners-prod.md) | 399 | `declaration-track:58d4f94913747ae3724aeb50d65b6e9eab29ed9e4d5e2a92d37204b3f681bc1b` |
| 49 | `def` | [ModelWithCorners.pi](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcorners-pi.md) | 419 | `declaration-track:704d18bd4a479b8e15abb0bf3fecd313875546c6062937d5d70be7884ed719a5` |
| 50 | `abbrev` | [ModelWithCorners.tangent](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcorners-tangent.md) | 434 | `declaration-track:21f2efeac3fb44680e0e7488414d56d45eae2cb25022ab2c130788b1dafad775` |
| 51 | `theorem` | [modelWithCorners_prod_toPartialEquiv](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcorners-prod-topartialequiv.md) | 447 | `result-track:efeab93b2bc2cd83fb935fa5892ac50b65f4d8c03aea1fd0764b5dcf0ee681d6` |
| 52 | `theorem` | [modelWithCorners_prod_coe](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcorners-prod-coe.md) | 452 | `result-track:7533c861fe79b8cbec9ab4b9231e4e641ca869dcfefb84c7a1eb7cb3f3e1d475` |
| 53 | `theorem` | [modelWithCorners_prod_coe_symm](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcorners-prod-coe-symm.md) | 457 | `result-track:10bee0ef0f47c37be64dc218e4f406da6255d92de02e2087863cd53f97a7d12b` |
| 54 | `theorem` | [modelWithCornersSelf_prod](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcornersself-prod.md) | 465 | `result-track:e13ee8eadb97742e12be317d32fea3de1d23bb9248dd7cbb1197ffae5d9d339c` |
| 55 | `theorem` | [ModelWithCorners.range_prod](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcorners-range-prod.md) | 467 | `result-track:c3dfc09612b1828b678b59e4e867ae1207d738fea432e5e33bfade826e23fcf7` |
| 56 | `class` | [ModelWithCorners.Boundaryless](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcorners-boundaryless.md) | 477 | `declaration-track:bd2bd774a132af4474acec30606bb5b1e495d6f252c83afceeab17286419254a` |
| 57 | `theorem` | [ModelWithCorners.range_eq_univ](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcorners-range-eq-univ.md) | 482 | `result-track:84b0ef21fa6acb58cc5c6725eb28ce1443e0857378a075de01afba41e89978a0` |
| 58 | `def` | [ModelWithCorners.toHomeomorph](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcorners-tohomeomorph.md) | 489 | `declaration-track:0542231f4c734b552f71bb15e70d81084258d33aae4b3621f64ee9749c6467f2` |
| 59 | `instance` | [modelWithCornersSelf_boundaryless](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcornersself-boundaryless.md) | 497 | `declaration-track:5af2abed5830e44ff0ee9d65fa467d8713f7859d25fc4f8663a76a54dd4dbe7e` |
| 60 | `instance` | [ModelWithCorners.range_eq_univ_prod](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/modelwithcorners-range-eq-univ-prod.md) | 502 | `declaration-track:74c0e4436cacd68578a970d5f048ddd04cee133cca14d0448394074c41979159` |
| 61 | `def` | [contDiffPregroupoid](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/contdiffpregroupoid.md) | 526 | `declaration-track:3b1ab49343afe3e708fb4f4e1cbd68de593204041dab38cfdd0a59030ce656f8` |
| 62 | `def` | [contDiffGroupoid](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/contdiffgroupoid.md) | 565 | `declaration-track:1966fb25ccbd4fe5e9f576449f32331b2e55ce95d2aec3636e3d83c74ba80061` |
| 63 | `theorem` | [contDiffGroupoid_le](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/contdiffgroupoid-le.md) | 570 | `result-track:41e02db6efdf54a6f3393c679fa4e66a01e81f28a6d3ad292099ad46ac5a0b5c` |
| 64 | `theorem` | [contDiffGroupoid_zero_eq](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/contdiffgroupoid-zero-eq.md) | 578 | `result-track:9ce65e3c66f19996d897fac4782129b5bcf73b5ee79009423d51db14c002a9b6` |
| 65 | `lemma` | [ContDiffGroupoid.mem_of_source_eq_empty](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/contdiffgroupoid-mem-of-source-eq-empty.md) | 595 | `result-track:b2a4d5527a41352de672c9b046e7b493610a8edb06b73301d2ab9a9fbdcdda58` |
| 66 | `lemma` | [ContinuousGroupoid.mem_of_source_eq_empty](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/continuousgroupoid-mem-of-source-eq-empty.md) | 607 | `result-track:417169fba2506a55cecedd718908d703ae77e1bff3d024a40adf03c28057e652` |
| 67 | `theorem` | [ofSet_mem_contDiffGroupoid](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/ofset-mem-contdiffgroupoid.md) | 613 | `result-track:dca6453c5e3514004db38fb5122a58715768bfb4f65ebf55c463f587d1f85c23` |
| 68 | `theorem` | [symm_trans_mem_contDiffGroupoid](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/symm-trans-mem-contdiffgroupoid.md) | 623 | `result-track:ac5dc1a1c2cad6b1d6835279201b7b87d0fc40c80c5d44494d889a141cf7432c` |
| 69 | `theorem` | [contDiffGroupoid_prod](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/contdiffgroupoid-prod.md) | 632 | `result-track:8c2056a3f11b74b1eed71386fb3573c48436edcbb91c8761cce7ccf51262e5c1` |
| 70 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 649 | `declaration-track:56dcd749ab66419e4acf077826c0a9ca6b6f6c85f9914d547ee5f1ff651147a9` |
| 71 | `class` | [IsManifold](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/ismanifold.md) | 668 | `declaration-track:e00a0e830b97f9b02398a1f470564245af0aa6e9079996b0c6bddd9e50acb853` |
| 72 | `theorem` | [IsManifold.mk'](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/ismanifold-mk.md) | 677 | `result-track:61377d153f042397cc938d4eebc9adc601d5ae028762950a8ae7461efa9f515d` |
| 73 | `theorem` | [isManifold_of_contDiffOn](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/ismanifold-of-contdiffon.md) | 686 | `result-track:8ccd054a8048a79ea8a2dfbfb81f92cd7a62bb5e8bb88a1ab8fab6461ac51da3` |
| 74 | `instance` | [instIsManifoldModelSpace](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instismanifoldmodelspace.md) | 701 | `declaration-track:e0bb59f4a8afb51eb2253a62d07698a6e2ee8c774b866585776222ae910c3d39` |
| 75 | `theorem` | [of_le](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/of-le.md) | 720 | `result-track:ba90bc31f072109dabbbaf86419064f8ec825952a6b3537226275235e5584f9b` |
| 76 | `class` | [Is Manifold Basic Namespaced](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/leinfty.md) | 729 | `declaration-track:4c4656b9f286c55cbe129eb640febc2b8a3c08e8c5c66e212a7960b39ef33d6c` |
| 77 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 734 | `declaration-track:650f46309f6378bb3759e914af1ba7d1d6b9d8dbce17859de1ff4fe3244b8584` |
| 78 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 735 | `declaration-track:41559dbf458c4495ef6c6c056d826f278ac30755134e8cc84093822d59f4a27a` |
| 79 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-13.md) | 737 | `declaration-track:8c9ae57299af43cecc7f37f14d4ce4a526e0f3e2c873a4f34a43c7800ff42284` |
| 80 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 738 | `declaration-track:63f0cb2b4c3358fdc1741c80364c071accfc8240ca9a9420a789277f08ac5a8b` |
| 81 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-14.md) | 740 | `declaration-track:92e7c90bee41fd864937045c77cd96111783fa0b51384f852550900b3e263491` |
| 82 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 744 | `declaration-track:10f2ee8ac50ab369b2225c854c5c72bdf18abc675c0add89b7468f80bddec514` |
| 83 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-17.md) | 748 | `declaration-track:a144ab8c84220440ad4da6c226f8bbbf624b236b608f242f94c6f9ec427652a4` |
| 84 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 755 | `declaration-track:4c1c321686183f3dd8f2613207fab31c05383b3f85b24cc5efdab64f852c9ea5` |
| 85 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 759 | `declaration-track:68467cc56c70dbe76847b76141212cdf0fff74bcd748ae5d2288435935116ed1` |
| 86 | `def` | [maximalAtlas](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/maximalatlas.md) | 764 | `declaration-track:b80283691d4d716e3a36f0f3f7e033e480dbafecff5fb8c875e35b9a65a6c091` |
| 87 | `theorem` | [subset_maximalAtlas](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/subset-maximalatlas.md) | 767 | `result-track:3a2074cb2135705b4bf3da90b5aa73981c8a32f6a9fd9999ca09cccd5ef83556` |
| 88 | `theorem` | [chart_mem_maximalAtlas](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/chart-mem-maximalatlas.md) | 770 | `result-track:afe0907162fca239f153c048d1a857d53a19833c09d51aa85933ba745c57a382` |
| 89 | `theorem` | [compatible_of_mem_maximalAtlas](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/compatible-of-mem-maximalatlas.md) | 774 | `result-track:8eb79e14c2678e4a7833fda66d9dd0e5a5c5252f70e555cdbce0aaba108b855d` |
| 90 | `lemma` | [maximalAtlas_subset_of_le](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/maximalatlas-subset-of-le.md) | 778 | `result-track:ac1207c4d598ff55a449de8275cce210b13b385e2834bf16272738474515d066` |
| 91 | `instance` | [empty](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/empty.md) | 784 | `declaration-track:572ca21c458feab39def8873078a4ad2a2574fa5279a20c55f4b1e05ec28eaef` |
| 92 | `theorem` | [of_discreteTopology](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/of-discretetopology.md) | 804 | `result-track:07f2236358db1581e7caa5467b0724dd4a88cb9d42e9023f69c2a0c7294d3aa2` |
| 93 | `example` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/example.md) | 809 | `declaration-track:3613caef521a2aacf240276e5760c77bddf53cc1f7ece819e59146b2de3f3740` |
| 94 | `instance` | [prod](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/prod.md) | 812 | `declaration-track:9e5fe1415dd156345fe24f4c525eab671e89712e995a10f3743bce0fea4b152d` |
| 95 | `instance` | [disjointUnion](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/disjointunion.md) | 833 | `declaration-track:22c56b857b564aeb18ec44246d9e21c6000643693fefe40bf20ace9d04a99af6` |
| 96 | `theorem` | [PartialHomeomorph.isManifold_singleton](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/partialhomeomorph-ismanifold-singleton.md) | 858 | `result-track:6453caf76b1afef12ef29866fe1baf9a585ce7763a4729a56245f05662ea62d3` |
| 97 | `theorem` | [Topology.IsOpenEmbedding.isManifold_singleton](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/topology-isopenembedding-ismanifold-singleton.md) | 870 | `result-track:cf4df7b0552c85f54d42443faa1c47dfa3aa7fc5f67218b51b63bea19198ee1f` |
| 98 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 890 | `declaration-track:3426b0862ca82498e32cf4075672ee9e16af045c44a1fd6527997d914d38eb74` |
| 99 | `def` | [TangentSpace](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/tangentspace.md) | 909 | `declaration-track:a1c8e988af298253e927731964b204f6351add8fb2453ba6379bdd6510870abe` |
| 100 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-16.md) | 925 | `declaration-track:a03eea235f4a86b90152eb357013b1b7a89fae3b24a0ca255f34d22299f18779` |
| 101 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 926 | `declaration-track:8225dc5185364d4501d8b4d92058123e2f1d7629c413cd767844686dc8bedd02` |
| 102 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-18.md) | 927 | `declaration-track:f1b1ad20f20f8613d024afa88a0fe1067564c46171078a398d6051beea34bdcd` |
| 103 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance.md) | 928 | `declaration-track:01d5cd75ed28137465847555f6c69256f760b7c8136cd89d91ff927dd138bd7d` |
| 104 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 929 | `declaration-track:20bdf0a597c8083def36e6f79f7671a6d06b0bc6b8f1478a1b2c60e4a5f525af` |
| 105 | `abbrev` | [TangentBundle](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/tangentbundle.md) | 935 | `declaration-track:02adaa7afa27a23d777284eca693eebdd2495c2e34aa97d81b3330ffa2020d9b` |
| 106 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IsManifoldBasicNamespaced.lean/declarations/instance-source-edition-15.md) | 944 | `declaration-track:961eba945cd9bc3083cccf44354040d7a265a115879d9ed2a7cbb93c7f92ec5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76f495197142d1c2ffd493a9fc090f3a77e6c87d9c637e87491df8ccc376c976 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Basic/Variant0273a87d6cfab6cdcc142d08ec086d1389c42019871e7b2faa3a5e762326a8d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
