# List Min Max Namespaced Maximum Eq Bot

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**87 observed declarations and anonymous commands**, 80 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant1fee375de3251f1be20ba342a4b7d3b55ef687f6d13df55f0ba47733c8584f1b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ac67c25a2583069b5aff7fdab671c9385a730de`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqBot.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [argAux](declarations/argaux.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [foldl_argAux_eq_none](declarations/foldl-argaux-eq-none.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [foldl_argAux_mem](declarations/foldl-argaux-mem.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [argAux_self](declarations/argaux-self.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [not_of_mem_foldl_argAux](declarations/not-of-mem-foldl-argaux.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [argmax](declarations/argmax.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [argmin](declarations/argmin.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [argmax_nil](declarations/argmax-nil.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [argmin_nil](declarations/argmin-nil.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [argmax_singleton](declarations/argmax-singleton.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [argmin_singleton](declarations/argmin-singleton.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [not_lt_of_mem_argmax](declarations/not-lt-of-mem-argmax.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [not_lt_of_mem_argmin](declarations/not-lt-of-mem-argmin.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [argmax_concat](declarations/argmax-concat.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [argmin_concat](declarations/argmin-concat.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [argmax_mem](declarations/argmax-mem.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [argmin_mem](declarations/argmin-mem.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [argmax_eq_none](declarations/argmax-eq-none.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [argmin_eq_none](declarations/argmin-eq-none.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [le_of_mem_argmax](declarations/le-of-mem-argmax.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [le_of_mem_argmin](declarations/le-of-mem-argmin.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [argmax_cons](declarations/argmax-cons.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [argmin_cons](declarations/argmin-cons.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [index_of_argmax](declarations/index-of-argmax.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [index_of_argmin](declarations/index-of-argmin.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_argmax_iff](declarations/mem-argmax-iff.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [argmax_eq_some_iff](declarations/argmax-eq-some-iff.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_argmin_iff](declarations/mem-argmin-iff.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [argmin_eq_some_iff](declarations/argmin-eq-some-iff.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [maximum](declarations/maximum.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [minimum](declarations/minimum.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [maximum_nil](declarations/maximum-nil.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [minimum_nil](declarations/minimum-nil.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [maximum_singleton](declarations/maximum-singleton.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [minimum_singleton](declarations/minimum-singleton.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [maximum_mem](declarations/maximum-mem.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [minimum_mem](declarations/minimum-mem.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [maximum_eq_bot](declarations/maximum-eq-bot.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [minimum_eq_top](declarations/minimum-eq-top.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [not_maximum_lt_of_mem](declarations/not-maximum-lt-of-mem.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [not_lt_minimum_of_mem](declarations/not-lt-minimum-of-mem.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [not_maximum_lt_of_mem'](declarations/not-maximum-lt-of-mem-source-edition-2.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [not_lt_minimum_of_mem'](declarations/not-lt-minimum-of-mem-source-edition-2.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [maximum_concat](declarations/maximum-concat.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [le_maximum_of_mem](declarations/le-maximum-of-mem-source-edition-2.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [minimum_le_of_mem](declarations/minimum-le-of-mem.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [le_maximum_of_mem'](declarations/le-maximum-of-mem.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [minimum_le_of_mem'](declarations/minimum-le-of-mem-source-edition-2.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [minimum_concat](declarations/minimum-concat.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [maximum_cons](declarations/maximum-cons.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [minimum_cons](declarations/minimum-cons.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [maximum_append](declarations/maximum-append.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [minimum_append](declarations/minimum-append.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [maximum_le_of_forall_le](declarations/maximum-le-of-forall-le.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [le_minimum_of_forall_le](declarations/le-minimum-of-forall-le.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [maximum_mono](declarations/maximum-mono.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [minimum_anti](declarations/minimum-anti.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [maximum_eq_coe_iff](declarations/maximum-eq-coe-iff.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [minimum_eq_coe_iff](declarations/minimum-eq-coe-iff.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_le_maximum_iff](declarations/coe-le-maximum-iff.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [minimum_le_coe_iff](declarations/minimum-le-coe-iff.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [maximum_ne_bot_of_ne_nil](declarations/maximum-ne-bot-of-ne-nil.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [minimum_ne_top_of_ne_nil](declarations/minimum-ne-top-of-ne-nil.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [maximum_ne_bot_of_length_pos](declarations/maximum-ne-bot-of-length-pos.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [minimum_ne_top_of_length_pos](declarations/minimum-ne-top-of-length-pos.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [maximum_of_length_pos](declarations/maximum-of-length-pos.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [minimum_of_length_pos](declarations/minimum-of-length-pos.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [coe_maximum_of_length_pos](declarations/coe-maximum-of-length-pos.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [coe_minimum_of_length_pos](declarations/coe-minimum-of-length-pos.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [le_maximum_of_length_pos_iff](declarations/le-maximum-of-length-pos-iff.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [minimum_of_length_pos_le_iff](declarations/minimum-of-length-pos-le-iff.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [maximum_of_length_pos_mem](declarations/maximum-of-length-pos-mem.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [minimum_of_length_pos_mem](declarations/minimum-of-length-pos-mem.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [le_maximum_of_length_pos_of_mem](declarations/le-maximum-of-length-pos-of-mem.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [minimum_of_length_pos_le_of_mem](declarations/minimum-of-length-pos-le-of-mem.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [getElem_le_maximum_of_length_pos](declarations/getelem-le-maximum-of-length-pos.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [minimum_of_length_pos_le_getElem](declarations/minimum-of-length-pos-le-getelem.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [getD_max?_eq_unbotD_maximum](declarations/getd-max-eq-unbotd-maximum.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [getD_min?_eq_untopD_minimum](declarations/getd-min-eq-untopd-minimum.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [foldr_max_of_ne_nil](declarations/foldr-max-of-ne-nil.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [max_le_of_forall_le](declarations/max-le-of-forall-le.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [le_max_of_le](declarations/le-max-of-le-source-edition-2.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [foldr_min_of_ne_nil](declarations/foldr-min-of-ne-nil.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [le_min_of_forall_le](declarations/le-min-of-forall-le.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [min_le_of_le](declarations/min-le-of-le-source-edition-2.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [le_max_of_le'](declarations/le-max-of-le.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [min_le_of_le'](declarations/min-le-of-le.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ca54bfb9ff596870693e5e4483a0212f97cd29d07b31937a58a7e08f2e7c8f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant1fee375de3251f1be20ba342a4b7d3b55ef687f6d13df55f0ba47733c8584f1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
