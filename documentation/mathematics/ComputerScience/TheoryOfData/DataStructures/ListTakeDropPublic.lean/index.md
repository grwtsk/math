# List Take Drop Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Varianta44d0a089faffc024079fc48cb22bf6a8cfc07059f72d9d2c0e2a11b64974edf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f480718a0a8423e1ff29f310fe2396c2752e27d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [take_one_drop_eq_of_lt_length](declarations/take-one-drop-eq-of-lt-length.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [take_eq_self_iff](declarations/take-eq-self-iff.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [take_self_eq_iff](declarations/take-self-eq-iff.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [take_eq_left_iff](declarations/take-eq-left-iff.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [left_eq_take_iff](declarations/left-eq-take-iff.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [drop_take_append_drop](declarations/drop-take-append-drop-source-edition-2.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [drop_take_append_drop'](declarations/drop-take-append-drop.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [take_concat_get'](declarations/take-concat-get.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [cons_getElem_drop_succ](declarations/cons-getelem-drop-succ.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cons_get_drop_succ](declarations/cons-get-drop-succ.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [drop_length_sub_one](declarations/drop-length-sub-one.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [tail_iterate](declarations/tail-iterate.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [tail_take_eq_take_tail](declarations/tail-take-eq-take-tail.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [dropLast_take_eq_take_dropLast](declarations/droplast-take-eq-take-droplast.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tail_drop_eq_drop_tail](declarations/tail-drop-eq-drop-tail.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [dropLast_drop_eq_drop_dropLast](declarations/droplast-drop-eq-drop-droplast.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [takeI_length](declarations/takei-length.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [takeI_nil](declarations/takei-nil.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [takeI_eq_take](declarations/takei-eq-take.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [takeI_left](declarations/takei-left.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [takeI_left'](declarations/takei-left-source-edition-2.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [takeD_length](declarations/taked-length.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [takeD_eq_take](declarations/taked-eq-take.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [takeD_left](declarations/taked-left-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [takeD_left'](declarations/taked-left.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [span.loop_eq_take_drop](declarations/span-loop-eq-take-drop.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [span_eq_takeWhile_dropWhile](declarations/span-eq-takewhile-dropwhile.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dropSlice_eq](declarations/dropslice-eq.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [length_dropSlice](declarations/length-dropslice.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [length_dropSlice_lt](declarations/length-dropslice-lt.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb8ca79fec0bb0c7d256ceae9bb9a027e18ac9522d5ec7073541fb935192f09b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Varianta44d0a089faffc024079fc48cb22bf6a8cfc07059f72d9d2c0e2a11b64974edf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
