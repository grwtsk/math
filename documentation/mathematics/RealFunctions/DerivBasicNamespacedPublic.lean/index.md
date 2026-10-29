# Deriv Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**178 observed declarations and anonymous commands**, 172 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantbd0aeb82b4313bd82f41d166d9ab7e913c948abf7bb514a834c77294e8ca17a5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93cff3447057e1867bd0cc7e951d61ac88f413a3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/DerivBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasDerivAtFilter](declarations/hasderivatfilter.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasDerivWithinAt](declarations/hasderivwithinat.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HasDerivAt](declarations/hasderivat.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [HasStrictDerivAt](declarations/hasstrictderivat.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [derivWithin](declarations/derivwithin.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [deriv](declarations/deriv.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [hasFDerivAtFilter_iff_hasDerivAtFilter](declarations/hasfderivatfilter-iff-hasderivatfilter.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [hasDerivAtFilter_iff_hasFDerivAtFilter](declarations/hasderivatfilter-iff-hasfderivatfilter.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [hasFDerivWithinAt_iff_hasDerivWithinAt](declarations/hasfderivwithinat-iff-hasderivwithinat.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [hasDerivWithinAt_iff_hasFDerivWithinAt](declarations/hasderivwithinat-iff-hasfderivwithinat.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hasFDerivAt_iff_hasDerivAt](declarations/hasfderivat-iff-hasderivat.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [hasDerivAt_iff_hasFDerivAt](declarations/hasderivat-iff-hasfderivat.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [hasStrictFDerivAt_iff_hasStrictDerivAt](declarations/hasstrictfderivat-iff-hasstrictderivat.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [hasStrictDerivAt_iff_hasStrictFDerivAt](declarations/hasstrictderivat-iff-hasstrictfderivat.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [derivWithin_zero_of_not_differentiableWithinAt](declarations/derivwithin-zero-of-not-differentiablewithinat.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [differentiableWithinAt_of_derivWithin_ne_zero](declarations/differentiablewithinat-of-derivwithin-ne-zero.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [derivWithin_zero_of_not_accPt](declarations/derivwithin-zero-of-not-accpt.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [derivWithin_zero_of_not_uniqueDiffWithinAt](declarations/derivwithin-zero-of-not-uniquediffwithinat.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [derivWithin_zero_of_notMem_closure](declarations/derivwithin-zero-of-notmem-closure.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [deriv_zero_of_not_differentiableAt](declarations/deriv-zero-of-not-differentiableat.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [differentiableAt_of_deriv_ne_zero](declarations/differentiableat-of-deriv-ne-zero.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [UniqueDiffWithinAt.eq_deriv](declarations/uniquediffwithinat-eq-deriv.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [hasDerivAtFilter_iff_isLittleO](declarations/hasderivatfilter-iff-islittleo.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [hasDerivAtFilter_iff_tendsto](declarations/hasderivatfilter-iff-tendsto.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hasDerivWithinAt_iff_isLittleO](declarations/hasderivwithinat-iff-islittleo.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [hasDerivWithinAt_iff_tendsto](declarations/hasderivwithinat-iff-tendsto.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [hasDerivAt_iff_isLittleO](declarations/hasderivat-iff-islittleo.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [hasDerivAt_iff_tendsto](declarations/hasderivat-iff-tendsto.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [HasDerivAtFilter.isBigO_sub](declarations/hasderivatfilter-isbigo-sub.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [HasDerivAt.isBigO_sub](declarations/hasderivat-isbigo-sub.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isInducing_toSpanSingleton](declarations/isinducing-tospansingleton.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HasDerivAtFilter.isEquivalent_sub](declarations/hasderivatfilter-isequivalent-sub.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HasDerivAtFilter.isTheta_sub](declarations/hasderivatfilter-istheta-sub.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [HasStrictDerivAt.hasDerivAt](declarations/hasstrictderivat-hasderivat.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [hasDerivWithinAt_congr_set'](declarations/hasderivwithinat-congr-set.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hasDerivWithinAt_congr_set](declarations/hasderivwithinat-congr-set-source-edition-2.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hasDerivWithinAt_sdiff_singleton](declarations/hasderivwithinat-sdiff-singleton.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [hasDerivWithinAt_Ioi_iff_Ici](declarations/hasderivwithinat-ioi-iff-ici.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [hasDerivWithinAt_Iio_iff_Iic](declarations/hasderivwithinat-iio-iff-iic.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [HasDerivWithinAt.Ioi_iff_Ioo](declarations/hasderivwithinat-ioi-iff-ioo.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [hasDerivAt_iff_isLittleO_nhds_zero](declarations/hasderivat-iff-islittleo-nhds-zero.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [HasDerivAtFilter.mono](declarations/hasderivatfilter-mono.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [HasDerivWithinAt.mono](declarations/hasderivwithinat-mono.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [HasDerivWithinAt.mono_of_mem_nhdsWithin](declarations/hasderivwithinat-mono-of-mem-nhdswithin.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [HasDerivAt.hasDerivAtFilter](declarations/hasderivat-hasderivatfilter.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [HasDerivAt.hasDerivWithinAt](declarations/hasderivat-hasderivwithinat.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [HasDerivWithinAt.differentiableWithinAt](declarations/hasderivwithinat-differentiablewithinat.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [HasDerivAt.differentiableAt](declarations/hasderivat-differentiableat.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [hasDerivWithinAt_univ](declarations/hasderivwithinat-univ.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [HasDerivAt.unique](declarations/hasderivat-unique.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [hasDerivWithinAt_inter'](declarations/hasderivwithinat-inter-source-edition-2.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [hasDerivWithinAt_inter](declarations/hasderivwithinat-inter.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [HasDerivWithinAt.union](declarations/hasderivwithinat-union.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [HasDerivWithinAt.hasDerivAt](declarations/hasderivwithinat-hasderivat.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [DifferentiableWithinAt.hasDerivWithinAt](declarations/differentiablewithinat-hasderivwithinat.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [DifferentiableAt.hasDerivAt](declarations/differentiableat-hasderivat.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [hasDerivAt_deriv_iff](declarations/hasderivat-deriv-iff.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [hasDerivWithinAt_derivWithin_iff](declarations/hasderivwithinat-derivwithin-iff.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [DifferentiableOn.hasDerivAt](declarations/differentiableon-hasderivat.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [HasDerivAt.deriv](declarations/hasderivat-deriv.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [deriv_eq](declarations/deriv-eq.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [HasDerivWithinAt.derivWithin](declarations/hasderivwithinat-derivwithin.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [fderivWithin_derivWithin](declarations/fderivwithin-derivwithin.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [toSpanSingleton_derivWithin](declarations/tospansingleton-derivwithin.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [norm_derivWithin_eq_norm_fderivWithin](declarations/norm-derivwithin-eq-norm-fderivwithin.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [fderiv_apply_one_eq_deriv](declarations/fderiv-apply-one-eq-deriv.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [fderiv_eq_smul_deriv](declarations/fderiv-eq-smul-deriv.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [toSpanSingleton_deriv](declarations/tospansingleton-deriv.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [fderiv_eq_deriv_mul](declarations/fderiv-eq-deriv-mul.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [norm_deriv_eq_norm_fderiv](declarations/norm-deriv-eq-norm-fderiv.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [DifferentiableAt.derivWithin](declarations/differentiableat-derivwithin.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [HasDerivWithinAt.deriv_eq_zero](declarations/hasderivwithinat-deriv-eq-zero.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [derivWithin_of_mem_nhdsWithin](declarations/derivwithin-of-mem-nhdswithin.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [derivWithin_subset](declarations/derivwithin-subset.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [derivWithin_congr_set'](declarations/derivwithin-congr-set.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [derivWithin_congr_set](declarations/derivwithin-congr-set-source-edition-2.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [derivWithin_univ](declarations/derivwithin-univ.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [derivWithin_inter](declarations/derivwithin-inter.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [derivWithin_of_mem_nhds](declarations/derivwithin-of-mem-nhds.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [derivWithin_of_isOpen](declarations/derivwithin-of-isopen.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [deriv_eqOn](declarations/deriv-eqon.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [deriv_mem_iff](declarations/deriv-mem-iff.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [derivWithin_mem_iff](declarations/derivwithin-mem-iff.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [differentiableWithinAt_Ioi_iff_Ici](declarations/differentiablewithinat-ioi-iff-ici.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [derivWithin_Ioi_eq_Ici](declarations/derivwithin-ioi-eq-ici.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Filter.EventuallyEq.hasDerivAtFilter_iff](declarations/filter-eventuallyeq-hasderivatfilter-iff.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [HasDerivAtFilter.congr_of_eventuallyEq](declarations/hasderivatfilter-congr-of-eventuallyeq.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [HasDerivWithinAt.congr_mono](declarations/hasderivwithinat-congr-mono.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [HasDerivWithinAt.congr](declarations/hasderivwithinat-congr.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [HasDerivWithinAt.congr_of_mem](declarations/hasderivwithinat-congr-of-mem.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq](declarations/hasderivwithinat-congr-of-eventuallyeq.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Filter.EventuallyEq.hasDerivWithinAt_iff](declarations/filter-eventuallyeq-hasderivwithinat-iff.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq_of_mem](declarations/hasderivwithinat-congr-of-eventuallyeq-of-mem.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Filter.EventuallyEq.hasDerivWithinAt_iff_of_mem](declarations/filter-eventuallyeq-hasderivwithinat-iff-of-mem.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [HasStrictDerivAt.congr_of_eventuallyEq](declarations/hasstrictderivat-congr-of-eventuallyeq.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [HasStrictDerivAt.congr_deriv](declarations/hasstrictderivat-congr-deriv.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [HasDerivAt.congr_deriv](declarations/hasderivat-congr-deriv.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [HasDerivWithinAt.congr_deriv](declarations/hasderivwithinat-congr-deriv.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [HasDerivAt.congr_of_eventuallyEq](declarations/hasderivat-congr-of-eventuallyeq.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Filter.EventuallyEq.hasDerivAt_iff](declarations/filter-eventuallyeq-hasderivat-iff.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [Filter.EventuallyEq.derivWithin_eq](declarations/filter-eventuallyeq-derivwithin-eq.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Filter.EventuallyEq.derivWithin_eq_of_mem](declarations/filter-eventuallyeq-derivwithin-eq-of-mem.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Filter.EventuallyEq.derivWithin_eq_of_nhds](declarations/filter-eventuallyeq-derivwithin-eq-of-nhds.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [derivWithin_congr](declarations/derivwithin-congr.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [Set.EqOn.deriv](declarations/set-eqon-deriv.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Filter.EventuallyEq.deriv_eq](declarations/filter-eventuallyeq-deriv-eq.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [Filter.EventuallyEq.derivWithin'](declarations/filter-eventuallyeq-derivwithin.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [Filter.EventuallyEq.derivWithin](declarations/filter-eventuallyeq-derivwithin-source-edition-2.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Filter.EventuallyEq.deriv](declarations/filter-eventuallyeq-deriv.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Filter.EventuallyEq.nhdsNE_deriv](declarations/filter-eventuallyeq-nhdsne-deriv.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [Filter.EventuallyEq.codiscreteWithin_derivWithin'](declarations/filter-eventuallyeq-codiscretewithin-derivwithin.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Filter.EventuallyEq.codiscreteWithin_derivWithin](declarations/filter-eventuallyeq-codiscretewithin-derivwithin-source-edition-2.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [Filter.EventuallyEq.codiscreteWithin_deriv](declarations/filter-eventuallyeq-codiscretewithin-deriv.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Filter.EventuallyEq.codiscrete_derivWithin](declarations/filter-eventuallyeq-codiscrete-derivwithin.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [Filter.EventuallyEq.codiscrete_deriv](declarations/filter-eventuallyeq-codiscrete-deriv.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [hasDerivAtFilter_id](declarations/hasderivatfilter-id.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [hasDerivWithinAt_id](declarations/hasderivwithinat-id.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [hasDerivAt_id](declarations/hasderivat-id-source-edition-2.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [hasDerivAt_id'](declarations/hasderivat-id.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [hasStrictDerivAt_id](declarations/hasstrictderivat-id.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [deriv_id](declarations/deriv-id-source-edition-3.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [deriv_id'](declarations/deriv-id.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [deriv_id''](declarations/deriv-id-source-edition-2.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [derivWithin_id](declarations/derivwithin-id-source-edition-2.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [derivWithin_id'](declarations/derivwithin-id.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [hasDerivAtFilter_const](declarations/hasderivatfilter-const.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [hasDerivAtFilter_zero](declarations/hasderivatfilter-zero.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [hasDerivAtFilter_one](declarations/hasderivatfilter-one.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [hasDerivAtFilter_natCast](declarations/hasderivatfilter-natcast.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [hasDerivAtFilter_intCast](declarations/hasderivatfilter-intcast.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [hasDerivAtFilter_ofNat](declarations/hasderivatfilter-ofnat.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [hasStrictDerivAt_const](declarations/hasstrictderivat-const.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [hasStrictDerivAt_zero](declarations/hasstrictderivat-zero.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [hasStrictDerivAt_one](declarations/hasstrictderivat-one.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [hasStrictDerivAt_natCast](declarations/hasstrictderivat-natcast.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [hasStrictDerivAt_intCast](declarations/hasstrictderivat-intcast.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [HasStrictDerivAt_ofNat](declarations/hasstrictderivat-ofnat.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [hasDerivWithinAt_const](declarations/hasderivwithinat-const.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [hasDerivWithinAt_zero](declarations/hasderivwithinat-zero.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [hasDerivWithinAt_one](declarations/hasderivwithinat-one.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [hasDerivWithinAt_natCast](declarations/hasderivwithinat-natcast.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [hasDerivWithinAt_intCast](declarations/hasderivwithinat-intcast.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [hasDerivWithinAt_ofNat](declarations/hasderivwithinat-ofnat.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [hasDerivAt_const](declarations/hasderivat-const.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [hasDerivAt_zero](declarations/hasderivat-zero.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [hasDerivAt_one](declarations/hasderivat-one.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [hasDerivAt_natCast](declarations/hasderivat-natcast.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [hasDerivAt_intCast](declarations/hasderivat-intcast.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [hasDerivAt_ofNat](declarations/hasderivat-ofnat.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [deriv_const](declarations/deriv-const-source-edition-2.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [deriv_const'](declarations/deriv-const.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [deriv_zero](declarations/deriv-zero.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [deriv_one](declarations/deriv-one.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [deriv_natCast](declarations/deriv-natcast.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [deriv_intCast](declarations/deriv-intcast.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [deriv_ofNat](declarations/deriv-ofnat.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [derivWithin_fun_const](declarations/derivwithin-fun-const.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [derivWithin_const](declarations/derivwithin-const.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [derivWithin_zero](declarations/derivwithin-zero.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [derivWithin_one](declarations/derivwithin-one.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [derivWithin_natCast](declarations/derivwithin-natcast.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [derivWithin_intCast](declarations/derivwithin-intcast.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [derivWithin_ofNat](declarations/derivwithin-ofnat.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [HasDerivAtFilter.tendsto_nhds](declarations/hasderivatfilter-tendsto-nhds.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [HasDerivWithinAt.continuousWithinAt](declarations/hasderivwithinat-continuouswithinat.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [HasDerivAt.continuousAt](declarations/hasderivat-continuousat.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [HasDerivWithinAt.continuousOn](declarations/hasderivwithinat-continuouson.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [HasDerivAt.continuousOn](declarations/hasderivat-continuouson.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [HasDerivAt.le_of_lip'](declarations/hasderivat-le-of-lip.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [HasDerivAt.le_of_lipschitzOn](declarations/hasderivat-le-of-lipschitzon.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [HasDerivAt.le_of_lipschitz](declarations/hasderivat-le-of-lipschitz.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [norm_deriv_le_of_lip'](declarations/norm-deriv-le-of-lip.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [norm_deriv_le_of_lipschitzOn](declarations/norm-deriv-le-of-lipschitzon.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [norm_deriv_le_of_lipschitz](declarations/norm-deriv-le-of-lipschitz.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `lemma` | [HasDerivAt.comp_semilinear](declarations/hasderivat-comp-semilinear.md) | 961 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `lemma` | [DifferentiableAt.comp_semilinear₁](declarations/differentiableat-comp-semilinear.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `lemma` | [HasDerivAt.comp_ringHom](declarations/hasderivat-comp-ringhom.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `lemma` | [DifferentiableAt.comp_ringHom](declarations/differentiableat-comp-ringhom.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60b75fc47abab9df3257ac9481f9956bd5d119a99fb1c2390fed745257afa8d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantbd0aeb82b4313bd82f41d166d9ab7e913c948abf7bb514a834c77294e8ca17a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
