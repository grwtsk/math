# Integral Representation Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5acbc2ea0489dab0c3527605f737ba783a708bb5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/IntegralRepresentationNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rpowIntegrand₀₁](declarations/rpowintegrand.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [rpowIntegrand₀₁_zero_right](declarations/rpowintegrand-zero-right.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [rpowIntegrand₀₁_zero_left](declarations/rpowintegrand-zero-left.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [rpowIntegrand₀₁_nonneg](declarations/rpowintegrand-nonneg.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [rpowIntegrand₀₁_eq_pow_div](declarations/rpowintegrand-eq-pow-div.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [rpowIntegrand₀₁_eqOn_pow_div](declarations/rpowintegrand-eqon-pow-div.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [rpowIntegrand₀₁_apply_mul](declarations/rpowintegrand-apply-mul-source-edition-2.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [rpowIntegrand₀₁_apply_mul'](declarations/rpowintegrand-apply-mul.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [rpowIntegrand₀₁_apply_mul_eqOn_Ici](declarations/rpowintegrand-apply-mul-eqon-ici.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [continuousOn_rpowIntegrand₀₁](declarations/continuouson-rpowintegrand.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [aestronglyMeasurable_rpowIntegrand₀₁](declarations/aestronglymeasurable-rpowintegrand.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [rpowIntegrand₀₁_le_rpow_sub_two_mul_self](declarations/rpowintegrand-le-rpow-sub-two-mul-self.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [rpowIntegrand₀₁_le_rpow_sub_one](declarations/rpowintegrand-le-rpow-sub-one.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [rpowIntegrand₀₁_one_ge_rpow_sub_two](declarations/rpowintegrand-one-ge-rpow-sub-two.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioc](declarations/integrableon-rpowintegrand-ioc.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioi_one](declarations/integrableon-rpowintegrand-ioi-one.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioi](declarations/integrableon-rpowintegrand-ioi.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ici](declarations/integrableon-rpowintegrand-ici.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [integral_rpowIntegrand₀₁_eq_rpow_mul_const](declarations/integral-rpowintegrand-eq-rpow-mul-const.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [le_integral_rpowIntegrand₀₁_one](declarations/le-integral-rpowintegrand-one.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [integral_rpowIntegrand₀₁_one_pos](declarations/integral-rpowintegrand-one-pos.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [rpow_eq_const_mul_integral](declarations/rpow-eq-const-mul-integral.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [exists_measure_rpow_eq_integral](declarations/exists-measure-rpow-eq-integral.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e3f4412a0500cb836733135460c921058f03cfb56acec012dacce3ff05d735b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaafe5c220f11c2f6dec9ce10b4084d11cd0bc9f681d5645a5e5682594816e68c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
