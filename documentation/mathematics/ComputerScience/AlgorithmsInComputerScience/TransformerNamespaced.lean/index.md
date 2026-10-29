# Transformer Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fa8ab3d81c90b359f6a21a834b5c2b55a29e904`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/TransformerNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Real.gelu](declarations/real-gelu.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [layerNormReal](declarations/layernormreal.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [gelu_c1_lo](declarations/gelu-c1-lo.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [gelu_c2](declarations/gelu-c2.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [geluIntervalRat](declarations/geluintervalrat.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [geluInterval](declarations/geluinterval.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [geluVector](declarations/geluvector.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sqrt_two_div_pi_mem_interval](declarations/sqrt-two-div-pi-mem-interval.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_geluIntervalRat](declarations/mem-geluintervalrat.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_geluInterval](declarations/mem-geluinterval.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [LayerNormParams](declarations/layernormparams.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [sumIntervals](declarations/sumintervals.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [zeroInterval](declarations/zerointerval.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [forwardInterval](declarations/forwardinterval.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_mulRounded](declarations/mem-mulrounded.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_addRounded](declarations/mem-addrounded.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_foldl_add](declarations/mem-foldl-add.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_sumIntervals](declarations/mem-sumintervals.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_map_intervals](declarations/mem-map-intervals.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [length_zipWith3_min](declarations/length-zipwith3-min.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zipWith3_map_left](declarations/zipwith3-map-left.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_zipWith3](declarations/mem-zipwith3.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_ofIntervalRat_singleton](declarations/mem-ofintervalrat-singleton.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_scale_shift](declarations/mem-scale-shift.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_sub_const](declarations/mem-sub-const.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_square](declarations/mem-square.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_layerNorm_forwardInterval](declarations/mem-layernorm-forwardinterval.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [FFNBlock](declarations/ffnblock.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [forwardReal](declarations/forwardreal.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [forwardInterval](declarations/forwardinterval-source-edition-3.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [TransformerBlock](declarations/transformerblock.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [forwardInterval](declarations/forwardinterval-source-edition-2.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [reluMLPInterval](declarations/relumlpinterval.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=adad73c58fc87dfbde852a301c103f3ec596cc5fd56b0695931b2b111e7b1437 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variantef0b630d6e7b8353b809836621e8e5218f883568b85c4a7d8c47f72edac4ac38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
