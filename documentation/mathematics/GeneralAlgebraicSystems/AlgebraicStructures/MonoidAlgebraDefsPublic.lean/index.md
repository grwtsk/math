# Monoid Algebra Defs Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**166 observed declarations and anonymous commands**, 108 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Defs/Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41fa24e7b349efb6c692ac71a55ac42616a53d74`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/MonoidAlgebraDefsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AddMonoidAlgebra](declarations/addmonoidalgebra.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [MonoidAlgebra](declarations/monoidalgebra.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `macro_rules` | [(anonymous)](declarations/macro-rules-source-edition-2.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [unexpander](declarations/unexpander.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [delabOfCoeff](declarations/delabofcoeff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [delabOfCoeff](declarations/delabofcoeff-source-edition-2.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [unexpander](declarations/unexpander-source-edition-2.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [coeff_ofCoeff](declarations/coeff-ofcoeff.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [ofCoeff_coeff](declarations/ofcoeff-coeff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [coeffEquiv](declarations/coeffequiv.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [«forall»](declarations/forall.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [«exists»](declarations/exists.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [coeff_injective](declarations/coeff-injective.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [ofCoeff_injective](declarations/ofcoeff-injective.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [coeff_inj](declarations/coeff-inj.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [ofCoeff_inj](declarations/ofcoeff-inj.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instInhabited](declarations/instinhabited.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instNontrivial](declarations/instnontrivial.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instUnique](declarations/instunique.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [instDecidableEq](declarations/instdecidableeq.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [instAddMonoid](declarations/instaddmonoid.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instIsCancelAdd](declarations/instiscanceladd.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [coeffAddEquiv](declarations/coeffaddequiv.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [coeff_zero](declarations/coeff-zero.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [ofCoeff_zero](declarations/ofcoeff-zero.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [coeff_eq_zero](declarations/coeff-eq-zero.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [ofCoeff_eq_zero](declarations/ofcoeff-eq-zero.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [coeff_add](declarations/coeff-add.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [ofCoeff_add](declarations/ofcoeff-add.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [coeff_sum](declarations/coeff-sum.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [ofCoeff_sum](declarations/ofcoeff-sum.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [coeff_finsuppSum](declarations/coeff-finsuppsum.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [ofCoeff_finsuppSum](declarations/ofcoeff-finsuppsum.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [single](declarations/single.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [coeff_single](declarations/coeff-single.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [ofCoeff_single](declarations/ofcoeff-single.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [single_inj](declarations/single-inj.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [single_left_inj](declarations/single-left-inj.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [single_right_inj](declarations/single-right-inj.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [single_left_injective](declarations/single-left-injective.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [single_right_injective](declarations/single-right-injective.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [single_add_single_inj](declarations/single-add-single-inj.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [erase](declarations/erase.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [coeff_erase](declarations/coeff-erase.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [ofCoeff_erase](declarations/ofcoeff-erase.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [erase_zero](declarations/erase-zero.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [erase_single](declarations/erase-single.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [update](declarations/update.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [coeff_update](declarations/coeff-update.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [ofCoeff_update](declarations/ofcoeff-update.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [smulZeroClass](declarations/smulzeroclass.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `example` | [(anonymous)](declarations/example.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [coeff_smul](declarations/coeff-smul.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [ofCoeff_smul](declarations/ofcoeff-smul.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [coeff_smul_apply](declarations/coeff-smul-apply.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [smul_single](declarations/smul-single.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [smul_single'](declarations/smul-single-source-edition-2.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [distribSMul](declarations/distribsmul.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [isScalarTower](declarations/isscalartower.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [smulCommClass](declarations/smulcommclass.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [single_zero](declarations/single-zero.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [single_add](declarations/single-add.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [coe_add](declarations/coe-add.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [single_add_erase](declarations/single-add-erase.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [erase_add_single](declarations/erase-add-single.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [singleAddHom](declarations/singleaddhom.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [addMonoidHom_ext](declarations/addmonoidhom-ext.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [addHom_ext'](declarations/addhom-ext.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [sum_single_index](declarations/sum-single-index.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [sum_coeff_single](declarations/sum-coeff-single.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [coeff_single_apply](declarations/coeff-single-apply.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [single_eq_zero](declarations/single-eq-zero.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [single_ne_zero](declarations/single-ne-zero.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [induction](declarations/induction.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [induction_linear](declarations/induction-linear.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [addSubmonoidClosure_single](declarations/addsubmonoidclosure-single.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [one](declarations/one.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [one_def](declarations/one-def.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [coeff_one_one](declarations/coeff-one-one.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [_root_.AddMonoidAlgebra.mul'](declarations/root-addmonoidalgebra-mul.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [mul'](declarations/mul.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [instMul](declarations/instmul.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [mul_def](declarations/mul-def.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [nonUnitalNonAssocSemiring](declarations/nonunitalnonassocsemiring.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [coeff_mul](declarations/coeff-mul.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [coeff_mul_antidiag](declarations/coeff-mul-antidiag.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [single_mul_single](declarations/single-mul-single.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [single_commute_single](declarations/single-commute-single.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [single_commute](declarations/single-commute.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [coeff_mul_single_eq_coeff_mul](declarations/coeff-mul-single-eq-coeff-mul.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [coeff_single_mul_eq_mul_coeff](declarations/coeff-single-mul-eq-mul-coeff.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [coeff_mul_single_of_forall_mul_ne](declarations/coeff-mul-single-of-forall-mul-ne.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [coeff_single_mul_of_forall_mul_ne](declarations/coeff-single-mul-of-forall-mul-ne.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [mul_single_apply_of_not_exists_mul](declarations/mul-single-apply-of-not-exists-mul.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [single_mul_apply_of_not_exists_mul](declarations/single-mul-apply-of-not-exists-mul.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [ofMagma](declarations/ofmagma-source-edition-2.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [nonUnitalSemiring](declarations/nonunitalsemiring.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [nonAssocSemiring](declarations/nonassocsemiring.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [natCast_def](declarations/natcast-def.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [ofNat_def](declarations/ofnat-def.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [coeff_natCast](declarations/coeff-natcast.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [coeff_ofNat](declarations/coeff-ofnat.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [coeff_mul_single_one](declarations/coeff-mul-single-one.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [coeff_single_one_mul](declarations/coeff-single-one-mul.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [of](declarations/of-source-edition-3.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [of_injective](declarations/of-injective-source-edition-2.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [of_commute](declarations/of-commute.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [singleHom](declarations/singlehom.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [singleOneRingHom](declarations/singleoneringhom.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [ringHom_ext](declarations/ringhom-ext-source-edition-2.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [ringHom_ext'](declarations/ringhom-ext-source-edition-3.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [semiring](declarations/semiring.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [single_pow](declarations/single-pow.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [induction_on](declarations/induction-on.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `instance` | [isLocalHom_singleOneRingHom](declarations/islocalhom-singleoneringhom.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [uniqueRingEquiv](declarations/uniqueringequiv.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [uniqueRingEquiv_symm_apply](declarations/uniqueringequiv-symm-apply.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [coeff_uniqueRingEquiv_symm](declarations/coeff-uniqueringequiv-symm.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [curryAddEquiv](declarations/curryaddequiv.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [curryAddEquiv_single](declarations/curryaddequiv-single.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [curryAddEquiv_symm_single](declarations/curryaddequiv-symm-single.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [curryRingEquiv](declarations/curryringequiv.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `lemma` | [curryRingEquiv_single](declarations/curryringequiv-single.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `lemma` | [curryRingEquiv_symm_single](declarations/curryringequiv-symm-single.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `lemma` | [coeff_mul_single_mul](declarations/coeff-mul-single-mul.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `lemma` | [coeff_single_mul_mul](declarations/coeff-single-mul-mul.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `lemma` | [coeff_mul_single_apply](declarations/coeff-mul-single-apply.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [coeff_single_mul_apply](declarations/coeff-single-mul-apply.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [coeff_mul_apply_left](declarations/coeff-mul-apply-left.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `lemma` | [coeff_mul_apply_right](declarations/coeff-mul-apply-right.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `instance` | [nonUnitalCommSemiring](declarations/nonunitalcommsemiring.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [single_one_comm](declarations/single-one-comm.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `instance` | [commSemiring](declarations/commsemiring.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `lemma` | [prod_single](declarations/prod-single.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [finsuppProd_single](declarations/finsuppprod-single.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `instance` | [addCommGroup](declarations/addcommgroup.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `lemma` | [coeff_neg](declarations/coeff-neg.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [ofCoeff_neg](declarations/ofcoeff-neg.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `lemma` | [coeff_sub](declarations/coeff-sub.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [ofCoeff_sub](declarations/ofcoeff-sub.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `lemma` | [single_neg](declarations/single-neg.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `lemma` | [single_sub](declarations/single-sub.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `instance` | [nonUnitalNonAssocRing](declarations/nonunitalnonassocring.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `instance` | [nonUnitalRing](declarations/nonunitalring.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `instance` | [nonAssocRing](declarations/nonassocring.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [intCast_def](declarations/intcast-def.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `instance` | [ring](declarations/ring.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `lemma` | [neg_apply](declarations/neg-apply.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `instance` | [nonUnitalCommRing](declarations/nonunitalcommring.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `instance` | [commRing](declarations/commring.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `def` | [ofMagma](declarations/ofmagma.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `def` | [of](declarations/of.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `def` | [of'](declarations/of-source-edition-2.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [of_apply](declarations/of-apply-source-edition-2.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [of'_apply](declarations/of-apply.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [of'_eq_of](declarations/of-eq-of.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [of_injective](declarations/of-injective.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `lemma` | [of'_commute](declarations/of-commute-source-edition-2.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `def` | [singleHom](declarations/singlehom-source-edition-2.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [induction_on](declarations/induction-on-source-edition-2.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [ringHom_ext'](declarations/ringhom-ext.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c5da0f2dfb5c2d7cc49cc0196e983d69786ca71bc459a6034965b472bd8e554 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variantc3f9206e7816fdbae33be08913cfc9d893744526eeffb812d363beeeaf05322e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
