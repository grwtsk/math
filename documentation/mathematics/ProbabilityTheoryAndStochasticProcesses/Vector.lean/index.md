# Vector

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da5a10d50af788618bea7e02100745578c59327d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/Vector.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AffineVector](declarations/affinevector.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofIntervals](declarations/ofintervals.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toIntervals](declarations/tointervals.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [add](declarations/add.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [sub](declarations/sub.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [neg](declarations/neg.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [scale](declarations/scale.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [sum](declarations/sum.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mean](declarations/mean.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [dot](declarations/dot.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [centered](declarations/centered.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [variance](declarations/variance.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [layerNorm](declarations/layernorm.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [shiftedExp](declarations/shiftedexp.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [softmax](declarations/softmax.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [attentionWeights](declarations/attentionweights.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [applyAttention](declarations/applyattention.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [gelu](declarations/gelu.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mem](declarations/mem.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_zero](declarations/mem-zero.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [linearSum_map_scale](declarations/linearsum-map-scale.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_scale](declarations/mem-scale.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_foldl_add](declarations/mem-foldl-add.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_sum](declarations/mem-sum.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_mean](declarations/mem-mean.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_centered](declarations/mem-centered.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_sq_centered](declarations/mem-sq-centered.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_variance](declarations/mem-variance.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mem_layerNorm_elem](declarations/mem-layernorm-elem.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [length_zipWith3_aux](declarations/length-zipwith3-aux.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [getElem_zipWith3_aux](declarations/getelem-zipwith3-aux.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [length_do_pure_rat_real](declarations/length-do-pure-rat-real.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [getElem_do_pure_rat_real](declarations/getelem-do-pure-rat-real.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [getElem_proof_irrel](declarations/getelem-proof-irrel.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mem_layerNorm](declarations/mem-layernorm.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1b39ced94650e65fbe4a856d0323954a6c840359d53fea853441acbff99dd2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
