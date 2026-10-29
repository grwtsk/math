# Finite Cumulant Prefix Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f4246f65869281ae397818cd305ad1ff084e4d1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteCumulantPrefixEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [firstDirectionalCumulant](declarations/firstdirectionalcumulant.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [secondDirectionalCumulant](declarations/seconddirectionalcumulant.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [thirdDirectionalCumulant](declarations/thirddirectionalcumulant.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [fourthDirectionalCumulant](declarations/fourthdirectionalcumulant.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [finiteCumulantPrefix4](declarations/finitecumulantprefix4.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [finiteCumulantPrefix4_zero](declarations/finitecumulantprefix4-zero.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [finiteCumulantPrefix4_one](declarations/finitecumulantprefix4-one.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [finiteCumulantPrefix4_two](declarations/finitecumulantprefix4-two.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [finiteCumulantPrefix4_three](declarations/finitecumulantprefix4-three.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [finiteCumulantPrefix4_four](declarations/finitecumulantprefix4-four.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [finiteCumulantPrefix4_five](declarations/finitecumulantprefix4-five.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [firstDirectionalCumulant_eq_centroid](declarations/firstdirectionalcumulant-eq-centroid.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [secondDirectionalCumulant_eq_covariance](declarations/seconddirectionalcumulant-eq-covariance.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [thirdDirectionalCumulant_eq_operator](declarations/thirddirectionalcumulant-eq-operator.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [fourthDirectionalCumulant_eq_covector](declarations/fourthdirectionalcumulant-eq-covector.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [firstDirectionalCumulant_eq_fderiv_logPartition](declarations/firstdirectionalcumulant-eq-fderiv-logpartition.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [secondDirectionalCumulant_eq_fderiv_logPartition](declarations/seconddirectionalcumulant-eq-fderiv-logpartition.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [thirdDirectionalCumulant_eq_fderiv_logPartition](declarations/thirddirectionalcumulant-eq-fderiv-logpartition.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fourthDirectionalCumulant_eq_fderiv_logPartition](declarations/fourthdirectionalcumulant-eq-fderiv-logpartition.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [blockCumulantValue_finiteCumulantPrefix4](declarations/blockcumulantvalue-finitecumulantprefix4.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [MatchesFiniteCumulantPrefix4](declarations/matchesfinitecumulantprefix4.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [finiteCumulantPrefix4_matches](declarations/finitecumulantprefix4-matches.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [MatchesFiniteCumulantPrefix4.order1_eq_fderiv](declarations/matchesfinitecumulantprefix4-order1-eq-fderiv.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [MatchesFiniteCumulantPrefix4.order2_eq_fderiv](declarations/matchesfinitecumulantprefix4-order2-eq-fderiv.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [MatchesFiniteCumulantPrefix4.order3_eq_fderiv](declarations/matchesfinitecumulantprefix4-order3-eq-fderiv.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [MatchesFiniteCumulantPrefix4.order4_eq_fderiv](declarations/matchesfinitecumulantprefix4-order4-eq-fderiv.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12a62b6096326f9540cadcffa1fb08e7c03b8170c3a7aca3423b32ac22be3fe4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteCumulantPrefix/Variant4563a9c7c907c8fdf3a72f0f2f2d6fb6bc322b98f0f3d4937da5416d89aeef03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
