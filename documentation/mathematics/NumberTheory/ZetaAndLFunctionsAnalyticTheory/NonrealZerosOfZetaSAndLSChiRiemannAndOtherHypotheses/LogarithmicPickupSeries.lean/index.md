# Logarithmic Pickup Series

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `813d381298ab1415230ce94eb10edf05338aadba`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSeries.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sampleResidue](declarations/sampleresidue.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [logarithmicCell](declarations/logarithmiccell.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [sampleCellMass](declarations/samplecellmass.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [wholePickup_log_eq_sampleResidue](declarations/wholepickup-log-eq-sampleresidue.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sampleResidue_one](declarations/sampleresidue-one.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [closed_prefix_succ](declarations/closed-prefix-succ.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mertensPrefix_nat_succ](declarations/mertensprefix-nat-succ.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sampleResidue_succ_sub](declarations/sampleresidue-succ-sub.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sampleResidue_square_step](declarations/sampleresidue-square-step.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sampleResidue_square_telescope](declarations/sampleresidue-square-telescope.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sampleResidue_increment_abs_le](declarations/sampleresidue-increment-abs-le.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sampleResidue_increment_sq_le](declarations/sampleresidue-increment-sq-le.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sampleResidue_diagonal_le](declarations/sampleresidue-diagonal-le.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sampleResidue_weighted_telescope](declarations/sampleresidue-weighted-telescope.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sampleCellMass_partial_sum](declarations/samplecellmass-partial-sum.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sampleResidue_weighted_diagonal_le](declarations/sampleresidue-weighted-diagonal-le.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [logarithmicCell_measurable](declarations/logarithmiccell-measurable.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [logarithmicCell_floor](declarations/logarithmiccell-floor.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [logarithmicCell_pairwise_disjoint](declarations/logarithmiccell-pairwise-disjoint.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [iUnion_logarithmicCell](declarations/iunion-logarithmiccell.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sampledPickup_eq_on_logarithmicCell](declarations/sampledpickup-eq-on-logarithmiccell.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sampled_integrableOn_logarithmicCell](declarations/sampled-integrableon-logarithmiccell.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integral_exp_neg_mul](declarations/integral-exp-neg-mul.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [integral_sampled_logarithmicCell](declarations/integral-sampled-logarithmiccell.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sampleCellMass_nonneg](declarations/samplecellmass-nonneg.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sampleCellMass_eq_rpow](declarations/samplecellmass-eq-rpow.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sampled_integrable_iff_summable_cellMass](declarations/sampled-integrable-iff-summable-cellmass.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [pickup_integrable_iff_summable_cellMass](declarations/pickup-integrable-iff-summable-cellmass.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [hasSum_sampleCellMass](declarations/hassum-samplecellmass.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [actual_energy_le_cellMass_tsum](declarations/actual-energy-le-cellmass-tsum.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [abscissa_zero_iff_reciprocal_cellMass](declarations/abscissa-zero-iff-reciprocal-cellmass.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [riemannHypothesis_of_reciprocal_cellMass](declarations/riemannhypothesis-of-reciprocal-cellmass.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1834348897812fdba19daee0e8ec014dff04fbe15af80f40e49203ef87ab2cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/LogarithmicPickupSeries.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
