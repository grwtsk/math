# Critical Strip Real Axis Mellin

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fa4ad7768bf7b32bb2748fe300da02c4c9d2e42`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripRealAxisMellin.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [realFractionalKernel](declarations/realfractionalkernel.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [fractionalKernel](declarations/fractionalkernel.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [realFractionalKernel_nonneg](declarations/realfractionalkernel-nonneg.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [realFractionalKernel_le_one](declarations/realfractionalkernel-le-one.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [fractionalKernel_norm_le_one](declarations/fractionalkernel-norm-le-one.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [realFractionalKernel_measurable](declarations/realfractionalkernel-measurable.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [fractionalKernel_measurable](declarations/fractionalkernel-measurable.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [fractionalKernel_locallyIntegrable](declarations/fractionalkernel-locallyintegrable.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [fractionalKernel_isBigO_top](declarations/fractionalkernel-isbigo-top.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [fractionalKernel_isBigO_zero](declarations/fractionalkernel-isbigo-zero.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [fractionalMellin](declarations/fractionalmellin.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [fractionalMellin_convergent](declarations/fractionalmellin-convergent.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [fractionalMellin_differentiableAt](declarations/fractionalmellin-differentiableat.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [fractionalMellin_eq_integral](declarations/fractionalmellin-eq-integral.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [fractionalMellin_integrable](declarations/fractionalmellin-integrable.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [complex_one_sum_Icc](declarations/complex-one-sum-icc.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [zeta_eq_floor_integral](declarations/zeta-eq-floor-integral.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [real_mul_cpow_sub_one](declarations/real-mul-cpow-sub-one.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [floor_integral_eq](declarations/floor-integral-eq.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fractionalPoleModel](declarations/fractionalpolemodel.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [fractionalPoleModel_differentiableAt](declarations/fractionalpolemodel-differentiableat.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [poleNormalized_eq_fractional_of_one_lt](declarations/polenormalized-eq-fractional-of-one-lt.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [poleNormalized_eq_fractional](declarations/polenormalized-eq-fractional.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [fractionalMellin_re_nonneg](declarations/fractionalmellin-re-nonneg.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [real_le_poleNormalized_re](declarations/real-le-polenormalized-re.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [riemannZeta_re_neg_on_real_critical_interval](declarations/riemannzeta-re-neg-on-real-critical-interval.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [nontrivialZetaZero_im_ne_zero](declarations/nontrivialzetazero-im-ne-zero.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [windowRH_zero](declarations/windowrh-zero.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rh_of_all_source_patch_covers](declarations/rh-of-all-source-patch-covers.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=534776d757b8e40ef5b1affefa79bd1c3da59d4edbf7f880aea31e7fcfc9419e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
