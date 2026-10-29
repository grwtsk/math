# Endpoint Information Loss Connections

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**74 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/EndpointInformationLossConnections.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `294e4f9eb548a3ed10e176bf3937ecf460626430`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EndpointInformationLossConnections.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [finitePrefix](declarations/finiteprefix.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [finitePrefixMax](declarations/finiteprefixmax.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [finitePrefix_zero](declarations/finiteprefix-zero.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [abs_finitePrefix_le_max](declarations/abs-finiteprefix-le-max.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [finitePrefixMax_nonneg](declarations/finiteprefixmax-nonneg.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [TerminalRecoveryAt](declarations/terminalrecoveryat.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [not_terminalRecoveryAt_of_terminal_eq_zero](declarations/not-terminalrecoveryat-of-terminal-eq-zero.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [twoPointMobiusSequence](declarations/twopointmobiussequence.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [finitePrefix_twoPointMobiusSequence_eq](declarations/finiteprefix-twopointmobiussequence-eq.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [EndpointInformationLossWitness](declarations/endpointinformationlosswitness-source-edition-2.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [endpointInformationLossWitness](declarations/endpointinformationlosswitness.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [UniversalOneHorizonTerminalRecovery](declarations/universalonehorizonterminalrecovery.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [not_universalOneHorizonTerminalRecovery](declarations/not-universalonehorizonterminalrecovery.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [AllHorizonBound](declarations/allhorizonbound.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [PrefixMaxBound](declarations/prefixmaxbound.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [prefixMaxBound_of_allHorizonBound](declarations/prefixmaxbound-of-allhorizonbound.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [allHorizonBound_of_prefixMaxBound](declarations/allhorizonbound-of-prefixmaxbound.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [prefixMaxBound_iff_allHorizonBound_of_monotone](declarations/prefixmaxbound-iff-allhorizonbound-of-monotone.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [translatedPrefix](declarations/translatedprefix.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [translatedPrefixMax](declarations/translatedprefixmax.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [TerminalIntervalRecoveryAt](declarations/terminalintervalrecoveryat.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [EveryTerminalIntervalBound](declarations/everyterminalintervalbound.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [EverySubprefixIntervalBound](declarations/everysubprefixintervalbound.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [everyTerminalIntervalBound_of_everySubprefix](declarations/everyterminalintervalbound-of-everysubprefix.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [EndpointIntervalInformationLossWitness](declarations/endpointintervalinformationlosswitness.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [endpointIntervalInformationLossWitness](declarations/endpointintervalinformationlosswitness-source-edition-2.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `inductive` | [TypedConnection](declarations/typedconnection.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toImplication?](declarations/toimplication.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [relevantOnly_has_no_implication](declarations/relevantonly-has-no-implication.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [requires_has_no_implication](declarations/requires-has-no-implication.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [refutation_has_no_positive_implication](declarations/refutation-has-no-positive-implication.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [fixedDataAllHorizonImpliesMaximal](declarations/fixeddataallhorizonimpliesmaximal.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [endpointWitnessRefutesTerminalRecovery](declarations/endpointwitnessrefutesterminalrecovery.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [higherOrderMobiusTerm](declarations/higherordermobiusterm.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [HigherOrderChowlaBound](declarations/higherorderchowlabound.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [GrowingShiftTwoPointTerminalBound](declarations/growingshifttwopointterminalbound.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [GrowingShiftTwoPointMaximalBound](declarations/growingshifttwopointmaximalbound.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [GrowingShiftUniformityBridge](declarations/growingshiftuniformitybridge.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [SummedShiftMaximalEnergyBound](declarations/summedshiftmaximalenergybound.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [ChowlaConnectionProfile](declarations/chowlaconnectionprofile.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ChowlaFixedToGrowingBridge](declarations/chowlafixedtogrowingbridge.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [ChowlaGrowingToSummedBridge](declarations/chowlagrowingtosummedbridge.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [ChowlaHigherOrderBridge](declarations/chowlahigherorderbridge.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [chowlaFixedToGrowingRequiresBridge](declarations/chowlafixedtogrowingrequiresbridge.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [chowlaGrowingToSummedRequiresBridge](declarations/chowlagrowingtosummedrequiresbridge.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [chowlaBinaryToHigherOrderRequiresBridge](declarations/chowlabinarytohigherorderrequiresbridge.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [endpointWitnessRelevantToHigherOrderChowla](declarations/endpointwitnessrelevanttohigherorderchowla.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [CorrectedElliottData](declarations/correctedelliottdata.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [correctedElliottSequence](declarations/correctedelliottsequence.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [CorrectedElliottFixedDataBound](declarations/correctedelliottfixeddatabound.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `structure` | [ElliottConnectionProfile](declarations/elliottconnectionprofile.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [ElliottFamilyUniformityBridge](declarations/elliottfamilyuniformitybridge.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [ElliottFamilyMaximalBridge](declarations/elliottfamilymaximalbridge.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [ElliottHigherOrderBridge](declarations/elliotthigherorderbridge.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [elliottFixedToUniformRequiresBridge](declarations/elliottfixedtouniformrequiresbridge.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [elliottUniformToMaximalRequiresBridge](declarations/elliottuniformtomaximalrequiresbridge.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [elliottBinaryToHigherOrderRequiresBridge](declarations/elliottbinarytohigherorderrequiresbridge.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [endpointWitnessRelevantToElliott](declarations/endpointwitnessrelevanttoelliott.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `structure` | [ShortIntervalConnectionProfile](declarations/shortintervalconnectionprofile.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [AverageToEveryIntervalBridge](declarations/averagetoeveryintervalbridge.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [AlmostAllToEveryIntervalBridge](declarations/almostalltoeveryintervalbridge.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [GlobalToTranslatedIntervalBridge](declarations/globaltotranslatedintervalbridge.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [averageToEveryIntervalRequiresBridge](declarations/averagetoeveryintervalrequiresbridge.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [almostAllToEveryIntervalRequiresBridge](declarations/almostalltoeveryintervalrequiresbridge.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [globalToTranslatedIntervalRequiresBridge](declarations/globaltotranslatedintervalrequiresbridge.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [endpointWitnessRelevantToShortIntervals](declarations/endpointwitnessrelevanttoshortintervals.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [endpointIntervalWitnessRefutesTerminalRecovery](declarations/endpointintervalwitnessrefutesterminalrecovery.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `structure` | [DynamicalDisjointnessConsumer](declarations/dynamicaldisjointnessconsumer.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `structure` | [SarnakConnectionProfile](declarations/sarnakconnectionprofile.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [ArithmeticToDynamicalAdapter](declarations/arithmetictodynamicaladapter.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [sarnakRequiresArithmeticToDynamicalAdapter](declarations/sarnakrequiresarithmetictodynamicaladapter.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [sarnakConclusion_of_arithmetic_and_adapter](declarations/sarnakconclusion-of-arithmetic-and-adapter.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [endpointWitnessRelevantToSarnak](declarations/endpointwitnessrelevanttosarnak.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `structure` | [EndpointConnectionAtlas](declarations/endpointconnectionatlas.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=005f231dc3bcd5c9a42e40314a050513f3682978a31735e979ed1f927cd0d9c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/EndpointInformationLossConnections.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
