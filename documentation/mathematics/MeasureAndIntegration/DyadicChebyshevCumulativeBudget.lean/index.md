# Dyadic Chebyshev Cumulative Budget

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc83bf1f65d66d02e65534c5056b86b00f6a4d1d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/DyadicChebyshevCumulativeBudget.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [chebyshevOctaveMassConstant](declarations/chebyshevoctavemassconstant.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [chebyshevOctaveMassConstant_nonnegative](declarations/chebyshevoctavemassconstant-nonnegative.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [windowMangoldtMass](declarations/windowmangoldtmass.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [windowCoefficientMass](declarations/windowcoefficientmass.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [windowMangoldtMass_nonnegative](declarations/windowmangoldtmass-nonnegative.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [windowCoefficientMass_nonnegative](declarations/windowcoefficientmass-nonnegative.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [windowMangoldtMass_le](declarations/windowmangoldtmass-le.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [windowCoefficientMass_le_constant](declarations/windowcoefficientmass-le-constant.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [action_norm_le_chebyshev](declarations/action-norm-le-chebyshev.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [safeChebyshevActionConstant](declarations/safechebyshevactionconstant.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [safeChebyshevActionConstant_nonnegative](declarations/safechebyshevactionconstant-nonnegative.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [safeChebyshevDyadicEnvelope](declarations/safechebyshevdyadicenvelope.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [safeChebyshevDyadicEnvelope_nonnegative](declarations/safechebyshevdyadicenvelope-nonnegative.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [safeDyadicHalfWeight_eq_dyadicWeight_half](declarations/safedyadichalfweight-eq-dyadicweight-half.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [safeDyadicBlock_norm_le_chebyshevEnvelope](declarations/safedyadicblock-norm-le-chebyshevenvelope.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [safePlusDyadicBlock_norm_le_chebyshev](declarations/safeplusdyadicblock-norm-le-chebyshev.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [safeMinusDyadicBlock_norm_le_chebyshev](declarations/safeminusdyadicblock-norm-le-chebyshev.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [safeCenterDyadicBlock_norm_le_chebyshev](declarations/safecenterdyadicblock-norm-le-chebyshev.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [safeEvenDyadicBlock_norm_le_chebyshev](declarations/safeevendyadicblock-norm-le-chebyshev.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [safeOddDyadicBlock_norm_le_chebyshev](declarations/safeodddyadicblock-norm-le-chebyshev.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [safeEvenDefectDyadicBlock_norm_le_chebyshev](declarations/safeevendefectdyadicblock-norm-le-chebyshev.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [safeQuarticDyadicPackingValue_le_of_envelope](declarations/safequarticdyadicpackingvalue-le-of-envelope.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [safeChebyshevEnvelopePairProduct](declarations/safechebyshevenvelopepairproduct.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [safeQuarticDyadicPackingValue_le_chebyshevPair](declarations/safequarticdyadicpackingvalue-le-chebyshevpair.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dyadicWeight_half_antitone](declarations/dyadicweight-half-antitone.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [safeChebyshevDyadicEnvelope_antitone](declarations/safechebyshevdyadicenvelope-antitone.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dyadicWeight_half_pow_four](declarations/dyadicweight-half-pow-four.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [safeChebyshevPairMajorant](declarations/safechebyshevpairmajorant.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [safeChebyshevPairProduct_le_majorant](declarations/safechebyshevpairproduct-le-majorant.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [safeChebyshevPairMajorant_summable](declarations/safechebyshevpairmajorant-summable.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [safeChebyshevQuarticMajorant](declarations/safechebyshevquarticmajorant.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [safeChebyshevQuarticMajorant_summable](declarations/safechebyshevquarticmajorant-summable.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [safeQuarticDyadicPackingValue_le_chebyshevMajorant](declarations/safequarticdyadicpackingvalue-le-chebyshevmajorant.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [safeQuarticDyadicPackingValue_summable](declarations/safequarticdyadicpackingvalue-summable.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [safeQuarticDyadicTotalBudget](declarations/safequarticdyadictotalbudget.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [safeQuarticDyadicTotalBudget_nonnegative](declarations/safequarticdyadictotalbudget-nonnegative.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [safeQuarticDyadicPartial_le_totalBudget](declarations/safequarticdyadicpartial-le-totalbudget.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a61fa3aceab49a63cabe6b13a156d41d62d04449006172eba5fdbe15ffa2805 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
