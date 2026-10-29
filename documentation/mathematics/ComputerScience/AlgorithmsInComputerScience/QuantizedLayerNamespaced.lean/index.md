# Quantized Layer Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32e26b477374ac1cecdd7a4f21f810042983d1a0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/QuantizedLayerNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.foldl_le_foldl](declarations/list-foldl-le-foldl.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [dotProductInt](declarations/dotproductint.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [dotProductInt_mono_nonneg](declarations/dotproductint-mono-nonneg.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [matVecMulInt](declarations/matvecmulint.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [addIntArrays](declarations/addintarrays.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [subIntArrays](declarations/subintarrays.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [reluInt](declarations/reluint.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Array.getD_eq_getElem](declarations/array-getd-eq-getelem.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [reluInt_getElem](declarations/reluint-getelem.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reluInt_getElem!](declarations/reluint-getelem-source-edition-2.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [addIntArrays_getElem!](declarations/addintarrays-getelem.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [subIntArrays_getElem!](declarations/subintarrays-getelem.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [matVecMulInt_getElem!](declarations/matvecmulint-getelem.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [SplitWeights](declarations/splitweights.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [QuantizedLayer](declarations/quantizedlayer.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [scaleToInt](declarations/scaletoint.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [ofLayer](declarations/oflayer.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [AlignedInput](declarations/alignedinput.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [alignInput](declarations/aligninput.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [shiftInt](declarations/shiftint.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [forwardQuantized](declarations/forwardquantized.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toIntervalArray](declarations/tointervalarray.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [intVal](declarations/intval.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [intVal_add](declarations/intval-add.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [intVal_sub](declarations/intval-sub.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [intVal_mul](declarations/intval-mul.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [intVal_zero](declarations/intval-zero.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [intVal_nonneg](declarations/intval-nonneg.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [AlignedInput.mem](declarations/alignedinput-mem.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nonneg_mul_bounds](declarations/nonneg-mul-bounds.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [dotProduct_bounds_nonneg](declarations/dotproduct-bounds-nonneg.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [split_sign_bounds](declarations/split-sign-bounds.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [relu_preserves_bounds](declarations/relu-preserves-bounds.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [intVal_max_le](declarations/intval-max-le.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [intVal_mono](declarations/intval-mono.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [intVal_strictMono](declarations/intval-strictmono.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [forwardQuantized_sound](declarations/forwardquantized-sound.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [forwardQuantized_nonempty](declarations/forwardquantized-nonempty.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [QuantizedNet](declarations/quantizednet.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [ofLayers](declarations/oflayers.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [forward](declarations/forward.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1853d2383d7b8c2274e9e52a113906ce7bf54c123c752fb53a10b409e9c69dd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variant49b3e3adf587500ef552c54a80a9e578667b2bc8da6063453de1d0e09266335a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
