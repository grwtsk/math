# Finite Packet

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e86913298a8d4a2cd73c436fb11426ea9787772`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/FinitePacket.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePacket](declarations/finitepacket.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [expectation](declarations/expectation.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [spectralExpectation](declarations/spectralexpectation.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [eventProbability](declarations/eventprobability.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [spectralEventProbability](declarations/spectraleventprobability.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [probability_nonnegative](declarations/probability-nonnegative.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [probability_normalized](declarations/probability-normalized.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [expectation_zero](declarations/expectation-zero.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [expectation_one](declarations/expectation-one.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [expectation_add](declarations/expectation-add.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [expectation_smul](declarations/expectation-smul.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [expectation_nonnegative](declarations/expectation-nonnegative.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [spectralExpectation_zero](declarations/spectralexpectation-zero.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [spectralExpectation_one](declarations/spectralexpectation-one.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [spectralExpectation_add](declarations/spectralexpectation-add.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [spectralExpectation_smul](declarations/spectralexpectation-smul.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eventProbability_empty](declarations/eventprobability-empty.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eventProbability_univ](declarations/eventprobability-univ.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eventProbability_nonnegative](declarations/eventprobability-nonnegative.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [spectralEventProbability_empty](declarations/spectraleventprobability-empty.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [spectralEventProbability_univ](declarations/spectraleventprobability-univ.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [spectralEventProbability_nonnegative](declarations/spectraleventprobability-nonnegative.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [mix](declarations/mix.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mix_spectralValue](declarations/mix-spectralvalue.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mix_probability](declarations/mix-probability.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mix_probability_normalized](declarations/mix-probability-normalized.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [expectation_mix](declarations/expectation-mix.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [spectralExpectation_mix](declarations/spectralexpectation-mix.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [spectralEventProbability_mix](declarations/spectraleventprobability-mix.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [fiberEvent](declarations/fiberevent.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_fiberEvent](declarations/mem-fiberevent.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [eventProbability_mix](declarations/eventprobability-mix.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c09157040b2d905742bb9953ca4fe6aed30033a762f873996c3bdac9dad1f420 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FinitePacket/Variantc885071702656434c25d14ece861238fe53622c8001bfbbb8863e3771d79e4bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
