# Unoriented Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdb7b451bef76e5da93740471c43ffa2237b62fe`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Geometry/RealAndComplexGeometry/UnorientedBasic.lean/index.md).

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
| 14 | `theorem` | [angle_zero_left](declarations/angle-zero-left.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [angle_zero_right](declarations/angle-zero-right.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [angle_self](declarations/angle-self.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [angle_self_neg_of_nonzero](declarations/angle-self-neg-of-nonzero.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [angle_neg_self_of_nonzero](declarations/angle-neg-self-of-nonzero.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [angle_smul_right_of_pos](declarations/angle-smul-right-of-pos.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [angle_smul_left_of_pos](declarations/angle-smul-left-of-pos.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [angle_smul_right_of_neg](declarations/angle-smul-right-of-neg.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [angle_smul_left_of_neg](declarations/angle-smul-left-of-neg.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cos_angle_mul_norm_mul_norm](declarations/cos-angle-mul-norm-mul-norm.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sin_angle_mul_norm_mul_norm](declarations/sin-angle-mul-norm-mul-norm.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [angle_eq_zero_iff](declarations/angle-eq-zero-iff.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [angle_eq_pi_iff](declarations/angle-eq-pi-iff.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [angle_add_angle_eq_pi_of_angle_eq_pi](declarations/angle-add-angle-eq-pi-of-angle-eq-pi.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [inner_eq_zero_iff_angle_eq_pi_div_two](declarations/inner-eq-zero-iff-angle-eq-pi-div-two.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inner_eq_neg_mul_norm_of_angle_eq_pi](declarations/inner-eq-neg-mul-norm-of-angle-eq-pi.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [inner_eq_mul_norm_of_angle_eq_zero](declarations/inner-eq-mul-norm-of-angle-eq-zero.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inner_eq_neg_mul_norm_iff_angle_eq_pi](declarations/inner-eq-neg-mul-norm-iff-angle-eq-pi.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [inner_eq_mul_norm_iff_angle_eq_zero](declarations/inner-eq-mul-norm-iff-angle-eq-zero.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [norm_sub_eq_add_norm_of_angle_eq_pi](declarations/norm-sub-eq-add-norm-of-angle-eq-pi.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [norm_add_eq_add_norm_of_angle_eq_zero](declarations/norm-add-eq-add-norm-of-angle-eq-zero.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [norm_sub_eq_abs_sub_norm_of_angle_eq_zero](declarations/norm-sub-eq-abs-sub-norm-of-angle-eq-zero.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [norm_sub_eq_add_norm_iff_angle_eq_pi](declarations/norm-sub-eq-add-norm-iff-angle-eq-pi.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [norm_add_eq_add_norm_iff_angle_eq_zero](declarations/norm-add-eq-add-norm-iff-angle-eq-zero.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [norm_sub_eq_abs_sub_norm_iff_angle_eq_zero](declarations/norm-sub-eq-abs-sub-norm-iff-angle-eq-zero.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [norm_add_eq_norm_sub_iff_angle_eq_pi_div_two](declarations/norm-add-eq-norm-sub-iff-angle-eq-pi-div-two.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cos_eq_one_iff_angle_eq_zero](declarations/cos-eq-one-iff-angle-eq-zero.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cos_eq_zero_iff_angle_eq_pi_div_two](declarations/cos-eq-zero-iff-angle-eq-pi-div-two.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [cos_eq_neg_one_iff_angle_eq_pi](declarations/cos-eq-neg-one-iff-angle-eq-pi.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [sin_eq_zero_iff_angle_eq_zero_or_angle_eq_pi](declarations/sin-eq-zero-iff-angle-eq-zero-or-angle-eq-pi.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [sin_eq_one_iff_angle_eq_pi_div_two](declarations/sin-eq-one-iff-angle-eq-pi-div-two.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=395260b0869b560624ae0fd75c10d93ce51693ef93a360dd7e4239a35e4ee402 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant3839a43d9b0a427201b78f67d9d6206f726d1f89f792ece091a64434a4e47708.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
