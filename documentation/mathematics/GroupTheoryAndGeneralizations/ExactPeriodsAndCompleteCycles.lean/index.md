# Exact Periods And Complete Cycles

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `802c13e5788a5bbadabeb4d0a63ebf17625e3cf2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/ExactPeriodsAndCompleteCycles.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasExactPeriod](declarations/hasexactperiod.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [hasExactPeriodDecidable](declarations/hasexactperioddecidable.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [exactPeriodPoints](declarations/exactperiodpoints.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [exactPeriodCount](declarations/exactperiodcount.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_exactPeriodPoints_iff](declarations/mem-exactperiodpoints-iff.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [exactPeriodPoints_zero](declarations/exactperiodpoints-zero.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exactPeriodCount_zero](declarations/exactperiodcount-zero.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [exactPeriodPoints_subset_fixedPoints](declarations/exactperiodpoints-subset-fixedpoints.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isPeriodicPt_iff_pow_apply](declarations/isperiodicpt-iff-pow-apply.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [hasExactPeriod_iff_minimalPeriod_eq](declarations/hasexactperiod-iff-minimalperiod-eq.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [exactPeriod_dvd_of_fixed](declarations/exactperiod-dvd-of-fixed.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_fixedPoints_iff_exists_exactPeriod](declarations/mem-fixedpoints-iff-exists-exactperiod.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [exactPeriodPoints_disjoint](declarations/exactperiodpoints-disjoint.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [fixedPoints_eq_biUnion_exactPeriodPoints](declarations/fixedpoints-eq-biunion-exactperiodpoints.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [fixedPointCount_eq_sum_exactPeriodCount](declarations/fixedpointcount-eq-sum-exactperiodcount.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [ExactPoint](declarations/exactpoint.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hasExactPeriod_apply](declarations/hasexactperiod-apply.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [hasExactPeriod_symm_apply](declarations/hasexactperiod-symm-apply.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [exactPeriodPerm](declarations/exactperiodperm.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exactPeriodPerm_apply_val](declarations/exactperiodperm-apply-val.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exactPeriodPerm_pow_apply_val](declarations/exactperiodperm-pow-apply-val.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [minimalPeriod_exactPeriodPerm](declarations/minimalperiod-exactperiodperm.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exactPeriodCount_dvd](declarations/exactperiodcount-dvd.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [cycleCount](declarations/cyclecount.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cycleCount_zero](declarations/cyclecount-zero.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [exactPeriodCount_eq_mul_cycleCount](declarations/exactperiodcount-eq-mul-cyclecount.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [fixedPointCount_eq_sum_mul_cycleCount](declarations/fixedpointcount-eq-sum-mul-cyclecount.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=372e4dfcfe3ae430e34363d8545f589361c7afbca4b7f5c9ea2c3a3623388507 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ExactPeriodsAndCompleteCycles.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
