# Bounds Basic Source Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**226 observed declarations and anonymous commands**, 223 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf7142ee4a0fa8a8d600856a1c77a7d8438abc1f58fecae8370aeda5e4305193d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8ec47e76c83f9e344eff879803c4c50d46f5bd8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundsBasicSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_upperBounds](declarations/mem-upperbounds.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_lowerBounds](declarations/mem-lowerbounds.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mem_upperBounds_iff_subset_Iic](declarations/mem-upperbounds-iff-subset-iic.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [mem_lowerBounds_iff_subset_Ici](declarations/mem-lowerbounds-iff-subset-ici.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [bddAbove_def](declarations/bddabove-def.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [bddBelow_def](declarations/bddbelow-def.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [bot_mem_lowerBounds](declarations/bot-mem-lowerbounds.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [top_mem_upperBounds](declarations/top-mem-upperbounds.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isLeast_bot_iff](declarations/isleast-bot-iff.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isGreatest_top_iff](declarations/isgreatest-top-iff.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [not_bddAbove_iff'](declarations/not-bddabove-iff-source-edition-2.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [not_bddBelow_iff'](declarations/not-bddbelow-iff-source-edition-2.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [not_bddAbove_iff](declarations/not-bddabove-iff.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [not_bddBelow_iff](declarations/not-bddbelow-iff.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [bddBelow_preimage_ofDual](declarations/bddbelow-preimage-ofdual.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [bddAbove_preimage_ofDual](declarations/bddabove-preimage-ofdual.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [bddBelow_preimage_toDual](declarations/bddbelow-preimage-todual.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [bddAbove_preimage_toDual](declarations/bddabove-preimage-todual.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [BddAbove.dual](declarations/bddabove-dual.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [BddBelow.dual](declarations/bddbelow-dual.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsLeast.dual](declarations/isleast-dual.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsGreatest.dual](declarations/isgreatest-dual.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsLUB.dual](declarations/islub-dual.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsGLB.dual](declarations/isglb-dual.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [IsLeast.orderBot](declarations/isleast-orderbot.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [IsGreatest.orderTop](declarations/isgreatest-ordertop.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isLUB_congr](declarations/islub-congr.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isGLB_congr](declarations/isglb-congr.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [IsCofinalFor.of_subset](declarations/iscofinalfor-of-subset.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [IsCoinitialFor.of_subset](declarations/iscoinitialfor-of-subset.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [IsCofinalFor.rfl](declarations/iscofinalfor-rfl.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsCoinitialFor.rfl](declarations/iscoinitialfor-rfl.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [IsCofinalFor.trans](declarations/iscofinalfor-trans.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsCoinitialFor.trans](declarations/iscoinitialfor-trans.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsCofinalFor.mono_left](declarations/iscofinalfor-mono-left.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsCoinitialFor.mono_left](declarations/iscoinitialfor-mono-left.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsCofinalFor.mono_right](declarations/iscofinalfor-mono-right.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsCoinitialFor.mono_right](declarations/iscoinitialfor-mono-right.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [DirectedOn.isCofinalFor_fst_image_prod_snd_image](declarations/directedon-iscofinalfor-fst-image-prod-snd-image.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [upperBounds_mono_set](declarations/upperbounds-mono-set.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [lowerBounds_mono_set](declarations/lowerbounds-mono-set.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [upperBounds_mono_of_isCofinalFor](declarations/upperbounds-mono-of-iscofinalfor.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [lowerBounds_mono_of_isCoinitialFor](declarations/lowerbounds-mono-of-iscoinitialfor.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [upperBounds_mono_mem](declarations/upperbounds-mono-mem.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [lowerBounds_mono_mem](declarations/lowerbounds-mono-mem.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [upperBounds_mono](declarations/upperbounds-mono.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lowerBounds_mono](declarations/lowerbounds-mono.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [BddAbove.mono](declarations/bddabove-mono.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [BddBelow.mono](declarations/bddbelow-mono.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IsLUB.of_subset_of_superset](declarations/islub-of-subset-of-superset.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IsGLB.of_subset_of_superset](declarations/isglb-of-subset-of-superset.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [IsLeast.mono](declarations/isleast-mono.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IsGreatest.mono](declarations/isgreatest-mono.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IsLUB.mono](declarations/islub-mono.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [IsGLB.mono](declarations/isglb-mono.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [subset_lowerBounds_upperBounds](declarations/subset-lowerbounds-upperbounds.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [subset_upperBounds_lowerBounds](declarations/subset-upperbounds-lowerbounds.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Set.Nonempty.bddAbove_lowerBounds](declarations/set-nonempty-bddabove-lowerbounds.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Set.Nonempty.bddBelow_upperBounds](declarations/set-nonempty-bddbelow-upperbounds.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IsLeast.isGLB](declarations/isleast-isglb.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [IsGreatest.isLUB](declarations/isgreatest-islub.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsLUB.upperBounds_eq](declarations/islub-upperbounds-eq.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsGLB.lowerBounds_eq](declarations/isglb-lowerbounds-eq.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [IsLeast.lowerBounds_eq](declarations/isleast-lowerbounds-eq.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [IsGreatest.upperBounds_eq](declarations/isgreatest-upperbounds-eq.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [IsGreatest.lt_iff](declarations/isgreatest-lt-iff.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [IsLeast.lt_iff](declarations/isleast-lt-iff.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [isLUB_le_iff](declarations/islub-le-iff.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [le_isGLB_iff](declarations/le-isglb-iff.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [isLUB_iff_le_iff](declarations/islub-iff-le-iff.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [isGLB_iff_le_iff](declarations/isglb-iff-le-iff.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [IsLUB.bddAbove](declarations/islub-bddabove.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [IsGLB.bddBelow](declarations/isglb-bddbelow.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [IsGreatest.bddAbove](declarations/isgreatest-bddabove.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [IsLeast.bddBelow](declarations/isleast-bddbelow.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [IsLeast.nonempty](declarations/isleast-nonempty.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [IsGreatest.nonempty](declarations/isgreatest-nonempty.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [upperBounds_union](declarations/upperbounds-union.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [lowerBounds_union](declarations/lowerbounds-union.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [union_upperBounds_subset_upperBounds_inter](declarations/union-upperbounds-subset-upperbounds-inter.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [union_lowerBounds_subset_lowerBounds_inter](declarations/union-lowerbounds-subset-lowerbounds-inter.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [isLeast_union_iff](declarations/isleast-union-iff.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [isGreatest_union_iff](declarations/isgreatest-union-iff.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [BddAbove.inter_of_left](declarations/bddabove-inter-of-left.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [BddAbove.inter_of_right](declarations/bddabove-inter-of-right.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [BddBelow.inter_of_left](declarations/bddbelow-inter-of-left.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [BddBelow.inter_of_right](declarations/bddbelow-inter-of-right.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [BddAbove.union](declarations/bddabove-union.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [bddAbove_union](declarations/bddabove-union-source-edition-2.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [BddBelow.union](declarations/bddbelow-union.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [bddBelow_union](declarations/bddbelow-union-source-edition-2.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [IsLUB.union](declarations/islub-union.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [IsGLB.union](declarations/isglb-union.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [IsLeast.union](declarations/isleast-union.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [IsGreatest.union](declarations/isgreatest-union.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [IsLUB.inter_Ici_of_mem](declarations/islub-inter-ici-of-mem.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [IsGLB.inter_Iic_of_mem](declarations/isglb-inter-iic-of-mem.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [bddAbove_iff_exists_ge](declarations/bddabove-iff-exists-ge.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [bddBelow_iff_exists_le](declarations/bddbelow-iff-exists-le.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [BddAbove.exists_ge](declarations/bddabove-exists-ge.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [BddBelow.exists_le](declarations/bddbelow-exists-le.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [isLeast_Ici](declarations/isleast-ici.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [isGreatest_Iic](declarations/isgreatest-iic.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [isLUB_Iic](declarations/islub-iic.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [isGLB_Ici](declarations/isglb-ici.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [upperBounds_Iic](declarations/upperbounds-iic.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [lowerBounds_Ici](declarations/lowerbounds-ici.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [bddAbove_Iic](declarations/bddabove-iic.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [bddBelow_Ici](declarations/bddbelow-ici.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [bddAbove_Iio](declarations/bddabove-iio.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [bddBelow_Ioi](declarations/bddbelow-ioi.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [lub_Iio_le](declarations/lub-iio-le.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [le_glb_Ioi](declarations/le-glb-ioi.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [lub_Iio_eq_self_or_Iio_eq_Iic](declarations/lub-iio-eq-self-or-iio-eq-iic.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [glb_Ioi_eq_self_or_Ioi_eq_Ici](declarations/glb-ioi-eq-self-or-ioi-eq-ici.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [exists_lub_Iio](declarations/exists-lub-iio.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [exists_glb_Ioi](declarations/exists-glb-ioi.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [isLUB_Iio](declarations/islub-iio.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [isGLB_Ioi](declarations/isglb-ioi.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [upperBounds_Iio](declarations/upperbounds-iio.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [lowerBounds_Ioi](declarations/lowerbounds-ioi.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [isGreatest_singleton](declarations/isgreatest-singleton.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [isLeast_singleton](declarations/isleast-singleton.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [isLUB_singleton](declarations/islub-singleton.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [isGLB_singleton](declarations/isglb-singleton.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [bddAbove_singleton](declarations/bddabove-singleton.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [bddBelow_singleton](declarations/bddbelow-singleton.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [upperBounds_singleton](declarations/upperbounds-singleton.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [lowerBounds_singleton](declarations/lowerbounds-singleton.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [bddAbove_Icc](declarations/bddabove-icc.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [bddBelow_Icc](declarations/bddbelow-icc.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [bddAbove_Ico](declarations/bddabove-ico.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [bddBelow_Ico](declarations/bddbelow-ico.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [bddAbove_Ioc](declarations/bddabove-ioc.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [bddBelow_Ioc](declarations/bddbelow-ioc.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [bddAbove_Ioo](declarations/bddabove-ioo.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [bddBelow_Ioo](declarations/bddbelow-ioo.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [isGreatest_Icc](declarations/isgreatest-icc.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [isLUB_Icc](declarations/islub-icc.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [upperBounds_Icc](declarations/upperbounds-icc.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [isLeast_Icc](declarations/isleast-icc.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [isGLB_Icc](declarations/isglb-icc.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [lowerBounds_Icc](declarations/lowerbounds-icc.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [isGreatest_Ioc](declarations/isgreatest-ioc.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [isLUB_Ioc](declarations/islub-ioc.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [upperBounds_Ioc](declarations/upperbounds-ioc.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [isLeast_Ico](declarations/isleast-ico.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [isGLB_Ico](declarations/isglb-ico.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [lowerBounds_Ico](declarations/lowerbounds-ico.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [isGLB_Ioo](declarations/isglb-ioo.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [lowerBounds_Ioo](declarations/lowerbounds-ioo.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [isGLB_Ioc](declarations/isglb-ioc.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [lowerBounds_Ioc](declarations/lowerbounds-ioc.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [isLUB_Ioo](declarations/islub-ioo.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [upperBounds_Ioo](declarations/upperbounds-ioo.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [isLUB_Ico](declarations/islub-ico.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [upperBounds_Ico](declarations/upperbounds-ico.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [bddBelow_iff_subset_Ici](declarations/bddbelow-iff-subset-ici.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [bddAbove_iff_subset_Iic](declarations/bddabove-iff-subset-iic.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [bddBelow_bddAbove_iff_subset_Icc](declarations/bddbelow-bddabove-iff-subset-icc.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [isGreatest_univ_iff](declarations/isgreatest-univ-iff.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [isGreatest_univ](declarations/isgreatest-univ.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [OrderTop.upperBounds_univ](declarations/ordertop-upperbounds-univ.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [isLUB_univ](declarations/islub-univ.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [OrderBot.lowerBounds_univ](declarations/orderbot-lowerbounds-univ.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [isLeast_univ_iff](declarations/isleast-univ-iff.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [isLeast_univ](declarations/isleast-univ.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [isGLB_univ](declarations/isglb-univ.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [NoTopOrder.upperBounds_univ](declarations/notoporder-upperbounds-univ.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [NoBotOrder.lowerBounds_univ](declarations/nobotorder-lowerbounds-univ.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [not_bddAbove_univ](declarations/not-bddabove-univ.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [not_bddBelow_univ](declarations/not-bddbelow-univ.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [upperBounds_empty](declarations/upperbounds-empty.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [lowerBounds_empty](declarations/lowerbounds-empty.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [bddAbove_empty](declarations/bddabove-empty.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [bddBelow_empty](declarations/bddbelow-empty.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [isGLB_empty_iff](declarations/isglb-empty-iff.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [isLUB_empty_iff](declarations/islub-empty-iff.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [isGLB_empty](declarations/isglb-empty.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [isLUB_empty](declarations/islub-empty.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [IsLUB.nonempty](declarations/islub-nonempty.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [IsGLB.nonempty](declarations/isglb-nonempty.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [nonempty_of_not_bddAbove](declarations/nonempty-of-not-bddabove.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [nonempty_of_not_bddBelow](declarations/nonempty-of-not-bddbelow.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [bddAbove_insert](declarations/bddabove-insert-source-edition-2.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [BddAbove.insert](declarations/bddabove-insert.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [bddBelow_insert](declarations/bddbelow-insert-source-edition-2.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [BddBelow.insert](declarations/bddbelow-insert.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [IsLUB.insert](declarations/islub-insert.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [IsGLB.insert](declarations/isglb-insert.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [IsGreatest.insert](declarations/isgreatest-insert.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [IsLeast.insert](declarations/isleast-insert.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [upperBounds_insert](declarations/upperbounds-insert.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [lowerBounds_insert](declarations/lowerbounds-insert.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [OrderTop.bddAbove](declarations/ordertop-bddabove.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [OrderBot.bddBelow](declarations/orderbot-bddbelow.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `macro` | [(anonymous)](declarations/macro.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [isLUB_pair](declarations/islub-pair.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [isGLB_pair](declarations/isglb-pair.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [isLeast_pair](declarations/isleast-pair.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [isGreatest_pair](declarations/isgreatest-pair.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [isLUB_lowerBounds](declarations/islub-lowerbounds.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [isGLB_upperBounds](declarations/isglb-upperbounds.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `theorem` | [lowerBounds_le_upperBounds](declarations/lowerbounds-le-upperbounds.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [isGLB_le_isLUB](declarations/isglb-le-islub.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [isLUB_lt_iff](declarations/islub-lt-iff.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [lt_isGLB_iff](declarations/lt-isglb-iff.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `theorem` | [le_of_isLUB_le_isGLB](declarations/le-of-islub-le-isglb.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `theorem` | [IsLeast.unique](declarations/isleast-unique.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `theorem` | [IsLeast.isLeast_iff_eq](declarations/isleast-isleast-iff-eq.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `theorem` | [IsGreatest.unique](declarations/isgreatest-unique.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `theorem` | [IsGreatest.isGreatest_iff_eq](declarations/isgreatest-isgreatest-iff-eq.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `theorem` | [IsLUB.unique](declarations/islub-unique.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `theorem` | [IsGLB.unique](declarations/isglb-unique.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `theorem` | [Set.subsingleton_of_isLUB_le_isGLB](declarations/set-subsingleton-of-islub-le-isglb.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `theorem` | [isGLB_lt_isLUB_of_ne](declarations/isglb-lt-islub-of-ne.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `theorem` | [lt_isLUB_iff](declarations/lt-islub-iff.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `theorem` | [isGLB_lt_iff](declarations/isglb-lt-iff.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `theorem` | [IsLUB.exists_between](declarations/islub-exists-between.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `theorem` | [IsLUB.exists_between'](declarations/islub-exists-between-source-edition-2.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `theorem` | [IsGLB.exists_between](declarations/isglb-exists-between.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `theorem` | [IsGLB.exists_between'](declarations/isglb-exists-between-source-edition-2.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 223 | `theorem` | [isGreatest_himp](declarations/isgreatest-himp.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 224 | `theorem` | [isLeast_sdiff](declarations/isleast-sdiff.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 225 | `theorem` | [isGreatest_compl](declarations/isgreatest-compl.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 226 | `theorem` | [isLeast_hnot](declarations/isleast-hnot.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0890829d4f64419fefaab1311db815a08703529478255b669783b0551f7a15eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf7142ee4a0fa8a8d600856a1c77a7d8438abc1f58fecae8370aeda5e4305193d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
