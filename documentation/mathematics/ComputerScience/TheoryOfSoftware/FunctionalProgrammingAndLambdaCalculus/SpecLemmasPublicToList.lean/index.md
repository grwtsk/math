# Spec Lemmas Public To List

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**201 observed declarations and anonymous commands**, 181 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant935dd64a1b615220698ffefffa123e74c4660f2b5c2a79b40af98d606725b605.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be39776453cdad037b6399d98f1ffc8b2582b5ac`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SpecLemmasPublicToList.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [toList](declarations/tolist.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Cursor](declarations/cursor.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Cursor.at](declarations/cursor-at.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Cursor.begin](declarations/cursor-begin.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [Cursor.end](declarations/cursor-end.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Cursor.current](declarations/cursor-current.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Cursor.tail](declarations/cursor-tail.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Cursor.prefix_at](declarations/cursor-prefix-at.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Cursor.suffix_at](declarations/cursor-suffix-at.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Cursor.current_at](declarations/cursor-current-at.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Cursor.tail_at](declarations/cursor-tail-at.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [Cursor.pos](declarations/cursor-pos.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Cursor.pos_at](declarations/cursor-pos-at.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Cursor.pos_mk](declarations/cursor-pos-mk.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Cursor.pos_le_length](declarations/cursor-pos-le-length.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Cursor.length_prefix_le_length](declarations/cursor-length-prefix-le-length.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Cursor.length_suffix_le_length](declarations/cursor-length-suffix-le-length.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eq_of_range'_eq_append_cons](declarations/eq-of-range-eq-append-cons.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [length_of_range'_eq_append_cons](declarations/length-of-range-eq-append-cons.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_of_range'_eq_append_cons](declarations/mem-of-range-eq-append-cons.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [gt_of_range'_eq_append_cons](declarations/gt-of-range-eq-append-cons.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lt_of_range'_eq_append_cons](declarations/lt-of-range-eq-append-cons.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Spec.pure'](declarations/spec-pure.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Spec.pure](declarations/spec-pure-source-edition-2.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Spec.bind'](declarations/spec-bind.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Spec.bind](declarations/spec-bind-source-edition-2.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Spec.map'](declarations/spec-map.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Spec.map](declarations/spec-map-source-edition-2.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Spec.seq'](declarations/spec-seq-source-edition-2.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Spec.seq](declarations/spec-seq.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Spec.monadLift_StateT](declarations/spec-monadlift-statet.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Spec.monadLift_ReaderT](declarations/spec-monadlift-readert.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Spec.monadLift_ExceptT](declarations/spec-monadlift-exceptt.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Spec.monadLift_OptionT](declarations/spec-monadlift-optiont.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Spec.monadLift_Id](declarations/spec-monadlift-id.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Spec.UnfoldLift.monadLift_trans](declarations/spec-unfoldlift-monadlift-trans.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Spec.UnfoldLift.monadLift_refl](declarations/spec-unfoldlift-monadlift-refl.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Spec.monadMap_StateT](declarations/spec-monadmap-statet.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Spec.monadMap_ReaderT](declarations/spec-monadmap-readert.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Spec.monadMap_ExceptT](declarations/spec-monadmap-exceptt.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Spec.monadMap_OptionT](declarations/spec-monadmap-optiont.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Spec.monadMap_trans](declarations/spec-monadmap-trans.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Spec.monadMap_refl](declarations/spec-monadmap-refl.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Spec.liftWith_StateT](declarations/spec-liftwith-statet.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Spec.liftWith_ReaderT](declarations/spec-liftwith-readert.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Spec.liftWith_ExceptT](declarations/spec-liftwith-exceptt.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Spec.liftWith_OptionT](declarations/spec-liftwith-optiont.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Spec.restoreM_StateT](declarations/spec-restorem-statet.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Spec.restoreM_ReaderT](declarations/spec-restorem-readert.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Spec.restoreM_ExceptT](declarations/spec-restorem-exceptt.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Spec.restoreM_OptionT](declarations/spec-restorem-optiont.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Spec.liftWith_trans](declarations/spec-liftwith-trans.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Spec.liftWith_refl](declarations/spec-liftwith-refl.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Spec.restoreM_trans](declarations/spec-restorem-trans.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Spec.restoreM_refl](declarations/spec-restorem-refl.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Spec.read_ReaderT](declarations/spec-read-readert.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Spec.withReader_ReaderT](declarations/spec-withreader-readert.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Spec.adapt_ReaderT](declarations/spec-adapt-readert.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Spec.get_StateT](declarations/spec-get-statet.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [Spec.set_StateT](declarations/spec-set-statet.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Spec.modifyGet_StateT](declarations/spec-modifyget-statet.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Spec.run_ExceptT](declarations/spec-run-exceptt.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Spec.throw_ExceptT](declarations/spec-throw-exceptt.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Spec.tryCatch_ExceptT](declarations/spec-trycatch-exceptt.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Spec.orElse_ExceptT](declarations/spec-orelse-exceptt.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Spec.adapt_ExceptT](declarations/spec-adapt-exceptt.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Spec.throw_Except](declarations/spec-throw-except.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Spec.tryCatch_Except](declarations/spec-trycatch-except.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Spec.orElse_Except](declarations/spec-orelse-except.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Spec.run_OptionT](declarations/spec-run-optiont.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Spec.throw_OptionT](declarations/spec-throw-optiont.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Spec.tryCatch_OptionT](declarations/spec-trycatch-optiont.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Spec.orElse_OptionT](declarations/spec-orelse-optiont.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Spec.throw_Option](declarations/spec-throw-option.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Spec.tryCatch_Option](declarations/spec-trycatch-option.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Spec.orElse_Option](declarations/spec-orelse-option.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Spec.get_EStateM](declarations/spec-get-estatem.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Spec.set_EStateM](declarations/spec-set-estatem.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Spec.modifyGet_EStateM](declarations/spec-modifyget-estatem.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Spec.throw_EStateM](declarations/spec-throw-estatem.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Spec.tryCatch_EStateM](declarations/spec-trycatch-estatem.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [Spec.orElse_EStateM](declarations/spec-orelse-estatem.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Spec.adaptExcept_EStateM](declarations/spec-adaptexcept-estatem.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Spec.UnfoldLift.get](declarations/spec-unfoldlift-get.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Spec.UnfoldLift.set](declarations/spec-unfoldlift-set.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Spec.UnfoldLift.modifyGet](declarations/spec-unfoldlift-modifyget.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Spec.UnfoldLift.read](declarations/spec-unfoldlift-read.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Spec.UnfoldLift.withReader](declarations/spec-unfoldlift-withreader.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Spec.throw_MonadExcept](declarations/spec-throw-monadexcept.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Spec.tryCatch_MonadExcept](declarations/spec-trycatch-monadexcept.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Spec.throw_ReaderT](declarations/spec-throw-readert.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Spec.throw_StateT](declarations/spec-throw-statet.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [Spec.throw_ExceptT_lift](declarations/spec-throw-exceptt-lift.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Spec.throw_Option_lift](declarations/spec-throw-option-lift.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [Spec.tryCatch_ReaderT](declarations/spec-trycatch-readert.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Spec.tryCatch_StateT](declarations/spec-trycatch-statet.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Spec.tryCatch_ExceptT_lift](declarations/spec-trycatch-exceptt-lift.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [Spec.tryCatch_OptionT_lift](declarations/spec-trycatch-optiont-lift.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [Invariant](declarations/invariant.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `abbrev` | [Invariant.withEarlyReturn](declarations/withearlyreturn.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `abbrev` | [Invariant.withEarlyReturnNewDo](declarations/withearlyreturnnewdo.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Spec.forIn'_list](declarations/spec-forin-list.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Spec.forIn'_list_const_inv](declarations/spec-forin-list-const-inv-source-edition-2.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [Spec.forIn_list](declarations/spec-forin-list-source-edition-2.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [Spec.forIn_list_const_inv](declarations/spec-forin-list-const-inv.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Spec.foldlM_list](declarations/spec-foldlm-list.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Spec.foldlM_list_const_inv](declarations/spec-foldlm-list-const-inv.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Spec.forIn'_range](declarations/spec-forin-range.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Spec.forIn_range](declarations/spec-forin-range-source-edition-2.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Spec.forIn'_rcc](declarations/spec-forin-rcc.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [Spec.forIn_rcc](declarations/spec-forin-rcc-source-edition-2.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Spec.forIn'_rco](declarations/spec-forin-rco-source-edition-2.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [Spec.forIn_rco](declarations/spec-forin-rco.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Spec.forIn'_rci](declarations/spec-forin-rci.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [Spec.forIn_rci](declarations/spec-forin-rci-source-edition-2.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Spec.forIn'_roc](declarations/spec-forin-roc-source-edition-2.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [Spec.forIn_roc](declarations/spec-forin-roc.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [Spec.forIn'_roo](declarations/spec-forin-roo-source-edition-2.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [Spec.forIn_roo](declarations/spec-forin-roo.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [Spec.forIn'_roi](declarations/spec-forin-roi.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [Spec.forIn_roi](declarations/spec-forin-roi-source-edition-2.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [Spec.forIn'_ric](declarations/spec-forin-ric.md) | 1120 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [Spec.forIn_ric](declarations/spec-forin-ric-source-edition-2.md) | 1139 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [Spec.forIn'_rio](declarations/spec-forin-rio.md) | 1158 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [Spec.forIn_rio](declarations/spec-forin-rio-source-edition-2.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Spec.forIn'_rii](declarations/spec-forin-rii-source-edition-2.md) | 1196 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [Spec.forIn_rii](declarations/spec-forin-rii.md) | 1215 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [Spec.forIn_slice](declarations/spec-forin-slice.md) | 1234 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [Spec.forIn_iter](declarations/spec-forin-iter.md) | 1261 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [Spec.forIn_iterM_id](declarations/spec-forin-iterm-id.md) | 1278 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [Spec.foldM_iter](declarations/spec-foldm-iter.md) | 1298 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [Spec.foldM_iterM_id](declarations/spec-foldm-iterm-id.md) | 1313 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [Spec.IterM.forIn_filterMapWithPostcondition](declarations/spec-iterm-forin-filtermapwithpostcondition.md) | 1328 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [Spec.IterM.forIn_filterMapM](declarations/spec-iterm-forin-filtermapm.md) | 1345 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [Spec.IterM.forIn_filterMap](declarations/spec-iterm-forin-filtermap.md) | 1363 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [Spec.IterM.forIn_mapWithPostcondition](declarations/spec-iterm-forin-mapwithpostcondition.md) | 1378 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [Spec.IterM.forIn_mapM](declarations/spec-iterm-forin-mapm.md) | 1392 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [Spec.IterM.forIn_map](declarations/spec-iterm-forin-map.md) | 1406 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [Spec.IterM.forIn_filterWithPostcondition](declarations/spec-iterm-forin-filterwithpostcondition.md) | 1416 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [Spec.IterM.forIn_filterM](declarations/spec-iterm-forin-filterm.md) | 1430 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [Spec.IterM.forIn_filter](declarations/spec-iterm-forin-filter.md) | 1444 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [Spec.IterM.foldM_filterMapWithPostcondition](declarations/spec-iterm-foldm-filtermapwithpostcondition.md) | 1454 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [Spec.IterM.foldM_filterMapM](declarations/spec-iterm-foldm-filtermapm.md) | 1471 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [Spec.IterM.foldM_mapWithPostcondition](declarations/spec-iterm-foldm-mapwithpostcondition.md) | 1490 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [Spec.IterM.foldM_mapM](declarations/spec-iterm-foldm-mapm.md) | 1505 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [Spec.IterM.foldM_filterWithPostcondition](declarations/spec-iterm-foldm-filterwithpostcondition.md) | 1522 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [Spec.IterM.foldM_filterM](declarations/spec-iterm-foldm-filterm.md) | 1537 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [Spec.IterM.foldM_filterMap](declarations/spec-iterm-foldm-filtermap.md) | 1554 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [Spec.IterM.foldM_map](declarations/spec-iterm-foldm-map.md) | 1567 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [Spec.IterM.foldM_filter](declarations/spec-iterm-foldm-filter.md) | 1577 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [Spec.IterM.fold_filterMapWithPostcondition](declarations/spec-iterm-fold-filtermapwithpostcondition.md) | 1588 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [Spec.IterM.fold_filterMapM](declarations/spec-iterm-fold-filtermapm.md) | 1603 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [Spec.IterM.fold_mapWithPostcondition](declarations/spec-iterm-fold-mapwithpostcondition.md) | 1617 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [Spec.IterM.fold_mapM](declarations/spec-iterm-fold-mapm.md) | 1630 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [Spec.IterM.fold_filterWithPostcondition](declarations/spec-iterm-fold-filterwithpostcondition.md) | 1642 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [Spec.IterM.fold_filterM](declarations/spec-iterm-fold-filterm.md) | 1655 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [Spec.IterM.fold_filterMap](declarations/spec-iterm-fold-filtermap.md) | 1667 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [Spec.IterM.fold_map](declarations/spec-iterm-fold-map.md) | 1679 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [Spec.IterM.fold_filter](declarations/spec-iterm-fold-filter.md) | 1688 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [Spec.Iter.forIn_filterMapWithPostcondition](declarations/spec-iter-forin-filtermapwithpostcondition.md) | 1699 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [Spec.Iter.forIn_filterMapM](declarations/spec-iter-forin-filtermapm.md) | 1713 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [Spec.Iter.forIn_filterMap](declarations/spec-iter-forin-filtermap.md) | 1727 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [Spec.Iter.forIn_mapWithPostcondition](declarations/spec-iter-forin-mapwithpostcondition.md) | 1739 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [Spec.Iter.forIn_mapM](declarations/spec-iter-forin-mapm.md) | 1750 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [Spec.Iter.forIn_map](declarations/spec-iter-forin-map.md) | 1762 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [Spec.Iter.forIn_filterWithPostcondition](declarations/spec-iter-forin-filterwithpostcondition.md) | 1771 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [Spec.Iter.forIn_filterM](declarations/spec-iter-forin-filterm.md) | 1782 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [Spec.Iter.forIn_filter](declarations/spec-iter-forin-filter.md) | 1793 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [Iter.foldM_filterMapWithPostcondition](declarations/iter-foldm-filtermapwithpostcondition.md) | 1802 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [Iter.foldM_filterMapM](declarations/iter-foldm-filtermapm.md) | 1817 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [Iter.foldM_mapWithPostcondition](declarations/iter-foldm-mapwithpostcondition.md) | 1833 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [Iter.foldM_mapM](declarations/iter-foldm-mapm.md) | 1846 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [Iter.foldM_filterWithPostcondition](declarations/iter-foldm-filterwithpostcondition.md) | 1860 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [Iter.foldM_filterM](declarations/iter-foldm-filterm.md) | 1873 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [Iter.foldM_filterMap](declarations/iter-foldm-filtermap.md) | 1887 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [Iter.foldM_map](declarations/iter-foldm-map.md) | 1899 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [Iter.foldM_filter](declarations/iter-foldm-filter.md) | 1908 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [Iter.fold_filterMapWithPostcondition](declarations/iter-fold-filtermapwithpostcondition.md) | 1917 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [Iter.fold_filterMapM](declarations/iter-fold-filtermapm.md) | 1929 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [Iter.fold_mapWithPostcondition](declarations/iter-fold-mapwithpostcondition.md) | 1941 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [Iter.fold_mapM](declarations/iter-fold-mapm.md) | 1951 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [Iter.fold_filterWithPostcondition](declarations/iter-fold-filterwithpostcondition.md) | 1961 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [Iter.fold_filterM](declarations/iter-fold-filterm.md) | 1972 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [Spec.forIn'_array](declarations/spec-forin-array.md) | 1984 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [Spec.forIn_array](declarations/spec-forin-array-source-edition-2.md) | 2001 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [Spec.foldlM_array](declarations/spec-foldlm-array.md) | 2018 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `def` | [StringInvariant](declarations/stringinvariant.md) | 2041 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `abbrev` | [StringInvariant.withEarlyReturn](declarations/withearlyreturn-source-line-2063-occurrence-2.md) | 2063 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `abbrev` | [StringInvariant.withEarlyReturnNewDo](declarations/withearlyreturnnewdo-source-line-2077-occurrence-2.md) | 2077 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [Spec.forIn_string](declarations/spec-forin-string.md) | 2089 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `def` | [StringSliceInvariant](declarations/stringsliceinvariant.md) | 2128 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `abbrev` | [StringSliceInvariant.withEarlyReturn](declarations/withearlyreturn-source-line-2150-occurrence-2.md) | 2150 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `abbrev` | [StringSliceInvariant.withEarlyReturnNewDo](declarations/withearlyreturnnewdo-source-line-2164-occurrence-2.md) | 2164 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [Spec.forIn_stringSlice](declarations/spec-forin-stringslice.md) | 2176 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `def` | [WhileInvariant](declarations/whileinvariant.md) | 2217 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `def` | [WhileVariant](declarations/whilevariant.md) | 2222 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `abbrev` | [WhileVariant.eval](declarations/eval.md) | 2226 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [WhileVariant.eval_total](declarations/eval-total.md) | 2229 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [WhileVariant.add_eval](declarations/add-eval.md) | 2235 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [Spec.repeatM](declarations/spec-repeatm.md) | 2251 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [Spec.forIn_loop](declarations/spec-forin-loop.md) | 2293 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00ebfb10e24111e63bb3e4c7df098bb3cd60a2c4ca5912dbde612f55df40fe20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant935dd64a1b615220698ffefffa123e74c4660f2b5c2a79b40af98d606725b605.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
