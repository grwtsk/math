# Spec Lemmas Namespaced Public To List

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**201 observed declarations and anonymous commands**, 181 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant09869237e782fb495d788ac7b17d58e10b14c1cb8519b69def2539a5f6dd5db6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `565e710ecdc3dcba2201dacdecda4b4cf2273efd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SpecLemmasNamespacedPublicToList.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [toList](declarations/tolist.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Cursor](declarations/cursor.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Cursor.at](declarations/cursor-at.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Cursor.begin](declarations/cursor-begin.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [Cursor.end](declarations/cursor-end.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Cursor.current](declarations/cursor-current.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Cursor.tail](declarations/cursor-tail.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Cursor.prefix_at](declarations/cursor-prefix-at.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Cursor.suffix_at](declarations/cursor-suffix-at.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Cursor.current_at](declarations/cursor-current-at.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Cursor.tail_at](declarations/cursor-tail-at.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [Cursor.pos](declarations/cursor-pos.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Cursor.pos_at](declarations/cursor-pos-at.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Cursor.pos_mk](declarations/cursor-pos-mk.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Cursor.pos_le_length](declarations/cursor-pos-le-length.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Cursor.length_prefix_le_length](declarations/cursor-length-prefix-le-length.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Cursor.length_suffix_le_length](declarations/cursor-length-suffix-le-length.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eq_of_range'_eq_append_cons](declarations/eq-of-range-eq-append-cons.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [length_of_range'_eq_append_cons](declarations/length-of-range-eq-append-cons.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_of_range'_eq_append_cons](declarations/mem-of-range-eq-append-cons.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [gt_of_range'_eq_append_cons](declarations/gt-of-range-eq-append-cons.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lt_of_range'_eq_append_cons](declarations/lt-of-range-eq-append-cons.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Spec.pure'](declarations/spec-pure-source-edition-2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Spec.pure](declarations/spec-pure.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Spec.bind'](declarations/spec-bind-source-edition-2.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Spec.bind](declarations/spec-bind.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Spec.map'](declarations/spec-map.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Spec.map](declarations/spec-map-source-edition-2.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Spec.seq'](declarations/spec-seq.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Spec.seq](declarations/spec-seq-source-edition-2.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Spec.monadLift_StateT](declarations/spec-monadlift-statet.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Spec.monadLift_ReaderT](declarations/spec-monadlift-readert.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Spec.monadLift_ExceptT](declarations/spec-monadlift-exceptt.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Spec.monadLift_OptionT](declarations/spec-monadlift-optiont.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Spec.monadLift_Id](declarations/spec-monadlift-id.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Spec.UnfoldLift.monadLift_trans](declarations/spec-unfoldlift-monadlift-trans.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Spec.UnfoldLift.monadLift_refl](declarations/spec-unfoldlift-monadlift-refl.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Spec.monadMap_StateT](declarations/spec-monadmap-statet.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Spec.monadMap_ReaderT](declarations/spec-monadmap-readert.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Spec.monadMap_ExceptT](declarations/spec-monadmap-exceptt.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Spec.monadMap_OptionT](declarations/spec-monadmap-optiont.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Spec.monadMap_trans](declarations/spec-monadmap-trans.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Spec.monadMap_refl](declarations/spec-monadmap-refl.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Spec.liftWith_StateT](declarations/spec-liftwith-statet.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Spec.liftWith_ReaderT](declarations/spec-liftwith-readert.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Spec.liftWith_ExceptT](declarations/spec-liftwith-exceptt.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Spec.liftWith_OptionT](declarations/spec-liftwith-optiont.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Spec.restoreM_StateT](declarations/spec-restorem-statet.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Spec.restoreM_ReaderT](declarations/spec-restorem-readert.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Spec.restoreM_ExceptT](declarations/spec-restorem-exceptt.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Spec.restoreM_OptionT](declarations/spec-restorem-optiont.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Spec.liftWith_trans](declarations/spec-liftwith-trans.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Spec.liftWith_refl](declarations/spec-liftwith-refl.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Spec.restoreM_trans](declarations/spec-restorem-trans.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Spec.restoreM_refl](declarations/spec-restorem-refl.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Spec.read_ReaderT](declarations/spec-read-readert.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Spec.withReader_ReaderT](declarations/spec-withreader-readert.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Spec.adapt_ReaderT](declarations/spec-adapt-readert.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Spec.get_StateT](declarations/spec-get-statet.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [Spec.set_StateT](declarations/spec-set-statet.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Spec.modifyGet_StateT](declarations/spec-modifyget-statet.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Spec.run_ExceptT](declarations/spec-run-exceptt.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Spec.throw_ExceptT](declarations/spec-throw-exceptt.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Spec.tryCatch_ExceptT](declarations/spec-trycatch-exceptt.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Spec.orElse_ExceptT](declarations/spec-orelse-exceptt.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Spec.adapt_ExceptT](declarations/spec-adapt-exceptt.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Spec.throw_Except](declarations/spec-throw-except.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Spec.tryCatch_Except](declarations/spec-trycatch-except.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Spec.orElse_Except](declarations/spec-orelse-except.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Spec.run_OptionT](declarations/spec-run-optiont.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Spec.throw_OptionT](declarations/spec-throw-optiont.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Spec.tryCatch_OptionT](declarations/spec-trycatch-optiont.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Spec.orElse_OptionT](declarations/spec-orelse-optiont.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Spec.throw_Option](declarations/spec-throw-option.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Spec.tryCatch_Option](declarations/spec-trycatch-option.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Spec.orElse_Option](declarations/spec-orelse-option.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Spec.get_EStateM](declarations/spec-get-estatem.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Spec.set_EStateM](declarations/spec-set-estatem.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Spec.modifyGet_EStateM](declarations/spec-modifyget-estatem.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Spec.throw_EStateM](declarations/spec-throw-estatem.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Spec.tryCatch_EStateM](declarations/spec-trycatch-estatem.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [Spec.orElse_EStateM](declarations/spec-orelse-estatem.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Spec.adaptExcept_EStateM](declarations/spec-adaptexcept-estatem.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Spec.UnfoldLift.get](declarations/spec-unfoldlift-get.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Spec.UnfoldLift.set](declarations/spec-unfoldlift-set.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Spec.UnfoldLift.modifyGet](declarations/spec-unfoldlift-modifyget.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Spec.UnfoldLift.read](declarations/spec-unfoldlift-read.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Spec.UnfoldLift.withReader](declarations/spec-unfoldlift-withreader.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Spec.throw_MonadExcept](declarations/spec-throw-monadexcept.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Spec.tryCatch_MonadExcept](declarations/spec-trycatch-monadexcept.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Spec.throw_ReaderT](declarations/spec-throw-readert.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Spec.throw_StateT](declarations/spec-throw-statet.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [Spec.throw_ExceptT_lift](declarations/spec-throw-exceptt-lift.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Spec.throw_Option_lift](declarations/spec-throw-option-lift.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [Spec.tryCatch_ReaderT](declarations/spec-trycatch-readert.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Spec.tryCatch_StateT](declarations/spec-trycatch-statet.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Spec.tryCatch_ExceptT_lift](declarations/spec-trycatch-exceptt-lift.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [Spec.tryCatch_OptionT_lift](declarations/spec-trycatch-optiont-lift.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [Invariant](declarations/invariant.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `abbrev` | [Invariant.withEarlyReturn](declarations/withearlyreturn.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `abbrev` | [Invariant.withEarlyReturnNewDo](declarations/withearlyreturnnewdo.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Spec.forIn'_list](declarations/spec-forin-list.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Spec.forIn'_list_const_inv](declarations/spec-forin-list-const-inv.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [Spec.forIn_list](declarations/spec-forin-list-source-edition-2.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [Spec.forIn_list_const_inv](declarations/spec-forin-list-const-inv-source-edition-2.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Spec.foldlM_list](declarations/spec-foldlm-list.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Spec.foldlM_list_const_inv](declarations/spec-foldlm-list-const-inv.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Spec.forIn'_range](declarations/spec-forin-range-source-edition-2.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Spec.forIn_range](declarations/spec-forin-range.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Spec.forIn'_rcc](declarations/spec-forin-rcc-source-edition-2.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [Spec.forIn_rcc](declarations/spec-forin-rcc.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Spec.forIn'_rco](declarations/spec-forin-rco-source-edition-2.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [Spec.forIn_rco](declarations/spec-forin-rco.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Spec.forIn'_rci](declarations/spec-forin-rci-source-edition-2.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [Spec.forIn_rci](declarations/spec-forin-rci.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Spec.forIn'_roc](declarations/spec-forin-roc-source-edition-2.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [Spec.forIn_roc](declarations/spec-forin-roc.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [Spec.forIn'_roo](declarations/spec-forin-roo.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [Spec.forIn_roo](declarations/spec-forin-roo-source-edition-2.md) | 1071 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [Spec.forIn'_roi](declarations/spec-forin-roi.md) | 1090 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [Spec.forIn_roi](declarations/spec-forin-roi-source-edition-2.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [Spec.forIn'_ric](declarations/spec-forin-ric-source-edition-2.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [Spec.forIn_ric](declarations/spec-forin-ric.md) | 1147 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [Spec.forIn'_rio](declarations/spec-forin-rio-source-edition-2.md) | 1166 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [Spec.forIn_rio](declarations/spec-forin-rio.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Spec.forIn'_rii](declarations/spec-forin-rii-source-edition-2.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [Spec.forIn_rii](declarations/spec-forin-rii.md) | 1223 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [Spec.forIn_slice](declarations/spec-forin-slice.md) | 1242 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [Spec.forIn_iter](declarations/spec-forin-iter.md) | 1269 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [Spec.forIn_iterM_id](declarations/spec-forin-iterm-id.md) | 1286 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [Spec.foldM_iter](declarations/spec-foldm-iter.md) | 1306 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [Spec.foldM_iterM_id](declarations/spec-foldm-iterm-id.md) | 1321 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [Spec.IterM.forIn_filterMapWithPostcondition](declarations/spec-iterm-forin-filtermapwithpostcondition.md) | 1336 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [Spec.IterM.forIn_filterMapM](declarations/spec-iterm-forin-filtermapm.md) | 1353 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [Spec.IterM.forIn_filterMap](declarations/spec-iterm-forin-filtermap.md) | 1371 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [Spec.IterM.forIn_mapWithPostcondition](declarations/spec-iterm-forin-mapwithpostcondition.md) | 1386 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [Spec.IterM.forIn_mapM](declarations/spec-iterm-forin-mapm.md) | 1400 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [Spec.IterM.forIn_map](declarations/spec-iterm-forin-map.md) | 1414 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [Spec.IterM.forIn_filterWithPostcondition](declarations/spec-iterm-forin-filterwithpostcondition.md) | 1424 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [Spec.IterM.forIn_filterM](declarations/spec-iterm-forin-filterm.md) | 1438 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [Spec.IterM.forIn_filter](declarations/spec-iterm-forin-filter.md) | 1452 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [Spec.IterM.foldM_filterMapWithPostcondition](declarations/spec-iterm-foldm-filtermapwithpostcondition.md) | 1462 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [Spec.IterM.foldM_filterMapM](declarations/spec-iterm-foldm-filtermapm.md) | 1479 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [Spec.IterM.foldM_mapWithPostcondition](declarations/spec-iterm-foldm-mapwithpostcondition.md) | 1498 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [Spec.IterM.foldM_mapM](declarations/spec-iterm-foldm-mapm.md) | 1513 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [Spec.IterM.foldM_filterWithPostcondition](declarations/spec-iterm-foldm-filterwithpostcondition.md) | 1530 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [Spec.IterM.foldM_filterM](declarations/spec-iterm-foldm-filterm.md) | 1545 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [Spec.IterM.foldM_filterMap](declarations/spec-iterm-foldm-filtermap.md) | 1562 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [Spec.IterM.foldM_map](declarations/spec-iterm-foldm-map.md) | 1575 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [Spec.IterM.foldM_filter](declarations/spec-iterm-foldm-filter.md) | 1585 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [Spec.IterM.fold_filterMapWithPostcondition](declarations/spec-iterm-fold-filtermapwithpostcondition.md) | 1596 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [Spec.IterM.fold_filterMapM](declarations/spec-iterm-fold-filtermapm.md) | 1611 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [Spec.IterM.fold_mapWithPostcondition](declarations/spec-iterm-fold-mapwithpostcondition.md) | 1625 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [Spec.IterM.fold_mapM](declarations/spec-iterm-fold-mapm.md) | 1638 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [Spec.IterM.fold_filterWithPostcondition](declarations/spec-iterm-fold-filterwithpostcondition.md) | 1650 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [Spec.IterM.fold_filterM](declarations/spec-iterm-fold-filterm.md) | 1663 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [Spec.IterM.fold_filterMap](declarations/spec-iterm-fold-filtermap.md) | 1675 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [Spec.IterM.fold_map](declarations/spec-iterm-fold-map.md) | 1687 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [Spec.IterM.fold_filter](declarations/spec-iterm-fold-filter.md) | 1696 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [Spec.Iter.forIn_filterMapWithPostcondition](declarations/spec-iter-forin-filtermapwithpostcondition.md) | 1707 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [Spec.Iter.forIn_filterMapM](declarations/spec-iter-forin-filtermapm.md) | 1721 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [Spec.Iter.forIn_filterMap](declarations/spec-iter-forin-filtermap.md) | 1735 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [Spec.Iter.forIn_mapWithPostcondition](declarations/spec-iter-forin-mapwithpostcondition.md) | 1747 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [Spec.Iter.forIn_mapM](declarations/spec-iter-forin-mapm.md) | 1758 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [Spec.Iter.forIn_map](declarations/spec-iter-forin-map.md) | 1770 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [Spec.Iter.forIn_filterWithPostcondition](declarations/spec-iter-forin-filterwithpostcondition.md) | 1779 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [Spec.Iter.forIn_filterM](declarations/spec-iter-forin-filterm.md) | 1790 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [Spec.Iter.forIn_filter](declarations/spec-iter-forin-filter.md) | 1801 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [Iter.foldM_filterMapWithPostcondition](declarations/iter-foldm-filtermapwithpostcondition.md) | 1810 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [Iter.foldM_filterMapM](declarations/iter-foldm-filtermapm.md) | 1825 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [Iter.foldM_mapWithPostcondition](declarations/iter-foldm-mapwithpostcondition.md) | 1841 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [Iter.foldM_mapM](declarations/iter-foldm-mapm.md) | 1854 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [Iter.foldM_filterWithPostcondition](declarations/iter-foldm-filterwithpostcondition.md) | 1868 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [Iter.foldM_filterM](declarations/iter-foldm-filterm.md) | 1881 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [Iter.foldM_filterMap](declarations/iter-foldm-filtermap.md) | 1895 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [Iter.foldM_map](declarations/iter-foldm-map.md) | 1907 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [Iter.foldM_filter](declarations/iter-foldm-filter.md) | 1916 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [Iter.fold_filterMapWithPostcondition](declarations/iter-fold-filtermapwithpostcondition.md) | 1925 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [Iter.fold_filterMapM](declarations/iter-fold-filtermapm.md) | 1937 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [Iter.fold_mapWithPostcondition](declarations/iter-fold-mapwithpostcondition.md) | 1949 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [Iter.fold_mapM](declarations/iter-fold-mapm.md) | 1959 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [Iter.fold_filterWithPostcondition](declarations/iter-fold-filterwithpostcondition.md) | 1969 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [Iter.fold_filterM](declarations/iter-fold-filterm.md) | 1980 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [Spec.forIn'_array](declarations/spec-forin-array-source-edition-2.md) | 1992 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [Spec.forIn_array](declarations/spec-forin-array.md) | 2009 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [Spec.foldlM_array](declarations/spec-foldlm-array.md) | 2026 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `def` | [StringInvariant](declarations/stringinvariant.md) | 2049 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `abbrev` | [StringInvariant.withEarlyReturn](declarations/withearlyreturn-source-line-2071-occurrence-2.md) | 2071 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `abbrev` | [StringInvariant.withEarlyReturnNewDo](declarations/withearlyreturnnewdo-source-line-2085-occurrence-2.md) | 2085 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [Spec.forIn_string](declarations/spec-forin-string.md) | 2097 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `def` | [StringSliceInvariant](declarations/stringsliceinvariant.md) | 2136 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `abbrev` | [StringSliceInvariant.withEarlyReturn](declarations/withearlyreturn-source-line-2158-occurrence-2.md) | 2158 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `abbrev` | [StringSliceInvariant.withEarlyReturnNewDo](declarations/withearlyreturnnewdo-source-line-2172-occurrence-2.md) | 2172 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [Spec.forIn_stringSlice](declarations/spec-forin-stringslice.md) | 2184 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `def` | [WhileInvariant](declarations/whileinvariant.md) | 2225 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `def` | [WhileVariant](declarations/whilevariant.md) | 2230 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `abbrev` | [WhileVariant.eval](declarations/eval.md) | 2234 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [WhileVariant.eval_total](declarations/eval-total.md) | 2237 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [WhileVariant.add_eval](declarations/add-eval.md) | 2243 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [Spec.repeatM](declarations/spec-repeatm.md) | 2259 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [Spec.forIn_loop](declarations/spec-forin-loop.md) | 2301 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=708fdc46134e106695939af3ed1d389dc61a8ef91f007c1ba73eb4b32bd47574 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant09869237e782fb495d788ac7b17d58e10b14c1cb8519b69def2539a5f6dd5db6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
