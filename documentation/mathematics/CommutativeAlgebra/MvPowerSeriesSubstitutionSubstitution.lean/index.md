# Mv Power Series Substitution Substitution

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**60 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9c1ee3571c97a9a25cb8e672dfa90e896aee55d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitution.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [HasSubst](declarations/hassubst.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [coeff_zero_iff](declarations/coeff-zero-iff.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [hasSubst_iff_hasEval_of_discreteTopology](declarations/hassubst-iff-haseval-of-discretetopology.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [HasSubst.hasEval](declarations/hassubst-haseval.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [HasSubst.zero](declarations/hassubst-zero.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HasSubst.add](declarations/hassubst-add.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [HasSubst.mul_left](declarations/hassubst-mul-left.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [HasSubst.mul_right](declarations/hassubst-mul-right.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [HasSubst.smul](declarations/hassubst-smul.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [HasSubst.X](declarations/hassubst-x.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasSubst.smul_X](declarations/hassubst-smul-x.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [hasSubstIdeal](declarations/hassubstideal.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [hasSubst_of_constantCoeff_nilpotent](declarations/hassubst-of-constantcoeff-nilpotent.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [hasSubst_of_constantCoeff_zero](declarations/hassubst-of-constantcoeff-zero.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [subst](declarations/subst.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [subst_eq_eval₂](declarations/subst-eq-eval.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [subst_coe](declarations/subst-coe.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [substAlgHom](declarations/substalghom.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [substAlgHom_eq_aeval](declarations/substalghom-eq-aeval.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_substAlgHom](declarations/coe-substalghom.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [subst_self](declarations/subst-self.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [substAlgHom_apply](declarations/substalghom-apply.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [subst_add](declarations/subst-add.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [subst_mul](declarations/subst-mul.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [subst_pow](declarations/subst-pow.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [subst_smul](declarations/subst-smul.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [substAlgHom_coe](declarations/substalghom-coe.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [substAlgHom_X](declarations/substalghom-x.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [substAlgHom_monomial](declarations/substalghom-monomial.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [subst_X](declarations/subst-x.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [subst_monomial](declarations/subst-monomial.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [continuous_subst](declarations/continuous-subst.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coeff_subst_finite](declarations/coeff-subst-finite.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coeff_subst](declarations/coeff-subst.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [constantCoeff_subst](declarations/constantcoeff-subst.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [map_algebraMap_eq_subst_X](declarations/map-algebramap-eq-subst-x.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [comp_substAlgHom](declarations/comp-substalghom.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [comp_subst](declarations/comp-subst.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [comp_subst_apply](declarations/comp-subst-apply.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [eval₂_subst](declarations/eval-subst.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [IsNilpotent_subst](declarations/isnilpotent-subst.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [HasSubst.comp](declarations/hassubst-comp.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [substAlgHom_comp_substAlgHom](declarations/substalghom-comp-substalghom.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [substAlgHom_comp_substAlgHom_apply](declarations/substalghom-comp-substalghom-apply.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [subst_comp_subst](declarations/subst-comp-subst.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [subst_comp_subst_apply](declarations/subst-comp-subst-apply.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [rescale](declarations/rescale.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coeff_rescale](declarations/coeff-rescale.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [rescale_zero](declarations/rescale-zero.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [rescale_zero_apply](declarations/rescale-zero-apply.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [rescale_one](declarations/rescale-one.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [rescale_rescale](declarations/rescale-rescale.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [rescale_mul](declarations/rescale-mul.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [rescale_homogeneous_eq_smul](declarations/rescale-homogeneous-eq-smul.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [rescaleMonoidHom](declarations/rescalemonoidhom.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [rescale_eq_subst](declarations/rescale-eq-subst.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [rescaleAlgHom](declarations/rescalealghom.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [rescaleAlgHom_apply](declarations/rescalealghom-apply.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [rescaleAlgHom_mul](declarations/rescalealghom-mul.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [rescaleAlgHom_one](declarations/rescalealghom-one.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebb3a0a9778f6227e4444c0d0658c9296224a6af770cf7cc806af0b1ed745534 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
