# Permutation Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a06f25b10cce3c8305f6bd655dc7457000874341`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/PermutationNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [xorTranslation](declarations/xortranslation.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [xorTranslation_apply](declarations/xortranslation-apply.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [xorTranslation_symm_apply](declarations/xortranslation-symm-apply.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Round](declarations/round.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Round.toEquiv](declarations/round-toequiv.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Round.run](declarations/round-run.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Round.run_apply](declarations/round-run-apply.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Round.run_bijective](declarations/round-run-bijective.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Round.inverse](declarations/round-inverse.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Round.inverse_run](declarations/round-inverse-run.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Round.run_inverse](declarations/round-run-inverse.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [composeRounds](declarations/composerounds.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [runRounds](declarations/runrounds.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [composeRounds_nil](declarations/composerounds-nil.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [composeRounds_cons](declarations/composerounds-cons.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [runRounds_nil](declarations/runrounds-nil.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [runRounds_cons](declarations/runrounds-cons.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [runRounds_bijective](declarations/runrounds-bijective.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [identityRound](declarations/identityround.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [identityRound_run](declarations/identityround-run.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [identityRound_sacScore](declarations/identityround-sacscore.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [identityRound_varianceScore](declarations/identityround-variancescore.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_bijective_round_with_zero_avalanche](declarations/exists-bijective-round-with-zero-avalanche.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [coordinatePermutation](declarations/coordinatepermutation.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coordinatePermutation_apply](declarations/coordinatepermutation-apply.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coordinatePermutation_xor](declarations/coordinatepermutation-xor.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [hammingWeight_coordinatePermutation](declarations/hammingweight-coordinatepermutation.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coordinatePermutation_derivative](declarations/coordinatepermutation-derivative.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coordinatePermutation_basisBit](declarations/coordinatepermutation-basisbit.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coordinatePermutation_bitDerivative](declarations/coordinatepermutation-bitderivative.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coordinatePermutation_sacCount](declarations/coordinatepermutation-saccount.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coordinatePermutation_sacEntry](declarations/coordinatepermutation-sacentry.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coordinatePermutation_sacScore](declarations/coordinatepermutation-sacscore.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coordinatePermutation_varianceScore](declarations/coordinatepermutation-variancescore.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [XorLinearEquiv](declarations/xorlinearequiv.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [XorLinearEquiv.ofCoordinatePermutation](declarations/xorlinearequiv-ofcoordinatepermutation.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [XorLinearEquiv.map_zero](declarations/xorlinearequiv-map-zero.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [activities](declarations/activities.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [activities_nonempty](declarations/activities-nonempty.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [branchNumber](declarations/branchnumber.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [branchNumber_zero](declarations/branchnumber-zero.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [branchNumber_le_activity](declarations/branchnumber-le-activity.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hammingWeight_basisBit](declarations/hammingweight-basisbit.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [two_le_branchNumber](declarations/two-le-branchnumber.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [branchNumber_coordinatePermutation](declarations/branchnumber-coordinatepermutation.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [addCorrection](declarations/addcorrection.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [identity_add_identity_correction](declarations/identity-add-identity-correction.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [identity_add_identity_not_injective](declarations/identity-add-identity-not-injective.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [state_dependent_correction_can_destroy_bijectivity](declarations/state-dependent-correction-can-destroy-bijectivity.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [constant_translation_preserves_bijectivity](declarations/constant-translation-preserves-bijectivity.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `structure` | [TwoStepComplex](declarations/twostepcomplex.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [TwoStepComplex.Closed₁](declarations/twostepcomplex-closed.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [TwoStepComplex.Exact₁](declarations/twostepcomplex-exact.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [TwoStepComplex.H1Trivial](declarations/twostepcomplex-h1trivial.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [identityZeroComplex](declarations/identityzerocomplex.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [identityZeroComplex_h1Trivial](declarations/identityzerocomplex-h1trivial.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [EndMap](declarations/endmap.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [zeroEndMap](declarations/zeroendmap.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [endMapComplex](declarations/endmapcomplex.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [identityCorrection_closed](declarations/identitycorrection-closed.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [identityCorrection_exact](declarations/identitycorrection-exact.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [trivial_H1_does_not_preserve_bijectivity](declarations/trivial-h1-does-not-preserve-bijectivity.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [not_injective_of_square_zero](declarations/not-injective-of-square-zero.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [not_bijective_of_square_zero](declarations/not-bijective-of-square-zero.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a54633fed8c311ebb17285bfb70216cf34dea8c611cca9ae3876d7e5bac4444d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
