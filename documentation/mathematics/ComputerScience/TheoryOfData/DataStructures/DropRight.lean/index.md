# Drop Right

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `388d1b64d112c93272381ab1cc59bc09fb01681b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/DropRight.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rdrop](declarations/rdrop.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [rdrop_nil](declarations/rdrop-nil.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [rdrop_zero](declarations/rdrop-zero.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [rdrop_eq_reverse_drop_reverse](declarations/rdrop-eq-reverse-drop-reverse.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [rdrop_concat_succ](declarations/rdrop-concat-succ.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rtake](declarations/rtake.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [rtake_nil](declarations/rtake-nil.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rtake_zero](declarations/rtake-zero.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rtake_eq_reverse_take_reverse](declarations/rtake-eq-reverse-take-reverse.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rtake_concat_succ](declarations/rtake-concat-succ.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [rdropWhile](declarations/rdropwhile.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rdropWhile_nil](declarations/rdropwhile-nil.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rdropWhile_concat](declarations/rdropwhile-concat.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rdropWhile_concat_pos](declarations/rdropwhile-concat-pos.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rdropWhile_concat_neg](declarations/rdropwhile-concat-neg.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rdropWhile_singleton](declarations/rdropwhile-singleton.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rdropWhile_last_not](declarations/rdropwhile-last-not.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rdropWhile_prefix](declarations/rdropwhile-prefix.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rdropWhile_eq_nil_iff](declarations/rdropwhile-eq-nil-iff.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [dropWhile_eq_self_iff](declarations/dropwhile-eq-self-iff.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rdropWhile_eq_self_iff](declarations/rdropwhile-eq-self-iff.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dropWhile_idempotent](declarations/dropwhile-idempotent.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rdropWhile_idempotent](declarations/rdropwhile-idempotent.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [rtakeWhile](declarations/rtakewhile.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rtakeWhile_nil](declarations/rtakewhile-nil.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rtakeWhile_concat](declarations/rtakewhile-concat.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rtakeWhile_concat_pos](declarations/rtakewhile-concat-pos.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rtakeWhile_concat_neg](declarations/rtakewhile-concat-neg.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rtakeWhile_suffix](declarations/rtakewhile-suffix.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rtakeWhile_eq_self_iff](declarations/rtakewhile-eq-self-iff.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [rtakeWhile_eq_nil_iff](declarations/rtakewhile-eq-nil-iff.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_rtakeWhile_imp](declarations/mem-rtakewhile-imp.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rtakeWhile_idempotent](declarations/rtakewhile-idempotent.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [rdrop_add](declarations/rdrop-add.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [rdrop_append_length](declarations/rdrop-append-length.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [rdrop_append_of_le_length](declarations/rdrop-append-of-le-length.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [rdrop_append_length_add](declarations/rdrop-append-length-add.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a96eb4db54f3f7b3e017b3df0012dba4443eb68e9b1b9f5e76890b4b8517101 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropRight/Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
