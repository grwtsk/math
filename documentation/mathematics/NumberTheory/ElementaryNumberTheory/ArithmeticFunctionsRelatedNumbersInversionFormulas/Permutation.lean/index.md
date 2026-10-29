# Permutation

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variantecd94cac9fbac11e9b3a5826b884a0b831e1deac593682f1415960b233c0b4c9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc20c4c21a9aa4db811a09489abe21d607fa5065`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Permutation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [conjugate](declarations/conjugate.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [conjugate_apply](declarations/conjugate-apply.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [conjugate_pow](declarations/conjugate-pow.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [transport](declarations/transport.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [transport_apply](declarations/transport-apply.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [transport_pow](declarations/transport-pow.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fixedPoints](declarations/fixedpoints.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [fixedPointCount](declarations/fixedpointcount.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_fixedPoints_iff](declarations/mem-fixedpoints-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [fixedPoints_zero](declarations/fixedpoints-zero.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [fixedPointCount_zero](declarations/fixedpointcount-zero.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [fixedPointCount_le](declarations/fixedpointcount-le.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [fixedPointCount_conjugate](declarations/fixedpointcount-conjugate.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [fixedPointCount_transport](declarations/fixedpointcount-transport.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [fixedPointCount_identity](declarations/fixedpointcount-identity.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [HasExactPeriod](declarations/hasexactperiod.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [hasExactPeriodDecidable](declarations/hasexactperioddecidable.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [exactPeriodPoints](declarations/exactperiodpoints.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [exactPeriodCount](declarations/exactperiodcount.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_exactPeriodPoints_iff](declarations/mem-exactperiodpoints-iff.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exactPeriodPoints_zero](declarations/exactperiodpoints-zero.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exactPeriodCount_zero](declarations/exactperiodcount-zero.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exactPeriodPoints_subset_fixedPoints](declarations/exactperiodpoints-subset-fixedpoints.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isPeriodicPt_iff_pow_apply](declarations/isperiodicpt-iff-pow-apply.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hasExactPeriod_iff_minimalPeriod_eq](declarations/hasexactperiod-iff-minimalperiod-eq.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [exactPeriod_dvd_of_fixed](declarations/exactperiod-dvd-of-fixed.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_fixedPoints_iff_exists_exactPeriod](declarations/mem-fixedpoints-iff-exists-exactperiod.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [exactPeriodPoints_disjoint](declarations/exactperiodpoints-disjoint.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [fixedPoints_eq_biUnion_exactPeriodPoints](declarations/fixedpoints-eq-biunion-exactperiodpoints.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [fixedPointCount_eq_sum_exactPeriodCount](declarations/fixedpointcount-eq-sum-exactperiodcount.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `abbrev` | [ExactPoint](declarations/exactpoint.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hasExactPeriod_apply](declarations/hasexactperiod-apply.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [hasExactPeriod_symm_apply](declarations/hasexactperiod-symm-apply.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [exactPeriodPerm](declarations/exactperiodperm.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [exactPeriodPerm_pow_apply_val](declarations/exactperiodperm-pow-apply-val.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [minimalPeriod_exactPeriodPerm](declarations/minimalperiod-exactperiodperm.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [exactPeriodCount_dvd](declarations/exactperiodcount-dvd.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [cycleCount](declarations/cyclecount.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [cycleCount_zero](declarations/cyclecount-zero.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [exactPeriodCount_eq_mul_cycleCount](declarations/exactperiodcount-eq-mul-cyclecount.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [fixedPointCount_eq_sum_mul_cycleCount](declarations/fixedpointcount-eq-sum-mul-cyclecount.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [hasExactPeriod_conjugate_iff](declarations/hasexactperiod-conjugate-iff.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hasExactPeriod_transport_iff](declarations/hasexactperiod-transport-iff.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [exactPeriodCount_conjugate](declarations/exactperiodcount-conjugate.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [exactPeriodCount_transport](declarations/exactperiodcount-transport.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [cycleCount_conjugate](declarations/cyclecount-conjugate.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [cycleCount_transport](declarations/cyclecount-transport.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [exactPeriodCount_le_card](declarations/exactperiodcount-le-card.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [cycleCount_eq_zero_of_card_lt](declarations/cyclecount-eq-zero-of-card-lt.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [cycleCount_mobius](declarations/cyclecount-mobius.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [cycleEulerFactorData](declarations/cycleeulerfactordata.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [cycleEulerFactorData_apply](declarations/cycleeulerfactordata-apply.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [cycleEulerFactorData_support_subset](declarations/cycleeulerfactordata-support-subset.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [cycleEulerFactorData_conjugate](declarations/cycleeulerfactordata-conjugate.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [cycleEulerFactorData_transport](declarations/cycleeulerfactordata-transport.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec01d7946eec3cc6174ed01f19996e5310961818917b9c484d2339bb948ba877 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Permutation/Variantecd94cac9fbac11e9b3a5826b884a0b831e1deac593682f1415960b233c0b4c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
