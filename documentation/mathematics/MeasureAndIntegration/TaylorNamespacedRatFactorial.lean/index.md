# Taylor Namespaced Rat Factorial

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**98 observed declarations and anonymous commands**, 58 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5d77910a9e93a11e86c3302ea1599c8aaba4194`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/TaylorNamespacedRatFactorial.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ratFactorial](declarations/ratfactorial.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [pow](declarations/pow.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [absInterval](declarations/absinterval.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [maxAbs](declarations/maxabs.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [evalTaylorSeries](declarations/evaltaylorseries.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [expTaylorCoeffsAux](declarations/exptaylorcoeffsaux.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [expTaylorCoeffs](declarations/exptaylorcoeffs.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [ratFactorial_succ](declarations/ratfactorial-succ.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [map_range_succ](declarations/map-range-succ.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [expTaylorCoeffsAux_eq_range](declarations/exptaylorcoeffsaux-eq-range.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [expTaylorCoeffs_eq_range_map](declarations/exptaylorcoeffs-eq-range-map.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [expRemainderBoundComputable](declarations/expremainderboundcomputable.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [expPointComputableRaw](declarations/exppointcomputableraw.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [expReduceK](declarations/expreducek.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [expPointComputable](declarations/exppointcomputable.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [hull](declarations/hull.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_hull_left](declarations/mem-hull-left.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_hull_right](declarations/mem-hull-right.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [expComputable](declarations/expcomputable.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [sinTaylorCoeffs](declarations/sintaylorcoeffs.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [sinRemainderBoundComputable](declarations/sinremainderboundcomputable.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [sinComputable](declarations/sincomputable.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [cosTaylorCoeffs](declarations/costaylorcoeffs.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [cosRemainderBoundComputable](declarations/cosremainderboundcomputable.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [cosComputable](declarations/coscomputable.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [sinhPointComputable](declarations/sinhpointcomputable.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [coshPointComputable](declarations/coshpointcomputable.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coshPointComputable_lo_ge_one](declarations/coshpointcomputable-lo-ge-one.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [sinhComputable](declarations/sinhcomputable.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [coshComputable](declarations/coshcomputable.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_pow](declarations/mem-pow.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [abs_le_maxAbs](declarations/abs-le-maxabs.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [abs_le_mem_symmetric_interval](declarations/abs-le-mem-symmetric-interval.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [domain_from_abs_bound](declarations/domain-from-abs-bound.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [domain_from_mem](declarations/domain-from-mem.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [remainder_to_interval](declarations/remainder-to-interval.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [exp_bound_by_pow3](declarations/exp-bound-by-pow3.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [iteratedDeriv_exp_zero](declarations/iteratedderiv-exp-zero.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [polySumFrom](declarations/polysumfrom.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [hornerVal](declarations/hornerval.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [hornerVal_mul_pow_eq_polySumFrom](declarations/hornerval-mul-pow-eq-polysumfrom.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [hornerVal_eq_polySumFrom](declarations/hornerval-eq-polysumfrom.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [mem_horner_foldr](declarations/mem-horner-foldr.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mem_evalTaylorSeries](declarations/mem-evaltaylorseries.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [list_map_sum_eq_finset_sum](declarations/list-map-sum-eq-finset-sum.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [zipIdx_range_map](declarations/zipidx-range-map.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [mem_evalTaylorSeries_exp](declarations/mem-evaltaylorseries-exp.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [iteratedDeriv_sin](declarations/iteratedderiv-sin.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [iteratedDeriv_sin_zero](declarations/iteratedderiv-sin-zero.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mem_evalTaylorSeries_sin](declarations/mem-evaltaylorseries-sin.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [iteratedDeriv_cos](declarations/iteratedderiv-cos.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [iteratedDeriv_cos_zero](declarations/iteratedderiv-cos-zero.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mem_evalTaylorSeries_cos](declarations/mem-evaltaylorseries-cos.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [exp_taylor_remainder_in_interval](declarations/exp-taylor-remainder-in-interval.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [sin_taylor_remainder_in_interval](declarations/sin-taylor-remainder-in-interval.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [cos_taylor_remainder_in_interval](declarations/cos-taylor-remainder-in-interval.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mem_expPointComputableRaw](declarations/mem-exppointcomputableraw.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [mem_expPointComputable](declarations/mem-exppointcomputable.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [mem_expComputable](declarations/mem-expcomputable.md) | 1030 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mem_sinComputable](declarations/mem-sincomputable.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mem_cosComputable](declarations/mem-coscomputable.md) | 1125 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mem_sinhPointComputable](declarations/mem-sinhpointcomputable.md) | 1157 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mem_coshPointComputable](declarations/mem-coshpointcomputable.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [mem_sinhComputable](declarations/mem-sinhcomputable.md) | 1216 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [mem_coshComputable](declarations/mem-coshcomputable.md) | 1244 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [atanhTaylorCoeffs](declarations/atanhtaylorcoeffs.md) | 1332 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [atanhRemainderBoundComputable](declarations/atanhremainderboundcomputable.md) | 1339 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [atanhPointComputable](declarations/atanhpointcomputable.md) | 1357 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Real.atanh_hasSum'](declarations/real-atanh-hassum.md) | 1370 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mem_evalTaylorSeries_atanh](declarations/mem-evaltaylorseries-atanh.md) | 1384 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [atanh_taylor_remainder_in_interval](declarations/atanh-taylor-remainder-in-interval.md) | 1391 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mem_atanhPointComputable](declarations/mem-atanhpointcomputable.md) | 1662 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [ln2Computable](declarations/ln2computable.md) | 1700 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [mem_ln2Computable](declarations/mem-ln2computable.md) | 1706 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [logReductionExponent](declarations/logreductionexponent.md) | 1733 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [logReduceMantissa](declarations/logreducemantissa.md) | 1741 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [logPointComputable](declarations/logpointcomputable.md) | 1747 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [logComputable](declarations/logcomputable.md) | 1763 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [logReductionExponent_eq](declarations/logreductionexponent-eq.md) | 1773 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [logReduceMantissa_eq](declarations/logreducemantissa-eq.md) | 1778 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mem_logPointComputable](declarations/mem-logpointcomputable.md) | 1784 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [mem_logComputable](declarations/mem-logcomputable.md) | 1849 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [mem_logComputable'](declarations/mem-logcomputable-source-edition-2.md) | 1876 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [two_div_sqrt_pi](declarations/two-div-sqrt-pi.md) | 1884 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [erfTaylorCoeffs](declarations/erftaylorcoeffs.md) | 1893 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [erfRemainderBoundComputable](declarations/erfremainderboundcomputable.md) | 1911 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [erfPointComputable](declarations/erfpointcomputable.md) | 1933 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [erfComputable](declarations/erfcomputable.md) | 1963 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [two_div_sqrt_pi_mem](declarations/two-div-sqrt-pi-mem.md) | 1979 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [erfInner](declarations/erfinner.md) | 2021 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [erf_eq_factor_mul_inner](declarations/erf-eq-factor-mul-inner.md) | 2024 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [erfInner_deriv](declarations/erfinner-deriv.md) | 2032 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [contDiff_exp_neg_sq](declarations/contdiff-exp-neg-sq.md) | 2040 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [analyticAt_exp_neg_sq](declarations/analyticat-exp-neg-sq.md) | 2044 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [analyticOnNhd_exp_neg_sq](declarations/analyticonnhd-exp-neg-sq.md) | 2050 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [erfInner_contDiff_nat](declarations/erfinner-contdiff-nat.md) | 2054 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [atanhComputable](declarations/atanhcomputable.md) | 2080 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [mem_atanhComputable](declarations/mem-atanhcomputable.md) | 2091 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ded6fc7aa242920807b2d62fbb0a1790f0db488e98cc13617979d3f7722f0965 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Varianta3087abea809e169bf2918a5e5b333746ff6e6d81dbc51c342a110a7e5a9f021.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
