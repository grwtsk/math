# List Min Max Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41d09c741673560d68b8337e3fb560ccbbadb0c3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [argAux](declarations/argaux.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [foldl_argAux_eq_none](declarations/foldl-argaux-eq-none.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [foldl_argAux_mem](declarations/foldl-argaux-mem.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [argAux_self](declarations/argaux-self.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [not_of_mem_foldl_argAux](declarations/not-of-mem-foldl-argaux.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [argmax](declarations/argmax.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [argmax_nil](declarations/argmax-nil.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [argmax_singleton](declarations/argmax-singleton.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [not_lt_of_mem_argmax](declarations/not-lt-of-mem-argmax.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [argmax_concat](declarations/argmax-concat.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [argmax_mem](declarations/argmax-mem.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [argmax_eq_none](declarations/argmax-eq-none.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [le_of_mem_argmax](declarations/le-of-mem-argmax.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [argmax_cons](declarations/argmax-cons.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [index_of_argmax](declarations/index-of-argmax.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_argmax_iff](declarations/mem-argmax-iff.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [argmax_eq_some_iff](declarations/argmax-eq-some-iff.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [maximum](declarations/maximum.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [maximum_nil](declarations/maximum-nil.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [maximum_singleton](declarations/maximum-singleton.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [maximum_mem](declarations/maximum-mem.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [maximum_eq_bot](declarations/maximum-eq-bot.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [not_maximum_lt_of_mem](declarations/not-maximum-lt-of-mem-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [not_maximum_lt_of_mem'](declarations/not-maximum-lt-of-mem.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [maximum_concat](declarations/maximum-concat.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [le_maximum_of_mem](declarations/le-maximum-of-mem.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [le_maximum_of_mem'](declarations/le-maximum-of-mem-source-edition-2.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [maximum_cons](declarations/maximum-cons.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [maximum_append](declarations/maximum-append.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [maximum_le_of_forall_le](declarations/maximum-le-of-forall-le.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [maximum_mono](declarations/maximum-mono.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [maximum_eq_coe_iff](declarations/maximum-eq-coe-iff.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_le_maximum_iff](declarations/coe-le-maximum-iff.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [maximum_ne_bot_of_ne_nil](declarations/maximum-ne-bot-of-ne-nil.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [maximum_ne_bot_of_length_pos](declarations/maximum-ne-bot-of-length-pos.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [maximum_of_length_pos](declarations/maximum-of-length-pos.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [coe_maximum_of_length_pos](declarations/coe-maximum-of-length-pos.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [le_maximum_of_length_pos_iff](declarations/le-maximum-of-length-pos-iff.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [maximum_of_length_pos_mem](declarations/maximum-of-length-pos-mem.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [le_maximum_of_length_pos_of_mem](declarations/le-maximum-of-length-pos-of-mem.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [getElem_le_maximum_of_length_pos](declarations/getelem-le-maximum-of-length-pos.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Perm.maximum_eq](declarations/perm-maximum-eq.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [getD_max?_eq_unbotD_maximum](declarations/getd-max-eq-unbotd-maximum.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [foldr_max_of_ne_nil](declarations/foldr-max-of-ne-nil.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [max_le_of_forall_le](declarations/max-le-of-forall-le.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [le_max_of_le](declarations/le-max-of-le.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [le_max_of_le'](declarations/le-max-of-le-source-edition-2.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e6480197d3eaac922032ffa35363366fd1b8ed9a7b80df3b9713dc509b2ef6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantf1b5b3900ea9558bfae8bcf2f8b7cb2cf9e72639ed2fcb6f9cc126591bee0e57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
