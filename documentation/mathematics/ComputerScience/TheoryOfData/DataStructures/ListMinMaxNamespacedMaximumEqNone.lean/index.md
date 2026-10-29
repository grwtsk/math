# List Min Max Namespaced Maximum Eq None

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**77 observed declarations and anonymous commands**, 70 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdbe5b1888cea485c6b1d53a23c772b56a447bd61c94fcd998849eb72eb4c2013.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b53ca8167c6249dced0a2ce247ce3e59f9452cb6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListMinMaxNamespacedMaximumEqNone.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [argAux](declarations/argaux.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [foldl_argAux_eq_none](declarations/foldl-argaux-eq-none.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [foldl_argAux_mem](declarations/foldl-argaux-mem.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [argAux_self](declarations/argaux-self.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [not_of_mem_foldl_argAux](declarations/not-of-mem-foldl-argaux.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [argmax](declarations/argmax.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [argmin](declarations/argmin.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [argmax_nil](declarations/argmax-nil.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [argmin_nil](declarations/argmin-nil.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [argmax_singleton](declarations/argmax-singleton.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [argmin_singleton](declarations/argmin-singleton.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [not_lt_of_mem_argmax](declarations/not-lt-of-mem-argmax.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [not_lt_of_mem_argmin](declarations/not-lt-of-mem-argmin.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [argmax_concat](declarations/argmax-concat.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [argmin_concat](declarations/argmin-concat.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [argmax_mem](declarations/argmax-mem.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [argmin_mem](declarations/argmin-mem.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [argmax_eq_none](declarations/argmax-eq-none.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [argmin_eq_none](declarations/argmin-eq-none.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [le_of_mem_argmax](declarations/le-of-mem-argmax.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [le_of_mem_argmin](declarations/le-of-mem-argmin.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [argmax_cons](declarations/argmax-cons.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [argmin_cons](declarations/argmin-cons.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [index_of_argmax](declarations/index-of-argmax.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [index_of_argmin](declarations/index-of-argmin.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_argmax_iff](declarations/mem-argmax-iff.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [argmax_eq_some_iff](declarations/argmax-eq-some-iff.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_argmin_iff](declarations/mem-argmin-iff.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [argmin_eq_some_iff](declarations/argmin-eq-some-iff.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [maximum](declarations/maximum.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [minimum](declarations/minimum.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [maximum_nil](declarations/maximum-nil.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [minimum_nil](declarations/minimum-nil.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [maximum_singleton](declarations/maximum-singleton.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [minimum_singleton](declarations/minimum-singleton.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [maximum_mem](declarations/maximum-mem.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [minimum_mem](declarations/minimum-mem.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [maximum_eq_none](declarations/maximum-eq-none.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [minimum_eq_none](declarations/minimum-eq-none.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [not_lt_maximum_of_mem](declarations/not-lt-maximum-of-mem-source-edition-2.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [minimum_not_lt_of_mem](declarations/minimum-not-lt-of-mem.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [not_lt_maximum_of_mem'](declarations/not-lt-maximum-of-mem.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [not_lt_minimum_of_mem'](declarations/not-lt-minimum-of-mem.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [maximum_concat](declarations/maximum-concat.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [le_maximum_of_mem](declarations/le-maximum-of-mem-source-edition-2.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [minimum_le_of_mem](declarations/minimum-le-of-mem-source-edition-2.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [le_maximum_of_mem'](declarations/le-maximum-of-mem.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [minimum_le_of_mem'](declarations/minimum-le-of-mem.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [minimum_concat](declarations/minimum-concat.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [maximum_cons](declarations/maximum-cons.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [minimum_cons](declarations/minimum-cons.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [maximum_le_of_forall_le](declarations/maximum-le-of-forall-le.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [le_minimum_of_forall_le](declarations/le-minimum-of-forall-le.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [maximum_eq_coe_iff](declarations/maximum-eq-coe-iff.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [minimum_eq_coe_iff](declarations/minimum-eq-coe-iff.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [coe_le_maximum_iff](declarations/coe-le-maximum-iff.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [minimum_le_coe_iff](declarations/minimum-le-coe-iff.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [maximum_ne_bot_of_ne_nil](declarations/maximum-ne-bot-of-ne-nil.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [minimum_ne_top_of_ne_nil](declarations/minimum-ne-top-of-ne-nil.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [maximum_ne_bot_of_length_pos](declarations/maximum-ne-bot-of-length-pos.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [minimum_ne_top_of_length_pos](declarations/minimum-ne-top-of-length-pos.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [maximum_of_length_pos](declarations/maximum-of-length-pos.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [minimum_of_length_pos](declarations/minimum-of-length-pos.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [coe_maximum_of_length_pos](declarations/coe-maximum-of-length-pos.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [coe_minimum_of_length_pos](declarations/coe-minimum-of-length-pos.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [le_maximum_of_length_pos_iff](declarations/le-maximum-of-length-pos-iff.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [minimum_of_length_pos_le_iff](declarations/minimum-of-length-pos-le-iff.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [le_maximum_of_length_pos_of_mem](declarations/le-maximum-of-length-pos-of-mem.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [minimum_of_length_pos_le_of_mem](declarations/minimum-of-length-pos-le-of-mem.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [getElem_le_maximum_of_length_pos](declarations/getelem-le-maximum-of-length-pos.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [minimum_of_length_pos_le_getElem](declarations/minimum-of-length-pos-le-getelem.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [foldr_max_of_ne_nil](declarations/foldr-max-of-ne-nil.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [max_le_of_forall_le](declarations/max-le-of-forall-le.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [le_max_of_le](declarations/le-max-of-le.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [foldr_min_of_ne_nil](declarations/foldr-min-of-ne-nil.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [le_min_of_forall_le](declarations/le-min-of-forall-le.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [min_le_of_le](declarations/min-le-of-le.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=828ee19e15be901175f2d929bf0262ee97ecbda3103eb661a57aa31d291367e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdbe5b1888cea485c6b1d53a23c772b56a447bd61c94fcd998849eb72eb4c2013.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
