# ZMod Basic Fin Equiv

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**196 observed declarations and anonymous commands**, 172 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0ba9d578ac3bc2d6d8fc7c0c29964c3042ff8984b5665c758a58fa5cef67d983.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ca4d51e2e33dba33a0fe7e8619264dd8f0f2652`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ZModBasicFinEquiv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [finEquiv](declarations/finequiv.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [charZero](declarations/charzero.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [val](declarations/val.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [val_lt](declarations/val-lt.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [val_le](declarations/val-le.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [val_zero](declarations/val-zero.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [val_one'](declarations/val-one-source-edition-2.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [val_neg'](declarations/val-neg.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [val_mul'](declarations/val-mul.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [val_natCast](declarations/val-natcast.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [val_natCast_of_lt](declarations/val-natcast-of-lt.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [val_ofNat](declarations/val-ofnat.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [val_ofNat_of_lt](declarations/val-ofnat-of-lt.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [val_unit'](declarations/val-unit.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [eq_one_of_isUnit_natCast](declarations/eq-one-of-isunit-natcast.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [charP](declarations/charp.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `example` | [(anonymous)](declarations/example.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [addOrderOf_one](declarations/addorderof-one.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [addOrderOf_coe](declarations/addorderof-coe-source-edition-2.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [addOrderOf_coe'](declarations/addorderof-coe.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ringChar_zmod_n](declarations/ringchar-zmod-n.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [natCast_self](declarations/natcast-self.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [natCast_self'](declarations/natcast-self-source-edition-2.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [cast](declarations/cast.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cast_zero](declarations/cast-zero.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cast_eq_val](declarations/cast-eq-val.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [_root_.Prod.fst_zmod_cast](declarations/root-prod-fst-zmod-cast.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [_root_.Prod.snd_zmod_cast](declarations/root-prod-snd-zmod-cast.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [natCast_zmod_val](declarations/natcast-zmod-val.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [natCast_rightInverse](declarations/natcast-rightinverse.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [natCast_zmod_surjective](declarations/natcast-zmod-surjective.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [intCast_zmod_cast](declarations/intcast-zmod-cast.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [intCast_rightInverse](declarations/intcast-rightinverse.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [intCast_surjective](declarations/intcast-surjective.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [«forall»](declarations/forall.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [«exists»](declarations/exists.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [cast_id](declarations/cast-id-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [cast_id'](declarations/cast-id.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [natCast_comp_val](declarations/natcast-comp-val.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [intCast_comp_cast](declarations/intcast-comp-cast.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [natCast_val](declarations/natcast-val.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [intCast_cast](declarations/intcast-cast.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [cast_add_eq_ite](declarations/cast-add-eq-ite.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [cast_one](declarations/cast-one-source-edition-2.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [cast_add](declarations/cast-add-source-edition-2.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [cast_mul](declarations/cast-mul-source-edition-2.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [castHom](declarations/casthom.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [castHom_apply](declarations/casthom-apply.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [cast_sub](declarations/cast-sub.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [cast_neg](declarations/cast-neg.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [cast_pow](declarations/cast-pow.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [cast_natCast](declarations/cast-natcast.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [cast_intCast](declarations/cast-intcast.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [cast_one'](declarations/cast-one.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [cast_add'](declarations/cast-add.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [cast_mul'](declarations/cast-mul.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [cast_sub'](declarations/cast-sub-source-edition-2.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [cast_pow'](declarations/cast-pow-source-edition-2.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [cast_natCast'](declarations/cast-natcast-source-edition-2.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [cast_intCast'](declarations/cast-intcast-source-edition-2.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [castHom_injective](declarations/casthom-injective.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [castHom_bijective](declarations/casthom-bijective.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [ringEquiv](declarations/ringequiv.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [ringEquivOfPrime](declarations/ringequivofprime.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [ringEquivOfPrime_eq_ringEquiv](declarations/ringequivofprime-eq-ringequiv.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [ringEquivCongr](declarations/ringequivcongr.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [ringEquivCongr_refl](declarations/ringequivcongr-refl.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [ringEquivCongr_refl_apply](declarations/ringequivcongr-refl-apply.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [ringEquivCongr_symm](declarations/ringequivcongr-symm.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [ringEquivCongr_trans](declarations/ringequivcongr-trans.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [ringEquivCongr_ringEquivCongr_apply](declarations/ringequivcongr-ringequivcongr-apply.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [ringEquivCongr_val](declarations/ringequivcongr-val.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [ringEquivCongr_intCast](declarations/ringequivcongr-intcast.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [val_eq_zero](declarations/val-eq-zero.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [intCast_eq_intCast_iff](declarations/intcast-eq-intcast-iff.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [intCast_eq_intCast_iff'](declarations/intcast-eq-intcast-iff-source-edition-2.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [val_intCast](declarations/val-intcast.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [natCast_eq_natCast_iff](declarations/natcast-eq-natcast-iff.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [natCast_eq_natCast_iff'](declarations/natcast-eq-natcast-iff-source-edition-2.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [intCast_zmod_eq_zero_iff_dvd](declarations/intcast-zmod-eq-zero-iff-dvd.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [intCast_eq_intCast_iff_dvd_sub](declarations/intcast-eq-intcast-iff-dvd-sub.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [natCast_zmod_eq_zero_iff_dvd](declarations/natcast-zmod-eq-zero-iff-dvd.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [coe_intCast](declarations/coe-intcast.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [intCast_cast_add](declarations/intcast-cast-add.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [intCast_cast_mul](declarations/intcast-cast-mul.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [intCast_cast_sub](declarations/intcast-cast-sub.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [intCast_cast_neg](declarations/intcast-cast-neg.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [val_neg_one](declarations/val-neg-one.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [cast_neg_one](declarations/cast-neg-one.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [cast_sub_one](declarations/cast-sub-one.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [natCast_eq_iff](declarations/natcast-eq-iff.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [intCast_eq_iff](declarations/intcast-eq-iff.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [intCast_mod](declarations/intcast-mod.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [ker_intCastAddHom](declarations/ker-intcastaddhom.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [cast_injective_of_le](declarations/cast-injective-of-le.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [cast_zmod_eq_zero_iff_of_le](declarations/cast-zmod-eq-zero-iff-of-le.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [natCast_toNat](declarations/natcast-tonat.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [val_injective](declarations/val-injective.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [val_one_eq_one_mod](declarations/val-one-eq-one-mod.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [val_two_eq_two_mod](declarations/val-two-eq-two-mod.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [val_one](declarations/val-one.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [val_one''](declarations/val-one-source-edition-3.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [val_add](declarations/val-add.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [val_add_of_lt](declarations/val-add-of-lt.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [val_add_val_of_le](declarations/val-add-val-of-le.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [val_add_of_le](declarations/val-add-of-le.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [val_add_le](declarations/val-add-le.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [val_mul](declarations/val-mul-source-edition-2.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [val_mul_le](declarations/val-mul-le.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [val_mul_of_lt](declarations/val-mul-of-lt.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [val_mul_iff_lt](declarations/val-mul-iff-lt.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [nontrivial](declarations/nontrivial-source-edition-2.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [nontrivial'](declarations/nontrivial.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [one_eq_zero_iff](declarations/one-eq-zero-iff.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [inv](declarations/inv.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [(anonymous)](declarations/instance.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [inv_zero](declarations/inv-zero.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [mul_inv_eq_gcd](declarations/mul-inv-eq-gcd.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [inv_one](declarations/inv-one.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [natCast_mod](declarations/natcast-mod.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [eq_iff_modEq_nat](declarations/eq-iff-modeq-nat.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [eq_zero_iff_even](declarations/eq-zero-iff-even.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [eq_one_iff_odd](declarations/eq-one-iff-odd.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [ne_zero_iff_odd](declarations/ne-zero-iff-odd.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [coe_mul_inv_eq_one](declarations/coe-mul-inv-eq-one.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [mul_val_inv](declarations/mul-val-inv.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [val_inv_mul](declarations/val-inv-mul.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [unitOfCoprime](declarations/unitofcoprime.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [coe_unitOfCoprime](declarations/coe-unitofcoprime.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [val_coe_unit_coprime](declarations/val-coe-unit-coprime.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `lemma` | [isUnit_iff_coprime](declarations/isunit-iff-coprime.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `lemma` | [isUnit_prime_iff_not_dvd](declarations/isunit-prime-iff-not-dvd.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [isUnit_prime_of_not_dvd](declarations/isunit-prime-of-not-dvd.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [inv_coe_unit](declarations/inv-coe-unit.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [mul_inv_of_unit](declarations/mul-inv-of-unit.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [inv_mul_of_unit](declarations/inv-mul-of-unit.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [inv_eq_of_mul_eq_one](declarations/inv-eq-of-mul-eq-one.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `lemma` | [inv_mul_eq_one_of_isUnit](declarations/inv-mul-eq-one-of-isunit.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [unitsEquivCoprime](declarations/unitsequivcoprime.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [chineseRemainder](declarations/chineseremainder.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [subsingleton_iff](declarations/subsingleton-iff.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `lemma` | [nontrivial_iff](declarations/nontrivial-iff.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `instance` | [subsingleton_units](declarations/subsingleton-units.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [add_self_eq_zero_iff_eq_zero](declarations/add-self-eq-zero-iff-eq-zero.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [ne_neg_self](declarations/ne-neg-self.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [neg_one_ne_one](declarations/neg-one-ne-one.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [neg_eq_self_mod_two](declarations/neg-eq-self-mod-two.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [natAbs_mod_two](declarations/natabs-mod-two.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [val_ne_zero](declarations/val-ne-zero.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [val_pos](declarations/val-pos.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [val_eq_one](declarations/val-eq-one.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [neg_eq_self_iff](declarations/neg-eq-self-iff.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [val_cast_of_lt](declarations/val-cast-of-lt.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [val_cast_zmod_lt](declarations/val-cast-zmod-lt.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [neg_val'](declarations/neg-val-source-edition-2.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [neg_val](declarations/neg-val.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [val_neg_of_ne_zero](declarations/val-neg-of-ne-zero.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [val_sub](declarations/val-sub.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [val_cast_eq_val_of_lt](declarations/val-cast-eq-val-of-lt.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [cast_cast_zmod_of_le](declarations/cast-cast-zmod-of-le.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [val_pow](declarations/val-pow.md) | 1026 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [val_pow_le](declarations/val-pow-le.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [natAbs_min_of_le_div_two](declarations/natabs-min-of-le-div-two.md) | 1048 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [RingHom.ext_zmod](declarations/ringhom-ext-zmod.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `instance` | [subsingleton_ringHom](declarations/subsingleton-ringhom.md) | 1077 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `instance` | [subsingleton_ringEquiv](declarations/subsingleton-ringequiv.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [ringHom_map_cast](declarations/ringhom-map-cast.md) | 1086 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [ringHom_rightInverse](declarations/ringhom-rightinverse.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [ringHom_surjective](declarations/ringhom-surjective.md) | 1098 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `lemma` | [castHom_self](declarations/casthom-self.md) | 1102 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `lemma` | [castHom_comp](declarations/casthom-comp.md) | 1106 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `def` | [lift](declarations/lift.md) | 1115 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [lift_coe](declarations/lift-coe.md) | 1129 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [lift_castAddHom](declarations/lift-castaddhom.md) | 1132 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [lift_comp_coe](declarations/lift-comp-coe.md) | 1136 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [lift_comp_castAddHom](declarations/lift-comp-castaddhom.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `lemma` | [lift_injective](declarations/lift-injective.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `lemma` | [zmod_smul_mem](declarations/zmod-smul-mem.md) | 1173 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `lemma` | [smulMemClass](declarations/smulmemclass.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `instance` | [instZModSMul](declarations/instzmodsmul.md) | 1182 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `lemma` | [coe_zmod_smul](declarations/coe-zmod-smul.md) | 1184 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `instance` | [instZModModule](declarations/instzmodmodule.md) | 1186 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `lemma` | [ZModModule.char_nsmul_eq_zero](declarations/zmodmodule-char-nsmul-eq-zero.md) | 1193 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `lemma` | [ZModModule.char_ne_one](declarations/zmodmodule-char-ne-one.md) | 1197 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `lemma` | [ZModModule.two_le_char](declarations/zmodmodule-two-le-char.md) | 1203 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `lemma` | [ZModModule.periodicPts_add_left](declarations/zmodmodule-periodicpts-add-left.md) | 1208 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `lemma` | [ZModModule.add_self](declarations/zmodmodule-add-self.md) | 1217 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `lemma` | [ZModModule.neg_eq_self](declarations/zmodmodule-neg-eq-self.md) | 1220 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `lemma` | [ZModModule.sub_eq_add](declarations/zmodmodule-sub-eq-add.md) | 1222 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `lemma` | [ZModModule.add_add_add_cancel](declarations/zmodmodule-add-add-add-cancel.md) | 1224 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `lemma` | [nsmul_zmod_val_inv_nsmul](declarations/nsmul-zmod-val-inv-nsmul.md) | 1234 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `lemma` | [zmod_val_inv_nsmul_nsmul](declarations/zmod-val-inv-nsmul-nsmul.md) | 1240 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `lemma` | [pow_zmod_val_inv_pow](declarations/pow-zmod-val-inv-pow.md) | 1251 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `lemma` | [pow_pow_zmod_val_inv](declarations/pow-pow-zmod-val-inv.md) | 1257 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `lemma` | [Nat.range_mul_add](declarations/nat-range-mul-add.md) | 1266 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `def` | [Nat.residueClassesEquiv](declarations/nat-residueclassesequiv.md) | 1279 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e6c5126647c312f2b8ce348384c0ca0ec24a71ad324b1511028585a54e9bb40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0ba9d578ac3bc2d6d8fc7c0c29964c3042ff8984b5665c758a58fa5cef67d983.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
