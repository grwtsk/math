# Heap Refinement

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/InformationTheory/Huffman/HeapRefinement.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72fb149c7256c4d4cff8f7731e83005382dbcfce`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/InformationAndCommunicationTheoryCircuits/CommunicationInformation/PrefixLengthVariableCommaFreeCodes/HeapRefinement.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [UniqueMinima](declarations/uniqueminima.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [uniqueMinima_perm](declarations/uniqueminima-perm.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [unique_minimum](declarations/unique-minimum.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [seedEntries_minimum_mem](declarations/seedentries-minimum-mem.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [seedEntries_unique](declarations/seedentries-unique.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [alphabet_minima_nodup](declarations/alphabet-minima-nodup.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [initial_unique](declarations/initial-unique.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [merge_unique](declarations/merge-unique.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [insert_unique](declarations/insert-unique.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [normalize_perm](declarations/normalize-perm.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [Pop](declarations/pop.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [normalize_pop](declarations/normalize-pop.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [normalize_two_pops](declarations/normalize-two-pops.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [normalize_sorted](declarations/normalize-sorted.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `inductive` | [HeapBuild](declarations/heapbuild.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [heapBuild_refines](declarations/heapbuild-refines.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fromWeights_heap_refines](declarations/fromweights-heap-refines.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [queueMass](declarations/queuemass.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [queueMass_perm](declarations/queuemass-perm.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [queueMass_insert](declarations/queuemass-insert.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [queueMass_order](declarations/queuemass-order.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [queueMass_merge](declarations/queuemass-merge.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [popped_pair_le_mass](declarations/popped-pair-le-mass.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [heap_step_mass](declarations/heap-step-mass.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [heap_step_unique](declarations/heap-step-unique.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [seedEntries_mass](declarations/seedentries-mass.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [initial_mass](declarations/initial-mass.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [live_minima_distinct](declarations/live-minima-distinct.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [live_rust_python_key](declarations/live-rust-python-key.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [live_python_tuple_comparison](declarations/live-python-tuple-comparison.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48ce1b2aba9259a8ed853227c570cee09a325278cadc1ae5fe1107bd6249271c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/InformationTheory/Huffman/HeapRefinement.lean","GRWTSK/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/HeapRefinement.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
