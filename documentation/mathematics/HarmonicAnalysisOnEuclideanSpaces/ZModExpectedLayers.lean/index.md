# ZMod Expected Layers

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fb5160815c51d110b620c33380cd9677fe7223e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/HarmonicAnalysisOnEuclideanSpaces/ZModExpectedLayers.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mean](declarations/mean.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mean_mono](declarations/mean-mono.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mean_const](declarations/mean-const.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mean_add](declarations/mean-add.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [eventProbability_nonneg](declarations/eventprobability-nonneg.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [eventProbability_le_one](declarations/eventprobability-le-one.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mean_filter_card](declarations/mean-filter-card.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mean_filter_card_le_exceptional](declarations/mean-filter-card-le-exceptional.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [nonzeroLowEnergy](declarations/nonzerolowenergy.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mean_nonzeroLowEnergy_le](declarations/mean-nonzerolowenergy-le.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [smallEnergyFrequencies_erase_zero_card_le](declarations/smallenergyfrequencies-erase-zero-card-le.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [absorb_spectral_error](declarations/absorb-spectral-error.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mean_nonzeroLowEnergy_le_10000](declarations/mean-nonzerolowenergy-le-10000.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mean_card_le_of_subset](declarations/mean-card-le-of-subset.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mean_lowBand_le_one_add](declarations/mean-lowband-le-one-add.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mean_dyadicBand_le_nonzeroLowEnergy](declarations/mean-dyadicband-le-nonzerolowenergy.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mean_lowBand_le_10000](declarations/mean-lowband-le-10000.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mean_dyadicBand_le_10000](declarations/mean-dyadicband-le-10000.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sqrt_dyadic_exp_term_le](declarations/sqrt-dyadic-exp-term-le.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sum_sqrt_dyadic_exp_le_two](declarations/sum-sqrt-dyadic-exp-le-two.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [high_layers_sum_le](declarations/high-layers-sum-le.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [source_tail_exp_le](declarations/source-tail-exp-le.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [reciprocal_tail_le](declarations/reciprocal-tail-le.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [smallLayerRange](declarations/smalllayerrange.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [largeLayerRange](declarations/largelayerrange.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [smallLayerRange_subset](declarations/smalllayerrange-subset.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [largeLayerRange_card_le](declarations/largelayerrange-card-le.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [smallLayerRange_size_le](declarations/smalllayerrange-size-le.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [largeLayerRange_size_ge](declarations/largelayerrange-size-ge.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [largeLayerRange_exp_sum_le](declarations/largelayerrange-exp-sum-le.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd3319a1f9c5aa450eda9ee5d5b75469a53e8bdd8920574b1fcc51f46ef09cc3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/ZModExpectedLayers.lean","GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ZModExpectedLayers.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
