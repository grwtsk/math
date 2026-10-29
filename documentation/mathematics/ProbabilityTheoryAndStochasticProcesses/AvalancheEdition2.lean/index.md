# Avalanche Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**99 observed declarations and anonymous commands**, 72 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantf29df68a5f17030bad9f9e003bfff91a1a4c2e6d5973eb6fd1a4075b908967dc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c38b8f794c2018a4bc6c55e3fb5214c32de20cd4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/AvalancheEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [zeroBits](declarations/zerobits.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [xorBits](declarations/xorbits.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [basisBit](declarations/basisbit.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [flipBit](declarations/flipbit.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [xorBits_zero_right](declarations/xorbits-zero-right.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [xorBits_zero_left](declarations/xorbits-zero-left.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [xorBits_self](declarations/xorbits-self.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [xorBits_comm](declarations/xorbits-comm.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [xorBits_assoc](declarations/xorbits-assoc.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [xorBits_cancel_right](declarations/xorbits-cancel-right.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [xorBits_eq_zero_iff](declarations/xorbits-eq-zero-iff.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [xorBits_cancel_self_right](declarations/xorbits-cancel-self-right.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [flipBit_apply_same](declarations/flipbit-apply-same.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [flipBit_apply_ne](declarations/flipbit-apply-ne.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [flipBit_involutive](declarations/flipbit-involutive.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [basisBit_ne_zero](declarations/basisbit-ne-zero.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [xorBits_ne_self_of_ne_zero](declarations/xorbits-ne-self-of-ne-zero.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [flipBit_ne](declarations/flipbit-ne.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [derivative](declarations/derivative.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [bitDerivative](declarations/bitderivative.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [derivativeBit](declarations/derivativebit.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [localJacobian](declarations/localjacobian.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [derivative_shift](declarations/derivative-shift.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [bitDerivative_flipBit](declarations/bitderivative-flipbit.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [jacobianQuantizer](declarations/jacobianquantizer.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [jacobianQuantizer_encode](declarations/jacobianquantizer-encode.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [differentialCount](declarations/differentialcount.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [differentialProbability](declarations/differentialprobability.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [sacCount](declarations/saccount.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [sacEntry](declarations/sacentry.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [StrictSAC](declarations/strictsac.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [card_bits](declarations/card-bits.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [differentialCount_sum](declarations/differentialcount-sum.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [differentialCount_eq_full_iff](declarations/differentialcount-eq-full-iff.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [differentialProbability_eq_one_iff](declarations/differentialprobability-eq-one-iff.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_true_of_ne_zero](declarations/exists-true-of-ne-zero.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [filter_card_even_of_xor_invariant](declarations/filter-card-even-of-xor-invariant.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [differentialCount_even](declarations/differentialcount-even.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [derivative_ne_zero_of_injective](declarations/derivative-ne-zero-of-injective.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [differentialCount_zero_of_injective](declarations/differentialcount-zero-of-injective.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [sacCount_even](declarations/saccount-even.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [not_strictSAC_one](declarations/not-strictsac-one.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [sacCount_le](declarations/saccount-le.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [sacEntry_nonneg](declarations/sacentry-nonneg.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [sacEntry_le_one](declarations/sacentry-le-one.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [strictSAC_iff_sacEntry_eq_half](declarations/strictsac-iff-sacentry-eq-half.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [abs_two_mul_sub_one_le_one](declarations/abs-two-mul-sub-one-le-one.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [four_mul_variance_nonneg](declarations/four-mul-variance-nonneg.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [four_mul_variance_le_one](declarations/four-mul-variance-le-one.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [four_mul_variance_eq_one_iff](declarations/four-mul-variance-eq-one-iff.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [sacScore](declarations/sacscore.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [varianceScore](declarations/variancescore.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [bias_sum_nonneg](declarations/bias-sum-nonneg.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [bias_sum_le](declarations/bias-sum-le.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [variance_sum_nonneg](declarations/variance-sum-nonneg.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [variance_sum_le](declarations/variance-sum-le.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [sacScore_nonneg](declarations/sacscore-nonneg.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [sacScore_le_one](declarations/sacscore-le-one.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [sacScore_eq_one_iff](declarations/sacscore-eq-one-iff.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [varianceScore_nonneg](declarations/variancescore-nonneg.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [varianceScore_le_one](declarations/variancescore-le-one.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [varianceScore_eq_one_iff](declarations/variancescore-eq-one-iff.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [hammingWeight](declarations/hammingweight.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [hammingWeight_le](declarations/hammingweight-le.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [hammingWeight_eq_zero_iff](declarations/hammingweight-eq-zero-iff.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [bitsSupportEquiv](declarations/bitssupportequiv.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [card_hammingWeight_eq](declarations/card-hammingweight-eq.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [propagationWeight](declarations/propagationweight.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [propagationCount](declarations/propagationcount.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [propagationMass](declarations/propagationmass.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [propagationCount_eq_zero_of_gt](declarations/propagationcount-eq-zero-of-gt.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [propagationCount_sum](declarations/propagationcount-sum.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [propagationMass_sum](declarations/propagationmass-sum.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [propagation_first_moment_count](declarations/propagation-first-moment-count.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [propagation_first_moment_mass](declarations/propagation-first-moment-mass.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [propagationCount_zero_of_injective](declarations/propagationcount-zero-of-injective.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [propagationMass_zero_of_injective](declarations/propagationmass-zero-of-injective.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [functionWeightMass](declarations/functionweightmass.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [permutationWeightMass](declarations/permutationweightmass.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [functionWeightMass_sum](declarations/functionweightmass-sum.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [permutationWeightMass_zero](declarations/permutationweightmass-zero.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [permutationWeightMass_sum](declarations/permutationweightmass-sum.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [permutationWeightMass_eq_conditioned](declarations/permutationweightmass-eq-conditioned.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [permutationMarginal](declarations/permutationmarginal.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [permutationMarginal_sub_half](declarations/permutationmarginal-sub-half.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [identity_bijective](declarations/identity-bijective.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [identity_bitDerivative](declarations/identity-bitderivative.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [identity_sacCount](declarations/identity-saccount.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [identity_sacEntry](declarations/identity-sacentry.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [identity_sacScore](declarations/identity-sacscore.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [identity_varianceScore](declarations/identity-variancescore.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [exists_bijective_with_zero_avalanche_scores](declarations/exists-bijective-with-zero-avalanche-scores.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [identity_localJacobian](declarations/identity-localjacobian.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [identity_localJacobian_const](declarations/identity-localjacobian-const.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [identity_jacobian_effectiveStates_eq_singleton](declarations/identity-jacobian-effectivestates-eq-singleton.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [identity_jacobian_effectiveStates_card](declarations/identity-jacobian-effectivestates-card.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [signBit](declarations/signbit.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [correlationNumerator](declarations/correlationnumerator.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [signCorrelation](declarations/signcorrelation.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f992b6630707681ba4009b01dcb942dab03e4c573fe8a367096ab84a7a358ee5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Avalanche/Variantf29df68a5f17030bad9f9e003bfff91a1a4c2e6d5973eb6fd1a4075b908967dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
