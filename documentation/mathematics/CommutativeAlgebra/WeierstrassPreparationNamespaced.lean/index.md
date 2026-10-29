# Weierstrass Preparation Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31cd361ff4a4d09e6a6f0618d0a8f34cf9b22ee2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/WeierstrassPreparationNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsWeierstrassDivisionAt](declarations/isweierstrassdivisionat.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [IsWeierstrassDivision](declarations/isweierstrassdivision.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isWeierstrassDivisionAt_zero](declarations/isweierstrassdivisionat-zero.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsWeierstrassDivisionAt.coeff_f_sub_r_mem](declarations/isweierstrassdivisionat-coeff-f-sub-r-mem.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [IsWeierstrassDivisorAt](declarations/isweierstrassdivisorat.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [IsWeierstrassDivisor](declarations/isweierstrassdivisor.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsWeierstrassDivisor.of_map_ne_zero](declarations/isweierstrassdivisor-of-map-ne-zero.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coeff_trunc_order_mem](declarations/coeff-trunc-order-mem.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isUnit_shift](declarations/isunit-shift.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [seq](declarations/seq.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coeff_seq_mem](declarations/coeff-seq-mem.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coeff_seq_succ_sub_seq_mem](declarations/coeff-seq-succ-sub-seq-mem.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [seq_zero](declarations/seq-zero.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [seq_one](declarations/seq-one.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [divCoeff](declarations/divcoeff.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [div](declarations/div.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coeff_div](declarations/coeff-div.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coeff_div_sub_seq_mem](declarations/coeff-div-sub-seq-mem.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mod](declarations/mod.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isWeierstrassDivisionAt_div_mod](declarations/isweierstrassdivisionat-div-mod.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eq_zero_of_mul_eq](declarations/eq-zero-of-mul-eq.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eq_of_mul_add_eq_mul_add](declarations/eq-of-mul-add-eq-mul-add.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_isWeierstrassDivision](declarations/exists-isweierstrassdivision.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [weierstrassDiv](declarations/weierstrassdiv.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [weierstrassMod](declarations/weierstrassmod.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [weierstrassDiv_zero_right](declarations/weierstrassdiv-zero-right.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [weierstrassMod_zero_right](declarations/weierstrassmod-zero-right.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [degree_weierstrassMod_lt](declarations/degree-weierstrassmod-lt.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isWeierstrassDivision_weierstrassDiv_weierstrassMod](declarations/isweierstrassdivision-weierstrassdiv-weierstrassmod.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eq_mul_weierstrassDiv_add_weierstrassMod](declarations/eq-mul-weierstrassdiv-add-weierstrassmod.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsWeierstrassDivision.elim](declarations/isweierstrassdivision-elim.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsWeierstrassDivision.eq_zero](declarations/isweierstrassdivision-eq-zero.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsWeierstrassDivision.unique](declarations/isweierstrassdivision-unique.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [weierstrassDiv_zero_left](declarations/weierstrassdiv-zero-left.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [weierstrassMod_zero_left](declarations/weierstrassmod-zero-left.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [IsWeierstrassFactorizationAt](declarations/isweierstrassfactorizationat.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `abbrev` | [IsWeierstrassFactorization](declarations/isweierstrassfactorization.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [map_ne_zero_of_ne_top](declarations/map-ne-zero-of-ne-top.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [degree_eq_coe_lift_order_map_of_ne_top](declarations/degree-eq-coe-lift-order-map-of-ne-top.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [natDegree_eq_toNat_order_map_of_ne_top](declarations/natdegree-eq-tonat-order-map-of-ne-top.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_ne_zero](declarations/map-ne-zero.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [degree_eq_coe_lift_order_map](declarations/degree-eq-coe-lift-order-map.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [natDegree_eq_toNat_order_map](declarations/natdegree-eq-tonat-order-map.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsWeierstrassDivision.isUnit_of_map_ne_zero](declarations/isweierstrassdivision-isunit-of-map-ne-zero.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsWeierstrassDivision.isWeierstrassFactorization](declarations/isweierstrassdivision-isweierstrassfactorization.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IsWeierstrassFactorization.isWeierstrassDivision](declarations/isweierstrassfactorization-isweierstrassdivision.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [exists_isWeierstrassFactorization](declarations/exists-isweierstrassfactorization.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [weierstrassDistinguished](declarations/weierstrassdistinguished.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [weierstrassUnit](declarations/weierstrassunit.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isWeierstrassFactorization_weierstrassDistinguished_weierstrassUnit](declarations/isweierstrassfactorization-weierstrassdistinguished-weierstrassunit.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isDistinguishedAt_weierstrassDistinguished](declarations/isdistinguishedat-weierstrassdistinguished.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isUnit_weierstrassUnit](declarations/isunit-weierstrassunit.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [eq_weierstrassDistinguished_mul_weierstrassUnit](declarations/eq-weierstrassdistinguished-mul-weierstrassunit.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IsWeierstrassFactorization.elim](declarations/isweierstrassfactorization-elim.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [IsWeierstrassFactorization.unique](declarations/isweierstrassfactorization-unique.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=787157e2e7a988941f3a5e250c0bd98207764506d3a32b69ed3a6f73f66cce56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/WeierstrassPreparation/Variant43aac33bb2613a40ed59bf9e957f3b3862f8525eef05808ffafeaa53a57c3944.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
