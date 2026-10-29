# Quantized Layer

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f257be908d780e46e6abdec6283adde2d150c4a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/QuantizedLayer.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.foldl_le_foldl](declarations/list-foldl-le-foldl.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [dotProductInt](declarations/dotproductint.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [dotProductInt_mono_nonneg](declarations/dotproductint-mono-nonneg.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [matVecMulInt](declarations/matvecmulint.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [addIntArrays](declarations/addintarrays.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [subIntArrays](declarations/subintarrays.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [reluInt](declarations/reluint.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Array.getD_eq_getElem](declarations/array-getd-eq-getelem.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [reluInt_getElem](declarations/reluint-getelem.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reluInt_getElem!](declarations/reluint-getelem-source-edition-2.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [addIntArrays_getElem!](declarations/addintarrays-getelem.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [subIntArrays_getElem!](declarations/subintarrays-getelem.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [matVecMulInt_getElem!](declarations/matvecmulint-getelem.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [SplitWeights](declarations/splitweights.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [QuantizedLayer](declarations/quantizedlayer.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [scaleToInt](declarations/scaletoint.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [ofLayer](declarations/oflayer.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [AlignedInput](declarations/alignedinput.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [alignInput](declarations/aligninput.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [shiftInt](declarations/shiftint.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [forwardQuantized](declarations/forwardquantized.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toIntervalArray](declarations/tointervalarray.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [intVal](declarations/intval.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [intVal_add](declarations/intval-add.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [intVal_sub](declarations/intval-sub.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [intVal_mul](declarations/intval-mul.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [intVal_zero](declarations/intval-zero.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [intVal_nonneg](declarations/intval-nonneg.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [AlignedInput.mem](declarations/alignedinput-mem.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nonneg_mul_bounds](declarations/nonneg-mul-bounds.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [dotProduct_bounds_nonneg](declarations/dotproduct-bounds-nonneg.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [split_sign_bounds](declarations/split-sign-bounds.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [relu_preserves_bounds](declarations/relu-preserves-bounds.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [intVal_max_le](declarations/intval-max-le.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [intVal_mono](declarations/intval-mono.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [intVal_strictMono](declarations/intval-strictmono.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [forwardQuantized_sound](declarations/forwardquantized-sound.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [forwardQuantized_nonempty](declarations/forwardquantized-nonempty.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [QuantizedNet](declarations/quantizednet.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [ofLayers](declarations/oflayers.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [forward](declarations/forward.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1f4fd0cc21f9661894bf86783d768ae8e1a5bcc3c71a413c5cae7c0824c30cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/QuantizedLayer/Variante93858564ef1af5a3b93ba7b7ce94c3e2c0ddced9d8859c85971390230740d36.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
