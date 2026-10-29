# Unoriented Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3e650b737ebc481b143ecbad1c37d320ae39af6812e6f10740a3361814513f83.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd3c7c8ca6190522776d0288703638f22f3f09c1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Geometry/RealAndComplexGeometry/UnorientedBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [angle](declarations/angle.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [continuousAt_angle](declarations/continuousat-angle.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [angle_smul_smul](declarations/angle-smul-smul.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [_root_.LinearIsometry.angle_map](declarations/root-linearisometry-angle-map.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [_root_.Submodule.angle_coe](declarations/root-submodule-angle-coe.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [cos_angle](declarations/cos-angle.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [angle_comm](declarations/angle-comm.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [angle_neg_neg](declarations/angle-neg-neg.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [angle_nonneg](declarations/angle-nonneg.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [angle_le_pi](declarations/angle-le-pi.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sin_angle_nonneg](declarations/sin-angle-nonneg.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [angle_neg_right](declarations/angle-neg-right.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [angle_neg_left](declarations/angle-neg-left.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [angle_zero_left](declarations/angle-zero-left.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [angle_zero_right](declarations/angle-zero-right.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [angle_self](declarations/angle-self.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [angle_self_neg_of_nonzero](declarations/angle-self-neg-of-nonzero.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [angle_neg_self_of_nonzero](declarations/angle-neg-self-of-nonzero.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [angle_smul_right_of_pos](declarations/angle-smul-right-of-pos.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [angle_smul_left_of_pos](declarations/angle-smul-left-of-pos.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [angle_smul_right_of_neg](declarations/angle-smul-right-of-neg.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [angle_smul_left_of_neg](declarations/angle-smul-left-of-neg.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cos_angle_mul_norm_mul_norm](declarations/cos-angle-mul-norm-mul-norm.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sin_angle_mul_norm_mul_norm](declarations/sin-angle-mul-norm-mul-norm.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sin_angle](declarations/sin-angle.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sin_angle_add](declarations/sin-angle-add.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [angle_eq_zero_iff](declarations/angle-eq-zero-iff.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [angle_eq_pi_iff](declarations/angle-eq-pi-iff.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [angle_add_angle_eq_pi_of_angle_eq_pi](declarations/angle-add-angle-eq-pi-of-angle-eq-pi.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [inner_eq_zero_iff_angle_eq_pi_div_two](declarations/inner-eq-zero-iff-angle-eq-pi-div-two.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inner_nonpos_iff_pi_div_two_le_angle](declarations/inner-nonpos-iff-pi-div-two-le-angle.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [inner_neg_iff_pi_div_two_lt_angle](declarations/inner-neg-iff-pi-div-two-lt-angle.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [inner_eq_neg_mul_norm_of_angle_eq_pi](declarations/inner-eq-neg-mul-norm-of-angle-eq-pi.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [inner_eq_mul_norm_of_angle_eq_zero](declarations/inner-eq-mul-norm-of-angle-eq-zero.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [inner_eq_neg_mul_norm_iff_angle_eq_pi](declarations/inner-eq-neg-mul-norm-iff-angle-eq-pi.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [inner_eq_mul_norm_iff_angle_eq_zero](declarations/inner-eq-mul-norm-iff-angle-eq-zero.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [norm_sub_eq_add_norm_of_angle_eq_pi](declarations/norm-sub-eq-add-norm-of-angle-eq-pi.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [norm_add_eq_add_norm_of_angle_eq_zero](declarations/norm-add-eq-add-norm-of-angle-eq-zero.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [norm_sub_eq_abs_sub_norm_of_angle_eq_zero](declarations/norm-sub-eq-abs-sub-norm-of-angle-eq-zero.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [norm_sub_eq_add_norm_iff_angle_eq_pi](declarations/norm-sub-eq-add-norm-iff-angle-eq-pi.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [norm_add_eq_add_norm_iff_angle_eq_zero](declarations/norm-add-eq-add-norm-iff-angle-eq-zero.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [norm_sub_eq_abs_sub_norm_iff_angle_eq_zero](declarations/norm-sub-eq-abs-sub-norm-iff-angle-eq-zero.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [norm_add_eq_norm_sub_iff_angle_eq_pi_div_two](declarations/norm-add-eq-norm-sub-iff-angle-eq-pi-div-two.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [cos_eq_one_iff_angle_eq_zero](declarations/cos-eq-one-iff-angle-eq-zero.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [cos_eq_zero_iff_angle_eq_pi_div_two](declarations/cos-eq-zero-iff-angle-eq-pi-div-two.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [cos_eq_neg_one_iff_angle_eq_pi](declarations/cos-eq-neg-one-iff-angle-eq-pi.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [sin_eq_zero_iff_angle_eq_zero_or_angle_eq_pi](declarations/sin-eq-zero-iff-angle-eq-zero-or-angle-eq-pi.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sin_eq_one_iff_angle_eq_pi_div_two](declarations/sin-eq-one-iff-angle-eq-pi-div-two.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [eq_of_angle_eq_zero_of_norm_eq](declarations/eq-of-angle-eq-zero-of-norm-eq.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [angle_normalize_left](declarations/angle-normalize-left.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [angle_normalize_right](declarations/angle-normalize-right.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [inner_eq_cos_angle_of_norm_eq_one](declarations/inner-eq-cos-angle-of-norm-eq-one.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f91c21d584803b019fe01a0c2cc2201138524004855206eb602ab0cda49ab00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3e650b737ebc481b143ecbad1c37d320ae39af6812e6f10740a3361814513f83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
