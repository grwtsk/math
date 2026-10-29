# Dynamical Zeta Namespaced Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant6fb23e5e40763f58a33bf62eb6df43b637f8fe09463383eed974669a9228c35f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03886f4abadc49af6c26ce34eee5e994683807da`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasExactPeriod](declarations/hasexactperiod.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [hasExactPeriodDecidable](declarations/hasexactperioddecidable.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [exactPeriodPoints](declarations/exactperiodpoints.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [exactPeriodCount](declarations/exactperiodcount.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_exactPeriodPoints_iff](declarations/mem-exactperiodpoints-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [exactPeriodPoints_zero](declarations/exactperiodpoints-zero.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exactPeriodCount_zero](declarations/exactperiodcount-zero.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [exactPeriodPoints_subset_fixedPoints](declarations/exactperiodpoints-subset-fixedpoints.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isPeriodicPt_iff_pow_apply](declarations/isperiodicpt-iff-pow-apply.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [hasExactPeriod_iff_minimalPeriod_eq](declarations/hasexactperiod-iff-minimalperiod-eq.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [exactPeriod_dvd_of_fixed](declarations/exactperiod-dvd-of-fixed.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_fixedPoints_iff_exists_exactPeriod](declarations/mem-fixedpoints-iff-exists-exactperiod.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [exactPeriodPoints_disjoint](declarations/exactperiodpoints-disjoint.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [fixedPoints_eq_biUnion_exactPeriodPoints](declarations/fixedpoints-eq-biunion-exactperiodpoints.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [fixedPointCount_eq_sum_exactPeriodCount](declarations/fixedpointcount-eq-sum-exactperiodcount.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [ExactPoint](declarations/exactpoint.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hasExactPeriod_apply](declarations/hasexactperiod-apply.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [hasExactPeriod_symm_apply](declarations/hasexactperiod-symm-apply.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [exactPeriodPerm](declarations/exactperiodperm.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exactPeriodPerm_apply_val](declarations/exactperiodperm-apply-val.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exactPeriodPerm_pow_apply_val](declarations/exactperiodperm-pow-apply-val.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [minimalPeriod_exactPeriodPerm](declarations/minimalperiod-exactperiodperm.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exactPeriodCount_dvd](declarations/exactperiodcount-dvd.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [cycleCount](declarations/cyclecount.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cycleCount_zero](declarations/cyclecount-zero.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [exactPeriodCount_eq_mul_cycleCount](declarations/exactperiodcount-eq-mul-cyclecount.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [fixedPointCount_eq_sum_mul_cycleCount](declarations/fixedpointcount-eq-sum-mul-cyclecount.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [hasExactPeriod_conjugate_iff](declarations/hasexactperiod-conjugate-iff.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [exactPeriodCount_conjugate](declarations/exactperiodcount-conjugate.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [cycleCount_conjugate](declarations/cyclecount-conjugate.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [exactPeriodCount_le_stateCard](declarations/exactperiodcount-le-statecard.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cycleCount_eq_zero_of_card_lt](declarations/cyclecount-eq-zero-of-card-lt.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [cycleCount_mobius](declarations/cyclecount-mobius.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [cycleEulerFactorData](declarations/cycleeulerfactordata.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [cycleEulerFactorData_apply](declarations/cycleeulerfactordata-apply.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [cycleEulerFactorData_support_subset](declarations/cycleeulerfactordata-support-subset.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [cycleEulerFactorData_conjugate](declarations/cycleeulerfactordata-conjugate.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [firstSecondSwap](declarations/firstsecondswap.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [firstSecondSwap_ne_one](declarations/firstsecondswap-ne-one.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [coordinate_firstSecondSwap_ne_one](declarations/coordinate-firstsecondswap-ne-one.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [exists_nontrivial_bitPerm_with_zero_avalanche](declarations/exists-nontrivial-bitperm-with-zero-avalanche.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [cycleEulerFactorData_ne_identity_of_ne](declarations/cycleeulerfactordata-ne-identity-of-ne.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [exists_nontrivial_cycle_data_with_zero_avalanche](declarations/exists-nontrivial-cycle-data-with-zero-avalanche.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [fixedPointCount_eq_generic](declarations/fixedpointcount-eq-generic.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [hasExactPeriod_iff_generic](declarations/hasexactperiod-iff-generic.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [exactPeriodCount_eq_generic](declarations/exactperiodcount-eq-generic.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [cycleCount_eq_generic](declarations/cyclecount-eq-generic.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [cycleEulerFactorData_apply_eq_generic](declarations/cycleeulerfactordata-apply-eq-generic.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a09c42a493c7863923c2c37da15e52c1daeae73f9f26143631595f749372e3e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant6fb23e5e40763f58a33bf62eb6df43b637f8fe09463383eed974669a9228c35f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
