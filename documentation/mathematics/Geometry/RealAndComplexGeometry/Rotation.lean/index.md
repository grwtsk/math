# Rotation

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotation/Variant1cad6e9c8299fd6f642160fa4e34a4443197c49469fed512403b4cb184d95c37.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cbeb7e1e3694d282e05afe6e674ff6d6525c96e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Geometry/RealAndComplexGeometry/Rotation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rotationAux](declarations/rotationaux.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [rotationAux_apply](declarations/rotationaux-apply.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [rotation](declarations/rotation.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [rotation_apply](declarations/rotation-apply.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [rotation_symm_apply](declarations/rotation-symm-apply.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rotation_eq_matrix_toLin](declarations/rotation-eq-matrix-tolin.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [det_rotation](declarations/det-rotation.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [linearEquiv_det_rotation](declarations/linearequiv-det-rotation.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rotation_symm](declarations/rotation-symm.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rotation_zero](declarations/rotation-zero.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rotation_pi](declarations/rotation-pi.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rotation_pi_apply](declarations/rotation-pi-apply.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rotation_pi_div_two](declarations/rotation-pi-div-two.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rotation_rotation](declarations/rotation-rotation.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rotation_trans](declarations/rotation-trans.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [kahler_rotation_left](declarations/kahler-rotation-left.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [neg_rotation](declarations/neg-rotation.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [neg_rotation_neg_pi_div_two](declarations/neg-rotation-neg-pi-div-two.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [neg_rotation_pi_div_two](declarations/neg-rotation-pi-div-two.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [kahler_rotation_left'](declarations/kahler-rotation-left-source-edition-2.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [kahler_rotation_right](declarations/kahler-rotation-right.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [oangle_rotation_left](declarations/oangle-rotation-left.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [oangle_rotation_right](declarations/oangle-rotation-right.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [oangle_rotation_self_left](declarations/oangle-rotation-self-left.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [oangle_rotation_self_right](declarations/oangle-rotation-self-right.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [oangle_rotation_oangle_left](declarations/oangle-rotation-oangle-left.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [oangle_rotation_oangle_right](declarations/oangle-rotation-oangle-right.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [oangle_rotation](declarations/oangle-rotation.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rotation_eq_self_iff_angle_eq_zero](declarations/rotation-eq-self-iff-angle-eq-zero.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eq_rotation_self_iff_angle_eq_zero](declarations/eq-rotation-self-iff-angle-eq-zero.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [rotation_eq_self_iff](declarations/rotation-eq-self-iff.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [eq_rotation_self_iff](declarations/eq-rotation-self-iff.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rotation_oangle_eq_iff_norm_eq](declarations/rotation-oangle-eq-iff-norm-eq.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [oangle_eq_iff_eq_norm_div_norm_smul_rotation_of_ne_zero](declarations/oangle-eq-iff-eq-norm-div-norm-smul-rotation-of-ne-zero.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [oangle_eq_iff_eq_pos_smul_rotation_of_ne_zero](declarations/oangle-eq-iff-eq-pos-smul-rotation-of-ne-zero.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [oangle_eq_iff_eq_norm_div_norm_smul_rotation_or_eq_zero](declarations/oangle-eq-iff-eq-norm-div-norm-smul-rotation-or-eq-zero.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [oangle_eq_iff_eq_pos_smul_rotation_or_eq_zero](declarations/oangle-eq-iff-eq-pos-smul-rotation-or-eq-zero.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [exists_linearIsometryEquiv_eq_of_det_pos](declarations/exists-linearisometryequiv-eq-of-det-pos.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rotation_map](declarations/rotation-map.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [_root_.Complex.rotation](declarations/root-complex-rotation.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rotation_map_complex](declarations/rotation-map-complex.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rotation_neg_orientation_eq_neg](declarations/rotation-neg-orientation-eq-neg.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [inner_rotation_pi_div_two_left](declarations/inner-rotation-pi-div-two-left.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [inner_rotation_pi_div_two_right](declarations/inner-rotation-pi-div-two-right.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [inner_smul_rotation_pi_div_two_left](declarations/inner-smul-rotation-pi-div-two-left.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [inner_smul_rotation_pi_div_two_right](declarations/inner-smul-rotation-pi-div-two-right.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [inner_rotation_pi_div_two_left_smul](declarations/inner-rotation-pi-div-two-left-smul.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [inner_rotation_pi_div_two_right_smul](declarations/inner-rotation-pi-div-two-right-smul.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [inner_smul_rotation_pi_div_two_smul_left](declarations/inner-smul-rotation-pi-div-two-smul-left.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [inner_smul_rotation_pi_div_two_smul_right](declarations/inner-smul-rotation-pi-div-two-smul-right.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [inner_eq_zero_iff_eq_zero_or_eq_smul_rotation_pi_div_two](declarations/inner-eq-zero-iff-eq-zero-or-eq-smul-rotation-pi-div-two.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d213fdfff60a0263d1cc899e5ac89e5286ceb47b65aa8da371871cfee6a1716e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotation/Variant1cad6e9c8299fd6f642160fa4e34a4443197c49469fed512403b4cb184d95c37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
