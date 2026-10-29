# Rotation Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotation/Variantcead4091a2480946d2b441b3624a9a7b5b73ea80b54779f9fd094ade31b35d0f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `691884811efe9b7c63aa4d4db1790fd9502c7fb4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Geometry/RealAndComplexGeometry/RotationNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rotationAux](declarations/rotationaux.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [rotationAux_apply](declarations/rotationaux-apply.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [rotation](declarations/rotation.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [rotation_apply](declarations/rotation-apply.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [rotation_symm_apply](declarations/rotation-symm-apply.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rotation_eq_matrix_toLin](declarations/rotation-eq-matrix-tolin.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [det_rotation](declarations/det-rotation.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [linearEquiv_det_rotation](declarations/linearequiv-det-rotation.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rotation_symm](declarations/rotation-symm.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rotation_zero](declarations/rotation-zero.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rotation_pi](declarations/rotation-pi.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rotation_pi_apply](declarations/rotation-pi-apply.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rotation_pi_div_two](declarations/rotation-pi-div-two.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rotation_rotation](declarations/rotation-rotation.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rotation_trans](declarations/rotation-trans.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [kahler_rotation_left](declarations/kahler-rotation-left.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [neg_rotation](declarations/neg-rotation.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [neg_rotation_neg_pi_div_two](declarations/neg-rotation-neg-pi-div-two.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [neg_rotation_pi_div_two](declarations/neg-rotation-pi-div-two.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [kahler_rotation_left'](declarations/kahler-rotation-left-source-edition-2.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [kahler_rotation_right](declarations/kahler-rotation-right.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [oangle_rotation_left](declarations/oangle-rotation-left.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [oangle_rotation_right](declarations/oangle-rotation-right.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [oangle_rotation_self_left](declarations/oangle-rotation-self-left.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [oangle_rotation_self_right](declarations/oangle-rotation-self-right.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [oangle_rotation_oangle_left](declarations/oangle-rotation-oangle-left.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [oangle_rotation_oangle_right](declarations/oangle-rotation-oangle-right.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [oangle_rotation](declarations/oangle-rotation.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rotation_eq_self_iff_angle_eq_zero](declarations/rotation-eq-self-iff-angle-eq-zero.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eq_rotation_self_iff_angle_eq_zero](declarations/eq-rotation-self-iff-angle-eq-zero.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [rotation_eq_self_iff](declarations/rotation-eq-self-iff.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [eq_rotation_self_iff](declarations/eq-rotation-self-iff.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rotation_oangle_eq_iff_norm_eq](declarations/rotation-oangle-eq-iff-norm-eq.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [oangle_eq_iff_eq_norm_div_norm_smul_rotation_of_ne_zero](declarations/oangle-eq-iff-eq-norm-div-norm-smul-rotation-of-ne-zero.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [oangle_eq_iff_eq_pos_smul_rotation_of_ne_zero](declarations/oangle-eq-iff-eq-pos-smul-rotation-of-ne-zero.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [oangle_eq_iff_eq_norm_div_norm_smul_rotation_or_eq_zero](declarations/oangle-eq-iff-eq-norm-div-norm-smul-rotation-or-eq-zero.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [oangle_eq_iff_eq_pos_smul_rotation_or_eq_zero](declarations/oangle-eq-iff-eq-pos-smul-rotation-or-eq-zero.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [exists_linearIsometryEquiv_eq_of_det_pos](declarations/exists-linearisometryequiv-eq-of-det-pos.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rotation_map](declarations/rotation-map.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Rotation Namespaced](declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-rotationaux-var.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rotation_map_complex](declarations/rotation-map-complex.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rotation_neg_orientation_eq_neg](declarations/rotation-neg-orientation-eq-neg.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [inner_rotation_pi_div_two_left](declarations/inner-rotation-pi-div-two-left.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [inner_rotation_pi_div_two_right](declarations/inner-rotation-pi-div-two-right.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [inner_smul_rotation_pi_div_two_left](declarations/inner-smul-rotation-pi-div-two-left.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [inner_smul_rotation_pi_div_two_right](declarations/inner-smul-rotation-pi-div-two-right.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [inner_rotation_pi_div_two_left_smul](declarations/inner-rotation-pi-div-two-left-smul.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [inner_rotation_pi_div_two_right_smul](declarations/inner-rotation-pi-div-two-right-smul.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [inner_smul_rotation_pi_div_two_smul_left](declarations/inner-smul-rotation-pi-div-two-smul-left.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [inner_smul_rotation_pi_div_two_smul_right](declarations/inner-smul-rotation-pi-div-two-smul-right.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [inner_eq_zero_iff_eq_zero_or_eq_smul_rotation_pi_div_two](declarations/inner-eq-zero-iff-eq-zero-or-eq-smul-rotation-pi-div-two.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91dece4001dd93230bcaab30a21cd6e2e4e1ba67c312a7441ff3b546317ce44b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Rotation/Variantcead4091a2480946d2b441b3624a9a7b5b73ea80b54779f9fd094ade31b35d0f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
