# Mv Power Series Substitution Substitution Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**89 observed declarations and anonymous commands**, 82 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/Substitution/Variant16e3c65d32f8de67f49b6b79a867de911d518934e292f278b2ed198e760034ee.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fe7b2c38a8895ae64b404efa4996b2d8659d60c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [HasSubst](declarations/hassubst.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [coeff_zero_iff](declarations/coeff-zero-iff.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [hasSubst_iff_hasEval_of_discreteTopology](declarations/hassubst-iff-haseval-of-discretetopology.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [HasSubst.hasEval](declarations/hassubst-haseval.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [HasSubst.zero](declarations/hassubst-zero.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HasSubst.add](declarations/hassubst-add.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [HasSubst.mul_left](declarations/hassubst-mul-left.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [HasSubst.mul_right](declarations/hassubst-mul-right.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [HasSubst.smul](declarations/hassubst-smul.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [HasSubst.X](declarations/hassubst-x.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasSubst.map](declarations/hassubst-map.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [HasSubst.smul_X](declarations/hassubst-smul-x.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [hasSubstIdeal](declarations/hassubstideal.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [hasSubst_of_constantCoeff_nilpotent](declarations/hassubst-of-constantcoeff-nilpotent.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasSubst_of_constantCoeff_zero](declarations/hassubst-of-constantcoeff-zero.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [HasSubst.X_X](declarations/hassubst-x-x.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [HasSubst.X_zero](declarations/hassubst-x-zero.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [HasSubst.zero_X](declarations/hassubst-zero-x.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [HasSubst.pow](declarations/hassubst-pow.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [HasSubst.X_pow](declarations/hassubst-x-pow.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [HasSubst.truncTotal](declarations/hassubst-trunctotal.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [subst](declarations/subst.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [subst_eq_eval₂](declarations/subst-eq-eval.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [subst_coe](declarations/subst-coe.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [substAlgHom](declarations/substalghom.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [substAlgHom_eq_aeval](declarations/substalghom-eq-aeval.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_substAlgHom](declarations/coe-substalghom.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [subst_self](declarations/subst-self.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [substAlgHom_apply](declarations/substalghom-apply.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [subst_add](declarations/subst-add.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [subst_sub](declarations/subst-sub.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [subst_mul](declarations/subst-mul.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [subst_pow](declarations/subst-pow.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [subst_smul](declarations/subst-smul.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [substAlgHom_coe](declarations/substalghom-coe.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [substAlgHom_X](declarations/substalghom-x.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [substAlgHom_monomial](declarations/substalghom-monomial.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [subst_C](declarations/subst-c.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [subst_X](declarations/subst-x.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [subst_monomial](declarations/subst-monomial.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [continuous_subst](declarations/continuous-subst.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coeff_subst_finite](declarations/coeff-subst-finite.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [coeff_subst](declarations/coeff-subst.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [constantCoeff_subst](declarations/constantcoeff-subst.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [constantCoeff_subst_eq_zero](declarations/constantcoeff-subst-eq-zero.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [map_algebraMap_eq_subst_X](declarations/map-algebramap-eq-subst-x.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_subst](declarations/map-subst.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [subst_zero_eq_C_constantCoeff](declarations/subst-zero-eq-c-constantcoeff.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [subst_zero_of_constantCoeff_zero](declarations/subst-zero-of-constantcoeff-zero.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [HasSubst.cons_subst_zero_left](declarations/hassubst-cons-subst-zero-left.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [HasSubst.cons_subst_zero_right](declarations/hassubst-cons-subst-zero-right.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [comp_substAlgHom](declarations/comp-substalghom.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [comp_subst](declarations/comp-subst.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [comp_subst_apply](declarations/comp-subst-apply.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [eval₂_subst](declarations/eval-subst.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [IsNilpotent_subst](declarations/isnilpotent-subst.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [IsNilpotent_substAlgHom](declarations/isnilpotent-substalghom.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [HasSubst.comp](declarations/hassubst-comp.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [substAlgHom_comp_substAlgHom](declarations/substalghom-comp-substalghom.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [substAlgHom_comp_substAlgHom_apply](declarations/substalghom-comp-substalghom-apply.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [subst_comp_subst](declarations/subst-comp-subst.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [subst_comp_subst_apply](declarations/subst-comp-subst-apply.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [le_weightedOrder_subst](declarations/le-weightedorder-subst.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [le_weightedOrder_subst_of_forall_ne_zero](declarations/le-weightedorder-subst-of-forall-ne-zero.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [le_order_subst](declarations/le-order-subst.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [truncTotal_subst_eq_truncTotal_subst_truncTotal_of_le](declarations/trunctotal-subst-eq-trunctotal-subst-trunctotal-of-le.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [truncTotal_subst_eq_truncTotal_subst_sum](declarations/trunctotal-subst-eq-trunctotal-subst-sum.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [truncTotal_subst_eq_truncTotal_sum_subst](declarations/trunctotal-subst-eq-trunctotal-sum-subst.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [truncTotal_subst_eq_truncTotal_truncTotal_subst](declarations/trunctotal-subst-eq-trunctotal-trunctotal-subst.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [truncTotal_subst_eq_truncTotal_sum_subst_truncTotal_of_le](declarations/trunctotal-subst-eq-trunctotal-sum-subst-trunctotal-of-le.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [truncTotal_subst_of_le](declarations/trunctotal-subst-of-le.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [truncTotal_subst](declarations/trunctotal-subst.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [truncTotal_subst_eq_truncTotal_sum_subst_truncTotal](declarations/trunctotal-subst-eq-trunctotal-sum-subst-trunctotal.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [rescale](declarations/rescale.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [coeff_rescale](declarations/coeff-rescale.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [rescale_zero](declarations/rescale-zero.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [rescale_zero_apply](declarations/rescale-zero-apply.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [rescale_one](declarations/rescale-one.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [rescale_rescale](declarations/rescale-rescale.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [rescale_mul](declarations/rescale-mul.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [rescale_homogeneous_eq_smul](declarations/rescale-homogeneous-eq-smul.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [rescaleMonoidHom](declarations/rescalemonoidhom.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [rescale_eq_subst](declarations/rescale-eq-subst.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [rescaleAlgHom](declarations/rescalealghom.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [rescaleAlgHom_apply](declarations/rescalealghom-apply.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [rescaleAlgHom_mul](declarations/rescalealghom-mul.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [rescaleAlgHom_one](declarations/rescalealghom-one.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [subst_tsum](declarations/subst-tsum.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [summable_subst](declarations/summable-subst.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a567d661e578a5aab921e53295f58522cff781428eea88ca326844dda190b60c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Substitution/Variant16e3c65d32f8de67f49b6b79a867de911d518934e292f278b2ed198e760034ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
