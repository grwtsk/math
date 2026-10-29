# Deriv Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**178 observed declarations and anonymous commands**, 172 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf4c0077cb0e87c857f1fcfea2c9c6263d1a3dee9fa8403893e00debf28a4356b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81c0bb8469435c02cc0c950659d790e1a01dc92e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/DerivBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasDerivAtFilter](declarations/hasderivatfilter.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasDerivWithinAt](declarations/hasderivwithinat.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HasDerivAt](declarations/hasderivat.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [HasStrictDerivAt](declarations/hasstrictderivat.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [derivWithin](declarations/derivwithin.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [deriv](declarations/deriv.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [hasFDerivAtFilter_iff_hasDerivAtFilter](declarations/hasfderivatfilter-iff-hasderivatfilter.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [hasDerivAtFilter_iff_hasFDerivAtFilter](declarations/hasderivatfilter-iff-hasfderivatfilter.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [hasFDerivWithinAt_iff_hasDerivWithinAt](declarations/hasfderivwithinat-iff-hasderivwithinat.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [hasDerivWithinAt_iff_hasFDerivWithinAt](declarations/hasderivwithinat-iff-hasfderivwithinat.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hasFDerivAt_iff_hasDerivAt](declarations/hasfderivat-iff-hasderivat.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [hasDerivAt_iff_hasFDerivAt](declarations/hasderivat-iff-hasfderivat.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [hasStrictFDerivAt_iff_hasStrictDerivAt](declarations/hasstrictfderivat-iff-hasstrictderivat.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [hasStrictDerivAt_iff_hasStrictFDerivAt](declarations/hasstrictderivat-iff-hasstrictfderivat.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [derivWithin_zero_of_not_differentiableWithinAt](declarations/derivwithin-zero-of-not-differentiablewithinat.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [differentiableWithinAt_of_derivWithin_ne_zero](declarations/differentiablewithinat-of-derivwithin-ne-zero.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [derivWithin_zero_of_not_accPt](declarations/derivwithin-zero-of-not-accpt.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [derivWithin_zero_of_not_uniqueDiffWithinAt](declarations/derivwithin-zero-of-not-uniquediffwithinat.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [derivWithin_zero_of_notMem_closure](declarations/derivwithin-zero-of-notmem-closure.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [deriv_zero_of_not_differentiableAt](declarations/deriv-zero-of-not-differentiableat.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [differentiableAt_of_deriv_ne_zero](declarations/differentiableat-of-deriv-ne-zero.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [UniqueDiffWithinAt.eq_deriv](declarations/uniquediffwithinat-eq-deriv.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [hasDerivAtFilter_iff_isLittleO](declarations/hasderivatfilter-iff-islittleo.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [hasDerivAtFilter_iff_tendsto](declarations/hasderivatfilter-iff-tendsto.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hasDerivWithinAt_iff_isLittleO](declarations/hasderivwithinat-iff-islittleo.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [hasDerivWithinAt_iff_tendsto](declarations/hasderivwithinat-iff-tendsto.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [hasDerivAt_iff_isLittleO](declarations/hasderivat-iff-islittleo.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [hasDerivAt_iff_tendsto](declarations/hasderivat-iff-tendsto.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [HasDerivAtFilter.isBigO_sub](declarations/hasderivatfilter-isbigo-sub.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [HasDerivAt.isBigO_sub](declarations/hasderivat-isbigo-sub.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isInducing_toSpanSingleton](declarations/isinducing-tospansingleton.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HasDerivAtFilter.isEquivalent_sub](declarations/hasderivatfilter-isequivalent-sub.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HasDerivAtFilter.isTheta_sub](declarations/hasderivatfilter-istheta-sub.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [HasStrictDerivAt.hasDerivAt](declarations/hasstrictderivat-hasderivat.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [hasDerivWithinAt_congr_set'](declarations/hasderivwithinat-congr-set.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hasDerivWithinAt_congr_set](declarations/hasderivwithinat-congr-set-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hasDerivWithinAt_sdiff_singleton](declarations/hasderivwithinat-sdiff-singleton.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [hasDerivWithinAt_Ioi_iff_Ici](declarations/hasderivwithinat-ioi-iff-ici.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [hasDerivWithinAt_Iio_iff_Iic](declarations/hasderivwithinat-iio-iff-iic.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [HasDerivWithinAt.Ioi_iff_Ioo](declarations/hasderivwithinat-ioi-iff-ioo.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [hasDerivAt_iff_isLittleO_nhds_zero](declarations/hasderivat-iff-islittleo-nhds-zero.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [HasDerivAtFilter.mono](declarations/hasderivatfilter-mono.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [HasDerivWithinAt.mono](declarations/hasderivwithinat-mono.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [HasDerivWithinAt.mono_of_mem_nhdsWithin](declarations/hasderivwithinat-mono-of-mem-nhdswithin.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [HasDerivAt.hasDerivAtFilter](declarations/hasderivat-hasderivatfilter.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [HasDerivAt.hasDerivWithinAt](declarations/hasderivat-hasderivwithinat.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [HasDerivWithinAt.differentiableWithinAt](declarations/hasderivwithinat-differentiablewithinat.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [HasDerivAt.differentiableAt](declarations/hasderivat-differentiableat.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [hasDerivWithinAt_univ](declarations/hasderivwithinat-univ.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [HasDerivAt.unique](declarations/hasderivat-unique.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [hasDerivWithinAt_inter'](declarations/hasderivwithinat-inter-source-edition-2.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [hasDerivWithinAt_inter](declarations/hasderivwithinat-inter.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [HasDerivWithinAt.union](declarations/hasderivwithinat-union.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [HasDerivWithinAt.hasDerivAt](declarations/hasderivwithinat-hasderivat.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [DifferentiableWithinAt.hasDerivWithinAt](declarations/differentiablewithinat-hasderivwithinat.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [DifferentiableAt.hasDerivAt](declarations/differentiableat-hasderivat.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [hasDerivAt_deriv_iff](declarations/hasderivat-deriv-iff.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [hasDerivWithinAt_derivWithin_iff](declarations/hasderivwithinat-derivwithin-iff.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [DifferentiableOn.hasDerivAt](declarations/differentiableon-hasderivat.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [HasDerivAt.deriv](declarations/hasderivat-deriv.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [deriv_eq](declarations/deriv-eq.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [HasDerivWithinAt.derivWithin](declarations/hasderivwithinat-derivwithin.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [fderivWithin_derivWithin](declarations/fderivwithin-derivwithin.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [toSpanSingleton_derivWithin](declarations/tospansingleton-derivwithin.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [norm_derivWithin_eq_norm_fderivWithin](declarations/norm-derivwithin-eq-norm-fderivwithin.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [fderiv_apply_one_eq_deriv](declarations/fderiv-apply-one-eq-deriv.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [fderiv_eq_smul_deriv](declarations/fderiv-eq-smul-deriv.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [toSpanSingleton_deriv](declarations/tospansingleton-deriv.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [fderiv_eq_deriv_mul](declarations/fderiv-eq-deriv-mul.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [norm_deriv_eq_norm_fderiv](declarations/norm-deriv-eq-norm-fderiv.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [DifferentiableAt.derivWithin](declarations/differentiableat-derivwithin.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [HasDerivWithinAt.deriv_eq_zero](declarations/hasderivwithinat-deriv-eq-zero.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [derivWithin_of_mem_nhdsWithin](declarations/derivwithin-of-mem-nhdswithin.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [derivWithin_subset](declarations/derivwithin-subset.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [derivWithin_congr_set'](declarations/derivwithin-congr-set.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [derivWithin_congr_set](declarations/derivwithin-congr-set-source-edition-2.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [derivWithin_univ](declarations/derivwithin-univ.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [derivWithin_inter](declarations/derivwithin-inter.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [derivWithin_of_mem_nhds](declarations/derivwithin-of-mem-nhds.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [derivWithin_of_isOpen](declarations/derivwithin-of-isopen.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [deriv_eqOn](declarations/deriv-eqon.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [deriv_mem_iff](declarations/deriv-mem-iff.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [derivWithin_mem_iff](declarations/derivwithin-mem-iff.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [differentiableWithinAt_Ioi_iff_Ici](declarations/differentiablewithinat-ioi-iff-ici.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [derivWithin_Ioi_eq_Ici](declarations/derivwithin-ioi-eq-ici.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Filter.EventuallyEq.hasDerivAtFilter_iff](declarations/filter-eventuallyeq-hasderivatfilter-iff.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [HasDerivAtFilter.congr_of_eventuallyEq](declarations/hasderivatfilter-congr-of-eventuallyeq.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [HasDerivWithinAt.congr_mono](declarations/hasderivwithinat-congr-mono.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [HasDerivWithinAt.congr](declarations/hasderivwithinat-congr.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [HasDerivWithinAt.congr_of_mem](declarations/hasderivwithinat-congr-of-mem.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq](declarations/hasderivwithinat-congr-of-eventuallyeq.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Filter.EventuallyEq.hasDerivWithinAt_iff](declarations/filter-eventuallyeq-hasderivwithinat-iff.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq_of_mem](declarations/hasderivwithinat-congr-of-eventuallyeq-of-mem.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Filter.EventuallyEq.hasDerivWithinAt_iff_of_mem](declarations/filter-eventuallyeq-hasderivwithinat-iff-of-mem.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [HasStrictDerivAt.congr_of_eventuallyEq](declarations/hasstrictderivat-congr-of-eventuallyeq.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [HasStrictDerivAt.congr_deriv](declarations/hasstrictderivat-congr-deriv.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [HasDerivAt.congr_deriv](declarations/hasderivat-congr-deriv.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [HasDerivWithinAt.congr_deriv](declarations/hasderivwithinat-congr-deriv.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [HasDerivAt.congr_of_eventuallyEq](declarations/hasderivat-congr-of-eventuallyeq.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Filter.EventuallyEq.hasDerivAt_iff](declarations/filter-eventuallyeq-hasderivat-iff.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [Filter.EventuallyEq.derivWithin_eq](declarations/filter-eventuallyeq-derivwithin-eq.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Filter.EventuallyEq.derivWithin_eq_of_mem](declarations/filter-eventuallyeq-derivwithin-eq-of-mem.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Filter.EventuallyEq.derivWithin_eq_of_nhds](declarations/filter-eventuallyeq-derivwithin-eq-of-nhds.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [derivWithin_congr](declarations/derivwithin-congr.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [Set.EqOn.deriv](declarations/set-eqon-deriv.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Filter.EventuallyEq.deriv_eq](declarations/filter-eventuallyeq-deriv-eq.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [Filter.EventuallyEq.derivWithin'](declarations/filter-eventuallyeq-derivwithin.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [Filter.EventuallyEq.derivWithin](declarations/filter-eventuallyeq-derivwithin-source-edition-2.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Filter.EventuallyEq.deriv](declarations/filter-eventuallyeq-deriv.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Filter.EventuallyEq.nhdsNE_deriv](declarations/filter-eventuallyeq-nhdsne-deriv.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [Filter.EventuallyEq.codiscreteWithin_derivWithin'](declarations/filter-eventuallyeq-codiscretewithin-derivwithin.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Filter.EventuallyEq.codiscreteWithin_derivWithin](declarations/filter-eventuallyeq-codiscretewithin-derivwithin-source-edition-2.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [Filter.EventuallyEq.codiscreteWithin_deriv](declarations/filter-eventuallyeq-codiscretewithin-deriv.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Filter.EventuallyEq.codiscrete_derivWithin](declarations/filter-eventuallyeq-codiscrete-derivwithin.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [Filter.EventuallyEq.codiscrete_deriv](declarations/filter-eventuallyeq-codiscrete-deriv.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [hasDerivAtFilter_id](declarations/hasderivatfilter-id.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [hasDerivWithinAt_id](declarations/hasderivwithinat-id.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [hasDerivAt_id](declarations/hasderivat-id-source-edition-2.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [hasDerivAt_id'](declarations/hasderivat-id.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [hasStrictDerivAt_id](declarations/hasstrictderivat-id.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [deriv_id](declarations/deriv-id-source-edition-3.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [deriv_id'](declarations/deriv-id-source-edition-2.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [deriv_id''](declarations/deriv-id.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [derivWithin_id](declarations/derivwithin-id-source-edition-2.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [derivWithin_id'](declarations/derivwithin-id.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [hasDerivAtFilter_const](declarations/hasderivatfilter-const.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [hasDerivAtFilter_zero](declarations/hasderivatfilter-zero.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [hasDerivAtFilter_one](declarations/hasderivatfilter-one.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [hasDerivAtFilter_natCast](declarations/hasderivatfilter-natcast.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [hasDerivAtFilter_intCast](declarations/hasderivatfilter-intcast.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [hasDerivAtFilter_ofNat](declarations/hasderivatfilter-ofnat.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [hasStrictDerivAt_const](declarations/hasstrictderivat-const.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [hasStrictDerivAt_zero](declarations/hasstrictderivat-zero.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [hasStrictDerivAt_one](declarations/hasstrictderivat-one.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [hasStrictDerivAt_natCast](declarations/hasstrictderivat-natcast.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [hasStrictDerivAt_intCast](declarations/hasstrictderivat-intcast.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [HasStrictDerivAt_ofNat](declarations/hasstrictderivat-ofnat.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [hasDerivWithinAt_const](declarations/hasderivwithinat-const.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [hasDerivWithinAt_zero](declarations/hasderivwithinat-zero.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [hasDerivWithinAt_one](declarations/hasderivwithinat-one.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [hasDerivWithinAt_natCast](declarations/hasderivwithinat-natcast.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [hasDerivWithinAt_intCast](declarations/hasderivwithinat-intcast.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [hasDerivWithinAt_ofNat](declarations/hasderivwithinat-ofnat.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [hasDerivAt_const](declarations/hasderivat-const.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [hasDerivAt_zero](declarations/hasderivat-zero.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [hasDerivAt_one](declarations/hasderivat-one.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [hasDerivAt_natCast](declarations/hasderivat-natcast.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [hasDerivAt_intCast](declarations/hasderivat-intcast.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [hasDerivAt_ofNat](declarations/hasderivat-ofnat.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [deriv_const](declarations/deriv-const-source-edition-2.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [deriv_const'](declarations/deriv-const.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [deriv_zero](declarations/deriv-zero.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [deriv_one](declarations/deriv-one.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [deriv_natCast](declarations/deriv-natcast.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [deriv_intCast](declarations/deriv-intcast.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [deriv_ofNat](declarations/deriv-ofnat.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [derivWithin_fun_const](declarations/derivwithin-fun-const.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [derivWithin_const](declarations/derivwithin-const.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [derivWithin_zero](declarations/derivwithin-zero.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [derivWithin_one](declarations/derivwithin-one.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [derivWithin_natCast](declarations/derivwithin-natcast.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [derivWithin_intCast](declarations/derivwithin-intcast.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [derivWithin_ofNat](declarations/derivwithin-ofnat.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [HasDerivAtFilter.tendsto_nhds](declarations/hasderivatfilter-tendsto-nhds.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [HasDerivWithinAt.continuousWithinAt](declarations/hasderivwithinat-continuouswithinat.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [HasDerivAt.continuousAt](declarations/hasderivat-continuousat.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [HasDerivWithinAt.continuousOn](declarations/hasderivwithinat-continuouson.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [HasDerivAt.continuousOn](declarations/hasderivat-continuouson.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [HasDerivAt.le_of_lip'](declarations/hasderivat-le-of-lip.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [HasDerivAt.le_of_lipschitzOn](declarations/hasderivat-le-of-lipschitzon.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [HasDerivAt.le_of_lipschitz](declarations/hasderivat-le-of-lipschitz.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [norm_deriv_le_of_lip'](declarations/norm-deriv-le-of-lip.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [norm_deriv_le_of_lipschitzOn](declarations/norm-deriv-le-of-lipschitzon.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [norm_deriv_le_of_lipschitz](declarations/norm-deriv-le-of-lipschitz.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `lemma` | [HasDerivAt.comp_semilinear](declarations/hasderivat-comp-semilinear.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `lemma` | [DifferentiableAt.comp_semilinear₁](declarations/differentiableat-comp-semilinear.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `lemma` | [HasDerivAt.comp_ringHom](declarations/hasderivat-comp-ringhom.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `lemma` | [DifferentiableAt.comp_ringHom](declarations/differentiableat-comp-ringhom.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8798ffc71e5f07896634b0e71de67ba2d1d661ed802af27f180178f2cc19b7dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variantf4c0077cb0e87c857f1fcfea2c9c6263d1a3dee9fa8403893e00debf28a4356b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
