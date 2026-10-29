# Quadratic Theta Prime Fejer Shift Correlation Reduction

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d39630a6d426d2110328af98a5034c57a1c33f9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fejerOctaveIndexSet](declarations/fejeroctaveindexset.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [fejerPositiveOffDiagonalPairs](declarations/fejerpositiveoffdiagonalpairs.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [fejerNegativeOffDiagonalPairs](declarations/fejernegativeoffdiagonalpairs.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_fejerPositiveOffDiagonalPairs_iff](declarations/mem-fejerpositiveoffdiagonalpairs-iff.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_fejerNegativeOffDiagonalPairs_iff](declarations/mem-fejernegativeoffdiagonalpairs-iff.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [fejerOffDiagonalPairs_eq_positive_union_negative](declarations/fejeroffdiagonalpairs-eq-positive-union-negative.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [fejerPositiveNegativePairs_disjoint](declarations/fejerpositivenegativepairs-disjoint.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [fejerNegativePositiveSwapEquiv](declarations/fejernegativepositiveswapequiv.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [nonAliasingFejerPositivePairCorrelation](declarations/nonaliasingfejerpositivepaircorrelation.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [nonAliasingFejerNegativePairCorrelation](declarations/nonaliasingfejernegativepaircorrelation.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nonAliasingFejerNegativePairCorrelation_eq_positive](declarations/nonaliasingfejernegativepaircorrelation-eq-positive.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [nonAliasingFejerQuadraticOffDiagonal_eq_offDiag_sum](declarations/nonaliasingfejerquadraticoffdiagonal-eq-offdiag-sum.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nonAliasingFejerQuadraticOffDiagonal_eq_two_mul_positivePairCorrelation](declarations/nonaliasingfejerquadraticoffdiagonal-eq-two-mul-positivepaircorrelation.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [fejerPositiveLagSet](declarations/fejerpositivelagset.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [fejerPositiveLagFiber](declarations/fejerpositivelagfiber.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_fejerPositiveLagFiber_iff](declarations/mem-fejerpositivelagfiber-iff.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fejerPositivePairLag_mapsTo_Icc](declarations/fejerpositivepairlag-mapsto-icc.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [nonAliasingFejerLagCorrelation](declarations/nonaliasingfejerlagcorrelation.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [nonAliasingFejerShiftCorrelation](declarations/nonaliasingfejershiftcorrelation.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fejerPositiveLagFiberEquivIoc](declarations/fejerpositivelagfiberequivioc.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [nonAliasingFejerLagCorrelation_eq_shiftCorrelation](declarations/nonaliasingfejerlagcorrelation-eq-shiftcorrelation.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [nonAliasingFejerShiftCorrelation_eq_weighted_centeredPrimePair](declarations/nonaliasingfejershiftcorrelation-eq-weighted-centeredprimepair.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [nonAliasingFejerPositivePairCorrelation_eq_sum_lagCorrelation](declarations/nonaliasingfejerpositivepaircorrelation-eq-sum-lagcorrelation.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [nonAliasingFejerPositivePairCorrelation_eq_sum_shiftCorrelation](declarations/nonaliasingfejerpositivepaircorrelation-eq-sum-shiftcorrelation.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nonAliasingFejerQuadraticOffDiagonal_eq_two_mul_sum_shiftCorrelation](declarations/nonaliasingfejerquadraticoffdiagonal-eq-two-mul-sum-shiftcorrelation.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fejerPositiveLagSet_card_le](declarations/fejerpositivelagset-card-le.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [SevenEighthsBoundaryMinimalExactShiftCorrelationBound](declarations/seveneighthsboundaryminimalexactshiftcorrelationbound.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [SevenEighthsBoundaryMinimalExactShiftCorrelationAbsoluteBound](declarations/seveneighthsboundaryminimalexactshiftcorrelationabsolutebound.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [SevenEighthsBoundaryMinimalPointwiseShiftSquareRootBound](declarations/seveneighthsboundaryminimalpointwiseshiftsquarerootbound.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [absoluteShiftCorrelationBound_to_exactShiftCorrelationBound](declarations/absoluteshiftcorrelationbound-to-exactshiftcorrelationbound.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pointwiseShiftSquareRootBound_to_exactShiftCorrelationBound](declarations/pointwiseshiftsquarerootbound-to-exactshiftcorrelationbound.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [exactShiftCorrelationBound_to_signedOffDiagonalBound](declarations/exactshiftcorrelationbound-to-signedoffdiagonalbound.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exactShiftCorrelationBound_to_partialDiscrepancy](declarations/exactshiftcorrelationbound-to-partialdiscrepancy.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lagCount_add_pointwiseSquareRootExponent](declarations/lagcount-add-pointwisesquarerootexponent.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [threeHalves_lt_trivialPairCountingExponent](declarations/threehalves-lt-trivialpaircountingexponent.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9ffbc46e2e99a281f8e7b986a4fcbd32c5e53104efa050cc2d54e1dfdb21965 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerShiftCorrelationReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
