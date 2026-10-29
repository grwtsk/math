# Verification target: Eq Haar Namespaced Is Add Haar Measure Volume Pi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c95bf2c56c27d9f880c0438348b4a221d7abf93b",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c95bf2c56c27d9f880c0438348b4a221d7abf93b`.

Source path: `GRWTSK/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Metric` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Pointwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Doubling` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopologicalSpace.PositiveCompacts.Icc01](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/topologicalspace-positivecompacts-icc01.md) | 62 | `declaration-track:d1596580559dc6a8383da4b914deb9e1dd031f752fe238b233b935270401cafc` |
| 2 | `def` | [TopologicalSpace.PositiveCompacts.piIcc01](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/topologicalspace-positivecompacts-piicc01.md) | 70 | `declaration-track:4729bb8c5b29ce5b410c81920f764c0c4bc71240851edc5eb009f5820fcfc2ac` |
| 3 | `theorem` | [Basis.parallelepiped_basisFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/basis-parallelepiped-basisfun.md) | 79 | `result-track:70dfd8cc73ae396d09319c91f65222da60d60bda7ad136bdafed60bc37fafafa` |
| 4 | `theorem` | [Basis.parallelepiped_eq_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/basis-parallelepiped-eq-map.md) | 87 | `result-track:f3f30aa963bec5b994e9a7834e9156af731f07ba16a8dbece5872b0a4c2d4ecb` |
| 5 | `theorem` | [Basis.map_addHaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/basis-map-addhaar.md) | 98 | `result-track:f0b4f73e7c64ac5c8f18eb536fc89fe06b301b968e63631ddf84bc7f0778f622` |
| 6 | `theorem` | [addHaarMeasure_eq_volume](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaarmeasure-eq-volume.md) | 118 | `result-track:643eccabe19eebfef39970518f9e7d5ec0e2f94b0ec766c1e2a123f791722295` |
| 7 | `theorem` | [addHaarMeasure_eq_volume_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaarmeasure-eq-volume-pi.md) | 122 | `result-track:d2d2d54a0a890d07b914673b1115d358ebf416ec39e474a8bd74e945f3dd391d` |
| 8 | `theorem` | [isAddHaarMeasure_volume_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/isaddhaarmeasure-volume-pi.md) | 128 | `result-track:ea7c760594a6e8176d775bcfd0a0b6590d485b2eef2b3e96f387b024d8b527ac` |
| 9 | `theorem` | [addHaar_eq_zero_of_disjoint_translates_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-eq-zero-of-disjoint-translates-aux.md) | 142 | `result-track:09a73ea83264387cf9e929069486458089917213d1b4a64351e1092b36da66fd` |
| 10 | `theorem` | [addHaar_eq_zero_of_disjoint_translates](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-eq-zero-of-disjoint-translates.md) | 159 | `result-track:a8d70a5ff425faddd67eac503d5b309c345dfff9d7d04bf8ecea2258dff5fda1` |
| 11 | `theorem` | [addHaar_submodule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-submodule.md) | 177 | `result-track:4566f58171e689964682041434001a65b877202a3284c6b079dd1d3857f49170` |
| 12 | `theorem` | [addHaar_affineSubspace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-affinesubspace.md) | 204 | `result-track:b6e6818a0f7de1dba0eab340e9964e93b09fc9036e935f91ad8fb2533c1a8646` |
| 13 | `theorem` | [map_linearMap_addHaar_pi_eq_smul_addHaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/map-linearmap-addhaar-pi-eq-smul-addhaar.md) | 223 | `result-track:121e154044a8eb9d264d828fc7be207b244cfeb693a1e5e6ad7e6d53736e63ef` |
| 14 | `theorem` | [map_linearMap_addHaar_eq_smul_addHaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/map-linearmap-addhaar-eq-smul-addhaar.md) | 236 | `result-track:893de397002d1f74b54811335d81312523a23d72cdbefd4b600575e20a0d3e92` |
| 15 | `theorem` | [addHaar_preimage_linearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-preimage-linearmap.md) | 266 | `result-track:16de11f8fde93a2162acfd9f1e1beb86bd3375b1d7e8899de5a95fe4dfa15d3a` |
| 16 | `theorem` | [addHaar_preimage_continuousLinearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-preimage-continuouslinearmap.md) | 278 | `result-track:eca8557d9aed9f979f4989481e1e08cf5b42fb522adbc24a1e3f382c2f9f8b1b` |
| 17 | `theorem` | [addHaar_preimage_linearEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-preimage-linearequiv.md) | 286 | `result-track:e8f2971feede9ab7b51ac036f3467f1a08ecbf2ddf0820c12f80b2015ad0112c` |
| 18 | `theorem` | [addHaar_preimage_continuousLinearEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-preimage-continuouslinearequiv.md) | 295 | `result-track:72a87f4c4592063d9220d552a52386a3665118a2000d06aac8dd99e4ce284ed6` |
| 19 | `theorem` | [addHaar_image_linearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-image-linearmap.md) | 302 | `result-track:f3a10260ca4be6edab04c36c8db6bc2a266a902a9eb1e535f066cb3c61c06905` |
| 20 | `theorem` | [addHaar_image_continuousLinearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-image-continuouslinearmap.md) | 317 | `result-track:50784510ba3bfa77ef37ff42364006b5df8684712060ddf6b54d22e4a05fa24b` |
| 21 | `theorem` | [addHaar_image_continuousLinearEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-image-continuouslinearequiv.md) | 324 | `result-track:b3e5f8c2a78e7bdc5ad21082d9016b9c15942a281f36d7db295ca7988f381cc7` |
| 22 | `theorem` | [LinearMap.quasiMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/linearmap-quasimeasurepreserving.md) | 328 | `result-track:378c3fc1da0a8bd11bfb7008405bc2aadccb3d9980e2e526a1617f25821baa77` |
| 23 | `theorem` | [ContinuousLinearMap.quasiMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/continuouslinearmap-quasimeasurepreserving.md) | 334 | `result-track:6ef72abbc33bb481c4efd2bdaaf3f1a5b8748e2ab720e8dc4f36e9428d6a1a2e` |
| 24 | `theorem` | [map_addHaar_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/map-addhaar-smul.md) | 343 | `result-track:28f070615a440646205dc44a9ed2ff73f38a22deabed36de6eec97d4ad5be6f7` |
| 25 | `theorem` | [quasiMeasurePreserving_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/quasimeasurepreserving-smul.md) | 353 | `result-track:c0d2d9f555b560bb497efaeb34badd539acc1a72a44331b9eec8102f6e2c8cf0` |
| 26 | `theorem` | [addHaar_preimage_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-preimage-smul.md) | 360 | `result-track:22f8e726389ca37e21804114040cd5f4e6b4a382c705783db808bb21bb7f587a` |
| 27 | `theorem` | [addHaar_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-smul.md) | 370 | `result-track:540b323e9d2e6350be14f2e71d81b62f2daed4f6e4c7c5cb55960dd573a709d8` |
| 28 | `theorem` | [addHaar_smul_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-smul-of-nonneg.md) | 385 | `result-track:204e2ca9f5cedb5f262c771b8be9fe7186e0c2679622b434136c86249fda0ca1` |
| 29 | `theorem` | [NullMeasurableSet.const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/nullmeasurableset-const-smul.md) | 393 | `result-track:5cab1ce81ee66c42c83eb4f75afda9c4d7b1dca605b28069daafaab02e718d11` |
| 30 | `theorem` | [addHaar_image_homothety](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-image-homothety.md) | 407 | `result-track:1e67e4eee8fcc9e39e66bc7ac4b46e95be40fb8fdda6ef758a96f30c85bfa430` |
| 31 | `theorem` | [addHaar_ball_center](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-ball-center.md) | 421 | `result-track:cfd4bd2921eb7bd1b3ff08686a6485c5efbf6560cae8ec511e2556af8aabef98` |
| 32 | `theorem` | [addHaar_real_ball_center](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-real-ball-center.md) | 426 | `result-track:adca633b557dec756d5a22ff17a722289b5677e8244322d9de6b27563b13f49d` |
| 33 | `theorem` | [addHaar_closedBall_center](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-closedball-center.md) | 431 | `result-track:a7d9dc4d32dbeb79ac14d6c83a43745e8eeb5e00c115460584b2be3e3f0fcec4` |
| 34 | `theorem` | [addHaar_real_closedBall_center](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-real-closedball-center.md) | 437 | `result-track:8b9967597f0fb7016e65f74d2ea379e78f916ab23cce93262ae61800233ecdf9` |
| 35 | `theorem` | [addHaar_ball_mul_of_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-ball-mul-of-pos.md) | 442 | `result-track:8b08b25d9ec2d900a6d5e3d0c84321c3d980fd058803c4599f2ebd7d05c05d58` |
| 36 | `theorem` | [addHaar_ball_of_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-ball-of-pos.md) | 448 | `result-track:0b2a8b7a2f48788f3fa69c904b68dd033a3e966b5677e952978a836484357781` |
| 37 | `theorem` | [addHaar_ball_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-ball-mul.md) | 452 | `result-track:50fedf5584d68cfced7112692c0ee454f9eb49569e83b2a61bb98748273464b8` |
| 38 | `theorem` | [addHaar_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-ball.md) | 459 | `result-track:86d3fd56f36689f1f5d5cb1a29bb56b236af52d47421dac7848f2874d58fc695` |
| 39 | `theorem` | [addHaar_closedBall_mul_of_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-closedball-mul-of-pos.md) | 463 | `result-track:a65f4d89e572f6dcf2613d88700fb347a6e58fdbb228d41160db2384f5bb91d9` |
| 40 | `theorem` | [addHaar_closedBall_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-closedball-mul.md) | 469 | `result-track:9981c6db221b0f202432669b2d367f2c215e879d1f6f460709c7d5d1665cf754` |
| 41 | `theorem` | [addHaar_closedBall'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-closedball.md) | 478 | `result-track:18c0d18f5c82fb36f7fe26c19cbc809a580b04c3f494c64b101dbcabece2937e` |
| 42 | `theorem` | [addHaar_real_closedBall'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-real-closedball-source-edition-2.md) | 482 | `result-track:e372a1e4538bdc7c231f653d4d2a74ad33d9cb36a8aec0d1ecd2bf3d0ec4ad84` |
| 43 | `theorem` | [addHaar_unitClosedBall_eq_addHaar_unitBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-unitclosedball-eq-addhaar-unitball.md) | 489 | `result-track:c0e74d1b1e255c14beeb514992177baaa6cf92adc76eeafe384ffd728a00a6b8` |
| 44 | `theorem` | [addHaar_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-closedball-source-edition-2.md) | 506 | `result-track:7493d870c8fda2e9326d185bf705a50940131aa89800d7db7ebb05623058084d` |
| 45 | `theorem` | [addHaar_real_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-real-closedball.md) | 510 | `result-track:7c62c3945d92bb87bd9ea077aed6b6a128be5a35a1b6d2c74c24d2d05e16a1b5` |
| 46 | `theorem` | [addHaar_closedBall_eq_addHaar_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-closedball-eq-addhaar-ball.md) | 515 | `result-track:946c71e0a586020a668d51ebf997d56343e901c06094bdafb5d506a7123efa4d` |
| 47 | `theorem` | [addHaar_real_closedBall_eq_addHaar_real_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-real-closedball-eq-addhaar-real-ball.md) | 522 | `result-track:4563a5bba83b94bfb24a0058c76ec2b6ae44bc1dab22f1063232313e4d7e8165` |
| 48 | `theorem` | [addHaar_sphere_of_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-sphere-of-ne-zero.md) | 526 | `result-track:2acec1b45584df8eea43d5b2a4fb33bc45442405675c8001332c512682d2e138` |
| 49 | `theorem` | [addHaar_sphere](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-sphere.md) | 534 | `result-track:b6a4bd8aef9f0af23ee8f9500d34df253416e372734534c93a8e2ffd1a21b884` |
| 50 | `theorem` | [addHaar_singleton_add_smul_div_singleton_add_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-singleton-add-smul-div-singleton-add-smul.md) | 539 | `result-track:3e21a7ca9c8969b545884fdc19f01c99bb341dea9e71f2adcdf8ad39f502172e` |
| 51 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/instance.md) | 557 | `declaration-track:0ed9001c07370472f1bbb2f33018e67fb8a7f94f05df8e8d7263110a64453c16` |
| 52 | `theorem` | [addHaar_parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/addhaar-parallelepiped.md) | 574 | `result-track:c5e0abc7d1736eac4eeb52ad58289d54e87fa0e057c16281684cf75b3840ef9b` |
| 53 | `theorem` | [Eq Haar Namespaced Is Add Haar Measure Volume Pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/root-grwtsk-topology-generaltopology-topologicalspacepositivecompactsicc.md) | 592 | `result-track:c0f7eff51540534d8f583fe00424684bd75f70de03f612c817e0de6253285bfd` |
| 54 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/instance-source-edition-3.md) | 599 | `declaration-track:d1c665aaf8a1830fe88fa879c4525ee3d2af1c0e1a49f80bf5576024c5e4adfb` |
| 55 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/instance-source-edition-2.md) | 602 | `declaration-track:65bf668a174561d525a2c03fd6eeac10c8fe856efebf843cedb3ffb0cbea8742` |
| 56 | `theorem` | [tendsto_addHaar_inter_smul_zero_of_density_zero_aux1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/tendsto-addhaar-inter-smul-zero-of-density-zero-aux1.md) | 631 | `result-track:e08621c9bea9ff731d830ae804105258b4d6b91fc6fac88862850436bd5c4945` |
| 57 | `theorem` | [tendsto_addHaar_inter_smul_zero_of_density_zero_aux2](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/tendsto-addhaar-inter-smul-zero-of-density-zero-aux2.md) | 672 | `result-track:2d353621bd9eef2c586f9662121e7729d881fd1e9064cc8bad15064c41a2aa33` |
| 58 | `theorem` | [tendsto_addHaar_inter_smul_zero_of_density_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/tendsto-addhaar-inter-smul-zero-of-density-zero.md) | 706 | `result-track:b856b96f8221851dce8b931e84af86468ca3d33426707ba8b8b08ca1ccf50aa8` |
| 59 | `theorem` | [tendsto_addHaar_inter_smul_one_of_density_one_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/tendsto-addhaar-inter-smul-one-of-density-one-aux.md) | 765 | `result-track:79aaba667df6c53c5829ec3374cf81e34e3f68ae21bb6b6eb912c7bf69072000` |
| 60 | `theorem` | [tendsto_addHaar_inter_smul_one_of_density_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/tendsto-addhaar-inter-smul-one-of-density-one.md) | 817 | `result-track:8ca09279c919626e58835b2298386b40db8445de8923de9e198ceb773759d3b6` |
| 61 | `theorem` | [eventually_nonempty_inter_smul_of_density_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarNamespacedIsAddHaarMeasureVolumePi.lean/declarations/eventually-nonempty-inter-smul-of-density-one.md) | 844 | `result-track:fd01d7f6e135c5eb00cc30a87e9e0269db7255262da190b7926a0249596d4f63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5217330656cf1e585c6d6b19126ee627a0447419cd368ef18ebde202b92c1465 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
