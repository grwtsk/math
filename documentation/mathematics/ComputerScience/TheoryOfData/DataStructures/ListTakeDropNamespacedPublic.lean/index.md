# List Take Drop Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc0b1ac49ffb6709689995e3da3fde2716a487841f86b82d8fd83a58ab4cd480c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `548075856c3ee4895b662e30ae433625aa4963b6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListTakeDropNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [take_one_drop_eq_of_lt_length](declarations/take-one-drop-eq-of-lt-length.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [take_eq_self_iff](declarations/take-eq-self-iff.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [take_self_eq_iff](declarations/take-self-eq-iff.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [take_eq_left_iff](declarations/take-eq-left-iff.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [left_eq_take_iff](declarations/left-eq-take-iff.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [drop_take_append_drop](declarations/drop-take-append-drop-source-edition-2.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [drop_take_append_drop'](declarations/drop-take-append-drop.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [take_concat_get'](declarations/take-concat-get.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [cons_getElem_drop_succ](declarations/cons-getelem-drop-succ.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cons_get_drop_succ](declarations/cons-get-drop-succ.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [drop_length_sub_one](declarations/drop-length-sub-one.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [tail_iterate](declarations/tail-iterate.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [tail_take_eq_take_tail](declarations/tail-take-eq-take-tail.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [dropLast_take_eq_take_dropLast](declarations/droplast-take-eq-take-droplast.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tail_drop_eq_drop_tail](declarations/tail-drop-eq-drop-tail.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [dropLast_drop_eq_drop_dropLast](declarations/droplast-drop-eq-drop-droplast.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [takeI_length](declarations/takei-length.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [takeI_nil](declarations/takei-nil.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [takeI_eq_take](declarations/takei-eq-take.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [takeI_left](declarations/takei-left-source-edition-2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [takeI_left'](declarations/takei-left.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [takeD_length](declarations/taked-length.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [takeD_eq_take](declarations/taked-eq-take.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [takeD_left](declarations/taked-left-source-edition-2.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [takeD_left'](declarations/taked-left.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [span.loop_eq_take_drop](declarations/span-loop-eq-take-drop.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [span_eq_takeWhile_dropWhile](declarations/span-eq-takewhile-dropwhile.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dropSlice_eq](declarations/dropslice-eq.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [length_dropSlice](declarations/length-dropslice.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [length_dropSlice_lt](declarations/length-dropslice-lt.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6c7e3f1fd477600deeea9c08a3ee52a1830510eeefa00cc81c66eac7516373a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variantc0b1ac49ffb6709689995e3da3fde2716a487841f86b82d8fd83a58ab4cd480c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
