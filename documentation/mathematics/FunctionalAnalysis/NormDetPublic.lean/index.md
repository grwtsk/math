# Norm Det Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d36eca716e7bc840f48ca04b30c9a3461d3c0b96`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/NormDetPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [normDet](declarations/normdet.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [normDet_nonneg](declarations/normdet-nonneg.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [normDet_eq_norm_det_toMatrix_rangeRestrict](declarations/normdet-eq-norm-det-tomatrix-rangerestrict.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [normDet_eq_zero_iff_ker_ne_bot](declarations/normdet-eq-zero-iff-ker-ne-bot.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [normDet_eq_zero_iff_rank_range_ne](declarations/normdet-eq-zero-iff-rank-range-ne.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [normDet_ne_zero_tfae](declarations/normdet-ne-zero-tfae.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [orthonormalBasis_range](declarations/orthonormalbasis-range.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [normDet_eq_zero_tfae](declarations/normdet-eq-zero-tfae.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [normDet_eq_norm_det_toMatrix](declarations/normdet-eq-norm-det-tomatrix.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [normDet_eq_norm_det](declarations/normdet-eq-norm-det.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [_root_.LinearIsometry.normDet_eq_one](declarations/root-linearisometry-normdet-eq-one.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [normDet_id](declarations/normdet-id.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [normDet_subtype](declarations/normdet-subtype.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [normDet_of_subsingleton](declarations/normdet-of-subsingleton.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [normDet_zero](declarations/normdet-zero.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [normDet_smul](declarations/normdet-smul.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normDet_neg](declarations/normdet-neg.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [_root_.ContinuousLinearMap.normDet_sq](declarations/root-continuouslinearmap-normdet-sq.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [normDet_sq](declarations/normdet-sq.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [normDet_sq_eq_det_gram](declarations/normdet-sq-eq-det-gram.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [normDet_comp](declarations/normdet-comp.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [normDet_comp_of_finrank_eq](declarations/normdet-comp-of-finrank-eq.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [normDet_codRestrict](declarations/normdet-codrestrict.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [normDet_eq_prod_singularValues](declarations/normdet-eq-prod-singularvalues.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [normDet_eq_abs_det](declarations/normdet-eq-abs-det.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [hausdorffMeasure_image](declarations/hausdorffmeasure-image.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [euclideanHausdorffMeasure_image](declarations/euclideanhausdorffmeasure-image.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [euclideanHausdorffMeasure_image_eq_normDet_mul_volume](declarations/euclideanhausdorffmeasure-image-eq-normdet-mul-volume.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02977adaff25f211fa9555ef66ab73acb776172172ab8c36788f52f48bfbc607 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/NormDet/Variant02b6b5b5f990aefecdbeaa183c768fe4b920ba058fc7b904350c2527e479ddb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
