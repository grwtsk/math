# ZNum

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**95 observed declarations and anonymous commands**, 81 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/ZNum/Variantf870ace872b8ef4565a22438fc2dcd52420454f5aa1c747e072562400bb113a8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d12c1200df459993fcc3223c1efc2fc2cf71b31`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ZNum.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_zero](declarations/cast-zero-source-edition-2.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [cast_zero'](declarations/cast-zero.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [cast_one](declarations/cast-one.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [cast_pos](declarations/cast-pos.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [cast_neg](declarations/cast-neg.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [cast_zneg](declarations/cast-zneg.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [neg_zero](declarations/neg-zero.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [zneg_pos](declarations/zneg-pos.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [zneg_neg](declarations/zneg-neg.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [zneg_zneg](declarations/zneg-zneg.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [zneg_bit1](declarations/zneg-bit1.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [zneg_bitm1](declarations/zneg-bitm1.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [zneg_succ](declarations/zneg-succ.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [zneg_pred](declarations/zneg-pred.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [abs_to_nat](declarations/abs-to-nat.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [abs_toZNum](declarations/abs-toznum.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cast_to_int](declarations/cast-to-int.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [bit0_of_bit0](declarations/bit0-of-bit0.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [bit1_of_bit1](declarations/bit1-of-bit1.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cast_bit0](declarations/cast-bit0.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cast_bit1](declarations/cast-bit1.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cast_bitm1](declarations/cast-bitm1.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [add_zero](declarations/add-zero.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [zero_add](declarations/zero-add.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [add_one](declarations/add-one.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cast_to_znum](declarations/cast-to-znum.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cast_sub'](declarations/cast-sub-source-edition-2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [to_nat_eq_succ_pred](declarations/to-nat-eq-succ-pred.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [to_int_eq_succ_pred](declarations/to-int-eq-succ-pred.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [cast_sub'](declarations/cast-sub-source-edition-3.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toZNum_succ](declarations/toznum-succ.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toZNumNeg_succ](declarations/toznumneg-succ.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [pred_succ](declarations/pred-succ.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [succ_ofInt'](declarations/succ-ofint.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ofInt'_toZNum](declarations/ofint-toznum.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_ofZNum'](declarations/mem-ofznum.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ofZNum'_toNat](declarations/ofznum-tonat.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ofZNum_toNat](declarations/ofznum-tonat-source-edition-2.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [cast_ofZNum](declarations/cast-ofznum.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [sub_to_nat](declarations/sub-to-nat.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cast_add](declarations/cast-add.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [cast_succ](declarations/cast-succ.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mul_to_int](declarations/mul-to-int.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [cast_mul](declarations/cast-mul.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ofInt'_neg](declarations/ofint-neg.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [of_to_int'](declarations/of-to-int.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [to_int_inj](declarations/to-int-inj.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [cmp_to_int](declarations/cmp-to-int.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [lt_to_int](declarations/lt-to-int.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [le_to_int](declarations/le-to-int.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [cast_lt](declarations/cast-lt.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [cast_le](declarations/cast-le.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [cast_inj](declarations/cast-inj.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `macro` | [(anonymous)](declarations/macro-source-edition-2.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `macro` | [(anonymous)](declarations/macro.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [linearOrder](declarations/linearorder.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [addMonoid](declarations/addmonoid.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [addCommGroup](declarations/addcommgroup.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [addMonoidWithOne](declarations/addmonoidwithone.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mul_comm](declarations/mul-comm.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [add_le_add_left](declarations/add-le-add-left.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [commRing](declarations/commring.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [nontrivial](declarations/nontrivial.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [zeroLEOneClass](declarations/zeroleoneclass.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [isOrderedAddMonoid](declarations/isorderedaddmonoid.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [isStrictOrderedRing](declarations/isstrictorderedring.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [cast_sub](declarations/cast-sub.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [neg_of_int](declarations/neg-of-int.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [ofInt'_eq](declarations/ofint-eq.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [of_nat_toZNum](declarations/of-nat-toznum.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [of_to_int](declarations/of-to-int-source-edition-2.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [to_of_int](declarations/to-of-int.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [of_nat_toZNumNeg](declarations/of-nat-toznumneg.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [of_intCast](declarations/of-intcast.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [of_natCast](declarations/of-natcast.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [dvd_to_int](declarations/dvd-to-int.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [divMod_to_nat_aux](declarations/divmod-to-nat-aux.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [divMod_to_nat](declarations/divmod-to-nat.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [div'_to_nat](declarations/div-to-nat-source-edition-2.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [mod'_to_nat](declarations/mod-to-nat.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [div_zero](declarations/div-zero-source-edition-2.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [div_to_nat](declarations/div-to-nat.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [mod_zero](declarations/mod-zero.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [mod_to_nat](declarations/mod-to-nat-source-edition-2.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [gcd_to_nat_aux](declarations/gcd-to-nat-aux.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [gcd_to_nat](declarations/gcd-to-nat-source-edition-2.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [dvd_iff_mod_eq_zero](declarations/dvd-iff-mod-eq-zero-source-edition-2.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [decidableDvd](declarations/decidabledvd.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [PosNum.decidableDvd](declarations/posnum-decidabledvd.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [div_zero](declarations/div-zero.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [div_to_int](declarations/div-to-int.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [mod_to_int](declarations/mod-to-int.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [gcd_to_nat](declarations/gcd-to-nat.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [dvd_iff_mod_eq_zero](declarations/dvd-iff-mod-eq-zero.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [decidableDvd](declarations/decidabledvd-source-edition-2.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e804e96309ea134a03226b71c41621b4ed24cc73b9a9f5e8e73917b9f166d3fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/ZNum/Variantf870ace872b8ef4565a22438fc2dcd52420454f5aa1c747e072562400bb113a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
