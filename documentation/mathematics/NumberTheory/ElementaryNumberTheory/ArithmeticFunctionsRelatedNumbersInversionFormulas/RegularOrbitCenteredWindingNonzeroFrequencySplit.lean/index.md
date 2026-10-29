# Regular Orbit Centered Winding Nonzero Frequency Split

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c30d36a1bc7da9d347ba2f01ba03c5d622f708b9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [parityHalfIndexCenteredPairMass](declarations/parityhalfindexcenteredpairmass.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sum_parityHalfIndexCenteredResidueFiberZMod](declarations/sum-parityhalfindexcenteredresiduefiberzmod.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [parityHalfIndexCenteredResidueFourier_zero](declarations/parityhalfindexcenteredresiduefourier-zero.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [parityHalfIndexCenteredNonzeroFrequencyEnergy](declarations/parityhalfindexcenterednonzerofrequencyenergy.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [parityHalfIndexCenteredZeroModeEnergy](declarations/parityhalfindexcenteredzeromodeenergy.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [parityHalfIndexCenteredNonzeroFrequencyEnergy_nonneg](declarations/parityhalfindexcenterednonzerofrequencyenergy-nonneg.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [parityHalfIndexCenteredZeroModeEnergy_nonneg](declarations/parityhalfindexcenteredzeromodeenergy-nonneg.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [parityHalfIndexCenteredZeroModeEnergy_eq_pairMassSquare](declarations/parityhalfindexcenteredzeromodeenergy-eq-pairmasssquare.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [normalized_centeredFullFrequencyEnergy_eq_zeroMode_add_nonzero](declarations/normalized-centeredfullfrequencyenergy-eq-zeromode-add-nonzero.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [parityHalfIndexCenteredZeroModeCorrection](declarations/parityhalfindexcenteredzeromodecorrection.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [parityCenteredWindingNonzeroFrequencySplit](declarations/paritycenteredwindingnonzerofrequencysplit.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [parityCenteredWindingNonzeroFrequencySplit_eq_fullFrequency](declarations/paritycenteredwindingnonzerofrequencysplit-eq-fullfrequency.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [parityCenteredWindingNonzeroFrequencySplit_eq_wrap](declarations/paritycenteredwindingnonzerofrequencysplit-eq-wrap.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [parityHalfIndexSignedQuarticWrap_eq_nonzeroFrequency_add_zeroModeCorrection](declarations/parityhalfindexsignedquarticwrap-eq-nonzerofrequency-add-zeromodecorrect.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [parityEvenHalfShiftSignedResidueNonzeroFrequencyEnergy](declarations/parityevenhalfshiftsignedresiduenonzerofrequencyenergy.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [parityOddHalfShiftSignedResidueNonzeroFrequencyEnergy](declarations/parityoddhalfshiftsignedresiduenonzerofrequencyenergy.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [parityEvenCenteredWindingZeroModeCorrection](declarations/parityevencenteredwindingzeromodecorrection.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [parityOddCenteredWindingZeroModeCorrection](declarations/parityoddcenteredwindingzeromodecorrection.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [parityEvenHalfShiftSignedResidueFourier_zero_eq_two_mul_pairMass](declarations/parityevenhalfshiftsignedresiduefourier-zero-eq-two-mul-pairmass.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [parityOddHalfShiftSignedResidueFourier_zero_eq_two_mul_pairMass](declarations/parityoddhalfshiftsignedresiduefourier-zero-eq-two-mul-pairmass.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [parityEvenHalfShiftSignedResidueNonzeroFrequencyEnergy_eq_centered](declarations/parityevenhalfshiftsignedresiduenonzerofrequencyenergy-eq-centered.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [parityOddHalfShiftSignedResidueNonzeroFrequencyEnergy_eq_centered](declarations/parityoddhalfshiftsignedresiduenonzerofrequencyenergy-eq-centered.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [parityEvenCenteredWindingZeroModeCorrection_eq_centered](declarations/parityevencenteredwindingzeromodecorrection-eq-centered.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [parityOddCenteredWindingZeroModeCorrection_eq_centered](declarations/parityoddcenteredwindingzeromodecorrection-eq-centered.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [parityEvenCenteredWindingNonzeroFrequencySplit](declarations/parityevencenteredwindingnonzerofrequencysplit.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [parityOddCenteredWindingNonzeroFrequencySplit](declarations/parityoddcenteredwindingnonzerofrequencysplit.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [parityEvenCenteredWindingNonzeroFrequencySplit_eq_wrap](declarations/parityevencenteredwindingnonzerofrequencysplit-eq-wrap.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [parityOddCenteredWindingNonzeroFrequencySplit_eq_wrap](declarations/parityoddcenteredwindingnonzerofrequencysplit-eq-wrap.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [regularCenteredWindingNonzeroFrequencySplitAtModulus](declarations/regularcenteredwindingnonzerofrequencysplitatmodulus.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [regularCenteredWindingNonzeroFrequencySplitAtModulus_eq_residue](declarations/regularcenteredwindingnonzerofrequencysplitatmodulus-eq-residue.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [regularCenteredWindingNonzeroFrequencySplitAtModulus_eq_fullFrequency](declarations/regularcenteredwindingnonzerofrequencysplitatmodulus-eq-fullfrequency.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [regularCenteredWindingNonzeroFrequencySplitEndpoint](declarations/regularcenteredwindingnonzerofrequencysplitendpoint.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [regularCenteredWindingNonzeroFrequencySplitEndpoint_eq_fullFrequency](declarations/regularcenteredwindingnonzerofrequencysplitendpoint-eq-fullfrequency.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [regularCenteredWindingNonzeroFrequencySplitEndpoint_eq_residue](declarations/regularcenteredwindingnonzerofrequencysplitendpoint-eq-residue.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [RegularCenteredWindingNonzeroFrequencySplitEnvelope](declarations/regularcenteredwindingnonzerofrequencysplitenvelope.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [regularCenteredWindingNonzeroFrequencySplitEnvelope_iff_fullFrequency](declarations/regularcenteredwindingnonzerofrequencysplitenvelope-iff-fullfrequency.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [regularCenteredWindingNonzeroFrequencySplitEnvelope_iff_residue](declarations/regularcenteredwindingnonzerofrequencysplitenvelope-iff-residue.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [RegularCenteredWindingNonzeroFrequencySplitSourceData](declarations/regularcenteredwindingnonzerofrequencysplitsourcedata.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [RegularCenteredWindingNonzeroFrequencySplitSource](declarations/regularcenteredwindingnonzerofrequencysplitsource.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a338fa3e2506363be22317a44ef7d12997a5790214be58478d4184d105cbf9b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
