# Drop Right Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `731e80d6284807e106791bc19ab086b29b59fd08`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/DropRightPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rdrop](declarations/rdrop.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [rdrop_nil](declarations/rdrop-nil.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [rdrop_zero](declarations/rdrop-zero.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [rdrop_eq_reverse_drop_reverse](declarations/rdrop-eq-reverse-drop-reverse.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [rdrop_concat_succ](declarations/rdrop-concat-succ.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rtake](declarations/rtake.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [rtake_nil](declarations/rtake-nil.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rtake_zero](declarations/rtake-zero.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rtake_eq_reverse_take_reverse](declarations/rtake-eq-reverse-take-reverse.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rtake_concat_succ](declarations/rtake-concat-succ.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [rdropWhile](declarations/rdropwhile.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rdropWhile_nil](declarations/rdropwhile-nil.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rdropWhile_concat](declarations/rdropwhile-concat.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rdropWhile_concat_pos](declarations/rdropwhile-concat-pos.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rdropWhile_concat_neg](declarations/rdropwhile-concat-neg.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rdropWhile_singleton](declarations/rdropwhile-singleton.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rdropWhile_last_not](declarations/rdropwhile-last-not.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rdropWhile_prefix](declarations/rdropwhile-prefix.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rdropWhile_eq_nil_iff](declarations/rdropwhile-eq-nil-iff.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rdropWhile_eq_self_iff](declarations/rdropwhile-eq-self-iff.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [dropWhile_idempotent](declarations/dropwhile-idempotent.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rdropWhile_idempotent](declarations/rdropwhile-idempotent.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rdropWhile_reverse](declarations/rdropwhile-reverse.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [rtakeWhile](declarations/rtakewhile.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rtakeWhile_nil](declarations/rtakewhile-nil.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rtakeWhile_concat](declarations/rtakewhile-concat.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rtakeWhile_concat_pos](declarations/rtakewhile-concat-pos.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rtakeWhile_concat_neg](declarations/rtakewhile-concat-neg.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rtakeWhile_suffix](declarations/rtakewhile-suffix.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rtakeWhile_eq_self_iff](declarations/rtakewhile-eq-self-iff.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [rtakeWhile_eq_nil_iff](declarations/rtakewhile-eq-nil-iff.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_rtakeWhile_imp](declarations/mem-rtakewhile-imp.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rtakeWhile_idempotent](declarations/rtakewhile-idempotent.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rtakeWhile_reverse](declarations/rtakewhile-reverse.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [rdropWhile_append_rtakeWhile](declarations/rdropwhile-append-rtakewhile.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [rdrop_add](declarations/rdrop-add.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [rdrop_append_length](declarations/rdrop-append-length.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [rdrop_append_of_le_length](declarations/rdrop-append-of-le-length.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [rdrop_append_length_add](declarations/rdrop-append-length-add.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43cc7aa14dc03e611bd666b554188348577b9585b8ab7ce4372656c44697c560 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant857c46ccba3b8d9758e003c988e9d8387d39bd5ecb176d7934554c3bc2d39646.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
