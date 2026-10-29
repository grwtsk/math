# LSum Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d58074e8851f67a24ccb1825cd71d8953ec6d75f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LSumNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_sum](declarations/smul-sum.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sum_smul_index_semilinearMap'](declarations/sum-smul-index-semilinearmap.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [sum_smul_index_linearMap'](declarations/sum-smul-index-linearmap.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [LSum Namespaced Public](declarations/finsupp-dom.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [LSum Namespaced Public](declarations/finsupp-cod.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [lsum](declarations/lsum.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coe_lsum](declarations/coe-lsum.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lsum_apply](declarations/lsum-apply.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lsum_single](declarations/lsum-single.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lsum_comp_lsingle](declarations/lsum-comp-lsingle.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lsum_symm_apply](declarations/lsum-symm-apply.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [lift](declarations/lift.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lift_symm_apply](declarations/lift-symm-apply.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lift_apply](declarations/lift-apply.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [llift](declarations/llift.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [llift_apply](declarations/llift-apply.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [llift_symm_apply](declarations/llift-symm-apply.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [domLCongr](declarations/domlcongr.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [domLCongr_apply](declarations/domlcongr-apply.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [domLCongr_refl](declarations/domlcongr-refl.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [domLCongr_trans](declarations/domlcongr-trans.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [domLCongr_symm](declarations/domlcongr-symm.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [domLCongr_single](declarations/domlcongr-single.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [lcongr](declarations/lcongr.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [lcongr_single](declarations/lcongr-single.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [lcongr_apply_apply](declarations/lcongr-apply-apply.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [lcongr_symm_single](declarations/lcongr-symm-single.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lcongr_symm](declarations/lcongr-symm.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Submodule.finsuppSum_mem](declarations/submodule-finsuppsum-mem.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [splittingOfFinsuppSurjective](declarations/splittingoffinsuppsurjective.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [splittingOfFinsuppSurjective_splits](declarations/splittingoffinsuppsurjective-splits.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [leftInverse_splittingOfFinsuppSurjective](declarations/leftinverse-splittingoffinsuppsurjective.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [splittingOfFinsuppSurjective_injective](declarations/splittingoffinsuppsurjective-injective.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_finsupp_sum](declarations/coe-finsupp-sum.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [finsupp_sum_apply](declarations/finsupp-sum-apply.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [mulLeftMap](declarations/mulleftmap.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mulLeftMap_apply](declarations/mulleftmap-apply.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mulLeftMap_apply_single](declarations/mulleftmap-apply-single.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [mulRightMap](declarations/mulrightmap.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mulRightMap_apply](declarations/mulrightmap-apply.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mulRightMap_apply_single](declarations/mulrightmap-apply-single.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mulLeftMap_eq_mulRightMap_of_commute](declarations/mulleftmap-eq-mulrightmap-of-commute.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mulLeftMap_eq_mulRightMap](declarations/mulleftmap-eq-mulrightmap.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9c5708ad641daf1c89eec44615ec84bcecad5ae09af042005d59e5d31976641 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LSum/Variant16b0704db9e49be2216a043feee51c0066a9705a7d34c6d5a2f47434c67ca53a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
