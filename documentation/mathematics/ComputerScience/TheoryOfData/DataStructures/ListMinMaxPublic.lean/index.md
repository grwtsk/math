# List Min Max Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7f4fac2232f8e44cd80f5c0fd5f328f1f5f2ac2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListMinMaxPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [argAux](declarations/argaux.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [foldl_argAux_eq_none](declarations/foldl-argaux-eq-none.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [foldl_argAux_mem](declarations/foldl-argaux-mem.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [argAux_self](declarations/argaux-self.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [not_of_mem_foldl_argAux](declarations/not-of-mem-foldl-argaux.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [argmax](declarations/argmax.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [argmax_nil](declarations/argmax-nil.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [argmax_singleton](declarations/argmax-singleton.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [not_lt_of_mem_argmax](declarations/not-lt-of-mem-argmax.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [argmax_concat](declarations/argmax-concat.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [argmax_mem](declarations/argmax-mem.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [argmax_eq_none](declarations/argmax-eq-none.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [le_of_mem_argmax](declarations/le-of-mem-argmax.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [argmax_cons](declarations/argmax-cons.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [index_of_argmax](declarations/index-of-argmax.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_argmax_iff](declarations/mem-argmax-iff.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [argmax_eq_some_iff](declarations/argmax-eq-some-iff.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [maximum](declarations/maximum.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [maximum_nil](declarations/maximum-nil.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [maximum_singleton](declarations/maximum-singleton.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [maximum_mem](declarations/maximum-mem.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [maximum_eq_bot](declarations/maximum-eq-bot.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [not_maximum_lt_of_mem](declarations/not-maximum-lt-of-mem-source-edition-2.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [not_maximum_lt_of_mem'](declarations/not-maximum-lt-of-mem.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [maximum_concat](declarations/maximum-concat.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [le_maximum_of_mem](declarations/le-maximum-of-mem-source-edition-2.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [le_maximum_of_mem'](declarations/le-maximum-of-mem.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [maximum_cons](declarations/maximum-cons.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [maximum_append](declarations/maximum-append.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [maximum_le_of_forall_le](declarations/maximum-le-of-forall-le.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [maximum_mono](declarations/maximum-mono.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [maximum_eq_coe_iff](declarations/maximum-eq-coe-iff.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_le_maximum_iff](declarations/coe-le-maximum-iff.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [maximum_ne_bot_of_ne_nil](declarations/maximum-ne-bot-of-ne-nil.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [maximum_ne_bot_of_length_pos](declarations/maximum-ne-bot-of-length-pos.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [maximum_of_length_pos](declarations/maximum-of-length-pos.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [coe_maximum_of_length_pos](declarations/coe-maximum-of-length-pos.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [le_maximum_of_length_pos_iff](declarations/le-maximum-of-length-pos-iff.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [maximum_of_length_pos_mem](declarations/maximum-of-length-pos-mem.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [le_maximum_of_length_pos_of_mem](declarations/le-maximum-of-length-pos-of-mem.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [getElem_le_maximum_of_length_pos](declarations/getelem-le-maximum-of-length-pos.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Perm.maximum_eq](declarations/perm-maximum-eq.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [getD_max?_eq_unbotD_maximum](declarations/getd-max-eq-unbotd-maximum.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [foldr_max_of_ne_nil](declarations/foldr-max-of-ne-nil.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [max_le_of_forall_le](declarations/max-le-of-forall-le.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [le_max_of_le](declarations/le-max-of-le-source-edition-2.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [le_max_of_le'](declarations/le-max-of-le.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91764c9d457e89a62f864db017c74bf2333bc73f2dff240c76dfcec549d3abe9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant8c6946a01d90371995d5298c25b27151597a23170c18c7065bc89ec3a76bf084.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
