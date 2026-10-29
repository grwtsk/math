# Vector Defs Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant62c23d660a16aa426f43390d873568cd4d766c62244f2988f9e7d967dea1706b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4ba964491c3a35f1ab173796057c4e0f4db77fb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/VectorDefsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [List.Vector](declarations/list-vector.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [nil](declarations/nil.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [cons](declarations/cons.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [length](declarations/length.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [head](declarations/head.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [head_cons](declarations/head-cons.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [tail](declarations/tail.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tail_cons](declarations/tail-cons.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cons_head_tail](declarations/cons-head-tail.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [toList](declarations/tolist.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [get](declarations/get.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [append](declarations/append.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [elim](declarations/elim.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [map](declarations/map-source-edition-2.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_nil](declarations/map-nil.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_cons](declarations/map-cons.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [pmap](declarations/pmap.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pmap_nil](declarations/pmap-nil.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [map₂](declarations/map.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [replicate](declarations/replicate.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [drop](declarations/drop.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [take](declarations/take.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [eraseIdx](declarations/eraseidx.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ofFn](declarations/offn.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [congr](declarations/congr.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [mapAccumr](declarations/mapaccumr.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [mapAccumr₂](declarations/mapaccumr-source-edition-2.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [shiftLeftFill](declarations/shiftleftfill.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [shiftRightFill](declarations/shiftrightfill.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [eq](declarations/eq.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [eq_nil](declarations/eq-nil.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toList_mk](declarations/tolist-mk.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toList_nil](declarations/tolist-nil.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toList_length](declarations/tolist-length.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toList_cons](declarations/tolist-cons.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toList_append](declarations/tolist-append.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [toList_drop](declarations/tolist-drop.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toList_take](declarations/tolist-take.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [getElem_def](declarations/getelem-def.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [toList_getElem](declarations/tolist-getelem.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70ea27110f0d4247ac8dc37845466a13a99a150a638be86217ea86673b6379ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant62c23d660a16aa426f43390d873568cd4d766c62244f2988f9e7d967dea1706b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
