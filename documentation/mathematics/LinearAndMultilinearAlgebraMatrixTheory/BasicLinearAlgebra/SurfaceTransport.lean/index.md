# Surface Transport

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `701f8920c676a3e4c1085cca1531e9a38e0bc7f3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SurfaceTransport.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Space](declarations/space.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Deformation](declarations/deformation.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [act](declarations/act.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [cross](declarations/cross.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [cofactor](declarations/cofactor.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [tangentArea](declarations/tangentarea.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [localAreaStretch](declarations/localareastretch.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tangentArea_eq_norm_mul_sin](declarations/tangentarea-eq-norm-mul-sin.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tangentArea_eq_one_of_unit_orthogonal](declarations/tangentarea-eq-one-of-unit-orthogonal.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cross_act](declarations/cross-act.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cofactor_eq_inverse_transpose_of_det_one](declarations/cofactor-eq-inverse-transpose-of-det-one.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [localAreaStretch_eq_inverse_transpose](declarations/localareastretch-eq-inverse-transpose.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [act_smul](declarations/act-smul.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [localAreaStretch_eq_normalized_inverse_transpose](declarations/localareastretch-eq-normalized-inverse-transpose.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tangentArea_act_eq_normalized_inverse_transpose](declarations/tangentarea-act-eq-normalized-inverse-transpose.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [act_one](declarations/act-one.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [act_zero](declarations/act-zero.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [act_mul](declarations/act-mul.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [act_cofactor_ne_zero](declarations/act-cofactor-ne-zero.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cross_act_ne_zero](declarations/cross-act-ne-zero.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [localAreaStretch_pos](declarations/localareastretch-pos.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [transportedNormal](declarations/transportednormal.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [transportedNormal_norm](declarations/transportednormal-norm.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [transportedNormal_eq_inverse_transpose](declarations/transportednormal-eq-inverse-transpose.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [axis](declarations/axis.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [axis_norm](declarations/axis-norm.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cross_axis_two_zero](declarations/cross-axis-two-zero.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [axis_two_zero_orthogonal](declarations/axis-two-zero-orthogonal.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [diagonalStretch](declarations/diagonalstretch.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [diagonalStretch_det](declarations/diagonalstretch-det.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [diagonalStretch_act_axis_two](declarations/diagonalstretch-act-axis-two.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [diagonalStretch_act_axis_zero](declarations/diagonalstretch-act-axis-zero.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [cross_smul_right](declarations/cross-smul-right.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [diagonalStretch_localAreaStretch](declarations/diagonalstretch-localareastretch.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [identity_localAreaStretch](declarations/identity-localareastretch.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [determinantAreaObstruction](declarations/determinantareaobstruction.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [localAreaStretch_not_determined_by_determinant](declarations/localareastretch-not-determined-by-determinant.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [no_determinant_area_decoder](declarations/no-determinant-area-decoder.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f6f52a328b6b2f5c002dc430247dc16b9e0d12f7ab174b3bad1f2329f7d3ead -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
