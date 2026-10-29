# Linear Map Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variant8b88e65383029c397906c6029ea3d593502074a222207b13226b6af5b9bf0aba.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e464cfcd28bd0ac75d7d79f814305a6c88a4a28`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/LinearMapPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [inner_map_polarization](declarations/inner-map-polarization.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [inner_map_polarization'](declarations/inner-map-polarization-source-edition-2.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [inner_map_self_eq_zero](declarations/inner-map-self-eq-zero.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ext_inner_map](declarations/ext-inner-map.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [LinearIsometry.inner_map_map](declarations/linearisometry-inner-map-map.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [LinearIsometryEquiv.inner_map_map](declarations/linearisometryequiv-inner-map-map.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [LinearIsometryEquiv.inner_map_eq_flip](declarations/linearisometryequiv-inner-map-eq-flip.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [LinearMap.isometryOfInner](declarations/linearmap-isometryofinner.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [LinearMap.coe_isometryOfInner](declarations/linearmap-coe-isometryofinner.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [LinearMap.isometryOfInner_toLinearMap](declarations/linearmap-isometryofinner-tolinearmap.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [LinearEquiv.isometryOfInner](declarations/linearequiv-isometryofinner.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [LinearEquiv.coe_isometryOfInner](declarations/linearequiv-coe-isometryofinner.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [LinearEquiv.isometryOfInner_toLinearEquiv](declarations/linearequiv-isometryofinner-tolinearequiv.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [LinearMap.norm_map_iff_inner_map_map](declarations/linearmap-norm-map-iff-inner-map-map.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [innerSL](declarations/innersl.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_innerSL_apply](declarations/coe-innersl-apply.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [innerSL_apply_apply](declarations/innersl-apply-apply.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ContinuousLinearMap.toLinearMap_innerSL_apply](declarations/continuouslinearmap-tolinearmap-innersl-apply.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [innerSLFlip](declarations/innerslflip.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [innerSLFlip_apply_apply](declarations/innerslflip-apply-apply.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [flip_innerSL_real](declarations/flip-innersl-real.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toSesqForm](declarations/tosesqform.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toSesqForm_apply_coe](declarations/tosesqform-apply-coe.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toSesqForm_apply_norm_le](declarations/tosesqform-apply-norm-le.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [innerSL_apply_norm](declarations/innersl-apply-norm.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [norm_innerSL_le](declarations/norm-innersl-le.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [inner_map_complex](declarations/inner-map-complex.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ContinuousLinearMap.reApplyInnerSelf](declarations/continuouslinearmap-reapplyinnerself.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ContinuousLinearMap.reApplyInnerSelf_apply](declarations/continuouslinearmap-reapplyinnerself-apply.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ContinuousLinearMap.reApplyInnerSelf_continuous](declarations/continuouslinearmap-reapplyinnerself-continuous.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ContinuousLinearMap.reApplyInnerSelf_smul](declarations/continuouslinearmap-reapplyinnerself-smul.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [rankOne](declarations/rankone.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [rankOne_def](declarations/rankone-def.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [rankOne_def'](declarations/rankone-def-source-edition-2.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [toLinearMap_rankOne](declarations/tolinearmap-rankone.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [norm_rankOne](declarations/norm-rankone.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [nnnorm_rankOne](declarations/nnnorm-rankone.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [enorm_rankOne](declarations/enorm-rankone.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [rankOne_apply](declarations/rankone-apply.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [comp_rankOne](declarations/comp-rankone.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isIdempotentElem_rankOne_self](declarations/isidempotentelem-rankone-self.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rankOne_one_right_eq_toSpanSingleton](declarations/rankone-one-right-eq-tospansingleton.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [rankOne_one_left_eq_innerSL](declarations/rankone-one-left-eq-innersl.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [rankOne_comp_rankOne](declarations/rankone-comp-rankone.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [inner_left_rankOne_apply](declarations/inner-left-rankone-apply.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [inner_right_rankOne_apply](declarations/inner-right-rankone-apply.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [rankOne_eq_zero](declarations/rankone-eq-zero.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [rankOne_ne_zero](declarations/rankone-ne-zero.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [isIdempotentElem_rankOne_self_iff](declarations/isidempotentelem-rankone-self-iff.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [rankOne_eq_rankOne_iff_comm](declarations/rankone-eq-rankone-iff-comm.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [exists_of_rankOne_eq_rankOne](declarations/exists-of-rankone-eq-rankone.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [opNorm_le_of_re_inner_le](declarations/opnorm-le-of-re-inner-le.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55e9414b157c93eefa8ffdc70a8af93a429e413aecac392a33cd478acac59cfb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/LinearMap/Variant8b88e65383029c397906c6029ea3d593502074a222207b13226b6af5b9bf0aba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
