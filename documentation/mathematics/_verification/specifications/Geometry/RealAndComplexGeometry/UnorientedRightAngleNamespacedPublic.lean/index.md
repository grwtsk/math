# Verification target: Unoriented Right Angle Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52cb9d784abbcda21f2d93e8bce4d3f8acac8570",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52cb9d784abbcda21f2d93e8bce4d3f8acac8570`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean.json)

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
| 1 | `theorem` | [norm_add_sq_eq_norm_sq_add_norm_sq_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/norm-add-sq-eq-norm-sq-add-norm-sq-iff-angle-eq-pi-div-two.md) | 54 | `result-track:0a2e13302f3acc5262332640319eea001ccb0b8359aaa6d2ed6ca8fcb7fb6ed7` |
| 2 | `theorem` | [norm_add_sq_eq_norm_sq_add_norm_sq'](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/norm-add-sq-eq-norm-sq-add-norm-sq.md) | 60 | `result-track:465f559bd6e9fde676c5719439873bd429416e1065efb2cceb6e20eacb781f0f` |
| 3 | `theorem` | [norm_sub_sq_eq_norm_sq_add_norm_sq_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/norm-sub-sq-eq-norm-sq-add-norm-sq-iff-angle-eq-pi-div-two.md) | 65 | `result-track:a4fdbd9969f4798fe2a075eb999ff78de82a1521d52d63a19400132e78b6ff1d` |
| 4 | `theorem` | [norm_sub_sq_eq_norm_sq_add_norm_sq'](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/norm-sub-sq-eq-norm-sq-add-norm-sq.md) | 71 | `result-track:7b20b85ceb7e83d0c45708e8643aa9487f9fa832868946bc5d432534515da2c7` |
| 5 | `theorem` | [angle_add_eq_arccos_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-add-eq-arccos-of-inner-eq-zero.md) | 76 | `result-track:4d1ae5ea3a714f9e3b27f7a89f0ff40b172d40854474b9bf419cff9ea1a68afb` |
| 6 | `theorem` | [angle_add_eq_arcsin_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-add-eq-arcsin-of-inner-eq-zero.md) | 83 | `result-track:6ef6ac95c9a9f0268c3850e54cebe58991fd5fc48b249625ae2750dbdfc92173` |
| 7 | `theorem` | [angle_add_eq_arctan_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-add-eq-arctan-of-inner-eq-zero.md) | 100 | `result-track:2b0680451945a3b51e1efc5e24e79a500cda31aac45ea75784bb981f59a3557d` |
| 8 | `theorem` | [angle_add_pos_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-add-pos-of-inner-eq-zero.md) | 109 | `result-track:9d57740715aa6081c2449e1a8cb82274753d239c6744463c747fb2e02db181e9` |
| 9 | `theorem` | [angle_add_le_pi_div_two_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-add-le-pi-div-two-of-inner-eq-zero.md) | 119 | `result-track:11f576296fd7b712916965298a1746a34cdec8515cf78efd4309f6eda147d93d` |
| 10 | `theorem` | [angle_add_lt_pi_div_two_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-add-lt-pi-div-two-of-inner-eq-zero.md) | 125 | `result-track:2beef10bbf37c97eeeb36c26fd0c8f7fb43d7d69a2af262e0d3daf4a0d356196` |
| 11 | `theorem` | [cos_angle_add_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/cos-angle-add-of-inner-eq-zero.md) | 133 | `result-track:83394c7ef8cbbaf193d64eb12ff083c42ef65e8e3db168f562f1e509672253b8` |
| 12 | `theorem` | [sin_angle_add_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/sin-angle-add-of-inner-eq-zero.md) | 143 | `result-track:7e067345ec2720a0c53558529a04795015d27676010d669501deef79a0e3411a` |
| 13 | `theorem` | [tan_angle_add_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/tan-angle-add-of-inner-eq-zero.md) | 153 | `result-track:71d55848352ad066555146c9582b8a38b7aa1fd00a63241a7f56fe1b9e8f0d1d` |
| 14 | `theorem` | [cos_angle_add_mul_norm_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/cos-angle-add-mul-norm-of-inner-eq-zero.md) | 160 | `result-track:d5f78c2377fc57434fff59545f2db06b0b63254197c08a68c80f722e7b0c81e3` |
| 15 | `theorem` | [sin_angle_add_mul_norm_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/sin-angle-add-mul-norm-of-inner-eq-zero.md) | 172 | `result-track:37bc0cdd55efa99dc0d6f651105ddab4f50f8eb9eb36f0dddc98bc08ff09ee7b` |
| 16 | `theorem` | [tan_angle_add_mul_norm_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/tan-angle-add-mul-norm-of-inner-eq-zero.md) | 185 | `result-track:e0dd938c376e47f9534e6b1db3afda1f1b78fd10a8610019ae5405753d332852` |
| 17 | `theorem` | [norm_div_cos_angle_add_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/norm-div-cos-angle-add-of-inner-eq-zero.md) | 192 | `result-track:2b48a35310b7724cedf1dfe18f711b7585f4247fc01297808ede9318e6bd7e85` |
| 18 | `theorem` | [norm_div_sin_angle_add_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/norm-div-sin-angle-add-of-inner-eq-zero.md) | 201 | `result-track:39e1e61c499bfbaf8018b6d09bb0f42a9b40a327e005b415e35b16ee5c0ffccc` |
| 19 | `theorem` | [norm_div_tan_angle_add_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/norm-div-tan-angle-add-of-inner-eq-zero.md) | 209 | `result-track:fd3a4aa5da69c13957af39ef05d54b736d9e49831d6d47cc5716fccdaa71fd92` |
| 20 | `theorem` | [angle_sub_eq_arccos_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-sub-eq-arccos-of-inner-eq-zero.md) | 217 | `result-track:3adffdcd606c04e80778e42d71930cf245c5773fd19a5828c17ef360e232db69` |
| 21 | `theorem` | [angle_sub_eq_arcsin_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-sub-eq-arcsin-of-inner-eq-zero.md) | 223 | `result-track:97f17ded06a67fa00f302641eef613de9c41e594c4efbe625e31818e328be39f` |
| 22 | `theorem` | [angle_sub_eq_arctan_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-sub-eq-arctan-of-inner-eq-zero.md) | 230 | `result-track:9e0e737879185fbc7a7c2480f32250c6e59160918400b06a9a80db77a35580b0` |
| 23 | `theorem` | [angle_sub_pos_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-sub-pos-of-inner-eq-zero.md) | 237 | `result-track:ad5f2f0471f3ee95f1305731d60910e4b47e474b2dbd279052a0017c96b3e839` |
| 24 | `theorem` | [angle_sub_le_pi_div_two_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-sub-le-pi-div-two-of-inner-eq-zero.md) | 245 | `result-track:81b39f8c950f0701b4a13e1022786dcee374ce5814482b276d98674a9fd93866` |
| 25 | `theorem` | [angle_sub_lt_pi_div_two_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-sub-lt-pi-div-two-of-inner-eq-zero.md) | 253 | `result-track:b5fc84119146c23bf8f31f922d60d995101205e91ce1ede38c19514fbcb32412` |
| 26 | `theorem` | [cos_angle_sub_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/cos-angle-sub-of-inner-eq-zero.md) | 261 | `result-track:79a0d3d908da47348a27350891733a709b6f94443dba54a84f496efc9fe2d78c` |
| 27 | `theorem` | [sin_angle_sub_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/sin-angle-sub-of-inner-eq-zero.md) | 268 | `result-track:ce0ab9a67d05cfc778229bb86bb7b1896e8b656a357c1b0b154962cfdef72b84` |
| 28 | `theorem` | [tan_angle_sub_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/tan-angle-sub-of-inner-eq-zero.md) | 276 | `result-track:3afd0c81961e83557ac11f344c482a3a1e4601712cb7ab7594bb48e15166bf7c` |
| 29 | `theorem` | [cos_angle_sub_mul_norm_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/cos-angle-sub-mul-norm-of-inner-eq-zero.md) | 283 | `result-track:b65e70bf882e4f9991711be5fe326a29bb5aaf6632b769b2dc50b201fd11cd55` |
| 30 | `theorem` | [sin_angle_sub_mul_norm_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/sin-angle-sub-mul-norm-of-inner-eq-zero.md) | 290 | `result-track:28ef7c42091110f52b0892ab6460f9b906757d65f2fd8800bb1c06da3724a604` |
| 31 | `theorem` | [tan_angle_sub_mul_norm_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/tan-angle-sub-mul-norm-of-inner-eq-zero.md) | 297 | `result-track:9efa006bd62403bb9c43ef69484b07f4ff538ff4ec380005b551039fc9bedbd1` |
| 32 | `theorem` | [norm_div_cos_angle_sub_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/norm-div-cos-angle-sub-of-inner-eq-zero.md) | 305 | `result-track:de161c5ac57a31022a245c94fb3ea3f5043992a5efd8dc3387baca67befab078` |
| 33 | `theorem` | [norm_div_sin_angle_sub_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/norm-div-sin-angle-sub-of-inner-eq-zero.md) | 313 | `result-track:d3fa72428585dd76ff82e8c4be6501461d3e47a5996eb4df3487880b7d50adba` |
| 34 | `theorem` | [norm_div_tan_angle_sub_of_inner_eq_zero](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/norm-div-tan-angle-sub-of-inner-eq-zero.md) | 321 | `result-track:dff226d2da857331d34a1cac90260ecf660c5577b1b5cd6e7bd101d58ee38c49` |
| 35 | `theorem` | [dist_sq_eq_dist_sq_add_dist_sq_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/dist-sq-eq-dist-sq-add-dist-sq-iff-angle-eq-pi-div-two.md) | 337 | `result-track:00f6225b3dfcfd76d029cfc3114f05080f5a14ae53108f7ce607b126622e74b6` |
| 36 | `theorem` | [dist_sq_add_dist_sq_le_dist_sq_iff_pi_div_two_le_angle](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/dist-sq-add-dist-sq-le-dist-sq-iff-pi-div-two-le-angle.md) | 346 | `result-track:fc6a54f1ad34c6e3d506972834e9b10356fdf6b62c3f62e74ab1318a7cbcf33b` |
| 37 | `theorem` | [angle_eq_arccos_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-eq-arccos-of-angle-eq-pi-div-two.md) | 356 | `result-track:2e0d66075d1e24d055d61a660c57cbe6a5c44c337ee46db531fdedd61f0d5cea` |
| 38 | `theorem` | [angle_eq_arcsin_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-eq-arcsin-of-angle-eq-pi-div-two.md) | 364 | `result-track:c857896345900f3364862f3dccbe41286c38c0cb59d3ecb7eb8c2e1a4e3f7bb1` |
| 39 | `theorem` | [angle_eq_arctan_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-eq-arctan-of-angle-eq-pi-div-two.md) | 373 | `result-track:9e79cca90315b8ef2663fb8af28ad6264ecd7496e550fcbd7a1a63a6819123c5` |
| 40 | `theorem` | [angle_pos_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-pos-of-angle-eq-pi-div-two.md) | 382 | `result-track:3e5fe065651465674f347be68689aaeef16af32d9f36cc55e7512ce4c6cc6825` |
| 41 | `theorem` | [angle_le_pi_div_two_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-le-pi-div-two-of-angle-eq-pi-div-two.md) | 391 | `result-track:b5b0a8554aa66d7411ed3d0885b82c3356022d3681c9d48531240aeea38d14a1` |
| 42 | `theorem` | [angle_lt_pi_div_two_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/angle-lt-pi-div-two-of-angle-eq-pi-div-two.md) | 399 | `result-track:35b8d1fdbd99dca3a3b3a3f46d2d7e7c8107fafb9c50b60ef0e068e863f1f992` |
| 43 | `theorem` | [cos_angle_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/cos-angle-of-angle-eq-pi-div-two.md) | 408 | `result-track:cef8d60d77eb7216011b5dd2fff5b793ad3dd511c41eac96c65a6f2742b6d8dc` |
| 44 | `theorem` | [sin_angle_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/sin-angle-of-angle-eq-pi-div-two.md) | 416 | `result-track:5cdbc75635fb0cfec44f8a8b7139c3bfb5f9925d3b640340b610ec253e7b502d` |
| 45 | `theorem` | [tan_angle_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/tan-angle-of-angle-eq-pi-div-two.md) | 425 | `result-track:63ea9f5c9d467890f19c53f169aa131ed0a3fa86cd7c1270c75d332baa90f9fb` |
| 46 | `theorem` | [cos_angle_mul_dist_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/cos-angle-mul-dist-of-angle-eq-pi-div-two.md) | 434 | `result-track:97defad9ca56dfd08973c7454708ea7d0a13d87c319babc9c81c22355256e15b` |
| 47 | `theorem` | [sin_angle_mul_dist_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/sin-angle-mul-dist-of-angle-eq-pi-div-two.md) | 443 | `result-track:cceceda11853c95494670d38c918b18eff31a9e46e7a3e3e62d9ac5d0055f4f9` |
| 48 | `theorem` | [tan_angle_mul_dist_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/tan-angle-mul-dist-of-angle-eq-pi-div-two.md) | 452 | `result-track:bdfcf124474935aa4544ce7dad3868bf206a0ca44a10eec7bf2a8fed297e9fdf` |
| 49 | `theorem` | [dist_div_cos_angle_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/dist-div-cos-angle-of-angle-eq-pi-div-two.md) | 462 | `result-track:d0b805987debdaed540b8765239ba3f7968a22ea2451430ade816d1dcfad463a` |
| 50 | `theorem` | [dist_div_sin_angle_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/dist-div-sin-angle-of-angle-eq-pi-div-two.md) | 472 | `result-track:cfa1eac5f4608e74ae9ac31196e887d216f8f8c62486ba7f939b8481235dc301` |
| 51 | `theorem` | [dist_div_tan_angle_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/dist-div-tan-angle-of-angle-eq-pi-div-two.md) | 482 | `result-track:7fdddbfe0a6477fae12a8eaf464ae0e8e9f98dbff061c7ec06275c4707d37d57` |
| 52 | `theorem` | [dist_sq_eq_dist_mul_dist_iff_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/dist-sq-eq-dist-mul-dist-iff-angle-eq-pi-div-two.md) | 495 | `result-track:58a57d3b684529ef611977657aa97722dcd546c69eef9d0924468d5fb70bc7ac` |
| 53 | `theorem` | [dist_sq_eq_dist_mul_dist_of_angle_eq_pi_div_two](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/dist-sq-eq-dist-mul-dist-of-angle-eq-pi-div-two.md) | 515 | `result-track:19968906806737954f82cf7053dca462c550797649f38b56d5f772e417ba1e94` |
| 54 | `theorem` | [dist_sq_eq_dist_mul_dist_of_angle_eq_pi_div_two'](../../../../../Geometry/RealAndComplexGeometry/UnorientedRightAngleNamespacedPublic.lean/declarations/dist-sq-eq-dist-mul-dist-of-angle-eq-pi-div-two-source-edition-2.md) | 523 | `result-track:1fcafe4c525b03024908e402c9ed2477cbacc00582d49ef328f798bd1a98b810` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7749387caaf9539ae0ae354f76a368c2384089db563604340405ca2febaa49a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variant1e13bb8e5dd03678ba9af436f8997901939bbef277992188933043f83ba56487.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
