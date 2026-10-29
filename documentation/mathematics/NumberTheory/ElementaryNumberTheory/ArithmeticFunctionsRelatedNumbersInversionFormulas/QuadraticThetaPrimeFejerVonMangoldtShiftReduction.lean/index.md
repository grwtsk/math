# Quadratic Theta Prime Fejer Von Mangoldt Shift Reduction

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0157897853716e8630663f1f070cd3050ee87d5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [centeredVonMangoldtAtom](declarations/centeredvonmangoldtatom.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [higherPrimePowerCorrectionAtom](declarations/higherprimepowercorrectionatom.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [higherPrimePowerCorrectionAtom_eq_if_not_prime](declarations/higherprimepowercorrectionatom-eq-if-not-prime.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [higherPrimePowerCorrectionAtom_nonnegative](declarations/higherprimepowercorrectionatom-nonnegative.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [higherPrimePowerCorrectionAtom_le_vonMangoldt](declarations/higherprimepowercorrectionatom-le-vonmangoldt.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [higherPrimePowerCorrectionAtom_le_log](declarations/higherprimepowercorrectionatom-le-log.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [higherPrimePowerCorrectionAtom_eq_zero_of_prime](declarations/higherprimepowercorrectionatom-eq-zero-of-prime.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [primeDiscrepancyAtom_eq_centeredVonMangoldt_sub_correction](declarations/primediscrepancyatom-eq-centeredvonmangoldt-sub-correction.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [nonAliasingFejerWeightedVonMangoldtAtom](declarations/nonaliasingfejerweightedvonmangoldtatom.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [nonAliasingFejerWeightedPrimePowerCorrection](declarations/nonaliasingfejerweightedprimepowercorrection.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nonAliasingFejerWeightedPrimeAtom_eq_vonMangoldt_sub_correction](declarations/nonaliasingfejerweightedprimeatom-eq-vonmangoldt-sub-correction.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [nonAliasingFejerWeightedPrimePowerCorrection_nonnegative](declarations/nonaliasingfejerweightedprimepowercorrection-nonnegative.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nonAliasingFejerWeightedPrimePowerCorrection_le_raw](declarations/nonaliasingfejerweightedprimepowercorrection-le-raw.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nonAliasingFejerWeightedVonMangoldtAtom_abs_le](declarations/nonaliasingfejerweightedvonmangoldtatom-abs-le.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nonAliasingFejerWeightedPrimePowerCorrection_le_envelope](declarations/nonaliasingfejerweightedprimepowercorrection-le-envelope.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [fejerHigherPrimePowerCorrectionMass](declarations/fejerhigherprimepowercorrectionmass.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fejerHigherPrimePowerCorrectionMass_nonnegative](declarations/fejerhigherprimepowercorrectionmass-nonnegative.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [fejerHigherPrimePowerCorrectionMass_eq_nonprime_vonMangoldt](declarations/fejerhigherprimepowercorrectionmass-eq-nonprime-vonmangoldt.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fejerHigherPrimePowerCorrectionMass_le_psi_sub_theta](declarations/fejerhigherprimepowercorrectionmass-le-psi-sub-theta.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exists_fejerHigherPrimePowerCorrectionMass_rpow_bound](declarations/exists-fejerhigherprimepowercorrectionmass-rpow-bound.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [fejerWeightedPrimePowerCorrectionMass](declarations/fejerweightedprimepowercorrectionmass.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [fejerWeightedPrimePowerCorrectionMass_le_raw](declarations/fejerweightedprimepowercorrectionmass-le-raw.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [fejerPositiveOffDiagonalPairs_subset_product](declarations/fejerpositiveoffdiagonalpairs-subset-product.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sum_product_snd_eq_card_mul_sum](declarations/sum-product-snd-eq-card-mul-sum.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sum_product_fst_eq_card_mul_sum](declarations/sum-product-fst-eq-card-mul-sum.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [positivePairs_snd_weightedCorrection_sum_le](declarations/positivepairs-snd-weightedcorrection-sum-le.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [positivePairs_fst_weightedCorrection_sum_le](declarations/positivepairs-fst-weightedcorrection-sum-le.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [nonAliasingFejerPositiveVonMangoldtPairCorrelation](declarations/nonaliasingfejerpositivevonmangoldtpaircorrelation.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [nonAliasingFejerPositiveVonMangoldtRightCorrection](declarations/nonaliasingfejerpositivevonmangoldtrightcorrection.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [nonAliasingFejerPositiveCorrectionLeftVonMangoldt](declarations/nonaliasingfejerpositivecorrectionleftvonmangoldt.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [nonAliasingFejerPositiveCorrectionPairCorrelation](declarations/nonaliasingfejerpositivecorrectionpaircorrelation.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [nonAliasingFejerPositivePrimePowerRemainder](declarations/nonaliasingfejerpositiveprimepowerremainder.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [nonAliasingFejerPositivePairCorrelation_eq_vonMangoldt_add_remainder](declarations/nonaliasingfejerpositivepaircorrelation-eq-vonmangoldt-add-remainder.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [nonAliasingFejerVonMangoldtLagCorrelation](declarations/nonaliasingfejervonmangoldtlagcorrelation.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [nonAliasingFejerVonMangoldtShiftCorrelation](declarations/nonaliasingfejervonmangoldtshiftcorrelation.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [nonAliasingFejerVonMangoldtLagCorrelation_eq_shiftCorrelation](declarations/nonaliasingfejervonmangoldtlagcorrelation-eq-shiftcorrelation.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [nonAliasingFejerPositiveVonMangoldtPairCorrelation_eq_sum_lagCorrelation](declarations/nonaliasingfejerpositivevonmangoldtpaircorrelation-eq-sum-lagcorrelation.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [nonAliasingFejerPositiveVonMangoldtPairCorrelation_eq_sum_shiftCorrelation](declarations/nonaliasingfejerpositivevonmangoldtpaircorrelation-eq-sum-shiftcorrelati.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [sum_primeShiftCorrelation_eq_sum_vonMangoldtShift_add_remainder](declarations/sum-primeshiftcorrelation-eq-sum-vonmangoldtshift-add-remainder.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [positiveVonMangoldtRightCorrection_abs_le](declarations/positivevonmangoldtrightcorrection-abs-le.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [positiveCorrectionLeftVonMangoldt_abs_le](declarations/positivecorrectionleftvonmangoldt-abs-le.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [positiveCorrectionPairCorrelation_abs_le](declarations/positivecorrectionpaircorrelation-abs-le.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [nonAliasingFejerPositivePrimePowerRemainder_abs_le](declarations/nonaliasingfejerpositiveprimepowerremainder-abs-le.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [SevenEighthsBoundaryMinimalPrimePowerRemainderBound](declarations/seveneighthsboundaryminimalprimepowerremainderbound.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [sevenEighthsBoundaryMinimalPrimePowerRemainderBound](declarations/seveneighthsboundaryminimalprimepowerremainderbound-source-edition-2.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [SevenEighthsBoundaryMinimalVonMangoldtShiftCorrelationBound](declarations/seveneighthsboundaryminimalvonmangoldtshiftcorrelationbound.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [vonMangoldtShiftCorrelationBound_to_exactShiftCorrelationBound](declarations/vonmangoldtshiftcorrelationbound-to-exactshiftcorrelationbound.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [vonMangoldtShiftCorrelationBound_to_partialDiscrepancy](declarations/vonmangoldtshiftcorrelationbound-to-partialdiscrepancy.md) | 1122 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29577516cfe2553d8ffdb750a859076432603ed1619300b7e8ede99c7a983ea9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
