# Weierstrass Preparation

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79131c1412bbd5c6ba1f9655dce9b7439c091c75`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/WeierstrassPreparation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsWeierstrassDivisionAt](declarations/isweierstrassdivisionat.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [IsWeierstrassDivision](declarations/isweierstrassdivision.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isWeierstrassDivisionAt_zero](declarations/isweierstrassdivisionat-zero.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsWeierstrassDivisionAt.coeff_f_sub_r_mem](declarations/isweierstrassdivisionat-coeff-f-sub-r-mem.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [IsWeierstrassDivisorAt](declarations/isweierstrassdivisorat.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [IsWeierstrassDivisor](declarations/isweierstrassdivisor.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsWeierstrassDivisor.of_map_ne_zero](declarations/isweierstrassdivisor-of-map-ne-zero.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coeff_trunc_order_mem](declarations/coeff-trunc-order-mem.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isUnit_shift](declarations/isunit-shift.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [seq](declarations/seq.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coeff_seq_mem](declarations/coeff-seq-mem.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coeff_seq_succ_sub_seq_mem](declarations/coeff-seq-succ-sub-seq-mem.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [seq_zero](declarations/seq-zero.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [seq_one](declarations/seq-one.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [divCoeff](declarations/divcoeff.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [div](declarations/div.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coeff_div](declarations/coeff-div.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coeff_div_sub_seq_mem](declarations/coeff-div-sub-seq-mem.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mod](declarations/mod.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isWeierstrassDivisionAt_div_mod](declarations/isweierstrassdivisionat-div-mod.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eq_zero_of_mul_eq](declarations/eq-zero-of-mul-eq.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eq_of_mul_add_eq_mul_add](declarations/eq-of-mul-add-eq-mul-add.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_isWeierstrassDivision](declarations/exists-isweierstrassdivision.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [weierstrassDiv](declarations/weierstrassdiv.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [weierstrassMod](declarations/weierstrassmod.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [weierstrassDiv_zero_right](declarations/weierstrassdiv-zero-right.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [weierstrassMod_zero_right](declarations/weierstrassmod-zero-right.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [degree_weierstrassMod_lt](declarations/degree-weierstrassmod-lt.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isWeierstrassDivision_weierstrassDiv_weierstrassMod](declarations/isweierstrassdivision-weierstrassdiv-weierstrassmod.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eq_mul_weierstrassDiv_add_weierstrassMod](declarations/eq-mul-weierstrassdiv-add-weierstrassmod.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsWeierstrassDivision.elim](declarations/isweierstrassdivision-elim.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsWeierstrassDivision.eq_zero](declarations/isweierstrassdivision-eq-zero.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsWeierstrassDivision.unique](declarations/isweierstrassdivision-unique.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [weierstrassDiv_zero_left](declarations/weierstrassdiv-zero-left.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [weierstrassMod_zero_left](declarations/weierstrassmod-zero-left.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [IsWeierstrassFactorizationAt](declarations/isweierstrassfactorizationat.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `abbrev` | [IsWeierstrassFactorization](declarations/isweierstrassfactorization.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [map_ne_zero_of_ne_top](declarations/map-ne-zero-of-ne-top.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [degree_eq_coe_lift_order_map_of_ne_top](declarations/degree-eq-coe-lift-order-map-of-ne-top.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [natDegree_eq_toNat_order_map_of_ne_top](declarations/natdegree-eq-tonat-order-map-of-ne-top.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_ne_zero](declarations/map-ne-zero.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [degree_eq_coe_lift_order_map](declarations/degree-eq-coe-lift-order-map.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [natDegree_eq_toNat_order_map](declarations/natdegree-eq-tonat-order-map.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsWeierstrassDivision.isUnit_of_map_ne_zero](declarations/isweierstrassdivision-isunit-of-map-ne-zero.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsWeierstrassDivision.isWeierstrassFactorization](declarations/isweierstrassdivision-isweierstrassfactorization.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IsWeierstrassFactorization.isWeierstrassDivision](declarations/isweierstrassfactorization-isweierstrassdivision.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [exists_isWeierstrassFactorization](declarations/exists-isweierstrassfactorization.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [weierstrassDistinguished](declarations/weierstrassdistinguished.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [weierstrassUnit](declarations/weierstrassunit.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isWeierstrassFactorization_weierstrassDistinguished_weierstrassUnit](declarations/isweierstrassfactorization-weierstrassdistinguished-weierstrassunit.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isDistinguishedAt_weierstrassDistinguished](declarations/isdistinguishedat-weierstrassdistinguished.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isUnit_weierstrassUnit](declarations/isunit-weierstrassunit.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [eq_weierstrassDistinguished_mul_weierstrassUnit](declarations/eq-weierstrassdistinguished-mul-weierstrassunit.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IsWeierstrassFactorization.elim](declarations/isweierstrassfactorization-elim.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [IsWeierstrassFactorization.unique](declarations/isweierstrassfactorization-unique.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8c24035731cf53b833b1798332fd79780e2ca06beec18c7641655942ed4d1e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
