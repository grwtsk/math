# Transformer

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff9082fc0a6a3d70a90bde087f3ebf61f9ff434a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/Transformer.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Real.gelu](declarations/real-gelu.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [layerNormReal](declarations/layernormreal.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [gelu_c1_lo](declarations/gelu-c1-lo.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [gelu_c2](declarations/gelu-c2.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [geluIntervalRat](declarations/geluintervalrat.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [geluInterval](declarations/geluinterval.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [geluVector](declarations/geluvector.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sqrt_two_div_pi_mem_interval](declarations/sqrt-two-div-pi-mem-interval.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_geluIntervalRat](declarations/mem-geluintervalrat.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_geluInterval](declarations/mem-geluinterval.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [LayerNormParams](declarations/layernormparams.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [sumIntervals](declarations/sumintervals.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [zeroInterval](declarations/zerointerval.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [forwardInterval](declarations/forwardinterval-source-edition-2.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_mulRounded](declarations/mem-mulrounded.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_addRounded](declarations/mem-addrounded.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_foldl_add](declarations/mem-foldl-add.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_sumIntervals](declarations/mem-sumintervals.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_map_intervals](declarations/mem-map-intervals.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [length_zipWith3_min](declarations/length-zipwith3-min.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zipWith3_map_left](declarations/zipwith3-map-left.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_zipWith3](declarations/mem-zipwith3.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_ofIntervalRat_singleton](declarations/mem-ofintervalrat-singleton.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_scale_shift](declarations/mem-scale-shift.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_sub_const](declarations/mem-sub-const.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_square](declarations/mem-square.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_layerNorm_forwardInterval](declarations/mem-layernorm-forwardinterval.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [FFNBlock](declarations/ffnblock.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [forwardReal](declarations/forwardreal.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [forwardInterval](declarations/forwardinterval-source-edition-3.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [TransformerBlock](declarations/transformerblock.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [forwardInterval](declarations/forwardinterval.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [reluMLPInterval](declarations/relumlpinterval.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffa8d959c8b8634f348d7395274c3fa811243a284672fb1e4a8cf58ba42e9f31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformer/Variante1ae2797684ff64a5fea5ec2756430ce687bcc2903404eab0c9307cafe30e3e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
