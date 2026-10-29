# Quadratic Theta Prime Fejer Mobius Log LCMProgression Reduction

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1487c73221bb96a0ac1dc2edce6bd31a7123be56`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [centeredMobiusLogDivisorIndexSet](declarations/centeredmobiuslogdivisorindexset.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [centeredMobiusLogDivisorTerm](declarations/centeredmobiuslogdivisorterm.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [none_mem_centeredMobiusLogDivisorIndexSet](declarations/none-mem-centeredmobiuslogdivisorindexset.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [some_mem_centeredMobiusLogDivisorIndexSet_iff](declarations/some-mem-centeredmobiuslogdivisorindexset-iff.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [centeredMobiusLogDivisorTerm_none](declarations/centeredmobiuslogdivisorterm-none.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [centeredMobiusLogDivisorTerm_some](declarations/centeredmobiuslogdivisorterm-some.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [centeredMobiusLogDivisorIndexSum](declarations/centeredmobiuslogdivisorindexsum.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [centeredMobiusLogDivisorIndexSum_eq_raw](declarations/centeredmobiuslogdivisorindexsum-eq-raw.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mobiusLogDivisorSum_eq_vonMangoldt](declarations/mobiuslogdivisorsum-eq-vonmangoldt.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [centeredMobiusLogDivisorIndexSum_eq_centeredVonMangoldt](declarations/centeredmobiuslogdivisorindexsum-eq-centeredvonmangoldt.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [centeredMobiusLogDivisorPairBlock](declarations/centeredmobiuslogdivisorpairblock.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [centeredMobiusLogDivisorPairBlock_eq_indexSum_mul](declarations/centeredmobiuslogdivisorpairblock-eq-indexsum-mul.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [centeredMobiusLogDivisorPairBlock_eq_centeredVonMangoldt_mul](declarations/centeredmobiuslogdivisorpairblock-eq-centeredvonmangoldt-mul.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [centeredMobiusLogDivisorPairBlock_eq_compatiblePairBlock](declarations/centeredmobiuslogdivisorpairblock-eq-compatiblepairblock.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [centeredMobiusLogDivisorModulus](declarations/centeredmobiuslogdivisormodulus.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [centeredMobiusLogDivisorModulus_none](declarations/centeredmobiuslogdivisormodulus-none.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [centeredMobiusLogDivisorModulus_some](declarations/centeredmobiuslogdivisormodulus-some.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [centeredMobiusLogDivisorModulus_dvd_of_mem](declarations/centeredmobiuslogdivisormodulus-dvd-of-mem.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [CenteredMobiusLogDivisorPairCompatible](declarations/centeredmobiuslogdivisorpaircompatible.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [centeredMobiusLogDivisorPairCompatible_none_left](declarations/centeredmobiuslogdivisorpaircompatible-none-left.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [centeredMobiusLogDivisorPairCompatible_none_right](declarations/centeredmobiuslogdivisorpaircompatible-none-right.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [centeredMobiusLogDivisorPairCompatible_some_some](declarations/centeredmobiuslogdivisorpaircompatible-some-some.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [centeredMobiusLogDivisorIndexPair_compatible](declarations/centeredmobiuslogdivisorindexpair-compatible.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [CenteredMobiusLogShiftSolution](declarations/centeredmobiuslogshiftsolution.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [centeredMobiusLogShiftSolution_pair_modEq_lcm](declarations/centeredmobiuslogshiftsolution-pair-modeq-lcm.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [centeredMobiusLogLCMProgressionFiber](declarations/centeredmobiusloglcmprogressionfiber.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_centeredMobiusLogLCMProgressionFiber_iff](declarations/mem-centeredmobiusloglcmprogressionfiber-iff.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [centeredMobiusLogDivisorPair_mem_lcmProgressionFiber](declarations/centeredmobiuslogdivisorpair-mem-lcmprogressionfiber.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [centeredMobiusLogLCMProgressionFiber_pair_modEq](declarations/centeredmobiusloglcmprogressionfiber-pair-modeq.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [centeredMobiusLogLCMProgressionFiber_div_lcm_injOn](declarations/centeredmobiusloglcmprogressionfiber-div-lcm-injon.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [centeredMobiusLogLCMProgressionFiber_card_le](declarations/centeredmobiusloglcmprogressionfiber-card-le.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [centeredMobiusLogLCMProgressionFiber_none_none](declarations/centeredmobiusloglcmprogressionfiber-none-none.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [nonAliasingFejerMobiusLogLCMProgressionShiftCorrelation](declarations/nonaliasingfejermobiusloglcmprogressionshiftcorrelation.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [nonAliasingFejerMobiusLogLCMProgressionShiftCorrelation_eq_congruence](declarations/nonaliasingfejermobiusloglcmprogressionshiftcorrelation-eq-congruence.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [nonAliasingFejerMobiusLogLCMProgressionAggregate](declarations/nonaliasingfejermobiusloglcmprogressionaggregate.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [nonAliasingFejerMobiusLogLCMProgressionAggregate_eq_congruence](declarations/nonaliasingfejermobiusloglcmprogressionaggregate-eq-congruence.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [SevenEighthsBoundaryMinimalMobiusLogLCMProgressionBound](declarations/seveneighthsboundaryminimalmobiusloglcmprogressionbound.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mobiusLogLCMProgressionBound_to_congruenceBound](declarations/mobiusloglcmprogressionbound-to-congruencebound.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [congruenceBound_to_mobiusLogLCMProgressionBound](declarations/congruencebound-to-mobiusloglcmprogressionbound.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mobiusLogLCMProgressionBound_iff_congruenceBound](declarations/mobiusloglcmprogressionbound-iff-congruencebound.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mobiusLogLCMProgressionBound_to_partialDiscrepancy](declarations/mobiusloglcmprogressionbound-to-partialdiscrepancy.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [naiveMobiusLogLCMProgressionExponent](declarations/naivemobiusloglcmprogressionexponent.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [mobiusLogLCMProgressionTargetExponent](declarations/mobiusloglcmprogressiontargetexponent.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mobiusLogLCMProgressionTargetExponent_lt_naive](declarations/mobiusloglcmprogressiontargetexponent-lt-naive.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5bd03ab052c483369ab28c9e68f5baa9514b3fd2558c67b5fc33958fae4becc3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogLCMProgressionReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
