# Min Max Public Min Cons Cons

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 65 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantc06a64d90e9f76cf9d62988ddbdf324c1ad849f1c1e7cc6c4c0fa233f4ee4ab8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23cb26e01da36932e4ba51d5d419436eb295f3a9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/MinMaxPublicMinConsCons.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [min?_nil](declarations/min-nil.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [min?_singleton](declarations/min-singleton.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [min?_cons'](declarations/min-cons.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [min?_cons](declarations/min-cons-source-edition-2.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [min?_eq_none_iff](declarations/min-eq-none-iff.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isSome_min?_iff](declarations/issome-min-iff.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isSome_min?_of_mem](declarations/issome-min-of-mem.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isSome_min?_of_ne_nil](declarations/issome-min-of-ne-nil.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [min?_eq_head?](declarations/min-eq-head.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [min?_mem](declarations/min-mem.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [le_min?_iff](declarations/le-min-iff-source-edition-2.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [min?_eq_some_iff](declarations/min-eq-some-iff.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [min?_attach](declarations/min-attach.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [min?_eq_min?_attach](declarations/min-eq-min-attach.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [min?_eq_some_iff_subtype](declarations/min-eq-some-iff-subtype.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [min?_replicate](declarations/min-replicate.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [min?_replicate_of_pos](declarations/min-replicate-of-pos.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [foldl_min](declarations/foldl-min.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [min_singleton](declarations/min-singleton-source-edition-2.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [min_cons_cons](declarations/min-cons-cons.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [min_cons](declarations/min-cons-source-edition-3.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [min_cons_cons_nil](declarations/min-cons-cons-nil.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [min?_eq_some_min](declarations/min-eq-some-min.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [min_eq_get_min?](declarations/min-eq-get-min.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [get_min?](declarations/get-min.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [min_eq_head](declarations/min-eq-head-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [min_mem](declarations/min-mem-source-edition-2.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [min_le_of_mem](declarations/min-le-of-mem.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [le_min_iff](declarations/le-min-iff.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [min_eq_iff](declarations/min-eq-iff.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [min_replicate](declarations/min-replicate-source-edition-2.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [foldl_min_eq_min](declarations/foldl-min-eq-min.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [max?_nil](declarations/max-nil.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [max?_singleton](declarations/max-singleton-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [max?_cons'](declarations/max-cons.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [max?_cons](declarations/max-cons-source-edition-3.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [max?_eq_none_iff](declarations/max-eq-none-iff.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isSome_max?_iff](declarations/issome-max-iff.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isSome_max?_of_mem](declarations/issome-max-of-mem.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isSome_max?_of_ne_nil](declarations/issome-max-of-ne-nil.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [max?_eq_head?](declarations/max-eq-head.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [max?_mem](declarations/max-mem-source-edition-2.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [max?_le_iff](declarations/max-le-iff.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [max?_eq_some_iff](declarations/max-eq-some-iff.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [max?_attach](declarations/max-attach.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [max?_eq_max?_attach](declarations/max-eq-max-attach.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [max?_eq_some_iff_subtype](declarations/max-eq-some-iff-subtype.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [max?_eq_some_iff_legacy](declarations/max-eq-some-iff-legacy.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [max?_replicate](declarations/max-replicate-source-edition-2.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [max?_replicate_of_pos](declarations/max-replicate-of-pos.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [foldl_max](declarations/foldl-max.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [max_singleton](declarations/max-singleton.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [max_cons_cons](declarations/max-cons-cons.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [max_cons](declarations/max-cons-source-edition-2.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [max_cons_cons_nil](declarations/max-cons-cons-nil.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [max?_eq_some_max](declarations/max-eq-some-max.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [max_eq_get_max?](declarations/max-eq-get-max.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [get_max?](declarations/get-max.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [max_eq_head](declarations/max-eq-head-source-edition-2.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [max_mem](declarations/max-mem.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [max_le_iff](declarations/max-le-iff-source-edition-2.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [max_eq_iff](declarations/max-eq-iff.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [le_max_of_mem](declarations/le-max-of-mem.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [max_replicate](declarations/max-replicate.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [foldl_max_eq_max](declarations/foldl-max-eq-max.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e33d28d939d8910d3de4a659dfe0faaa084c75b36fa5ce57215aba233edf0fd5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantc06a64d90e9f76cf9d62988ddbdf324c1ad849f1c1e7cc6c4c0fa233f4ee4ab8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
