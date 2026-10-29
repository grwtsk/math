# Data Vector

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `458d2106d7b04a9e4698b720e19388b8b146b7f8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/DataVector.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Vector](declarations/vector.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [nil](declarations/nil.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [cons](declarations/cons.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [length](declarations/length.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [head](declarations/head.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [head_cons](declarations/head-cons.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [tail](declarations/tail.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tail_cons](declarations/tail-cons.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cons_head_tail](declarations/cons-head-tail.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [toList](declarations/tolist.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [get](declarations/get.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [append](declarations/append.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [elim](declarations/elim.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [map](declarations/map.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_nil](declarations/map-nil.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_cons](declarations/map-cons.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [map₂](declarations/map-source-edition-2.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [replicate](declarations/replicate.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [drop](declarations/drop.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [take](declarations/take.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [removeNth](declarations/removenth.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ofFn](declarations/offn.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [congr](declarations/congr.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mapAccumr](declarations/mapaccumr.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mapAccumr₂](declarations/mapaccumr-source-edition-2.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [shiftLeftFill](declarations/shiftleftfill.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [shiftRightFill](declarations/shiftrightfill.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eq](declarations/eq.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eq_nil](declarations/eq-nil.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toList_mk](declarations/tolist-mk.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toList_nil](declarations/tolist-nil.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toList_length](declarations/tolist-length.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toList_cons](declarations/tolist-cons.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toList_append](declarations/tolist-append.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toList_drop](declarations/tolist-drop.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toList_take](declarations/tolist-take.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02711978674fc9a2713a5aa3ee70f3857d3f1a5ee47be04adcf30c9e4c3edc85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant38ba336c48d9ebd497c2c53bf461fb01c075a3fbcd14c69aed2e22d72861f48f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
