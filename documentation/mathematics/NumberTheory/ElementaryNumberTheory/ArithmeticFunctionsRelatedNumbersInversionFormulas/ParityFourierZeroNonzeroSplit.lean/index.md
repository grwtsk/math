# Parity Fourier Zero Nonzero Split

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94e323e1acfbe7953960e1f507636a8d486aa8f4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ParityFourierZeroNonzeroSplit.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [parityMertensPrefix](declarations/paritymertensprefix.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [paritySquarefreeDiagonal](declarations/paritysquarefreediagonal.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [parityOnePointMobiusFourierSum_zero](declarations/parityonepointmobiusfouriersum-zero.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [parityOnePointMobiusFourierDiagonal_zero](declarations/parityonepointmobiusfourierdiagonal-zero.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [parityFourierZeroModeQuadraticMajorant](declarations/parityfourierzeromodequadraticmajorant.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [parityFourierQuadraticMajorant_zero](declarations/parityfourierquadraticmajorant-zero.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [nonzeroSquareModulusFrequencySet](declarations/nonzerosquaremodulusfrequencyset.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [parityFourierZeroModeEndpointMajorant](declarations/parityfourierzeromodeendpointmajorant.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [parityFourierNonzeroFrequencyEndpointMajorant](declarations/parityfouriernonzerofrequencyendpointmajorant.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [parityFourierEndpointMajorant_eq_zero_add_nonzero](declarations/parityfourierendpointmajorant-eq-zero-add-nonzero.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [effectiveSquareModulusReciprocalMass](declarations/effectivesquaremodulusreciprocalmass.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [effectiveSquareModulusReciprocalMass_le_two](declarations/effectivesquaremodulusreciprocalmass-le-two.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [paritySquarefreeDiagonal_nonneg](declarations/paritysquarefreediagonal-nonneg.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [paritySquarefreeDiagonal_le_endpoint](declarations/paritysquarefreediagonal-le-endpoint.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ordinaryMertensPrefix](declarations/ordinarymertensprefix.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ordinaryMertensPrefix_eq_even_add_odd](declarations/ordinarymertensprefix-eq-even-add-odd.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [DyadicParityMertensSquareRootEnergy](declarations/dyadicparitymertenssquarerootenergy.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [DyadicOrdinaryMertensSquareRootEnergy](declarations/dyadicordinarymertenssquarerootenergy.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ordinaryMertensSquareRootEnergy_of_parity](declarations/ordinarymertenssquarerootenergy-of-parity.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [DyadicNaturalScaleZeroModeParityFourierBudget](declarations/dyadicnaturalscalezeromodeparityfourierbudget.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [DyadicNaturalScaleNonzeroParityFourierBudget](declarations/dyadicnaturalscalenonzeroparityfourierbudget.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [zeroModeParityFourierBudget_of_parityMertensSquareRootEnergy](declarations/zeromodeparityfourierbudget-of-paritymertenssquarerootenergy.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [parityFourierQuadraticBudget_of_zero_and_nonzero](declarations/parityfourierquadraticbudget-of-zero-and-nonzero.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [naturalScaleCongruenceL1_of_zero_and_nonzero](declarations/naturalscalecongruencel1-of-zero-and-nonzero.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [naturalScaleCongruenceL1_of_parityMertens_and_nonzero](declarations/naturalscalecongruencel1-of-paritymertens-and-nonzero.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fa0b4c53ab97ccc960da432b4ecfbdcf158117a49e8d31a073a0819c1e5097e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/ParityFourierZeroNonzeroSplit.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
