# Verification target: Eq Haar Is Add Haar Measure Volume Pi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34e6b3be1d28a98a0f1568d8ecf76f36ee2fc2d7",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34e6b3be1d28a98a0f1568d8ecf76f36ee2fc2d7`.

Source path: `GRWTSK/Topology/GeneralTopology/EqHaar/Variant1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EqHaar/Variant1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Metric` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Pointwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Doubling` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopologicalSpace.PositiveCompacts.Icc01](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/topologicalspace-positivecompacts-icc01.md) | 54 | `declaration-track:9639767505249757158e5801d489a96ea5baee57103125ce8531fe645b7d6b4b` |
| 2 | `def` | [TopologicalSpace.PositiveCompacts.piIcc01](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/topologicalspace-positivecompacts-piicc01.md) | 62 | `declaration-track:51743b826b5d61fa9ab3858051248a5d8553869abc85f8eab82102442c4839e0` |
| 3 | `theorem` | [Basis.parallelepiped_basisFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/basis-parallelepiped-basisfun.md) | 71 | `result-track:0f09c13f46089fac99edbcea91162e4b18d9d217cc385449953c7ec73f394e34` |
| 4 | `theorem` | [Basis.parallelepiped_eq_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/basis-parallelepiped-eq-map.md) | 79 | `result-track:403cf4c7f66a245a6ba9c115f362049cffd5021a70a663d82eba4b402dac2caa` |
| 5 | `theorem` | [Basis.map_addHaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/basis-map-addhaar.md) | 90 | `result-track:e319e39a201674de1b5108f7aa6a3e3f136ba43f6954f684fc2d104085c3376a` |
| 6 | `theorem` | [addHaarMeasure_eq_volume](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaarmeasure-eq-volume.md) | 110 | `result-track:ea1c24380e0ba185c53f739205b7dd8af6205d20177ef9b6a3c78ed6c0343b9c` |
| 7 | `theorem` | [addHaarMeasure_eq_volume_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaarmeasure-eq-volume-pi.md) | 114 | `result-track:96a8e7e277063131772aaf23511b56f012037a18356620ce4e714f202de01423` |
| 8 | `theorem` | [isAddHaarMeasure_volume_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/isaddhaarmeasure-volume-pi.md) | 120 | `result-track:580a55163610dd4ee34fc11a87f78e22528276d84e63908c562b0fcf72a74573` |
| 9 | `theorem` | [addHaar_eq_zero_of_disjoint_translates_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-eq-zero-of-disjoint-translates-aux.md) | 134 | `result-track:9991b7eccead95bc19d0c6a3d8ce54c74bd074f977cc5ea70e826761e947609b` |
| 10 | `theorem` | [addHaar_eq_zero_of_disjoint_translates](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-eq-zero-of-disjoint-translates.md) | 151 | `result-track:af9930cdaf78a40536069967d54b48040a1fddefa05019ab56a57062534b680d` |
| 11 | `theorem` | [addHaar_submodule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-submodule.md) | 169 | `result-track:8630bff5f1b543e5a4beb76790f405cf9470a9ef9de8c443eda939e3ecb6da0c` |
| 12 | `theorem` | [addHaar_affineSubspace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-affinesubspace.md) | 196 | `result-track:43b9959c4bcaad0807500809ed251f62d49900a4e999057c6f8efb0e6cbbcc81` |
| 13 | `theorem` | [map_linearMap_addHaar_pi_eq_smul_addHaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/map-linearmap-addhaar-pi-eq-smul-addhaar.md) | 215 | `result-track:58b3f91a035ef4f74f0d5387e540d1bf1a7939c3974fe1472860f5bf8b7db5f2` |
| 14 | `theorem` | [map_linearMap_addHaar_eq_smul_addHaar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/map-linearmap-addhaar-eq-smul-addhaar.md) | 228 | `result-track:d1634ca456dbb68e0f2e8c08f0d8604b4d93a64660f2f54d21df16f6be436953` |
| 15 | `theorem` | [addHaar_preimage_linearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-preimage-linearmap.md) | 258 | `result-track:e0b6cdae98c49e6b4802b983089aced56f356ba1838e645ade05f6ce74db0607` |
| 16 | `theorem` | [addHaar_preimage_continuousLinearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-preimage-continuouslinearmap.md) | 270 | `result-track:77a12cae07e106fe6ede534819ccc4e600cc1354769ab2d9812f83d420cedb7a` |
| 17 | `theorem` | [addHaar_preimage_linearEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-preimage-linearequiv.md) | 278 | `result-track:70211fb8fabc5c3f1d28d1f3c7a8037bd9fc09b6b1b63734b4365ff17e3c4eac` |
| 18 | `theorem` | [addHaar_preimage_continuousLinearEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-preimage-continuouslinearequiv.md) | 287 | `result-track:4c768525e7587f8d1bd718cc31d9b84af63cd8c6889d9bd97596eb10cc6014b9` |
| 19 | `theorem` | [addHaar_image_linearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-image-linearmap.md) | 294 | `result-track:da9b1904a3546c049486247b808229a25229521fc197c77629ebe0a9a9f203e0` |
| 20 | `theorem` | [addHaar_image_continuousLinearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-image-continuouslinearmap.md) | 309 | `result-track:9651ade4718397eec198d56474c179e1c6b6e8bd928bd94dfbcc565c7e46eaea` |
| 21 | `theorem` | [addHaar_image_continuousLinearEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-image-continuouslinearequiv.md) | 316 | `result-track:37a00c47a373fe6431bec7370d7fa39e6241bb2850f48d5b9f2fabd9cfb7b3d0` |
| 22 | `theorem` | [LinearMap.quasiMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/linearmap-quasimeasurepreserving.md) | 320 | `result-track:c9f09597a70f40c22226e616b49916d6a2957c76c25490c546cc7341eaafc1bb` |
| 23 | `theorem` | [ContinuousLinearMap.quasiMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/continuouslinearmap-quasimeasurepreserving.md) | 326 | `result-track:2ef4397bf35428bd50a99c2d074e947f52d0e50fd990be57538d42d3495cc795` |
| 24 | `theorem` | [map_addHaar_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/map-addhaar-smul.md) | 335 | `result-track:b3b3e20480cc7c65f1ed5f425c47c8d4eac3803e146d8ea8fc791455261ad40a` |
| 25 | `theorem` | [quasiMeasurePreserving_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/quasimeasurepreserving-smul.md) | 345 | `result-track:41db156c435960fb33414d45f055f043aa7f351c27bf88f6fc35b12fd6077a1e` |
| 26 | `theorem` | [addHaar_preimage_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-preimage-smul.md) | 352 | `result-track:16ad1df48db8fa2cb85de53e1af3930cc5eae9c1fe27345093ea3cd55cf2e68c` |
| 27 | `theorem` | [addHaar_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-smul.md) | 362 | `result-track:0aeec57a16de26260144e34112be5edeb48ab1803e5d37c4319564fffdda7567` |
| 28 | `theorem` | [addHaar_smul_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-smul-of-nonneg.md) | 377 | `result-track:204c2736737fbcccb6c5ae9df0f18d1ea8183e01ef57078439b7006b08473be1` |
| 29 | `theorem` | [NullMeasurableSet.const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/nullmeasurableset-const-smul.md) | 385 | `result-track:7fcb21195791f772f8a507c5999408093ad9b17170b5c99aa4f39acb7e5ee674` |
| 30 | `theorem` | [addHaar_image_homothety](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-image-homothety.md) | 399 | `result-track:4a141b53d8b1cf77a4f7e644e22b9b9d450f7da9cd10c218b288108b58fe8e5a` |
| 31 | `theorem` | [addHaar_ball_center](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-ball-center.md) | 413 | `result-track:29d7e7eb0e61607c4f4f1843062d4799bc77c9b0c635813d963abd8579c5c20d` |
| 32 | `theorem` | [addHaar_real_ball_center](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-real-ball-center.md) | 418 | `result-track:ce72c0e95442bacf72f02b915f75a89cf7efcaa5c8dc8aef8a2a33fde12c78ac` |
| 33 | `theorem` | [addHaar_closedBall_center](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-closedball-center.md) | 423 | `result-track:5f72a6d9e454a8f54db7bf03be61c7cd88a561ff0a9307bd3caf2ab524d72ed7` |
| 34 | `theorem` | [addHaar_real_closedBall_center](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-real-closedball-center.md) | 429 | `result-track:95591861b3db76da3f5f9ca2bfa1095612d4b2bfff061fe76721fa791bacc900` |
| 35 | `theorem` | [addHaar_ball_mul_of_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-ball-mul-of-pos.md) | 434 | `result-track:2441197547633c403df15c61815e178a70f899ea1a9c82734c9d70a0d6d3ba18` |
| 36 | `theorem` | [addHaar_ball_of_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-ball-of-pos.md) | 440 | `result-track:d4e4f9344996c13483d016647b27cf78d6c66738ca72af70f51bb7734837affb` |
| 37 | `theorem` | [addHaar_ball_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-ball-mul.md) | 444 | `result-track:cd65da65a8b1a365d5bfc3d2d5c9ba1acfc5a1548872bef71e8f87bd246dc906` |
| 38 | `theorem` | [addHaar_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-ball.md) | 451 | `result-track:a9f0010eea1d41758d2c57e38cce9167816f9f3aba3e8c5b80ca5c4a99b6e0e0` |
| 39 | `theorem` | [addHaar_closedBall_mul_of_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-closedball-mul-of-pos.md) | 455 | `result-track:622dcb3de2a267ae8faaa82167d26e4e25b729c2b75bcee5d11314a5fdb18ed1` |
| 40 | `theorem` | [addHaar_closedBall_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-closedball-mul.md) | 461 | `result-track:b2fb71a6e7e0b9bd36456d75e1615d87dd26d57639f99239608a1b8561141bea` |
| 41 | `theorem` | [addHaar_closedBall'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-closedball-source-edition-2.md) | 470 | `result-track:ca2815c370e08991ed447b7ec4d186c5bc1b94e1cfe7ee3fc03366a75384c48d` |
| 42 | `theorem` | [addHaar_real_closedBall'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-real-closedball-source-edition-2.md) | 474 | `result-track:cefcab91e39f3852f1f936cb1cd5ba34a453e55f35c41ba434337313df96493d` |
| 43 | `theorem` | [addHaar_unitClosedBall_eq_addHaar_unitBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-unitclosedball-eq-addhaar-unitball.md) | 481 | `result-track:7f5012eacb109b8d33da65d0f60f3c4ec9e023b9445eb072787a7983fcae43f8` |
| 44 | `theorem` | [addHaar_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-closedball.md) | 498 | `result-track:4b5a3184aa8b5f2731c49b017e5c1369125c92ab610bbbddb194bc8f4d26696e` |
| 45 | `theorem` | [addHaar_real_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-real-closedball.md) | 502 | `result-track:7b63b55985bf5e7de64e11b48599fac5b530aa2f5c3d2a321c9331e3786b3ee1` |
| 46 | `theorem` | [addHaar_closedBall_eq_addHaar_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-closedball-eq-addhaar-ball.md) | 507 | `result-track:11bba98dcb48bffd177d6918a322b84c82d2a65679a039f54de68eb6c4143d23` |
| 47 | `theorem` | [addHaar_real_closedBall_eq_addHaar_real_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-real-closedball-eq-addhaar-real-ball.md) | 514 | `result-track:d8bfe1dc7589581c6ce4820890256c27b0784a6df9e489baccb7d2682d8b160b` |
| 48 | `theorem` | [addHaar_sphere_of_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-sphere-of-ne-zero.md) | 518 | `result-track:c6a0eb29ae66fe65ddf680fa16726c616286823c0c97ed445bac6acf89b0f6ab` |
| 49 | `theorem` | [addHaar_sphere](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-sphere.md) | 526 | `result-track:fb5f19ba9ed4646361df33b34d76f85aa8619232ab6c694742c4536295bee168` |
| 50 | `theorem` | [addHaar_singleton_add_smul_div_singleton_add_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-singleton-add-smul-div-singleton-add-smul.md) | 531 | `result-track:fb44657c22314cf31a27f84a3be07fbc2e236ff26d4f3e4123cb6d08cf8a8df7` |
| 51 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/instance.md) | 549 | `declaration-track:7dd76faa30309f20b474b5bc9906593340d4ec66758a2511ca5c6a24b9dc5d7a` |
| 52 | `theorem` | [addHaar_parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/addhaar-parallelepiped.md) | 566 | `result-track:11492ec1169c081671074908c525ed564867c10aff8f85d0552e6d66423c8c83` |
| 53 | `theorem` | [_root_.AlternatingMap.measure_parallelepiped](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/root-alternatingmap-measure-parallelepiped.md) | 584 | `result-track:9837140e23e8e69560e6c61c099e6a53dcc5da46e017a1e94c13e73b85c2c9e8` |
| 54 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/instance-source-edition-3.md) | 591 | `declaration-track:f073e95ddc80b661a788883b6e14042752458086d600cbfd902b6cc5f272924d` |
| 55 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/instance-source-edition-2.md) | 594 | `declaration-track:b3893a297a587a0e7a723374551eb8cb13e4469d25c4ccc79ddf97f90d930ece` |
| 56 | `theorem` | [tendsto_addHaar_inter_smul_zero_of_density_zero_aux1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/tendsto-addhaar-inter-smul-zero-of-density-zero-aux1.md) | 623 | `result-track:51a87e9f4742c5bd4983e694c360e52de08cd58b5e0712b6c17be0914203d16b` |
| 57 | `theorem` | [tendsto_addHaar_inter_smul_zero_of_density_zero_aux2](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/tendsto-addhaar-inter-smul-zero-of-density-zero-aux2.md) | 664 | `result-track:e378b45af22880ea80524f826d3028ecfe948a4969382b87fd70b169559da7d3` |
| 58 | `theorem` | [tendsto_addHaar_inter_smul_zero_of_density_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/tendsto-addhaar-inter-smul-zero-of-density-zero.md) | 698 | `result-track:13eec5a9022d4e6f0f87278895146c40bbccf4b98acb12cad2c469aba8e7cfe2` |
| 59 | `theorem` | [tendsto_addHaar_inter_smul_one_of_density_one_aux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/tendsto-addhaar-inter-smul-one-of-density-one-aux.md) | 757 | `result-track:26363e91ee4c0ac6d940759a3dcd81b9a2fc35834f0d9c961b63a11b7934306d` |
| 60 | `theorem` | [tendsto_addHaar_inter_smul_one_of_density_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/tendsto-addhaar-inter-smul-one-of-density-one.md) | 809 | `result-track:9549332988a841b4c930a92f56a22e31f7a8f6874807c7407c78a11c9718f909` |
| 61 | `theorem` | [eventually_nonempty_inter_smul_of_density_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EqHaarIsAddHaarMeasureVolumePi.lean/declarations/eventually-nonempty-inter-smul-of-density-one.md) | 836 | `result-track:1ef6551aeb38df432d5564303fd773fdbb691c7bc7dbb5b508434dbf90ac7c6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d141356900a5b3021a9e57340aef988f256164129e24bdd7a304b3ad5c77b7b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/EqHaar/Variant1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/EqHaar/Variant1907da884af980c936439349b4441c2d087ed62dbd7e92159cafd481f1b8082b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
