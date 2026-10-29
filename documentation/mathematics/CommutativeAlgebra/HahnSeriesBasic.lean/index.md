# Hahn Series Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**82 observed declarations and anonymous commands**, 66 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6aefdec6699efbea747212c2183a205e68d160b712a3c3ad7275ef4e2f24fa1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41a55ac28b69392ddbabe0d245b1cb3c7e649532`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/HahnSeriesBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [HahnSeries](declarations/hahnseries.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coeff_injective](declarations/coeff-injective.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coeff_inj](declarations/coeff-inj.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [support](declarations/support.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isPWO_support](declarations/ispwo-support.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isWF_support](declarations/iswf-support.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_support](declarations/mem-support.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coeff_zero](declarations/coeff-zero.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coeff_fun_eq_zero_iff](declarations/coeff-fun-eq-zero-iff.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ne_zero_of_coeff_ne_zero](declarations/ne-zero-of-coeff-ne-zero.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [support_zero](declarations/support-zero.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [support_nonempty_iff](declarations/support-nonempty-iff.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [support_eq_empty_iff](declarations/support-eq-empty-iff.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [map](declarations/map.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [map_zero](declarations/map-zero.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ofIterate](declarations/ofiterate.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [mk_eq_zero](declarations/mk-eq-zero.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toIterate](declarations/toiterate.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [iterateEquiv](declarations/iterateequiv.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [single](declarations/single.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coeff_single_same](declarations/coeff-single-same.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coeff_single_of_ne](declarations/coeff-single-of-ne.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coeff_single](declarations/coeff-single.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [support_single_of_ne](declarations/support-single-of-ne.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [support_single_subset](declarations/support-single-subset.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eq_of_mem_support_single](declarations/eq-of-mem-support-single.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [single_eq_zero](declarations/single-eq-zero.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [single_injective](declarations/single-injective.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [single_ne_zero](declarations/single-ne-zero.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [single_eq_zero_iff](declarations/single-eq-zero-iff.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [map_single](declarations/map-single.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [orderTop](declarations/ordertop.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [orderTop_zero](declarations/ordertop-zero.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [orderTop_of_Subsingleton](declarations/ordertop-of-subsingleton.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [orderTop_of_ne](declarations/ordertop-of-ne.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ne_zero_iff_orderTop](declarations/ne-zero-iff-ordertop.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [orderTop_eq_top_iff](declarations/ordertop-eq-top-iff.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [orderTop_eq_of_le](declarations/ordertop-eq-of-le.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [untop_orderTop_of_ne_zero](declarations/untop-ordertop-of-ne-zero.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coeff_orderTop_ne](declarations/coeff-ordertop-ne.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [orderTop_le_of_coeff_ne_zero](declarations/ordertop-le-of-coeff-ne-zero.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [orderTop_single](declarations/ordertop-single.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [orderTop_single_le](declarations/ordertop-single-le.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [lt_orderTop_single](declarations/lt-ordertop-single.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coeff_eq_zero_of_lt_orderTop](declarations/coeff-eq-zero-of-lt-ordertop.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [leadingCoeff](declarations/leadingcoeff.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [leadingCoeff_zero](declarations/leadingcoeff-zero.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [leadingCoeff_of_ne](declarations/leadingcoeff-of-ne.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [leadingCoeff_eq_iff](declarations/leadingcoeff-eq-iff.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [leadingCoeff_ne_iff](declarations/leadingcoeff-ne-iff.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [leadingCoeff_of_single](declarations/leadingcoeff-of-single.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [order](declarations/order.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [order_zero](declarations/order-zero.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [order_of_ne](declarations/order-of-ne.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [order_eq_orderTop_of_ne](declarations/order-eq-ordertop-of-ne.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coeff_order_ne_zero](declarations/coeff-order-ne-zero.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [order_le_of_coeff_ne_zero](declarations/order-le-of-coeff-ne-zero.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [order_single](declarations/order-single.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coeff_eq_zero_of_lt_order](declarations/coeff-eq-zero-of-lt-order.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [zero_lt_orderTop_iff](declarations/zero-lt-ordertop-iff.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [zero_lt_orderTop_of_order](declarations/zero-lt-ordertop-of-order.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [zero_le_orderTop_iff](declarations/zero-le-ordertop-iff.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [leadingCoeff_eq](declarations/leadingcoeff-eq.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [embDomain](declarations/embdomain.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [embDomain_coeff](declarations/embdomain-coeff.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [embDomain_mk_coeff](declarations/embdomain-mk-coeff.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [embDomain_notin_image_support](declarations/embdomain-notin-image-support.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [support_embDomain_subset](declarations/support-embdomain-subset.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [embDomain_notin_range](declarations/embdomain-notin-range.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [embDomain_zero](declarations/embdomain-zero.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [embDomain_single](declarations/embdomain-single.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [embDomain_injective](declarations/embdomain-injective.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [forallLTEqZero_supp_BddBelow](declarations/foralllteqzero-supp-bddbelow.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [BddBelow_zero](declarations/bddbelow-zero.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [suppBddBelow_supp_PWO](declarations/suppbddbelow-supp-pwo.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [ofSuppBddBelow](declarations/ofsuppbddbelow.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [zero_ofSuppBddBelow](declarations/zero-ofsuppbddbelow.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [order_ofForallLtEqZero](declarations/order-offoralllteqzero.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dda9f870b17439f33e09eb821bcb0337fe6d61b9025dba2994b669d9dc95c904 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6aefdec6699efbea747212c2183a205e68d160b712a3c3ad7275ef4e2f24fa1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
