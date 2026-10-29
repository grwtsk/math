# Integral Representation

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfb5d261991388600339b7871a14fd954559d6cb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/IntegralRepresentation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rpowIntegrand₀₁](declarations/rpowintegrand.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [rpowIntegrand₀₁_zero_right](declarations/rpowintegrand-zero-right.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [rpowIntegrand₀₁_zero_left](declarations/rpowintegrand-zero-left.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [rpowIntegrand₀₁_nonneg](declarations/rpowintegrand-nonneg.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [rpowIntegrand₀₁_eq_pow_div](declarations/rpowintegrand-eq-pow-div.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [rpowIntegrand₀₁_eqOn_pow_div](declarations/rpowintegrand-eqon-pow-div.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [rpowIntegrand₀₁_apply_mul](declarations/rpowintegrand-apply-mul-source-edition-2.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [rpowIntegrand₀₁_apply_mul'](declarations/rpowintegrand-apply-mul.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [rpowIntegrand₀₁_apply_mul_eqOn_Ici](declarations/rpowintegrand-apply-mul-eqon-ici.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [continuousOn_rpowIntegrand₀₁](declarations/continuouson-rpowintegrand.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [aestronglyMeasurable_rpowIntegrand₀₁](declarations/aestronglymeasurable-rpowintegrand.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [rpowIntegrand₀₁_le_rpow_sub_two_mul_self](declarations/rpowintegrand-le-rpow-sub-two-mul-self.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [rpowIntegrand₀₁_le_rpow_sub_one](declarations/rpowintegrand-le-rpow-sub-one.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [rpowIntegrand₀₁_one_ge_rpow_sub_two](declarations/rpowintegrand-one-ge-rpow-sub-two.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioc](declarations/integrableon-rpowintegrand-ioc.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioi_one](declarations/integrableon-rpowintegrand-ioi-one.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioi](declarations/integrableon-rpowintegrand-ioi.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ici](declarations/integrableon-rpowintegrand-ici.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [integral_rpowIntegrand₀₁_eq_rpow_mul_const](declarations/integral-rpowintegrand-eq-rpow-mul-const.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [le_integral_rpowIntegrand₀₁_one](declarations/le-integral-rpowintegrand-one.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [integral_rpowIntegrand₀₁_one_pos](declarations/integral-rpowintegrand-one-pos.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [rpow_eq_const_mul_integral](declarations/rpow-eq-const-mul-integral.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [exists_measure_rpow_eq_integral](declarations/exists-measure-rpow-eq-integral.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f88d1994279357f39be95f941d04f6e2ff6f029723dee76b9181988a148e472 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantc3a37710a1fd59e7981cebe35a04b0c5e410ccd397165f82f956d0a3b48718d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
