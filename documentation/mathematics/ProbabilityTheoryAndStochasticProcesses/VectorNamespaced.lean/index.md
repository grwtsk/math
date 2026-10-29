# Vector Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f23ce61f8848de0853a45d35af011df66345fb58`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/VectorNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AffineVector](declarations/affinevector.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofIntervals](declarations/ofintervals.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toIntervals](declarations/tointervals.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [add](declarations/add.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [sub](declarations/sub.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [neg](declarations/neg.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [scale](declarations/scale.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [sum](declarations/sum.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mean](declarations/mean.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [dot](declarations/dot.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [centered](declarations/centered.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [variance](declarations/variance.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [layerNorm](declarations/layernorm.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [shiftedExp](declarations/shiftedexp.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [softmax](declarations/softmax.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [attentionWeights](declarations/attentionweights.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [applyAttention](declarations/applyattention.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [gelu](declarations/gelu.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mem](declarations/mem.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_zero](declarations/mem-zero.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [linearSum_map_scale](declarations/linearsum-map-scale.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_scale](declarations/mem-scale.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_foldl_add](declarations/mem-foldl-add.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_sum](declarations/mem-sum.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_mean](declarations/mem-mean.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_centered](declarations/mem-centered.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_sq_centered](declarations/mem-sq-centered.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_variance](declarations/mem-variance.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mem_layerNorm_elem](declarations/mem-layernorm-elem.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [length_zipWith3_aux](declarations/length-zipwith3-aux.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [getElem_zipWith3_aux](declarations/getelem-zipwith3-aux.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [length_do_pure_rat_real](declarations/length-do-pure-rat-real.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [getElem_do_pure_rat_real](declarations/getelem-do-pure-rat-real.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [getElem_proof_irrel](declarations/getelem-proof-irrel.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mem_layerNorm](declarations/mem-layernorm.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe744faa6cfbf51b71dc27f99c848638d47a326f92d9f8da20ec0d8cfc365e5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
