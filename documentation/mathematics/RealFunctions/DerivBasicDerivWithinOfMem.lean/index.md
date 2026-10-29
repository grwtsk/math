# Deriv Basic Deriv Within Of Mem

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**109 observed declarations and anonymous commands**, 103 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variante271e490acdf43615a44d67e4e1405980e780d5af3857f2a8be0258fb8ed34a1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a88241a3283dcd7a1d2faf36d36d249595c83161`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/DerivBasicDerivWithinOfMem.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasDerivAtFilter](declarations/hasderivatfilter.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasDerivWithinAt](declarations/hasderivwithinat.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HasDerivAt](declarations/hasderivat.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [HasStrictDerivAt](declarations/hasstrictderivat.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [derivWithin](declarations/derivwithin.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [deriv](declarations/deriv.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [hasFDerivAtFilter_iff_hasDerivAtFilter](declarations/hasfderivatfilter-iff-hasderivatfilter.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [HasFDerivAtFilter.hasDerivAtFilter](declarations/hasfderivatfilter-hasderivatfilter.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [hasFDerivWithinAt_iff_hasDerivWithinAt](declarations/hasfderivwithinat-iff-hasderivwithinat.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [hasDerivWithinAt_iff_hasFDerivWithinAt](declarations/hasderivwithinat-iff-hasfderivwithinat.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasFDerivWithinAt.hasDerivWithinAt](declarations/hasfderivwithinat-hasderivwithinat.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [HasDerivWithinAt.hasFDerivWithinAt](declarations/hasderivwithinat-hasfderivwithinat.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [hasFDerivAt_iff_hasDerivAt](declarations/hasfderivat-iff-hasderivat.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [HasFDerivAt.hasDerivAt](declarations/hasfderivat-hasderivat.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasStrictFDerivAt_iff_hasStrictDerivAt](declarations/hasstrictfderivat-iff-hasstrictderivat.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [HasStrictFDerivAt.hasStrictDerivAt](declarations/hasstrictfderivat-hasstrictderivat.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hasStrictDerivAt_iff_hasStrictFDerivAt](declarations/hasstrictderivat-iff-hasstrictfderivat.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [hasDerivAt_iff_hasFDerivAt](declarations/hasderivat-iff-hasfderivat.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [derivWithin_zero_of_not_differentiableWithinAt](declarations/derivwithin-zero-of-not-differentiablewithinat.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [differentiableWithinAt_of_derivWithin_ne_zero](declarations/differentiablewithinat-of-derivwithin-ne-zero.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [deriv_zero_of_not_differentiableAt](declarations/deriv-zero-of-not-differentiableat.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [differentiableAt_of_deriv_ne_zero](declarations/differentiableat-of-deriv-ne-zero.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [UniqueDiffWithinAt.eq_deriv](declarations/uniquediffwithinat-eq-deriv.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [hasDerivAtFilter_iff_isLittleO](declarations/hasderivatfilter-iff-islittleo.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hasDerivAtFilter_iff_tendsto](declarations/hasderivatfilter-iff-tendsto.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [hasDerivWithinAt_iff_isLittleO](declarations/hasderivwithinat-iff-islittleo.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [hasDerivWithinAt_iff_tendsto](declarations/hasderivwithinat-iff-tendsto.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [hasDerivAt_iff_isLittleO](declarations/hasderivat-iff-islittleo.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [hasDerivAt_iff_tendsto](declarations/hasderivat-iff-tendsto.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [HasDerivAtFilter.isBigO_sub](declarations/hasderivatfilter-isbigo-sub.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [HasDerivAtFilter.isBigO_sub_rev](declarations/hasderivatfilter-isbigo-sub-rev.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HasStrictDerivAt.hasDerivAt](declarations/hasstrictderivat-hasderivat.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [hasDerivWithinAt_congr_set'](declarations/hasderivwithinat-congr-set-source-edition-2.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [hasDerivWithinAt_congr_set](declarations/hasderivwithinat-congr-set.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [hasDerivWithinAt_diff_singleton](declarations/hasderivwithinat-diff-singleton.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hasDerivWithinAt_Ioi_iff_Ici](declarations/hasderivwithinat-ioi-iff-ici.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hasDerivWithinAt_Iio_iff_Iic](declarations/hasderivwithinat-iio-iff-iic.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [HasDerivWithinAt.Ioi_iff_Ioo](declarations/hasderivwithinat-ioi-iff-ioo.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [hasDerivAt_iff_isLittleO_nhds_zero](declarations/hasderivat-iff-islittleo-nhds-zero.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [HasDerivAtFilter.mono](declarations/hasderivatfilter-mono.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [HasDerivWithinAt.mono](declarations/hasderivwithinat-mono.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [HasDerivWithinAt.mono_of_mem](declarations/hasderivwithinat-mono-of-mem.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [HasDerivAt.hasDerivAtFilter](declarations/hasderivat-hasderivatfilter.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [HasDerivAt.hasDerivWithinAt](declarations/hasderivat-hasderivwithinat.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [HasDerivWithinAt.differentiableWithinAt](declarations/hasderivwithinat-differentiablewithinat.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [HasDerivAt.differentiableAt](declarations/hasderivat-differentiableat.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [hasDerivWithinAt_univ](declarations/hasderivwithinat-univ.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [HasDerivAt.unique](declarations/hasderivat-unique.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [hasDerivWithinAt_inter'](declarations/hasderivwithinat-inter.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [hasDerivWithinAt_inter](declarations/hasderivwithinat-inter-source-edition-2.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [HasDerivWithinAt.union](declarations/hasderivwithinat-union.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [HasDerivWithinAt.hasDerivAt](declarations/hasderivwithinat-hasderivat.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [DifferentiableWithinAt.hasDerivWithinAt](declarations/differentiablewithinat-hasderivwithinat.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [DifferentiableAt.hasDerivAt](declarations/differentiableat-hasderivat.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [hasDerivAt_deriv_iff](declarations/hasderivat-deriv-iff.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [hasDerivWithinAt_derivWithin_iff](declarations/hasderivwithinat-derivwithin-iff.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [DifferentiableOn.hasDerivAt](declarations/differentiableon-hasderivat.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [HasDerivAt.deriv](declarations/hasderivat-deriv.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [deriv_eq](declarations/deriv-eq.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [HasDerivWithinAt.derivWithin](declarations/hasderivwithinat-derivwithin.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [fderivWithin_derivWithin](declarations/fderivwithin-derivwithin.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [derivWithin_fderivWithin](declarations/derivwithin-fderivwithin.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [fderiv_deriv](declarations/fderiv-deriv.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [deriv_fderiv](declarations/deriv-fderiv.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [DifferentiableAt.derivWithin](declarations/differentiableat-derivwithin.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [HasDerivWithinAt.deriv_eq_zero](declarations/hasderivwithinat-deriv-eq-zero.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [derivWithin_of_mem](declarations/derivwithin-of-mem.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [derivWithin_subset](declarations/derivwithin-subset.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [derivWithin_congr_set'](declarations/derivwithin-congr-set-source-edition-2.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [derivWithin_congr_set](declarations/derivwithin-congr-set.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [derivWithin_univ](declarations/derivwithin-univ.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [derivWithin_inter](declarations/derivwithin-inter.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [derivWithin_of_open](declarations/derivwithin-of-open.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [deriv_mem_iff](declarations/deriv-mem-iff.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [derivWithin_mem_iff](declarations/derivwithin-mem-iff.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [differentiableWithinAt_Ioi_iff_Ici](declarations/differentiablewithinat-ioi-iff-ici.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [derivWithin_Ioi_eq_Ici](declarations/derivwithin-ioi-eq-ici.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Filter.EventuallyEq.hasDerivAtFilter_iff](declarations/filter-eventuallyeq-hasderivatfilter-iff.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [HasDerivAtFilter.congr_of_eventuallyEq](declarations/hasderivatfilter-congr-of-eventuallyeq.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [HasDerivWithinAt.congr_mono](declarations/hasderivwithinat-congr-mono.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [HasDerivWithinAt.congr](declarations/hasderivwithinat-congr.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [HasDerivWithinAt.congr_of_mem](declarations/hasderivwithinat-congr-of-mem.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq](declarations/hasderivwithinat-congr-of-eventuallyeq.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq_of_mem](declarations/hasderivwithinat-congr-of-eventuallyeq-of-mem.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [HasDerivAt.congr_of_eventuallyEq](declarations/hasderivat-congr-of-eventuallyeq.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Filter.EventuallyEq.derivWithin_eq](declarations/filter-eventuallyeq-derivwithin-eq.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [derivWithin_congr](declarations/derivwithin-congr.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Filter.EventuallyEq.deriv_eq](declarations/filter-eventuallyeq-deriv-eq.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Filter.EventuallyEq.deriv](declarations/filter-eventuallyeq-deriv.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [hasDerivAtFilter_id](declarations/hasderivatfilter-id.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [hasDerivWithinAt_id](declarations/hasderivwithinat-id.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [hasDerivAt_id](declarations/hasderivat-id.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [hasDerivAt_id'](declarations/hasderivat-id-source-edition-2.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [hasStrictDerivAt_id](declarations/hasstrictderivat-id.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [deriv_id](declarations/deriv-id-source-edition-3.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [deriv_id'](declarations/deriv-id.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [deriv_id''](declarations/deriv-id-source-edition-2.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [derivWithin_id](declarations/derivwithin-id.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [hasDerivAtFilter_const](declarations/hasderivatfilter-const.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [hasStrictDerivAt_const](declarations/hasstrictderivat-const.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [hasDerivWithinAt_const](declarations/hasderivwithinat-const.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [hasDerivAt_const](declarations/hasderivat-const.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [deriv_const](declarations/deriv-const-source-edition-2.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [deriv_const'](declarations/deriv-const.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [derivWithin_const](declarations/derivwithin-const.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [HasDerivAtFilter.tendsto_nhds](declarations/hasderivatfilter-tendsto-nhds.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [HasDerivWithinAt.continuousWithinAt](declarations/hasderivwithinat-continuouswithinat.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [HasDerivAt.continuousAt](declarations/hasderivat-continuousat.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [HasDerivAt.continuousOn](declarations/hasderivat-continuouson.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a62e3bf85e5f1f13b80648991a763a025dea78258801675860d24c7a3726c176 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variante271e490acdf43615a44d67e4e1405980e780d5af3857f2a8be0258fb8ed34a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
