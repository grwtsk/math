# Drop Right Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant2ffe92a69e18be08b3e03771ee6b38a41851c8b14933ca94a594c986daf60495.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2df2a0793a41a605d068324a6d130bba8065c10`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/DropRightNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rdrop](declarations/rdrop.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [rdrop_nil](declarations/rdrop-nil.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [rdrop_zero](declarations/rdrop-zero.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [rdrop_eq_reverse_drop_reverse](declarations/rdrop-eq-reverse-drop-reverse.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [rdrop_concat_succ](declarations/rdrop-concat-succ.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rtake](declarations/rtake.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [rtake_nil](declarations/rtake-nil.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rtake_zero](declarations/rtake-zero.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rtake_eq_reverse_take_reverse](declarations/rtake-eq-reverse-take-reverse.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rtake_concat_succ](declarations/rtake-concat-succ.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [rdropWhile](declarations/rdropwhile.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rdropWhile_nil](declarations/rdropwhile-nil.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rdropWhile_concat](declarations/rdropwhile-concat.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rdropWhile_concat_pos](declarations/rdropwhile-concat-pos.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rdropWhile_concat_neg](declarations/rdropwhile-concat-neg.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rdropWhile_singleton](declarations/rdropwhile-singleton.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rdropWhile_last_not](declarations/rdropwhile-last-not.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rdropWhile_prefix](declarations/rdropwhile-prefix.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rdropWhile_eq_nil_iff](declarations/rdropwhile-eq-nil-iff.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rdropWhile_eq_self_iff](declarations/rdropwhile-eq-self-iff.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [dropWhile_idempotent](declarations/dropwhile-idempotent.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rdropWhile_idempotent](declarations/rdropwhile-idempotent.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rdropWhile_reverse](declarations/rdropwhile-reverse.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [rtakeWhile](declarations/rtakewhile.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rtakeWhile_nil](declarations/rtakewhile-nil.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rtakeWhile_concat](declarations/rtakewhile-concat.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rtakeWhile_concat_pos](declarations/rtakewhile-concat-pos.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rtakeWhile_concat_neg](declarations/rtakewhile-concat-neg.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rtakeWhile_suffix](declarations/rtakewhile-suffix.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rtakeWhile_eq_self_iff](declarations/rtakewhile-eq-self-iff.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [rtakeWhile_eq_nil_iff](declarations/rtakewhile-eq-nil-iff.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_rtakeWhile_imp](declarations/mem-rtakewhile-imp.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rtakeWhile_idempotent](declarations/rtakewhile-idempotent.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rtakeWhile_reverse](declarations/rtakewhile-reverse.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [rdropWhile_append_rtakeWhile](declarations/rdropwhile-append-rtakewhile.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [rdrop_add](declarations/rdrop-add.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [rdrop_append_length](declarations/rdrop-append-length.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [rdrop_append_of_le_length](declarations/rdrop-append-of-le-length.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [rdrop_append_length_add](declarations/rdrop-append-length-add.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f881ff4a84b2cab6eec96a838a6db75d09df3c9a33a9ee86324b0c4c8ddafb3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant2ffe92a69e18be08b3e03771ee6b38a41851c8b14933ca94a594c986daf60495.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
