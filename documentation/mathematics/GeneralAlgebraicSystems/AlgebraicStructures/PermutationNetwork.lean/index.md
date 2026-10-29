# Permutation Network

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15e69c19cc6fc5ac33d59fcbfa154ba4a659158b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/PermutationNetwork.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [xorTranslation](declarations/xortranslation.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [xorTranslation_apply](declarations/xortranslation-apply.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [xorTranslation_symm_apply](declarations/xortranslation-symm-apply.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Round](declarations/round.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Round.toEquiv](declarations/round-toequiv.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Round.run](declarations/round-run.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Round.run_apply](declarations/round-run-apply.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Round.run_bijective](declarations/round-run-bijective.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Round.inverse](declarations/round-inverse.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Round.inverse_run](declarations/round-inverse-run.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Round.run_inverse](declarations/round-run-inverse.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [composeRounds](declarations/composerounds.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [runRounds](declarations/runrounds.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [composeRounds_nil](declarations/composerounds-nil.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [composeRounds_cons](declarations/composerounds-cons.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [runRounds_nil](declarations/runrounds-nil.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [runRounds_cons](declarations/runrounds-cons.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [runRounds_bijective](declarations/runrounds-bijective.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [identityRound](declarations/identityround.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [identityRound_run](declarations/identityround-run.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [identityRound_sacScore](declarations/identityround-sacscore.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [identityRound_varianceScore](declarations/identityround-variancescore.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_bijective_round_with_zero_avalanche](declarations/exists-bijective-round-with-zero-avalanche.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [coordinatePermutation](declarations/coordinatepermutation.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coordinatePermutation_apply](declarations/coordinatepermutation-apply.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coordinatePermutation_xor](declarations/coordinatepermutation-xor.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [hammingWeight_coordinatePermutation](declarations/hammingweight-coordinatepermutation.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coordinatePermutation_derivative](declarations/coordinatepermutation-derivative.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coordinatePermutation_basisBit](declarations/coordinatepermutation-basisbit.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coordinatePermutation_bitDerivative](declarations/coordinatepermutation-bitderivative.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coordinatePermutation_sacCount](declarations/coordinatepermutation-saccount.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coordinatePermutation_sacEntry](declarations/coordinatepermutation-sacentry.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coordinatePermutation_sacScore](declarations/coordinatepermutation-sacscore.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coordinatePermutation_varianceScore](declarations/coordinatepermutation-variancescore.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [XorLinearEquiv](declarations/xorlinearequiv.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [XorLinearEquiv.ofCoordinatePermutation](declarations/xorlinearequiv-ofcoordinatepermutation.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [XorLinearEquiv.map_zero](declarations/xorlinearequiv-map-zero.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [activities](declarations/activities.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [activities_nonempty](declarations/activities-nonempty.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [branchNumber](declarations/branchnumber.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [branchNumber_zero](declarations/branchnumber-zero.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [branchNumber_le_activity](declarations/branchnumber-le-activity.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hammingWeight_basisBit](declarations/hammingweight-basisbit.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [two_le_branchNumber](declarations/two-le-branchnumber.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [branchNumber_coordinatePermutation](declarations/branchnumber-coordinatepermutation.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [addCorrection](declarations/addcorrection.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [identity_add_identity_correction](declarations/identity-add-identity-correction.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [identity_add_identity_not_injective](declarations/identity-add-identity-not-injective.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [state_dependent_correction_can_destroy_bijectivity](declarations/state-dependent-correction-can-destroy-bijectivity.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [constant_translation_preserves_bijectivity](declarations/constant-translation-preserves-bijectivity.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `structure` | [TwoStepComplex](declarations/twostepcomplex.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [TwoStepComplex.Closed₁](declarations/twostepcomplex-closed.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [TwoStepComplex.Exact₁](declarations/twostepcomplex-exact.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [TwoStepComplex.H1Trivial](declarations/twostepcomplex-h1trivial.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [identityZeroComplex](declarations/identityzerocomplex.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [identityZeroComplex_h1Trivial](declarations/identityzerocomplex-h1trivial.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [EndMap](declarations/endmap.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [zeroEndMap](declarations/zeroendmap.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [endMapComplex](declarations/endmapcomplex.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [identityCorrection_closed](declarations/identitycorrection-closed.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [identityCorrection_exact](declarations/identitycorrection-exact.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [trivial_H1_does_not_preserve_bijectivity](declarations/trivial-h1-does-not-preserve-bijectivity.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [not_injective_of_square_zero](declarations/not-injective-of-square-zero.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [not_bijective_of_square_zero](declarations/not-bijective-of-square-zero.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f466f55fbef3db561302d20ce0c2c2f5b40aa8c50362260ac232d3af1e622f34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PermutationNetwork/Variantf80166be745fca59df8ab98ac278c30804e4793eac98a3af1314e6cacf252d70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
