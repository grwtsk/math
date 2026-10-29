# Liminf Limsup Is Bounded

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**187 observed declarations and anonymous commands**, 176 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant1c90bd714cd91ccd8d52cf86a54ae72069b9ad9893a9069e3c5f0b6ec055de9d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4eab7b8b01fa686221086a49ae706a5f17007906`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/LiminfLimsupIsBounded.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsBounded](declarations/isbounded.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [IsBoundedUnder](declarations/isboundedunder.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isBounded_iff](declarations/isbounded-iff.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isBoundedUnder_of](declarations/isboundedunder-of.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isBounded_bot](declarations/isbounded-bot.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isBounded_top](declarations/isbounded-top.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isBounded_principal](declarations/isbounded-principal.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isBounded_sup](declarations/isbounded-sup.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsBounded.mono](declarations/isbounded-mono.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsBoundedUnder.mono](declarations/isboundedunder-mono.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsBoundedUnder.mono_le](declarations/isboundedunder-mono-le.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsBoundedUnder.mono_ge](declarations/isboundedunder-mono-ge.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isBoundedUnder_const](declarations/isboundedunder-const.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsBounded.isBoundedUnder](declarations/isbounded-isboundedunder.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsBoundedUnder.comp](declarations/isboundedunder-comp.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [_root_.Monotone.isBoundedUnder_le_comp](declarations/root-monotone-isboundedunder-le-comp.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [_root_.Monotone.isBoundedUnder_ge_comp](declarations/root-monotone-isboundedunder-ge-comp.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [_root_.Antitone.isBoundedUnder_le_comp](declarations/root-antitone-isboundedunder-le-comp.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [_root_.Antitone.isBoundedUnder_ge_comp](declarations/root-antitone-isboundedunder-ge-comp.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [not_isBoundedUnder_of_tendsto_atTop](declarations/not-isboundedunder-of-tendsto-attop.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [not_isBoundedUnder_of_tendsto_atBot](declarations/not-isboundedunder-of-tendsto-atbot.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsBoundedUnder.bddAbove_range_of_cofinite](declarations/isboundedunder-bddabove-range-of-cofinite.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsBoundedUnder.bddBelow_range_of_cofinite](declarations/isboundedunder-bddbelow-range-of-cofinite.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsBoundedUnder.bddAbove_range](declarations/isboundedunder-bddabove-range.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsBoundedUnder.bddBelow_range](declarations/isboundedunder-bddbelow-range.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [IsCobounded](declarations/iscobounded.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [IsCoboundedUnder](declarations/iscoboundedunder.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsCobounded.mk](declarations/iscobounded-mk.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsBounded.isCobounded_flip](declarations/isbounded-iscobounded-flip.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsBounded.isCobounded_ge](declarations/isbounded-iscobounded-ge.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsBounded.isCobounded_le](declarations/isbounded-iscobounded-le.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsBoundedUnder.isCoboundedUnder_flip](declarations/isboundedunder-iscoboundedunder-flip.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsBoundedUnder.isCoboundedUnder_le](declarations/isboundedunder-iscoboundedunder-le.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsBoundedUnder.isCoboundedUnder_ge](declarations/isboundedunder-iscoboundedunder-ge.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [isCobounded_bot](declarations/iscobounded-bot.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isCobounded_top](declarations/iscobounded-top.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isCobounded_principal](declarations/iscobounded-principal.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsCobounded.mono](declarations/iscobounded-mono.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isCobounded_le_of_bot](declarations/iscobounded-le-of-bot.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isCobounded_ge_of_top](declarations/iscobounded-ge-of-top.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isBounded_le_of_top](declarations/isbounded-le-of-top.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [isBounded_ge_of_bot](declarations/isbounded-ge-of-bot.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [_root_.OrderIso.isBoundedUnder_le_comp](declarations/root-orderiso-isboundedunder-le-comp.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [_root_.OrderIso.isBoundedUnder_ge_comp](declarations/root-orderiso-isboundedunder-ge-comp.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [isBoundedUnder_le_inv](declarations/isboundedunder-le-inv.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isBoundedUnder_ge_inv](declarations/isboundedunder-ge-inv.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsBoundedUnder.sup](declarations/isboundedunder-sup.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [isBoundedUnder_le_sup](declarations/isboundedunder-le-sup.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IsBoundedUnder.inf](declarations/isboundedunder-inf.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isBoundedUnder_ge_inf](declarations/isboundedunder-ge-inf.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isBoundedUnder_le_abs](declarations/isboundedunder-le-abs.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `macro` | [(anonymous)](declarations/macro.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [limsSup](declarations/limssup.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [limsInf](declarations/limsinf.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [limsup](declarations/limsup.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [liminf](declarations/liminf.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [blimsup](declarations/blimsup.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [bliminf](declarations/bliminf.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [limsup_eq](declarations/limsup-eq.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [liminf_eq](declarations/liminf-eq.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [blimsup_eq](declarations/blimsup-eq.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [bliminf_eq](declarations/bliminf-eq.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [blimsup_true](declarations/blimsup-true.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [bliminf_true](declarations/bliminf-true.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [blimsup_eq_limsup_subtype](declarations/blimsup-eq-limsup-subtype.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [bliminf_eq_liminf_subtype](declarations/bliminf-eq-liminf-subtype.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [limsSup_le_of_le](declarations/limssup-le-of-le.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [le_limsInf_of_le](declarations/le-limsinf-of-le.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [limsup_le_of_le](declarations/limsup-le-of-le.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [le_liminf_of_le](declarations/le-liminf-of-le.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [le_limsSup_of_le](declarations/le-limssup-of-le.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [limsInf_le_of_le](declarations/limsinf-le-of-le.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [le_limsup_of_le](declarations/le-limsup-of-le.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [liminf_le_of_le](declarations/liminf-le-of-le.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [limsInf_le_limsSup](declarations/limsinf-le-limssup.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [liminf_le_limsup](declarations/liminf-le-limsup.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [limsSup_le_limsSup](declarations/limssup-le-limssup.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [limsInf_le_limsInf](declarations/limsinf-le-limsinf.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [limsup_le_limsup](declarations/limsup-le-limsup.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [liminf_le_liminf](declarations/liminf-le-liminf.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [limsSup_le_limsSup_of_le](declarations/limssup-le-limssup-of-le.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [limsInf_le_limsInf_of_le](declarations/limsinf-le-limsinf-of-le.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [limsup_le_limsup_of_le](declarations/limsup-le-limsup-of-le.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [liminf_le_liminf_of_le](declarations/liminf-le-liminf-of-le.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [limsSup_principal](declarations/limssup-principal.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [limsInf_principal](declarations/limsinf-principal.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [limsup_congr](declarations/limsup-congr.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [blimsup_congr](declarations/blimsup-congr.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [bliminf_congr](declarations/bliminf-congr-source-edition-2.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [liminf_congr](declarations/liminf-congr.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [limsup_const](declarations/limsup-const.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [liminf_const](declarations/liminf-const.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [limsSup_bot](declarations/limssup-bot.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [limsup_bot](declarations/limsup-bot.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [limsInf_bot](declarations/limsinf-bot.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [liminf_bot](declarations/liminf-bot.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [limsSup_top](declarations/limssup-top.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [limsInf_top](declarations/limsinf-top.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [blimsup_false](declarations/blimsup-false.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [bliminf_false](declarations/bliminf-false.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [limsup_const_bot](declarations/limsup-const-bot.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [liminf_const_top](declarations/liminf-const-top.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [HasBasis.limsSup_eq_iInf_sSup](declarations/hasbasis-limssup-eq-iinf-ssup.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [HasBasis.limsInf_eq_iSup_sInf](declarations/hasbasis-limsinf-eq-isup-sinf.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [limsSup_eq_iInf_sSup](declarations/limssup-eq-iinf-ssup.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [limsInf_eq_iSup_sInf](declarations/limsinf-eq-isup-sinf.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [limsup_le_iSup](declarations/limsup-le-isup.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [iInf_le_liminf](declarations/iinf-le-liminf.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [limsup_eq_iInf_iSup](declarations/limsup-eq-iinf-isup.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [limsup_eq_iInf_iSup_of_nat](declarations/limsup-eq-iinf-isup-of-nat-source-edition-2.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [limsup_eq_iInf_iSup_of_nat'](declarations/limsup-eq-iinf-isup-of-nat.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [HasBasis.limsup_eq_iInf_iSup](declarations/hasbasis-limsup-eq-iinf-isup.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [blimsup_congr'](declarations/blimsup-congr-source-edition-2.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [bliminf_congr'](declarations/bliminf-congr.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [blimsup_eq_iInf_biSup](declarations/blimsup-eq-iinf-bisup.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [blimsup_eq_iInf_biSup_of_nat](declarations/blimsup-eq-iinf-bisup-of-nat.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [liminf_eq_iSup_iInf](declarations/liminf-eq-isup-iinf.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [liminf_eq_iSup_iInf_of_nat](declarations/liminf-eq-isup-iinf-of-nat.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [liminf_eq_iSup_iInf_of_nat'](declarations/liminf-eq-isup-iinf-of-nat-source-edition-2.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [HasBasis.liminf_eq_iSup_iInf](declarations/hasbasis-liminf-eq-isup-iinf.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [bliminf_eq_iSup_biInf](declarations/bliminf-eq-isup-biinf.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [bliminf_eq_iSup_biInf_of_nat](declarations/bliminf-eq-isup-biinf-of-nat.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [limsup_eq_sInf_sSup](declarations/limsup-eq-sinf-ssup.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [liminf_eq_sSup_sInf](declarations/liminf-eq-ssup-sinf.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [liminf_nat_add](declarations/liminf-nat-add.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [limsup_nat_add](declarations/limsup-nat-add.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [liminf_le_of_frequently_le'](declarations/liminf-le-of-frequently-le-source-edition-2.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [le_limsup_of_frequently_le'](declarations/le-limsup-of-frequently-le-source-edition-2.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [CompleteLatticeHom.apply_limsup_iterate](declarations/completelatticehom-apply-limsup-iterate.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [CompleteLatticeHom.apply_liminf_iterate](declarations/completelatticehom-apply-liminf-iterate.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [blimsup_mono](declarations/blimsup-mono.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [bliminf_antitone](declarations/bliminf-antitone.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [mono_blimsup'](declarations/mono-blimsup-source-edition-2.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [mono_blimsup](declarations/mono-blimsup.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [mono_bliminf'](declarations/mono-bliminf.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [mono_bliminf](declarations/mono-bliminf-source-edition-2.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [bliminf_antitone_filter](declarations/bliminf-antitone-filter.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [blimsup_monotone_filter](declarations/blimsup-monotone-filter.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [blimsup_and_le_inf](declarations/blimsup-and-le-inf.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [bliminf_sup_le_inf_aux_left](declarations/bliminf-sup-le-inf-aux-left.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [bliminf_sup_le_inf_aux_right](declarations/bliminf-sup-le-inf-aux-right.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [bliminf_sup_le_and](declarations/bliminf-sup-le-and.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [bliminf_sup_le_and_aux_left](declarations/bliminf-sup-le-and-aux-left.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [bliminf_sup_le_and_aux_right](declarations/bliminf-sup-le-and-aux-right.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [blimsup_sup_le_or](declarations/blimsup-sup-le-or.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [bliminf_sup_le_or_aux_left](declarations/bliminf-sup-le-or-aux-left.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [bliminf_sup_le_or_aux_right](declarations/bliminf-sup-le-or-aux-right.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [bliminf_or_le_inf](declarations/bliminf-or-le-inf.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [bliminf_or_le_inf_aux_left](declarations/bliminf-or-le-inf-aux-left.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [bliminf_or_le_inf_aux_right](declarations/bliminf-or-le-inf-aux-right.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [OrderIso.apply_blimsup](declarations/orderiso-apply-blimsup.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [OrderIso.apply_bliminf](declarations/orderiso-apply-bliminf.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [SupHom.apply_blimsup_le](declarations/suphom-apply-blimsup-le.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [InfHom.le_apply_bliminf](declarations/infhom-le-apply-bliminf.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [blimsup_or_eq_sup](declarations/blimsup-or-eq-sup.md) | 1018 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [bliminf_or_eq_inf](declarations/bliminf-or-eq-inf.md) | 1026 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [sup_limsup](declarations/sup-limsup.md) | 1030 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [inf_liminf](declarations/inf-liminf.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [sup_liminf](declarations/sup-liminf.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [inf_limsup](declarations/inf-limsup.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [limsup_compl](declarations/limsup-compl.md) | 1056 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [liminf_compl](declarations/liminf-compl.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [limsup_sdiff](declarations/limsup-sdiff.md) | 1064 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [liminf_sdiff](declarations/liminf-sdiff.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [sdiff_limsup](declarations/sdiff-limsup.md) | 1074 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [sdiff_liminf](declarations/sdiff-liminf.md) | 1079 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [cofinite.blimsup_set_eq](declarations/cofinite-blimsup-set-eq.md) | 1090 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [cofinite.bliminf_set_eq](declarations/cofinite-bliminf-set-eq.md) | 1100 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [cofinite.limsup_set_eq](declarations/cofinite-limsup-set-eq.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [cofinite.liminf_set_eq](declarations/cofinite-liminf-set-eq.md) | 1115 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [exists_forall_mem_of_hasBasis_mem_blimsup](declarations/exists-forall-mem-of-hasbasis-mem-blimsup.md) | 1119 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [exists_forall_mem_of_hasBasis_mem_blimsup'](declarations/exists-forall-mem-of-hasbasis-mem-blimsup-source-edition-2.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [frequently_lt_of_lt_limsSup](declarations/frequently-lt-of-lt-limssup.md) | 1141 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [frequently_lt_of_limsInf_lt](declarations/frequently-lt-of-limsinf-lt.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [eventually_lt_of_lt_liminf](declarations/eventually-lt-of-lt-liminf.md) | 1157 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [eventually_lt_of_limsup_lt](declarations/eventually-lt-of-limsup-lt.md) | 1167 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [le_limsup_of_frequently_le](declarations/le-limsup-of-frequently-le.md) | 1174 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [liminf_le_of_frequently_le](declarations/liminf-le-of-frequently-le.md) | 1184 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [frequently_lt_of_lt_limsup](declarations/frequently-lt-of-lt-limsup.md) | 1191 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [frequently_lt_of_liminf_lt](declarations/frequently-lt-of-liminf-lt.md) | 1200 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [Monotone.isBoundedUnder_le_comp_iff](declarations/monotone-isboundedunder-le-comp-iff.md) | 1215 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [Monotone.isBoundedUnder_ge_comp_iff](declarations/monotone-isboundedunder-ge-comp-iff.md) | 1224 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [Antitone.isBoundedUnder_le_comp_iff](declarations/antitone-isboundedunder-le-comp-iff.md) | 1230 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [Antitone.isBoundedUnder_ge_comp_iff](declarations/antitone-isboundedunder-ge-comp-iff.md) | 1236 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [GaloisConnection.l_limsup_le](declarations/galoisconnection-l-limsup-le.md) | 1242 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [OrderIso.limsup_apply](declarations/orderiso-limsup-apply.md) | 1254 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [OrderIso.liminf_apply](declarations/orderiso-liminf-apply.md) | 1272 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72f7216d9f35ab78e35069689f5408897984e04bb877c71e423acc46a33417b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant1c90bd714cd91ccd8d52cf86a54ae72069b9ad9893a9069e3c5f0b6ec055de9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
