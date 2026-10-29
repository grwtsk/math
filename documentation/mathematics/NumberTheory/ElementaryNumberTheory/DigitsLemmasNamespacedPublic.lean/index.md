# Digits Lemmas Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2a8172e35f44d9d45011204697f74b4c1dadc4ec2a0f96aac9c1540d229e0255.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fed898353b2b5c6cad438795bcd5217b7cae5e4e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/DigitsLemmasNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofDigits_eq_sum_mapIdx_aux](declarations/ofdigits-eq-sum-mapidx-aux.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ofDigits_eq_sum_mapIdx](declarations/ofdigits-eq-sum-mapidx.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [length_digits](declarations/length-digits.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [digits_length_le_iff](declarations/digits-length-le-iff.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [lt_digits_length_iff](declarations/lt-digits-length-iff.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [getLast_digit_ne_zero](declarations/getlast-digit-ne-zero.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [digits_append_digits](declarations/digits-append-digits.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [digits_append_zeroes_append_digits](declarations/digits-append-zeroes-append-digits.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [length_digits_le_length_digits_succ](declarations/length-digits-le-length-digits-succ.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [le_length_digits_le](declarations/le-length-digits-le.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pow_length_le_mul_ofDigits](declarations/pow-length-le-mul-ofdigits.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [base_pow_length_digits_le'](declarations/base-pow-length-digits-le-source-edition-2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [base_pow_length_digits_le](declarations/base-pow-length-digits-le.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sub_one_mul_sum_div_pow_eq_sub_sum_digits](declarations/sub-one-mul-sum-div-pow-eq-sub-sum-digits.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sub_one_mul_sum_log_div_pow_eq_sub_sum_digits](declarations/sub-one-mul-sum-log-div-pow-eq-sub-sum-digits.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [digits_two_eq_bits](declarations/digits-two-eq-bits.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [dvd_ofDigits_sub_ofDigits](declarations/dvd-ofdigits-sub-ofdigits.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ofDigits_modEq'](declarations/ofdigits-modeq-source-edition-2.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ofDigits_modEq](declarations/ofdigits-modeq.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ofDigits_mod](declarations/ofdigits-mod.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ofDigits_mod_eq_head!](declarations/ofdigits-mod-eq-head.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [head!_digits](declarations/head-digits.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ofDigits_zmodeq'](declarations/ofdigits-zmodeq-source-edition-2.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ofDigits_zmodeq](declarations/ofdigits-zmodeq.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ofDigits_zmod](declarations/ofdigits-zmod.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [modEq_digits_sum](declarations/modeq-digits-sum.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [zmodeq_ofDigits_digits](declarations/zmodeq-ofdigits-digits.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ofDigits_neg_one](declarations/ofdigits-neg-one.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [getD_digits](declarations/getd-digits.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [digitsAppend](declarations/digitsappend.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [length_digitsAppend](declarations/length-digitsappend.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lt_of_mem_digitsAppend](declarations/lt-of-mem-digitsappend.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mapsTo_ofDigits](declarations/mapsto-ofdigits.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mapsTo_digitsAppend](declarations/mapsto-digitsappend.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [injOn_ofDigits](declarations/injon-ofdigits.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [setInvOn_digitsAppend_ofDigits](declarations/setinvon-digitsappend-ofdigits.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [bijOn_ofDigits](declarations/bijon-ofdigits.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [bijOn_digitsAppend](declarations/bijon-digitsappend.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [sum_digits_ofDigits_eq_sum](declarations/sum-digits-ofdigits-eq-sum.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [fixedLengthDigits](declarations/fixedlengthdigits.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mem_fixedLengthDigits_iff](declarations/mem-fixedlengthdigits-iff.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Digits Lemmas Namespaced Public](declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-of-source-edition-2.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Digits Lemmas Namespaced Public](declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-of.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [fixedLengthDigits_zero](declarations/fixedlengthdigits-zero.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [fixedLengthDigits_one](declarations/fixedlengthdigits-one.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [card_fixedLengthDigits](declarations/card-fixedlengthdigits.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [consFixedLengthDigits](declarations/consfixedlengthdigits.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [ne_empty_of_mem_consFixedLengthDigits](declarations/ne-empty-of-mem-consfixedlengthdigits.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [consFixedLengthDigits_head](declarations/consfixedlengthdigits-head.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [cons_mem_fixedLengthDigits_succ](declarations/cons-mem-fixedlengthdigits-succ.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [pairwiseDisjoint_consFixedLengthDigits](declarations/pairwisedisjoint-consfixedlengthdigits.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [fixedLengthDigits_succ_eq_disjiUnion](declarations/fixedlengthdigits-succ-eq-disjiunion.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [sum_fixedLengthDigits_sum](declarations/sum-fixedlengthdigits-sum.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Nat.sum_sum_digits_eq](declarations/nat-sum-sum-digits-eq.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c432a3fc378fd9bfbedb01ef6ae875b387d0c2e46be1a77c784aa2dceaf9857c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2a8172e35f44d9d45011204697f74b4c1dadc4ec2a0f96aac9c1540d229e0255.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
