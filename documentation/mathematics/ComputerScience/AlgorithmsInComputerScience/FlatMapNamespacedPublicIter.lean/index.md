# Flat Map Namespaced Public Iter

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bf18efa35e418de31294db95b40bbfce5ea5f4e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/FlatMapNamespacedPublicIter.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [Flatten.IsPlausibleStep.outerYield_flatMapM_pure](declarations/flatten-isplausiblestep-outeryield-flatmapm-pure.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Flatten.IsPlausibleStep.outerSkip_flatMapM_pure](declarations/flatten-isplausiblestep-outerskip-flatmapm-pure.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Flatten.IsPlausibleStep.outerDone_flatMapM_pure](declarations/flatten-isplausiblestep-outerdone-flatmapm-pure.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Flatten.IsPlausibleStep.innerYield_flatMapM_pure](declarations/flatten-isplausiblestep-inneryield-flatmapm-pure.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Flatten.IsPlausibleStep.innerSkip_flatMapM_pure](declarations/flatten-isplausiblestep-innerskip-flatmapm-pure.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Flatten.IsPlausibleStep.innerDone_flatMapM_pure](declarations/flatten-isplausiblestep-innerdone-flatmapm-pure.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Flatten.IsPlausibleStep.outerYield_flatMap_pure](declarations/flatten-isplausiblestep-outeryield-flatmap-pure.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Flatten.IsPlausibleStep.outerSkip_flatMap_pure](declarations/flatten-isplausiblestep-outerskip-flatmap-pure.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Flatten.IsPlausibleStep.outerDone_flatMap_pure](declarations/flatten-isplausiblestep-outerdone-flatmap-pure.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Flatten.IsPlausibleStep.innerYield_flatMap_pure](declarations/flatten-isplausiblestep-inneryield-flatmap-pure.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Flatten.IsPlausibleStep.innerSkip_flatMap_pure](declarations/flatten-isplausiblestep-innerskip-flatmap-pure.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Flatten.IsPlausibleStep.innerDone_flatMap_pure](declarations/flatten-isplausiblestep-innerdone-flatmap-pure.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Iter.step_flatMapAfterM](declarations/iter-step-flatmapafterm.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Iter.step_flatMapM](declarations/iter-step-flatmapm.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Iter.step_flatMapAfter](declarations/iter-step-flatmapafter.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Iter.step_flatMap](declarations/iter-step-flatmap.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Iter.toList_flatMapAfterM](declarations/iter-tolist-flatmapafterm.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Iter.toArray_flatMapAfterM](declarations/iter-toarray-flatmapafterm.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Iter.toList_flatMapM](declarations/iter-tolist-flatmapm.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Iter.toArray_flatMapM](declarations/iter-toarray-flatmapm.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Iter.toList_flatMapAfter](declarations/iter-tolist-flatmapafter.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Iter.toArray_flatMapAfter](declarations/iter-toarray-flatmapafter.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Iter.toList_flatMap](declarations/iter-tolist-flatmap.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Iter.toArray_flatMap](declarations/iter-toarray-flatmap.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c99e8fc66f64d9cae4cd19f9d85e68fbd47144b6346b0176fd752d175c125b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FlatMap/Variant8dc60de0a369d16f93e00d8f9c7da212e10a72d1a1f97ed66530051abe9822d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
