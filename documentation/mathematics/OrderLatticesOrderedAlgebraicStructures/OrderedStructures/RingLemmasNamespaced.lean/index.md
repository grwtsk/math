# Ring Lemmas Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**161 observed declarations and anonymous commands**, 143 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variante7f72b0631a3998a754805d33a9390f40d4997617621a1ca9eefd057911f505c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3375d2c9053676133890d003c030ae10b67a3b57`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingLemmasNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PosMulMono](declarations/posmulmono.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [MulPosMono](declarations/mulposmono.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [PosMulStrictMono](declarations/posmulstrictmono.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [MulPosStrictMono](declarations/mulposstrictmono.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [PosMulReflectLT](declarations/posmulreflectlt.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [MulPosReflectLT](declarations/mulposreflectlt.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [PosMulMonoRev](declarations/posmulmonorev.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [MulPosMonoRev](declarations/mulposmonorev.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [PosMulMono.to_covariantClass_pos_mul_le](declarations/to-covariantclass-pos-mul-le-source-line-140-occurrence-2.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [MulPosMono.to_covariantClass_pos_mul_le](declarations/to-covariantclass-pos-mul-le.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [PosMulReflectLT.to_contravariantClass_pos_mul_lt](declarations/to-contravariantclass-pos-mul-lt-source-line-150-occurrence-2.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [MulPosReflectLT.to_contravariantClass_pos_mul_lt](declarations/to-contravariantclass-pos-mul-lt.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mul_le_mul_of_nonneg_left](declarations/mul-le-mul-of-nonneg-left.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mul_le_mul_of_nonneg_right](declarations/mul-le-mul-of-nonneg-right.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mul_lt_mul_of_pos_left](declarations/mul-lt-mul-of-pos-left.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mul_lt_mul_of_pos_right](declarations/mul-lt-mul-of-pos-right.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lt_of_mul_lt_mul_left](declarations/lt-of-mul-lt-mul-left.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lt_of_mul_lt_mul_right](declarations/lt-of-mul-lt-mul-right.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [le_of_mul_le_mul_left](declarations/le-of-mul-le-mul-left.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [le_of_mul_le_mul_right](declarations/le-of-mul-le-mul-right.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mul_lt_mul_left](declarations/mul-lt-mul-left.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mul_lt_mul_right](declarations/mul-lt-mul-right.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mul_le_mul_left](declarations/mul-le-mul-left.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mul_le_mul_right](declarations/mul-le-mul-right.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mul_lt_mul_of_pos_of_nonneg](declarations/mul-lt-mul-of-pos-of-nonneg.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mul_lt_mul_of_le_of_le'](declarations/mul-lt-mul-of-le-of-le.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mul_lt_mul_of_nonneg_of_pos](declarations/mul-lt-mul-of-nonneg-of-pos.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mul_lt_mul_of_le_of_lt'](declarations/mul-lt-mul-of-le-of-lt.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mul_lt_mul_of_pos_of_pos](declarations/mul-lt-mul-of-pos-of-pos.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mul_lt_mul_of_lt_of_lt'](declarations/mul-lt-mul-of-lt-of-lt.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mul_lt_of_mul_lt_of_nonneg_left](declarations/mul-lt-of-mul-lt-of-nonneg-left.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lt_mul_of_lt_mul_of_nonneg_left](declarations/lt-mul-of-lt-mul-of-nonneg-left.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mul_lt_of_mul_lt_of_nonneg_right](declarations/mul-lt-of-mul-lt-of-nonneg-right.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lt_mul_of_lt_mul_of_nonneg_right](declarations/lt-mul-of-lt-mul-of-nonneg-right.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [PosMulMonoRev.toPosMulStrictMono](declarations/posmulmonorev-toposmulstrictmono.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [MulPosMonoRev.toMulPosStrictMono](declarations/mulposmonorev-tomulposstrictmono.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [posMulStrictMono_iff_posMulMonoRev](declarations/posmulstrictmono-iff-posmulmonorev.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mulPosStrictMono_iff_mulPosMonoRev](declarations/mulposstrictmono-iff-mulposmonorev.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [PosMulReflectLT.toPosMulMono](declarations/posmulreflectlt-toposmulmono.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [MulPosReflectLT.toMulPosMono](declarations/mulposreflectlt-tomulposmono.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [PosMulMono.toPosMulReflectLT](declarations/posmulmono-toposmulreflectlt.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [MulPosMono.toMulPosReflectLT](declarations/mulposmono-tomulposreflectlt.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [posMulMono_iff_posMulReflectLT](declarations/posmulmono-iff-posmulreflectlt.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mulPosMono_iff_mulPosReflectLT](declarations/mulposmono-iff-mulposreflectlt.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Left.mul_pos](declarations/left-mul-pos.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mul_neg_of_pos_of_neg](declarations/mul-neg-of-pos-of-neg.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [zero_lt_mul_left](declarations/zero-lt-mul-left.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Right.mul_pos](declarations/right-mul-pos.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mul_neg_of_neg_of_pos](declarations/mul-neg-of-neg-of-pos.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [zero_lt_mul_right](declarations/zero-lt-mul-right.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Left.mul_nonneg](declarations/left-mul-nonneg.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [mul_nonpos_of_nonneg_of_nonpos](declarations/mul-nonpos-of-nonneg-of-nonpos.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Right.mul_nonneg](declarations/right-mul-nonneg.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [mul_nonpos_of_nonpos_of_nonneg](declarations/mul-nonpos-of-nonpos-of-nonneg.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [pos_of_mul_pos_right](declarations/pos-of-mul-pos-right.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [pos_of_mul_pos_left](declarations/pos-of-mul-pos-left.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [pos_iff_pos_of_mul_pos](declarations/pos-iff-pos-of-mul-pos.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mul_le_mul_of_le_of_le](declarations/mul-le-mul-of-le-of-le.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mul_le_mul](declarations/mul-le-mul.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mul_self_le_mul_self](declarations/mul-self-le-mul-self.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mul_le_of_mul_le_of_nonneg_left](declarations/mul-le-of-mul-le-of-nonneg-left.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [le_mul_of_le_mul_of_nonneg_left](declarations/le-mul-of-le-mul-of-nonneg-left.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [mul_le_of_mul_le_of_nonneg_right](declarations/mul-le-of-mul-le-of-nonneg-right.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [le_mul_of_le_mul_of_nonneg_right](declarations/le-mul-of-le-mul-of-nonneg-right.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [posMulMono_iff_covariant_pos](declarations/posmulmono-iff-covariant-pos.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mulPosMono_iff_covariant_pos](declarations/mulposmono-iff-covariant-pos.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [posMulReflectLT_iff_contravariant_pos](declarations/posmulreflectlt-iff-contravariant-pos.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mulPosReflectLT_iff_contravariant_pos](declarations/mulposreflectlt-iff-contravariant-pos.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mul_left_cancel_iff_of_pos](declarations/mul-left-cancel-iff-of-pos.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mul_right_cancel_iff_of_pos](declarations/mul-right-cancel-iff-of-pos.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mul_eq_mul_iff_eq_and_eq_of_pos](declarations/mul-eq-mul-iff-eq-and-eq-of-pos.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [mul_eq_mul_iff_eq_and_eq_of_pos'](declarations/mul-eq-mul-iff-eq-and-eq-of-pos-source-edition-2.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [pos_and_pos_or_neg_and_neg_of_mul_pos](declarations/pos-and-pos-or-neg-and-neg-of-mul-pos.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [neg_of_mul_pos_right](declarations/neg-of-mul-pos-right.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [neg_of_mul_pos_left](declarations/neg-of-mul-pos-left.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [neg_iff_neg_of_mul_pos](declarations/neg-iff-neg-of-mul-pos.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Left.neg_of_mul_neg_left](declarations/left-neg-of-mul-neg-left.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Right.neg_of_mul_neg_left](declarations/right-neg-of-mul-neg-left.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Left.neg_of_mul_neg_right](declarations/left-neg-of-mul-neg-right.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Right.neg_of_mul_neg_right](declarations/right-neg-of-mul-neg-right.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [le_mul_iff_one_le_right](declarations/le-mul-iff-one-le-right.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [lt_mul_iff_one_lt_right](declarations/lt-mul-iff-one-lt-right.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [mul_le_iff_le_one_right](declarations/mul-le-iff-le-one-right.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [mul_lt_iff_lt_one_right](declarations/mul-lt-iff-lt-one-right.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [le_mul_iff_one_le_left](declarations/le-mul-iff-one-le-left.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [lt_mul_iff_one_lt_left](declarations/lt-mul-iff-one-lt-left.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [mul_le_iff_le_one_left](declarations/mul-le-iff-le-one-left.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [mul_lt_iff_lt_one_left](declarations/mul-lt-iff-lt-one-left.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [mul_le_of_le_one_left](declarations/mul-le-of-le-one-left.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [le_mul_of_one_le_left](declarations/le-mul-of-one-le-left.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [mul_le_of_le_one_right](declarations/mul-le-of-le-one-right.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [le_mul_of_one_le_right](declarations/le-mul-of-one-le-right.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [mul_lt_of_lt_one_left](declarations/mul-lt-of-lt-one-left.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [lt_mul_of_one_lt_left](declarations/lt-mul-of-one-lt-left.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [mul_lt_of_lt_one_right](declarations/mul-lt-of-lt-one-right.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [lt_mul_of_one_lt_right](declarations/lt-mul-of-one-lt-right.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [mul_le_of_le_of_le_one_of_nonneg](declarations/mul-le-of-le-of-le-one-of-nonneg.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [mul_lt_of_le_of_lt_one_of_pos](declarations/mul-lt-of-le-of-lt-one-of-pos.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [mul_lt_of_lt_of_le_one_of_nonneg](declarations/mul-lt-of-lt-of-le-one-of-nonneg.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Left.mul_le_one_of_le_of_le](declarations/left-mul-le-one-of-le-of-le.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Left.mul_lt_of_le_of_lt_one_of_pos](declarations/left-mul-lt-of-le-of-lt-one-of-pos.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Left.mul_lt_of_lt_of_le_one_of_nonneg](declarations/left-mul-lt-of-lt-of-le-one-of-nonneg.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [mul_le_of_le_of_le_one'](declarations/mul-le-of-le-of-le-one.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [mul_lt_of_lt_of_le_one'](declarations/mul-lt-of-lt-of-le-one.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [mul_lt_of_le_of_lt_one'](declarations/mul-lt-of-le-of-lt-one.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [mul_lt_of_lt_of_lt_one_of_pos](declarations/mul-lt-of-lt-of-lt-one-of-pos.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [le_mul_of_le_of_one_le_of_nonneg](declarations/le-mul-of-le-of-one-le-of-nonneg.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [lt_mul_of_le_of_one_lt_of_pos](declarations/lt-mul-of-le-of-one-lt-of-pos.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [lt_mul_of_lt_of_one_le_of_nonneg](declarations/lt-mul-of-lt-of-one-le-of-nonneg.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Left.one_le_mul_of_le_of_le](declarations/left-one-le-mul-of-le-of-le.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [Left.one_lt_mul_of_le_of_lt_of_pos](declarations/left-one-lt-mul-of-le-of-lt-of-pos.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [Left.lt_mul_of_lt_of_one_le_of_nonneg](declarations/left-lt-mul-of-lt-of-one-le-of-nonneg.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [le_mul_of_le_of_one_le'](declarations/le-mul-of-le-of-one-le.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [lt_mul_of_le_of_one_lt'](declarations/lt-mul-of-le-of-one-lt.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [lt_mul_of_lt_of_one_le'](declarations/lt-mul-of-lt-of-one-le.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [lt_mul_of_lt_of_one_lt_of_pos](declarations/lt-mul-of-lt-of-one-lt-of-pos.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [mul_le_of_le_one_of_le_of_nonneg](declarations/mul-le-of-le-one-of-le-of-nonneg.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [mul_lt_of_lt_one_of_le_of_pos](declarations/mul-lt-of-lt-one-of-le-of-pos.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [mul_lt_of_le_one_of_lt_of_nonneg](declarations/mul-lt-of-le-one-of-lt-of-nonneg.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Right.mul_lt_one_of_lt_of_le_of_pos](declarations/right-mul-lt-one-of-lt-of-le-of-pos.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [Right.mul_lt_one_of_le_of_lt_of_nonneg](declarations/right-mul-lt-one-of-le-of-lt-of-nonneg.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [mul_lt_of_lt_one_of_lt_of_pos](declarations/mul-lt-of-lt-one-of-lt-of-pos.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [Right.mul_le_one_of_le_of_le](declarations/right-mul-le-one-of-le-of-le.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [mul_le_of_le_one_of_le'](declarations/mul-le-of-le-one-of-le.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [mul_lt_of_lt_one_of_le'](declarations/mul-lt-of-lt-one-of-le.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [mul_lt_of_le_one_of_lt'](declarations/mul-lt-of-le-one-of-lt.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [lt_mul_of_one_lt_of_le_of_pos](declarations/lt-mul-of-one-lt-of-le-of-pos.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [lt_mul_of_one_le_of_lt_of_nonneg](declarations/lt-mul-of-one-le-of-lt-of-nonneg.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [lt_mul_of_one_lt_of_lt_of_pos](declarations/lt-mul-of-one-lt-of-lt-of-pos.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [Right.one_lt_mul_of_lt_of_le_of_pos](declarations/right-one-lt-mul-of-lt-of-le-of-pos.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [Right.one_lt_mul_of_le_of_lt_of_nonneg](declarations/right-one-lt-mul-of-le-of-lt-of-nonneg.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [Right.one_lt_mul_of_lt_of_lt](declarations/right-one-lt-mul-of-lt-of-lt.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [lt_mul_of_one_lt_of_lt_of_nonneg](declarations/lt-mul-of-one-lt-of-lt-of-nonneg.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [lt_of_mul_lt_of_one_le_of_nonneg_left](declarations/lt-of-mul-lt-of-one-le-of-nonneg-left.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [lt_of_lt_mul_of_le_one_of_nonneg_left](declarations/lt-of-lt-mul-of-le-one-of-nonneg-left.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [lt_of_lt_mul_of_le_one_of_nonneg_right](declarations/lt-of-lt-mul-of-le-one-of-nonneg-right.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [le_mul_of_one_le_of_le_of_nonneg](declarations/le-mul-of-one-le-of-le-of-nonneg.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [Right.one_le_mul_of_le_of_le](declarations/right-one-le-mul-of-le-of-le.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [le_of_mul_le_of_one_le_of_nonneg_left](declarations/le-of-mul-le-of-one-le-of-nonneg-left.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [le_of_le_mul_of_le_one_of_nonneg_left](declarations/le-of-le-mul-of-le-one-of-nonneg-left.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [le_of_mul_le_of_one_le_nonneg_right](declarations/le-of-mul-le-of-one-le-nonneg-right.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [le_of_le_mul_of_le_one_of_nonneg_right](declarations/le-of-le-mul-of-le-one-of-nonneg-right.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [exists_square_le'](declarations/exists-square-le.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [PosMulMono.toPosMulStrictMono](declarations/posmulmono-toposmulstrictmono.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [posMulMono_iff_posMulStrictMono](declarations/posmulmono-iff-posmulstrictmono.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [MulPosMono.toMulPosStrictMono](declarations/mulposmono-tomulposstrictmono.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [mulPosMono_iff_mulPosStrictMono](declarations/mulposmono-iff-mulposstrictmono.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [PosMulReflectLT.toPosMulMonoRev](declarations/posmulreflectlt-toposmulmonorev.md) | 1008 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [posMulMonoRev_iff_posMulReflectLT](declarations/posmulmonorev-iff-posmulreflectlt.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [MulPosReflectLT.toMulPosMonoRev](declarations/mulposreflectlt-tomulposmonorev.md) | 1018 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [mulPosMonoRev_iff_mulPosReflectLT](declarations/mulposmonorev-iff-mulposreflectlt.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [posMulStrictMono_iff_mulPosStrictMono](declarations/posmulstrictmono-iff-mulposstrictmono.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [posMulReflectLT_iff_mulPosReflectLT](declarations/posmulreflectlt-iff-mulposreflectlt.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [posMulMono_iff_mulPosMono](declarations/posmulmono-iff-mulposmono.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [posMulMonoRev_iff_mulPosMonoRev](declarations/posmulmonorev-iff-mulposmonorev.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b10969a6591b290556e12752f6895fc71f571f710fa45bb30843e46d8a41145 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variante7f72b0631a3998a754805d33a9390f40d4997617621a1ca9eefd057911f505c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
