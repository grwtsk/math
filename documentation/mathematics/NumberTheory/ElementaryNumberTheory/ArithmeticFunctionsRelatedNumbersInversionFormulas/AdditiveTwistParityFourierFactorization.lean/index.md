# Additive Twist Parity Fourier Factorization

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46716fe8e3f0bd6d453ac48399e2e84a36ed168b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/AdditiveTwistParityFourierFactorization.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [endpointParitySet](declarations/endpointparityset.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [endpointParityStrictPairSet](declarations/endpointparitystrictpairset.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [parityOnePointMobiusFourierTerm](declarations/parityonepointmobiusfourierterm.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [parityOnePointMobiusFourierSum](declarations/parityonepointmobiusfouriersum.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [parityOnePointMobiusFourierDiagonal](declarations/parityonepointmobiusfourierdiagonal.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [parityOnePointMobiusFourierPairSum](declarations/parityonepointmobiusfourierpairsum.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [finiteSquare_eq_diagonal_add_twice_strictPairs](declarations/finitesquare-eq-diagonal-add-twice-strictpairs.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [parityPairSum_eq_half_square_sub_diagonal](declarations/paritypairsum-eq-half-square-sub-diagonal.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [midpoint_eq_halves_add_parity](declarations/midpoint-eq-halves-add-parity.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [midpointAdditivePhase_eq_parityProduct](declarations/midpointadditivephase-eq-parityproduct.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [parityMidpointPairTwist](declarations/paritymidpointpairtwist.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [parityMidpointPairTwist_eq_phase_mul_pairSum](declarations/paritymidpointpairtwist-eq-phase-mul-pairsum.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [two_mul_parityMidpointPairTwist_eq_square_sub_diagonal](declarations/two-mul-paritymidpointpairtwist-eq-square-sub-diagonal.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [endpointSameParityStrictPairSet](declarations/endpointsameparitystrictpairset.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [endpointPairAdditiveTwist](declarations/endpointpairadditivetwist.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [additiveTwistedEndpointCrossCorrelation_eq_endpointPairs](declarations/additivetwistedendpointcrosscorrelation-eq-endpointpairs.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [endpointPairAdditiveTwist_eq_even_add_odd](declarations/endpointpairadditivetwist-eq-even-add-odd.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [two_mul_additiveTwistedEndpointCrossCorrelation_eq_parityFourier](declarations/two-mul-additivetwistedendpointcrosscorrelation-eq-parityfourier.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [parityFourierQuadraticMajorant](declarations/parityfourierquadraticmajorant.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [norm_additiveTwistedEndpointCrossCorrelation_le_parityFourierMajorant](declarations/norm-additivetwistedendpointcrosscorrelation-le-parityfouriermajorant.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [parityFourierEndpointMajorant](declarations/parityfourierendpointmajorant.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [DyadicNaturalScaleParityFourierQuadraticBudget](declarations/dyadicnaturalscaleparityfourierquadraticbudget.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [naturalScaleSquareModulusCongruenceL1_of_parityFourierQuadraticBudget](declarations/naturalscalesquaremoduluscongruencel1-of-parityfourierquadraticbudget.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=940506d2f897f8daa7b7d69285aab808a13a8a1ffa90449270086e942359707c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
