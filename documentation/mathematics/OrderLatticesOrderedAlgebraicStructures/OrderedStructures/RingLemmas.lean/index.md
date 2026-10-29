# Ring Lemmas

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**161 observed declarations and anonymous commands**, 143 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant0b5ff1c7c0ade97968c9e0368e07a559b7ea093cb767f566da1762c61b1058f8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16741e9fa7ce764314f962730315f0a83954df1c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedStructures/RingLemmas.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PosMulMono](declarations/posmulmono.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [MulPosMono](declarations/mulposmono.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [PosMulStrictMono](declarations/posmulstrictmono.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [MulPosStrictMono](declarations/mulposstrictmono.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [PosMulReflectLT](declarations/posmulreflectlt.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [MulPosReflectLT](declarations/mulposreflectlt.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [PosMulMonoRev](declarations/posmulmonorev.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [MulPosMonoRev](declarations/mulposmonorev.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [PosMulMono.to_covariantClass_pos_mul_le](declarations/to-covariantclass-pos-mul-le-source-line-132-occurrence-2.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [MulPosMono.to_covariantClass_pos_mul_le](declarations/to-covariantclass-pos-mul-le.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [PosMulReflectLT.to_contravariantClass_pos_mul_lt](declarations/to-contravariantclass-pos-mul-lt-source-line-142-occurrence-2.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [MulPosReflectLT.to_contravariantClass_pos_mul_lt](declarations/to-contravariantclass-pos-mul-lt.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mul_le_mul_of_nonneg_left](declarations/mul-le-mul-of-nonneg-left.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mul_le_mul_of_nonneg_right](declarations/mul-le-mul-of-nonneg-right.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mul_lt_mul_of_pos_left](declarations/mul-lt-mul-of-pos-left.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mul_lt_mul_of_pos_right](declarations/mul-lt-mul-of-pos-right.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lt_of_mul_lt_mul_left](declarations/lt-of-mul-lt-mul-left.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lt_of_mul_lt_mul_right](declarations/lt-of-mul-lt-mul-right.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [le_of_mul_le_mul_left](declarations/le-of-mul-le-mul-left.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [le_of_mul_le_mul_right](declarations/le-of-mul-le-mul-right.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mul_lt_mul_left](declarations/mul-lt-mul-left.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mul_lt_mul_right](declarations/mul-lt-mul-right.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mul_le_mul_left](declarations/mul-le-mul-left.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mul_le_mul_right](declarations/mul-le-mul-right.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mul_lt_mul_of_pos_of_nonneg](declarations/mul-lt-mul-of-pos-of-nonneg.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mul_lt_mul_of_le_of_le'](declarations/mul-lt-mul-of-le-of-le.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mul_lt_mul_of_nonneg_of_pos](declarations/mul-lt-mul-of-nonneg-of-pos.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mul_lt_mul_of_le_of_lt'](declarations/mul-lt-mul-of-le-of-lt.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mul_lt_mul_of_pos_of_pos](declarations/mul-lt-mul-of-pos-of-pos.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mul_lt_mul_of_lt_of_lt'](declarations/mul-lt-mul-of-lt-of-lt.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mul_lt_of_mul_lt_of_nonneg_left](declarations/mul-lt-of-mul-lt-of-nonneg-left.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lt_mul_of_lt_mul_of_nonneg_left](declarations/lt-mul-of-lt-mul-of-nonneg-left.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mul_lt_of_mul_lt_of_nonneg_right](declarations/mul-lt-of-mul-lt-of-nonneg-right.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lt_mul_of_lt_mul_of_nonneg_right](declarations/lt-mul-of-lt-mul-of-nonneg-right.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [PosMulMonoRev.toPosMulStrictMono](declarations/posmulmonorev-toposmulstrictmono.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [MulPosMonoRev.toMulPosStrictMono](declarations/mulposmonorev-tomulposstrictmono.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [posMulStrictMono_iff_posMulMonoRev](declarations/posmulstrictmono-iff-posmulmonorev.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mulPosStrictMono_iff_mulPosMonoRev](declarations/mulposstrictmono-iff-mulposmonorev.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [PosMulReflectLT.toPosMulMono](declarations/posmulreflectlt-toposmulmono.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [MulPosReflectLT.toMulPosMono](declarations/mulposreflectlt-tomulposmono.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [PosMulMono.toPosMulReflectLT](declarations/posmulmono-toposmulreflectlt.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [MulPosMono.toMulPosReflectLT](declarations/mulposmono-tomulposreflectlt.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [posMulMono_iff_posMulReflectLT](declarations/posmulmono-iff-posmulreflectlt.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mulPosMono_iff_mulPosReflectLT](declarations/mulposmono-iff-mulposreflectlt.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Left.mul_pos](declarations/left-mul-pos.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mul_neg_of_pos_of_neg](declarations/mul-neg-of-pos-of-neg.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [zero_lt_mul_left](declarations/zero-lt-mul-left.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Right.mul_pos](declarations/right-mul-pos.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mul_neg_of_neg_of_pos](declarations/mul-neg-of-neg-of-pos.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [zero_lt_mul_right](declarations/zero-lt-mul-right.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Left.mul_nonneg](declarations/left-mul-nonneg.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [mul_nonpos_of_nonneg_of_nonpos](declarations/mul-nonpos-of-nonneg-of-nonpos.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Right.mul_nonneg](declarations/right-mul-nonneg.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [mul_nonpos_of_nonpos_of_nonneg](declarations/mul-nonpos-of-nonpos-of-nonneg.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [pos_of_mul_pos_right](declarations/pos-of-mul-pos-right.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [pos_of_mul_pos_left](declarations/pos-of-mul-pos-left.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [pos_iff_pos_of_mul_pos](declarations/pos-iff-pos-of-mul-pos.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mul_le_mul_of_le_of_le](declarations/mul-le-mul-of-le-of-le.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mul_le_mul](declarations/mul-le-mul.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mul_self_le_mul_self](declarations/mul-self-le-mul-self.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mul_le_of_mul_le_of_nonneg_left](declarations/mul-le-of-mul-le-of-nonneg-left.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [le_mul_of_le_mul_of_nonneg_left](declarations/le-mul-of-le-mul-of-nonneg-left.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [mul_le_of_mul_le_of_nonneg_right](declarations/mul-le-of-mul-le-of-nonneg-right.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [le_mul_of_le_mul_of_nonneg_right](declarations/le-mul-of-le-mul-of-nonneg-right.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [posMulMono_iff_covariant_pos](declarations/posmulmono-iff-covariant-pos.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mulPosMono_iff_covariant_pos](declarations/mulposmono-iff-covariant-pos.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [posMulReflectLT_iff_contravariant_pos](declarations/posmulreflectlt-iff-contravariant-pos.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mulPosReflectLT_iff_contravariant_pos](declarations/mulposreflectlt-iff-contravariant-pos.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mul_left_cancel_iff_of_pos](declarations/mul-left-cancel-iff-of-pos.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mul_right_cancel_iff_of_pos](declarations/mul-right-cancel-iff-of-pos.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mul_eq_mul_iff_eq_and_eq_of_pos](declarations/mul-eq-mul-iff-eq-and-eq-of-pos-source-edition-2.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [mul_eq_mul_iff_eq_and_eq_of_pos'](declarations/mul-eq-mul-iff-eq-and-eq-of-pos.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [pos_and_pos_or_neg_and_neg_of_mul_pos](declarations/pos-and-pos-or-neg-and-neg-of-mul-pos.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [neg_of_mul_pos_right](declarations/neg-of-mul-pos-right.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [neg_of_mul_pos_left](declarations/neg-of-mul-pos-left.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [neg_iff_neg_of_mul_pos](declarations/neg-iff-neg-of-mul-pos.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Left.neg_of_mul_neg_left](declarations/left-neg-of-mul-neg-left.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Right.neg_of_mul_neg_left](declarations/right-neg-of-mul-neg-left.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Left.neg_of_mul_neg_right](declarations/left-neg-of-mul-neg-right.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Right.neg_of_mul_neg_right](declarations/right-neg-of-mul-neg-right.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [le_mul_iff_one_le_right](declarations/le-mul-iff-one-le-right.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [lt_mul_iff_one_lt_right](declarations/lt-mul-iff-one-lt-right.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [mul_le_iff_le_one_right](declarations/mul-le-iff-le-one-right.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [mul_lt_iff_lt_one_right](declarations/mul-lt-iff-lt-one-right.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [le_mul_iff_one_le_left](declarations/le-mul-iff-one-le-left.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [lt_mul_iff_one_lt_left](declarations/lt-mul-iff-one-lt-left.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [mul_le_iff_le_one_left](declarations/mul-le-iff-le-one-left.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [mul_lt_iff_lt_one_left](declarations/mul-lt-iff-lt-one-left.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [mul_le_of_le_one_left](declarations/mul-le-of-le-one-left.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [le_mul_of_one_le_left](declarations/le-mul-of-one-le-left.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [mul_le_of_le_one_right](declarations/mul-le-of-le-one-right.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [le_mul_of_one_le_right](declarations/le-mul-of-one-le-right.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [mul_lt_of_lt_one_left](declarations/mul-lt-of-lt-one-left.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [lt_mul_of_one_lt_left](declarations/lt-mul-of-one-lt-left.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [mul_lt_of_lt_one_right](declarations/mul-lt-of-lt-one-right.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [lt_mul_of_one_lt_right](declarations/lt-mul-of-one-lt-right.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [mul_le_of_le_of_le_one_of_nonneg](declarations/mul-le-of-le-of-le-one-of-nonneg.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [mul_lt_of_le_of_lt_one_of_pos](declarations/mul-lt-of-le-of-lt-one-of-pos.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [mul_lt_of_lt_of_le_one_of_nonneg](declarations/mul-lt-of-lt-of-le-one-of-nonneg.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Left.mul_le_one_of_le_of_le](declarations/left-mul-le-one-of-le-of-le.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Left.mul_lt_of_le_of_lt_one_of_pos](declarations/left-mul-lt-of-le-of-lt-one-of-pos.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Left.mul_lt_of_lt_of_le_one_of_nonneg](declarations/left-mul-lt-of-lt-of-le-one-of-nonneg.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [mul_le_of_le_of_le_one'](declarations/mul-le-of-le-of-le-one.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [mul_lt_of_lt_of_le_one'](declarations/mul-lt-of-lt-of-le-one.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [mul_lt_of_le_of_lt_one'](declarations/mul-lt-of-le-of-lt-one.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [mul_lt_of_lt_of_lt_one_of_pos](declarations/mul-lt-of-lt-of-lt-one-of-pos.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [le_mul_of_le_of_one_le_of_nonneg](declarations/le-mul-of-le-of-one-le-of-nonneg.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [lt_mul_of_le_of_one_lt_of_pos](declarations/lt-mul-of-le-of-one-lt-of-pos.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [lt_mul_of_lt_of_one_le_of_nonneg](declarations/lt-mul-of-lt-of-one-le-of-nonneg.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Left.one_le_mul_of_le_of_le](declarations/left-one-le-mul-of-le-of-le.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [Left.one_lt_mul_of_le_of_lt_of_pos](declarations/left-one-lt-mul-of-le-of-lt-of-pos.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [Left.lt_mul_of_lt_of_one_le_of_nonneg](declarations/left-lt-mul-of-lt-of-one-le-of-nonneg.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [le_mul_of_le_of_one_le'](declarations/le-mul-of-le-of-one-le.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [lt_mul_of_le_of_one_lt'](declarations/lt-mul-of-le-of-one-lt.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [lt_mul_of_lt_of_one_le'](declarations/lt-mul-of-lt-of-one-le.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [lt_mul_of_lt_of_one_lt_of_pos](declarations/lt-mul-of-lt-of-one-lt-of-pos.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [mul_le_of_le_one_of_le_of_nonneg](declarations/mul-le-of-le-one-of-le-of-nonneg.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [mul_lt_of_lt_one_of_le_of_pos](declarations/mul-lt-of-lt-one-of-le-of-pos.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [mul_lt_of_le_one_of_lt_of_nonneg](declarations/mul-lt-of-le-one-of-lt-of-nonneg.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Right.mul_lt_one_of_lt_of_le_of_pos](declarations/right-mul-lt-one-of-lt-of-le-of-pos.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [Right.mul_lt_one_of_le_of_lt_of_nonneg](declarations/right-mul-lt-one-of-le-of-lt-of-nonneg.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [mul_lt_of_lt_one_of_lt_of_pos](declarations/mul-lt-of-lt-one-of-lt-of-pos.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [Right.mul_le_one_of_le_of_le](declarations/right-mul-le-one-of-le-of-le.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [mul_le_of_le_one_of_le'](declarations/mul-le-of-le-one-of-le.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [mul_lt_of_lt_one_of_le'](declarations/mul-lt-of-lt-one-of-le.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [mul_lt_of_le_one_of_lt'](declarations/mul-lt-of-le-one-of-lt.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [lt_mul_of_one_lt_of_le_of_pos](declarations/lt-mul-of-one-lt-of-le-of-pos.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [lt_mul_of_one_le_of_lt_of_nonneg](declarations/lt-mul-of-one-le-of-lt-of-nonneg.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [lt_mul_of_one_lt_of_lt_of_pos](declarations/lt-mul-of-one-lt-of-lt-of-pos.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [Right.one_lt_mul_of_lt_of_le_of_pos](declarations/right-one-lt-mul-of-lt-of-le-of-pos.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [Right.one_lt_mul_of_le_of_lt_of_nonneg](declarations/right-one-lt-mul-of-le-of-lt-of-nonneg.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [Right.one_lt_mul_of_lt_of_lt](declarations/right-one-lt-mul-of-lt-of-lt.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [lt_mul_of_one_lt_of_lt_of_nonneg](declarations/lt-mul-of-one-lt-of-lt-of-nonneg.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [lt_of_mul_lt_of_one_le_of_nonneg_left](declarations/lt-of-mul-lt-of-one-le-of-nonneg-left.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [lt_of_lt_mul_of_le_one_of_nonneg_left](declarations/lt-of-lt-mul-of-le-one-of-nonneg-left.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [lt_of_lt_mul_of_le_one_of_nonneg_right](declarations/lt-of-lt-mul-of-le-one-of-nonneg-right.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [le_mul_of_one_le_of_le_of_nonneg](declarations/le-mul-of-one-le-of-le-of-nonneg.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [Right.one_le_mul_of_le_of_le](declarations/right-one-le-mul-of-le-of-le.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [le_of_mul_le_of_one_le_of_nonneg_left](declarations/le-of-mul-le-of-one-le-of-nonneg-left.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [le_of_le_mul_of_le_one_of_nonneg_left](declarations/le-of-le-mul-of-le-one-of-nonneg-left.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [le_of_mul_le_of_one_le_nonneg_right](declarations/le-of-mul-le-of-one-le-nonneg-right.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [le_of_le_mul_of_le_one_of_nonneg_right](declarations/le-of-le-mul-of-le-one-of-nonneg-right.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [exists_square_le'](declarations/exists-square-le.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [PosMulMono.toPosMulStrictMono](declarations/posmulmono-toposmulstrictmono.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [posMulMono_iff_posMulStrictMono](declarations/posmulmono-iff-posmulstrictmono.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [MulPosMono.toMulPosStrictMono](declarations/mulposmono-tomulposstrictmono.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [mulPosMono_iff_mulPosStrictMono](declarations/mulposmono-iff-mulposstrictmono.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [PosMulReflectLT.toPosMulMonoRev](declarations/posmulreflectlt-toposmulmonorev.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [posMulMonoRev_iff_posMulReflectLT](declarations/posmulmonorev-iff-posmulreflectlt.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [MulPosReflectLT.toMulPosMonoRev](declarations/mulposreflectlt-tomulposmonorev.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [mulPosMonoRev_iff_mulPosReflectLT](declarations/mulposmonorev-iff-mulposreflectlt.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [posMulStrictMono_iff_mulPosStrictMono](declarations/posmulstrictmono-iff-mulposstrictmono.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [posMulReflectLT_iff_mulPosReflectLT](declarations/posmulreflectlt-iff-mulposreflectlt.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [posMulMono_iff_mulPosMono](declarations/posmulmono-iff-mulposmono.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [posMulMonoRev_iff_mulPosMonoRev](declarations/posmulmonorev-iff-mulposmonorev.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55a71c555199920355989a545f441b6b51c19d870787b9c513ff51a19469358d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variant0b5ff1c7c0ade97968c9e0368e07a559b7ea093cb767f566da1762c61b1058f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
