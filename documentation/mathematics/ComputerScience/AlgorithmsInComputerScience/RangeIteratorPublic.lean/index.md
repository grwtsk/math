# Range Iterator Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**91 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2093b5bbbd36bee526de84a184714f26fcfadcf7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/RangeIteratorPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Iterator](declarations/iterator.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Iterator.Monadic.step](declarations/iterator-monadic-step-source-edition-2.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Iterator.step](declarations/iterator-step-source-edition-3.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Iterator.step_eq_monadicStep](declarations/iterator-step-eq-monadicstep.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Iterator.Monadic.isPlausibleStep_iff](declarations/iterator-monadic-isplausiblestep-iff-source-edition-3.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Iterator.Monadic.step_eq_step](declarations/iterator-monadic-step-eq-step.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Iterator.isPlausibleStep_iff](declarations/iterator-isplausiblestep-iff-source-edition-3.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Iterator.step_eq_step](declarations/iterator-step-eq-step-source-edition-2.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Iterator.Monadic.isPlausibleOutput_next](declarations/iterator-monadic-isplausibleoutput-next-source-edition-3.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Iterator.Monadic.isPlausibleOutput_iff](declarations/iterator-monadic-isplausibleoutput-iff-source-edition-3.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Iterator.isPlausibleOutput_next](declarations/iterator-isplausibleoutput-next.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Iterator.isPlausibleOutput_iff](declarations/iterator-isplausibleoutput-iff.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Iterator.Monadic.isPlausibleSuccessorOf_iff](declarations/iterator-monadic-isplausiblesuccessorof-iff-source-edition-3.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Iterator.isPlausibleSuccessorOf_iff](declarations/iterator-isplausiblesuccessorof-iff-source-edition-3.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Iterator.isSome_next_of_isPlausibleIndirectOutput](declarations/iterator-issome-next-of-isplausibleindirectoutput-source-edition-3.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [List.Sublist.filter_mono](declarations/list-sublist-filter-mono.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [List.length_filter_strict_mono](declarations/list-length-filter-strict-mono-source-edition-2.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Iterator.instFinitenessRelation](declarations/iterator-instfinitenessrelation-source-edition-3.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [Iterator.instFinite](declarations/iterator-instfinite.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Iterator.instProductivenessRelation](declarations/iterator-instproductivenessrelation-source-edition-2.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [Iterator.instProductive](declarations/iterator-instproductive-source-edition-2.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Iterator.instIteratorAccess](declarations/iterator-institeratoraccess.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [Iterator.instLawfulDeterministicIterator](declarations/iterator-instlawfuldeterministiciterator-source-edition-3.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Iterator.Monadic.isPlausibleIndirectOutput_iff](declarations/iterator-monadic-isplausibleindirectoutput-iff-source-edition-2.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Iterator.isPlausibleIndirectOutput_iff](declarations/iterator-isplausibleindirectoutput-iff-source-edition-2.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [Iterator.instIteratorLoop](declarations/iterator-institeratorloop.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Iterator.instIteratorLoop.loop.wf](declarations/iterator-institeratorloop-loop-wf.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Iterator.instIteratorLoop.loop_eq_wf](declarations/iterator-institeratorloop-loop-eq-wf-source-edition-2.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Iterator.instIteratorLoop.loopWf_eq](declarations/iterator-institeratorloop-loopwf-eq-source-edition-2.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [Iterator.instLawfulIteratorLoop](declarations/iterator-instlawfuliteratorloop.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [Iterator](declarations/iterator-source-edition-3.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Iterator.Monadic.step](declarations/iterator-monadic-step.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Iterator.step](declarations/iterator-step.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Iterator.step_eq_monadicStep](declarations/iterator-step-eq-monadicstep-source-edition-2.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Iterator.Monadic.isPlausibleStep_iff](declarations/iterator-monadic-isplausiblestep-iff.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Iterator.Monadic.step_eq_step](declarations/iterator-monadic-step-eq-step-source-edition-3.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Iterator.isPlausibleStep_iff](declarations/iterator-isplausiblestep-iff.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Iterator.step_eq_step](declarations/iterator-step-eq-step-source-edition-3.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Iterator.Monadic.isPlausibleOutput_next](declarations/iterator-monadic-isplausibleoutput-next.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Iterator.Monadic.isPlausibleOutput_iff](declarations/iterator-monadic-isplausibleoutput-iff.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Iterator.isPlausibleOutput_next](declarations/iterator-isplausibleoutput-next-source-edition-2.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Iterator.isPlausibleOutput_iff](declarations/iterator-isplausibleoutput-iff-source-edition-3.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Iterator.Monadic.isPlausibleSuccessorOf_iff](declarations/iterator-monadic-isplausiblesuccessorof-iff.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Iterator.isPlausibleSuccessorOf_iff](declarations/iterator-isplausiblesuccessorof-iff-source-edition-2.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Iterator.isSome_next_of_isPlausibleIndirectOutput](declarations/iterator-issome-next-of-isplausibleindirectoutput.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [List.Sublist.filter_mono](declarations/list-sublist-filter-mono-source-edition-2.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [List.length_filter_strict_mono](declarations/list-length-filter-strict-mono.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [Iterator.instFinitenessRelation](declarations/iterator-instfinitenessrelation-source-edition-2.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [Iterator.instFinite](declarations/iterator-instfinite-source-edition-3.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [Iterator.instProductivenessRelation](declarations/iterator-instproductivenessrelation-source-edition-3.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [Iterator.instProductive](declarations/iterator-instproductive-source-edition-3.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [Iterator.instIteratorAccess](declarations/iterator-institeratoraccess-source-edition-2.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [Iterator.instLawfulDeterministicIterator](declarations/iterator-instlawfuldeterministiciterator-source-edition-2.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Iterator.Monadic.isPlausibleIndirectOutput_iff](declarations/iterator-monadic-isplausibleindirectoutput-iff.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Iterator.isPlausibleIndirectOutput_iff](declarations/iterator-isplausibleindirectoutput-iff.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [Iterator.instIteratorLoop](declarations/iterator-institeratorloop-source-edition-3.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [Iterator.instIteratorLoop.loop.wf](declarations/iterator-institeratorloop-loop-wf-source-edition-3.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [Iterator.instIteratorLoop.loop_eq_wf](declarations/iterator-institeratorloop-loop-eq-wf.md) | 1092 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Iterator.instIteratorLoop.loopWf_eq](declarations/iterator-institeratorloop-loopwf-eq-source-edition-3.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [Iterator.instLawfulIteratorLoop](declarations/iterator-instlawfuliteratorloop-source-edition-3.md) | 1164 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `structure` | [Iterator](declarations/iterator-source-edition-2.md) | 1197 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [Iterator.Monadic.step](declarations/iterator-monadic-step-source-edition-3.md) | 1207 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [Iterator.step](declarations/iterator-step-source-edition-2.md) | 1218 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Iterator.step_eq_monadicStep](declarations/iterator-step-eq-monadicstep-source-edition-3.md) | 1225 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance.md) | 1232 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Iterator.Monadic.isPlausibleStep_iff](declarations/iterator-monadic-isplausiblestep-iff-source-edition-2.md) | 1237 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Iterator.Monadic.step_eq_step](declarations/iterator-monadic-step-eq-step-source-edition-2.md) | 1242 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Iterator.isPlausibleStep_iff](declarations/iterator-isplausiblestep-iff-source-edition-2.md) | 1247 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Iterator.step_eq_step](declarations/iterator-step-eq-step.md) | 1260 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Iterator.Monadic.isPlausibleOutput_next](declarations/iterator-monadic-isplausibleoutput-next-source-edition-2.md) | 1265 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Iterator.Monadic.isPlausibleOutput_iff](declarations/iterator-monadic-isplausibleoutput-iff-source-edition-2.md) | 1270 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Iterator.isPlausibleOutput_next](declarations/iterator-isplausibleoutput-next-source-edition-3.md) | 1280 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Iterator.isPlausibleOutput_iff](declarations/iterator-isplausibleoutput-iff-source-edition-2.md) | 1286 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Iterator.Monadic.isPlausibleSuccessorOf_iff](declarations/iterator-monadic-isplausiblesuccessorof-iff-source-edition-2.md) | 1293 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Iterator.isPlausibleSuccessorOf_iff](declarations/iterator-isplausiblesuccessorof-iff.md) | 1314 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Iterator.isSome_next_of_isPlausibleIndirectOutput](declarations/iterator-issome-next-of-isplausibleindirectoutput-source-edition-2.md) | 1322 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [Iterator.instFinitenessRelation](declarations/iterator-instfinitenessrelation.md) | 1335 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [Iterator.instFinite](declarations/iterator-instfinite-source-edition-2.md) | 1374 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [Iterator.instProductivenessRelation](declarations/iterator-instproductivenessrelation.md) | 1379 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [Iterator.instProductive](declarations/iterator-instproductive.md) | 1390 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [Iterator.instIteratorAccess](declarations/iterator-institeratoraccess-source-edition-3.md) | 1395 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [Iterator.instLawfulDeterministicIterator](declarations/iterator-instlawfuldeterministiciterator.md) | 1447 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Iterator.Monadic.isPlausibleIndirectOutput_iff](declarations/iterator-monadic-isplausibleindirectoutput-iff-source-edition-3.md) | 1451 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Iterator.isPlausibleIndirectOutput_iff](declarations/iterator-isplausibleindirectoutput-iff-source-edition-3.md) | 1490 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [Iterator.instIteratorLoop](declarations/iterator-institeratorloop-source-edition-2.md) | 1506 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [Iterator.instIteratorLoop.loop.wf](declarations/iterator-institeratorloop-loop-wf-source-edition-2.md) | 1542 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Iterator.instIteratorLoop.loop_eq_wf](declarations/iterator-institeratorloop-loop-eq-wf-source-edition-3.md) | 1566 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Iterator.instIteratorLoop.loopWf_eq](declarations/iterator-institeratorloop-loopwf-eq.md) | 1584 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [Iterator.instLawfulIteratorLoop](declarations/iterator-instlawfuliteratorloop-source-edition-2.md) | 1627 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=765e102b76965f929efc0c7f84df6416cb5c5c18f69132e48171704efc98fa39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RangeIterator/Variant7331302fd9408c1f79937bf6f445dd4ce6139d7ba866be28f21f747459c0c17a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
