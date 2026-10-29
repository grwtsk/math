# Quadratic Theta Prime Fejer Mobius Log Congruence Reduction

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `581428da0f5a73c37fad0f70fe5c3138e7c241b1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mobiusReal](declarations/mobiusreal.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mobiusLogDivisorTerm](declarations/mobiuslogdivisorterm.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [centeredMobiusLogIndexSet](declarations/centeredmobiuslogindexset.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [centeredMobiusLogTerm](declarations/centeredmobiuslogterm.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [none_mem_centeredMobiusLogIndexSet](declarations/none-mem-centeredmobiuslogindexset.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [some_mem_centeredMobiusLogIndexSet_iff](declarations/some-mem-centeredmobiuslogindexset-iff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [centeredMobiusLogTerm_none](declarations/centeredmobiuslogterm-none.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [centeredMobiusLogTerm_some](declarations/centeredmobiuslogterm-some.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [centeredMobiusLogIndexSum](declarations/centeredmobiuslogindexsum.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [centeredMobiusLogIndexSum_eq_raw](declarations/centeredmobiuslogindexsum-eq-raw.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [vonMangoldt_eq_mobiusLogDivisorSum](declarations/vonmangoldt-eq-mobiuslogdivisorsum.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [centeredVonMangoldtAtom_eq_centeredMobiusLogIndexSum](declarations/centeredvonmangoldtatom-eq-centeredmobiuslogindexsum.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [nonAliasingFejerWeightedCenteredMobiusLogAtom](declarations/nonaliasingfejerweightedcenteredmobiuslogatom.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nonAliasingFejerWeightedCenteredMobiusLogAtom_eq_vonMangoldt](declarations/nonaliasingfejerweightedcenteredmobiuslogatom-eq-vonmangoldt.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ShiftDivisorCongruence](declarations/shiftdivisorcongruence.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [gcd_dvd_shift_of_shiftDivisorCongruence](declarations/gcd-dvd-shift-of-shiftdivisorcongruence.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fst_dvd_of_mem_divisorsAntidiagonal](declarations/fst-dvd-of-mem-divisorsantidiagonal.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [CenteredMobiusLogPairCompatible](declarations/centeredmobiuslogpaircompatible.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [centeredMobiusLogPairCompatible_none_left](declarations/centeredmobiuslogpaircompatible-none-left.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [centeredMobiusLogPairCompatible_none_right](declarations/centeredmobiuslogpaircompatible-none-right.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [centeredMobiusLogPairCompatible_some_some](declarations/centeredmobiuslogpaircompatible-some-some.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [centeredMobiusLogIndexPair_compatible](declarations/centeredmobiuslogindexpair-compatible.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [centeredMobiusLogCompatiblePairIndexSet](declarations/centeredmobiuslogcompatiblepairindexset.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_centeredMobiusLogCompatiblePairIndexSet_iff](declarations/mem-centeredmobiuslogcompatiblepairindexset-iff.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [centeredMobiusLogCompatiblePairIndexSet_eq_product](declarations/centeredmobiuslogcompatiblepairindexset-eq-product.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [centeredMobiusLogCompatiblePairBlock](declarations/centeredmobiuslogcompatiblepairblock.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [centeredMobiusLogCompatiblePairBlock_eq_indexSum_mul](declarations/centeredmobiuslogcompatiblepairblock-eq-indexsum-mul.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [centeredMobiusLogCompatiblePairBlock_eq_centeredVonMangoldt_mul](declarations/centeredmobiuslogcompatiblepairblock-eq-centeredvonmangoldt-mul.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [nonAliasingFejerMobiusLogCongruenceShiftCorrelation](declarations/nonaliasingfejermobiuslogcongruenceshiftcorrelation.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nonAliasingFejerMobiusLogCongruenceShiftCorrelation_eq_vonMangoldt](declarations/nonaliasingfejermobiuslogcongruenceshiftcorrelation-eq-vonmangoldt.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [nonAliasingFejerMobiusLogCongruenceAggregate](declarations/nonaliasingfejermobiuslogcongruenceaggregate.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [nonAliasingFejerMobiusLogCongruenceAggregate_eq_vonMangoldt](declarations/nonaliasingfejermobiuslogcongruenceaggregate-eq-vonmangoldt.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [SevenEighthsBoundaryMinimalMobiusLogCongruenceBound](declarations/seveneighthsboundaryminimalmobiuslogcongruencebound.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mobiusLogCongruenceBound_to_vonMangoldtShiftCorrelationBound](declarations/mobiuslogcongruencebound-to-vonmangoldtshiftcorrelationbound.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [vonMangoldtShiftCorrelationBound_to_mobiusLogCongruenceBound](declarations/vonmangoldtshiftcorrelationbound-to-mobiuslogcongruencebound.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mobiusLogCongruenceBound_iff_vonMangoldtShiftCorrelationBound](declarations/mobiuslogcongruencebound-iff-vonmangoldtshiftcorrelationbound.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mobiusLogCongruenceBound_to_partialDiscrepancy](declarations/mobiuslogcongruencebound-to-partialdiscrepancy.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [naiveCenteredMobiusLogChannelExponent](declarations/naivecenteredmobiuslogchannelexponent.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [centeredMobiusLogTargetExponent](declarations/centeredmobiuslogtargetexponent.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [centeredMobiusLogTargetExponent_lt_naiveChannelExponent](declarations/centeredmobiuslogtargetexponent-lt-naivechannelexponent.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [centeredProduct_fourChannel_identity](declarations/centeredproduct-fourchannel-identity.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d00d91e4192f9297c89c5e96a2e8d061d34ae91d7c0cba54c3ebc7b17221341f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogCongruenceReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
