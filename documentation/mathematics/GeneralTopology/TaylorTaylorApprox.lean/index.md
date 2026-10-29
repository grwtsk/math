# Taylor Taylor Approx

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `feca7dade96cdc55e024c788dd77b2c78a3eec8d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/TaylorTaylorApprox.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [TaylorApprox](declarations/taylorapprox.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [evalPoly](declarations/evalpoly.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [DerivBound](declarations/derivbound.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [uniqueDiffWithinAt_Icc_left](declarations/uniquediffwithinat-icc-left.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [uniqueDiffWithinAt_Icc_right](declarations/uniquediffwithinat-icc-right.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [derivWithin_Icc_left_eq_deriv](declarations/derivwithin-icc-left-eq-deriv.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [derivWithin_Icc_right_eq_deriv](declarations/derivwithin-icc-right-eq-deriv.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [iteratedDerivWithin_Icc_interior_eq](declarations/iteratedderivwithin-icc-interior-eq.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [iteratedDerivWithin_Icc_left_eq_iteratedDeriv](declarations/iteratedderivwithin-icc-left-eq-iteratedderiv.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [iteratedDerivWithin_Icc_left_eq_iteratedDeriv_of_isOpen](declarations/iteratedderivwithin-icc-left-eq-iteratedderiv-of-isopen.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [taylor_remainder_bound_on_c_lt_x](declarations/taylor-remainder-bound-on-c-lt-x.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [iteratedDeriv_translate_of_contDiffOn](declarations/iteratedderiv-translate-of-contdiffon.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [iteratedDeriv_reflect_of_contDiffOn](declarations/iteratedderiv-reflect-of-contdiffon.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [taylor_remainder_bound_on_x_lt_c](declarations/taylor-remainder-bound-on-x-lt-c.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [taylor_remainder_bound_on](declarations/taylor-remainder-bound-on.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [iteratedDeriv_reflect](declarations/iteratedderiv-reflect.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [neg_one_pow_mul_self](declarations/neg-one-pow-mul-self.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [taylor_remainder_bound_c_lt_x](declarations/taylor-remainder-bound-c-lt-x.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [taylor_remainder_bound_x_lt_c](declarations/taylor-remainder-bound-x-lt-c.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [taylor_remainder_bound](declarations/taylor-remainder-bound.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [expTaylorCoeff](declarations/exptaylorcoeff.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [sinTaylorCoeff](declarations/sintaylorcoeff.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [cosTaylorCoeff](declarations/costaylorcoeff.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [exp_deriv_bound](declarations/exp-deriv-bound.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sin_cos_deriv_bound](declarations/sin-cos-deriv-bound.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cosh_le_exp_abs](declarations/cosh-le-exp-abs.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [abs_sinh_le_cosh](declarations/abs-sinh-le-cosh.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sinh_cosh_deriv_bound](declarations/sinh-cosh-deriv-bound.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [iteratedDeriv_log](declarations/iteratedderiv-log.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44e1fc80fddd4e8180f26418e5c46bddba70e484802562380acc5771609fc80e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant3f4a39d39dc3a128184ba7770ab83b24ffe6d5123dcf40b9d64610972d0dc7d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
