# Ordinal Basic Nonempty Embedding To Cardinal

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**220 observed declarations and anonymous commands**, 168 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ba557babeaeb9b7a8102f8396bc55a92dba3650`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalBasicNonemptyEmbeddingToCardinal.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonempty_embedding_to_cardinal](declarations/nonempty-embedding-to-cardinal.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [embeddingToCardinal](declarations/embeddingtocardinal.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [WellOrderingRel](declarations/wellorderingrel.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [WellOrderingRel.isWellOrder](declarations/wellorderingrel-iswellorder.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [IsWellOrder.subtype_nonempty](declarations/iswellorder-subtype-nonempty.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [WellOrder](declarations/wellorder.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [inhabited](declarations/inhabited-source-edition-2.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eta](declarations/eta.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [Ordinal.isEquivalent](declarations/ordinal-isequivalent.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Ordinal](declarations/ordinal.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [hasWellFoundedOut](declarations/haswellfoundedout.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [linearOrderOut](declarations/linearorderout.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [isWellOrder_out_lt](declarations/iswellorder-out-lt.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [type](declarations/type.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [zero](declarations/zero.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [inhabited](declarations/inhabited.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [one](declarations/one.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [typein](declarations/typein.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [type_def'](declarations/type-def.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [type_def](declarations/type-def-source-edition-2.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [type_out](declarations/type-out.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [type_eq](declarations/type-eq.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [_root_.RelIso.ordinal_type_eq](declarations/root-reliso-ordinal-type-eq.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [type_lt](declarations/type-lt.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [type_eq_zero_of_empty](declarations/type-eq-zero-of-empty.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [type_eq_zero_iff_isEmpty](declarations/type-eq-zero-iff-isempty.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [type_ne_zero_iff_nonempty](declarations/type-ne-zero-iff-nonempty.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [type_ne_zero_of_nonempty](declarations/type-ne-zero-of-nonempty.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [type_pEmpty](declarations/type-pempty.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [type_empty](declarations/type-empty.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [type_eq_one_of_unique](declarations/type-eq-one-of-unique.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [type_eq_one_iff_unique](declarations/type-eq-one-iff-unique.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [type_pUnit](declarations/type-punit.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [type_unit](declarations/type-unit.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [out_empty_iff_eq_zero](declarations/out-empty-iff-eq-zero.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [eq_zero_of_out_empty](declarations/eq-zero-of-out-empty.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [isEmpty_out_zero](declarations/isempty-out-zero.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [out_nonempty_iff_ne_zero](declarations/out-nonempty-iff-ne-zero.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ne_zero_of_out_nonempty](declarations/ne-zero-of-out-nonempty.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [one_ne_zero](declarations/one-ne-zero.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [nontrivial](declarations/nontrivial.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [type_preimage](declarations/type-preimage.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [type_preimage_aux](declarations/type-preimage-aux.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [inductionOn](declarations/inductionon.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [partialOrder](declarations/partialorder.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [type_le_iff](declarations/type-le-iff-source-edition-2.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [type_le_iff'](declarations/type-le-iff.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [_root_.InitialSeg.ordinal_type_le](declarations/root-initialseg-ordinal-type-le.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [_root_.RelEmbedding.ordinal_type_le](declarations/root-relembedding-ordinal-type-le.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [type_lt_iff](declarations/type-lt-iff.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [_root_.PrincipalSeg.ordinal_type_lt](declarations/root-principalseg-ordinal-type-lt.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [zero_le](declarations/zero-le.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [orderBot](declarations/orderbot.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [bot_eq_zero](declarations/bot-eq-zero.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [le_zero](declarations/le-zero.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [pos_iff_ne_zero](declarations/pos-iff-ne-zero.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [not_lt_zero](declarations/not-lt-zero.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [eq_zero_or_pos](declarations/eq-zero-or-pos.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [zeroLEOneClass](declarations/zeroleoneclass.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [NeZero.one](declarations/nezero-one.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [initialSegOut](declarations/initialsegout.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [principalSegOut](declarations/principalsegout.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [typein_lt_type](declarations/typein-lt-type.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [typein_lt_self](declarations/typein-lt-self.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [typein_top](declarations/typein-top.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [typein_apply](declarations/typein-apply.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [typein_lt_typein](declarations/typein-lt-typein.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [typein_surj](declarations/typein-surj.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [typein_injective](declarations/typein-injective.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [typein_inj](declarations/typein-inj.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [typein.principalSeg](declarations/typein-principalseg.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [typein.principalSeg_coe](declarations/typein-principalseg-coe.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [enum](declarations/enum.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [typein_enum](declarations/typein-enum.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [enum_type](declarations/enum-type.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [enum_typein](declarations/enum-typein.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [enum_lt_enum](declarations/enum-lt-enum.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [relIso_enum'](declarations/reliso-enum.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [relIso_enum](declarations/reliso-enum-source-edition-2.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [lt_wf](declarations/lt-wf.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [wellFoundedRelation](declarations/wellfoundedrelation.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [induction](declarations/induction.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [card](declarations/card.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [card_type](declarations/card-type.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [card_typein](declarations/card-typein.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [card_le_card](declarations/card-le-card.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [card_zero](declarations/card-zero.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [card_eq_zero](declarations/card-eq-zero.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [card_one](declarations/card-one.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [lift](declarations/lift.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [type_uLift](declarations/type-ulift.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [type_uLift_aux](declarations/type-ulift-aux.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [_root_.RelIso.ordinal_lift_type_eq](declarations/root-reliso-ordinal-lift-type-eq.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [type_lift_preimage](declarations/type-lift-preimage.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [type_lift_preimage_aux](declarations/type-lift-preimage-aux.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [lift_umax](declarations/lift-umax.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [lift_umax'](declarations/lift-umax-source-edition-2.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [lift_id'](declarations/lift-id-source-edition-2.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [lift_id](declarations/lift-id.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [lift_uzero](declarations/lift-uzero.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [lift_lift](declarations/lift-lift.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [lift_type_le](declarations/lift-type-le.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [lift_type_eq](declarations/lift-type-eq.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [lift_type_lt](declarations/lift-type-lt.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [lift_le](declarations/lift-le.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [lift_inj](declarations/lift-inj.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [lift_lt](declarations/lift-lt.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [lift_zero](declarations/lift-zero.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [lift_one](declarations/lift-one.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [lift_card](declarations/lift-card.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [lift_down'](declarations/lift-down.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [lift_down](declarations/lift-down-source-edition-2.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [le_lift_iff](declarations/le-lift-iff.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [lt_lift_iff](declarations/lt-lift-iff.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [lift.initialSeg](declarations/lift-initialseg.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [lift.initialSeg_coe](declarations/lift-initialseg-coe.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [omega](declarations/omega.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [type_nat_lt](declarations/type-nat-lt.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [card_omega](declarations/card-omega.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [lift_omega](declarations/lift-omega.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `instance` | [add](declarations/add.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `instance` | [addMonoidWithOne](declarations/addmonoidwithone.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [card_add](declarations/card-add.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [type_sum_lex](declarations/type-sum-lex.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [card_nat](declarations/card-nat.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [add_covariantClass_le](declarations/add-covariantclass-le.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `instance` | [add_swap_covariantClass_le](declarations/add-swap-covariantclass-le.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [le_add_right](declarations/le-add-right.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [le_add_left](declarations/le-add-left.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `instance` | [linearOrder](declarations/linearorder.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `instance` | [wellFoundedLT](declarations/wellfoundedlt.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [isWellOrder](declarations/iswellorder.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [(anonymous)](declarations/instance.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [max_zero_left](declarations/max-zero-left.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [max_zero_right](declarations/max-zero-right.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [max_eq_zero](declarations/max-eq-zero.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [sInf_empty](declarations/sinf-empty.md) | 1008 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [succ_le_iff'](declarations/succ-le-iff.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [noMaxOrder](declarations/nomaxorder.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `instance` | [succOrder](declarations/succorder.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [add_one_eq_succ](declarations/add-one-eq-succ.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [succ_zero](declarations/succ-zero.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [succ_one](declarations/succ-one.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [add_succ](declarations/add-succ.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [one_le_iff_pos](declarations/one-le-iff-pos.md) | 1067 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [one_le_iff_ne_zero](declarations/one-le-iff-ne-zero.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [succ_pos](declarations/succ-pos.md) | 1074 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [succ_ne_zero](declarations/succ-ne-zero.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [lt_one_iff_zero](declarations/lt-one-iff-zero.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [le_one_iff](declarations/le-one-iff.md) | 1086 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [card_succ](declarations/card-succ.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [nat_cast_succ](declarations/nat-cast-succ.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `instance` | [uniqueIioOne](declarations/uniqueiioone.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `instance` | [uniqueOutOne](declarations/uniqueoutone.md) | 1105 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [one_out_eq](declarations/one-out-eq.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [typein_one_out](declarations/typein-one-out.md) | 1124 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [typein_le_typein](declarations/typein-le-typein.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [typein_le_typein'](declarations/typein-le-typein-source-edition-2.md) | 1135 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [enum_le_enum](declarations/enum-le-enum-source-edition-2.md) | 1144 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [enum_le_enum'](declarations/enum-le-enum.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [enum_zero_le](declarations/enum-zero-le-source-edition-2.md) | 1155 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [enum_zero_le'](declarations/enum-zero-le.md) | 1161 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [le_enum_succ](declarations/le-enum-succ.md) | 1167 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [enum_inj](declarations/enum-inj.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `def` | [enumIso](declarations/enumiso.md) | 1186 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `def` | [enumIsoOut](declarations/enumisoout.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `def` | [outOrderBotOfPos](declarations/outorderbotofpos.md) | 1209 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [enum_zero_eq_bot](declarations/enum-zero-eq-bot.md) | 1213 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `def` | [univ](declarations/univ-source-edition-2.md) | 1227 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [univ_id](declarations/univ-id-source-edition-2.md) | 1231 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [lift_univ](declarations/lift-univ-source-edition-2.md) | 1236 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [univ_umax](declarations/univ-umax-source-edition-2.md) | 1240 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `def` | [lift.principalSeg](declarations/lift-principalseg.md) | 1246 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [lift.principalSeg_coe](declarations/lift-principalseg-coe.md) | 1278 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [lift.principalSeg_top](declarations/lift-principalseg-top.md) | 1285 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [lift.principalSeg_top'](declarations/lift-principalseg-top-source-edition-2.md) | 1289 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [mk_ordinal_out](declarations/mk-ordinal-out.md) | 1303 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `def` | [ord](declarations/ord.md) | 1309 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [ord_eq_Inf](declarations/ord-eq-inf.md) | 1325 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [ord_eq](declarations/ord-eq.md) | 1329 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [ord_le_type](declarations/ord-le-type.md) | 1334 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [ord_le](declarations/ord-le.md) | 1338 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [gc_ord_card](declarations/gc-ord-card.md) | 1353 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [lt_ord](declarations/lt-ord.md) | 1356 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [card_ord](declarations/card-ord.md) | 1361 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `def` | [gciOrdCard](declarations/gciordcard.md) | 1369 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [ord_card_le](declarations/ord-card-le.md) | 1373 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [lt_ord_succ_card](declarations/lt-ord-succ-card.md) | 1377 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [ord_strictMono](declarations/ord-strictmono.md) | 1382 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [ord_mono](declarations/ord-mono.md) | 1387 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [ord_le_ord](declarations/ord-le-ord.md) | 1392 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [ord_lt_ord](declarations/ord-lt-ord.md) | 1397 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [ord_zero](declarations/ord-zero.md) | 1402 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [ord_nat](declarations/ord-nat.md) | 1407 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [ord_one](declarations/ord-one.md) | 1416 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [lift_ord](declarations/lift-ord.md) | 1420 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `theorem` | [mk_ord_out](declarations/mk-ord-out.md) | 1427 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [card_typein_lt](declarations/card-typein-lt.md) | 1430 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [card_typein_out_lt](declarations/card-typein-out-lt.md) | 1436 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [ord_injective](declarations/ord-injective.md) | 1442 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `def` | [ord.orderEmbedding](declarations/ord-orderembedding.md) | 1450 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [ord.orderEmbedding_coe](declarations/ord-orderembedding-coe.md) | 1456 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `def` | [univ](declarations/univ.md) | 1465 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `theorem` | [univ_id](declarations/univ-id.md) | 1469 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [lift_univ](declarations/lift-univ.md) | 1474 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [univ_umax](declarations/univ-umax.md) | 1478 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [lift_lt_univ](declarations/lift-lt-univ-source-edition-2.md) | 1482 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `theorem` | [lift_lt_univ'](declarations/lift-lt-univ.md) | 1487 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `theorem` | [ord_univ](declarations/ord-univ.md) | 1494 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `theorem` | [lt_univ](declarations/lt-univ-source-edition-2.md) | 1502 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `theorem` | [lt_univ'](declarations/lt-univ.md) | 1512 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `theorem` | [small_iff_lift_mk_lt_univ](declarations/small-iff-lift-mk-lt-univ.md) | 1520 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `theorem` | [card_univ](declarations/card-univ.md) | 1535 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `theorem` | [nat_le_card](declarations/nat-le-card.md) | 1540 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `theorem` | [nat_lt_card](declarations/nat-lt-card.md) | 1545 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `theorem` | [card_lt_nat](declarations/card-lt-nat.md) | 1551 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `theorem` | [card_le_nat](declarations/card-le-nat.md) | 1556 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `theorem` | [card_eq_nat](declarations/card-eq-nat.md) | 1561 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `theorem` | [type_fintype](declarations/type-fintype.md) | 1566 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `theorem` | [type_fin](declarations/type-fin.md) | 1570 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d7538a92f3f6786baecbe0cc9f4e4c3bea7f7593eff4a5868988c3796f52906 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
