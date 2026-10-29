# Spec Lemmas Namespaced Public Repeat Invariant

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**170 observed declarations and anonymous commands**, 161 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant352ced72fc74646a5dc68d28dfeb2cdb756038d61458976e61007f9aa28cc573.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4610651c0bd9fbc022aa7a0fd6447ac97c1b647e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SpecLemmasNamespacedPublicRepeatInvariant.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [Spec.pure](declarations/pure.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Spec.bind](declarations/bind.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Spec.map](declarations/map.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Spec.seq](declarations/seq.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Spec.monadLift_StateT](declarations/monadlift-statet.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Spec.monadLift_ReaderT](declarations/monadlift-readert.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Spec.monadLift_ExceptT](declarations/monadlift-exceptt.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Spec.monadLift_OptionT](declarations/monadlift-optiont.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Spec.monadLift_Id](declarations/monadlift-id.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Spec.UnfoldLift.monadLift_trans](declarations/monadlift-trans.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Spec.UnfoldLift.monadLift_refl](declarations/monadlift-refl.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Spec.monadMap_StateT](declarations/monadmap-statet.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Spec.monadMap_ReaderT](declarations/monadmap-readert.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Spec.monadMap_ExceptT](declarations/monadmap-exceptt.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Spec.monadMap_OptionT](declarations/monadmap-optiont.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Spec.monadMap_refl](declarations/monadmap-refl.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Spec.liftWith_StateT](declarations/liftwith-statet.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Spec.liftWith_ReaderT](declarations/liftwith-readert.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Spec.liftWith_ExceptT](declarations/liftwith-exceptt.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Spec.liftWith_OptionT](declarations/liftwith-optiont.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Spec.restoreM_StateT](declarations/restorem-statet.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Spec.restoreM_ReaderT](declarations/restorem-readert.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Spec.restoreM_ExceptT](declarations/restorem-exceptt.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Spec.restoreM_OptionT](declarations/restorem-optiont.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Spec.liftWith_refl](declarations/liftwith-refl.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Spec.restoreM_refl](declarations/restorem-refl.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Spec.read_ReaderT](declarations/read-readert.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Spec.withReader_ReaderT](declarations/withreader-readert.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Spec.adapt_ReaderT](declarations/adapt-readert.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Spec.get_StateT](declarations/get-statet.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Spec.set_StateT](declarations/set-statet.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Spec.modifyGet_StateT](declarations/modifyget-statet.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Spec.UnfoldLift.get](declarations/get.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Spec.UnfoldLift.set](declarations/set.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Spec.UnfoldLift.modifyGet](declarations/modifyget.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Spec.UnfoldLift.read](declarations/read.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Spec.UnfoldLift.withReader](declarations/withreader.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Spec.run_ExceptT](declarations/run-exceptt.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Spec.throw_ExceptT](declarations/throw-exceptt.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Spec.tryCatch_ExceptT](declarations/trycatch-exceptt.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Spec.orElse_ExceptT](declarations/orelse-exceptt.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Spec.adapt_ExceptT](declarations/adapt-exceptt.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Spec.throw_Except](declarations/throw-except.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Spec.tryCatch_Except](declarations/trycatch-except.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Spec.orElse_Except](declarations/orelse-except.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Spec.run_OptionT](declarations/run-optiont.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Spec.throw_OptionT](declarations/throw-optiont.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Spec.tryCatch_OptionT](declarations/trycatch-optiont.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Spec.orElse_OptionT](declarations/orelse-optiont.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Spec.throw_Option](declarations/throw-option.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Spec.tryCatch_Option](declarations/trycatch-option.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Spec.orElse_Option](declarations/orelse-option.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Spec.get_EStateM](declarations/get-estatem.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Spec.set_EStateM](declarations/set-estatem.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Spec.modifyGet_EStateM](declarations/modifyget-estatem.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Spec.throw_EStateM](declarations/throw-estatem.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Spec.tryCatch_EStateM](declarations/trycatch-estatem.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Spec.orElse_EStateM](declarations/orelse-estatem.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Spec.adaptExcept_EStateM](declarations/adaptexcept-estatem.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [Spec.throw_MonadExcept](declarations/throw-monadexcept.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Spec.tryCatch_MonadExcept](declarations/trycatch-monadexcept.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Spec.throw_ReaderT](declarations/throw-readert.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Spec.throw_StateT](declarations/throw-statet.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Spec.throw_ExceptT_lift](declarations/throw-exceptt-lift.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Spec.throw_Option_lift](declarations/throw-option-lift.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Spec.tryCatch_ReaderT](declarations/trycatch-readert.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Spec.tryCatch_StateT](declarations/trycatch-statet.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Spec.tryCatch_ExceptT_lift](declarations/trycatch-exceptt-lift.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Spec.tryCatch_OptionT_lift](declarations/trycatch-optiont-lift.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Spec.monadMap_trans](declarations/monadmap-trans.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Spec.liftWith_trans](declarations/liftwith-trans.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Spec.restoreM_trans](declarations/restorem-trans.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [Invariant](declarations/invariant.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `abbrev` | [Invariant.withEarlyReturnNewDo](declarations/withearlyreturnnewdo.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Spec.forIn'_list](declarations/forin-list-source-line-640-occurrence-2.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Spec.forIn'_list_const_inv](declarations/forin-list-const-inv-source-line-683-occurrence-2.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Spec.forIn_list](declarations/forin-list.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Spec.forIn_list_const_inv](declarations/forin-list-const-inv.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Spec.foldlM_list](declarations/foldlm-list.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Spec.foldlM_list_const_inv](declarations/foldlm-list-const-inv.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Spec.forIn'_range](declarations/forin-range-source-line-776-occurrence-2.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [Spec.forIn_range](declarations/forin-range.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Spec.forIn'_rcc](declarations/forin-rcc-source-line-823-occurrence-2.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Spec.forIn_rcc](declarations/forin-rcc.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Spec.forIn'_rco](declarations/forin-rco-source-line-875-occurrence-2.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Spec.forIn_rco](declarations/forin-rco.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Spec.forIn'_rci](declarations/forin-rci-source-line-927-occurrence-2.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Spec.forIn_rci](declarations/forin-rci.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Spec.forIn'_roc](declarations/forin-roc.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Spec.forIn_roc](declarations/forin-roc-source-line-1004-occurrence-2.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Spec.forIn'_roo](declarations/forin-roo.md) | 1030 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Spec.forIn_roo](declarations/forin-roo-source-line-1056-occurrence-2.md) | 1056 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [Spec.forIn'_roi](declarations/forin-roi-source-line-1082-occurrence-2.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Spec.forIn_roi](declarations/forin-roi.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [Spec.forIn'_ric](declarations/forin-ric.md) | 1134 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Spec.forIn_ric](declarations/forin-ric-source-line-1160-occurrence-2.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Spec.forIn'_rio](declarations/forin-rio.md) | 1186 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [Spec.forIn_rio](declarations/forin-rio-source-line-1212-occurrence-2.md) | 1212 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [Spec.forIn'_rii](declarations/forin-rii-source-line-1238-occurrence-2.md) | 1238 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Spec.forIn_rii](declarations/forin-rii.md) | 1264 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [Spec.forIn_slice](declarations/forin-slice.md) | 1290 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Spec.forIn_iter](declarations/forin-iter.md) | 1320 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Spec.forIn_iterM_id](declarations/forin-iterm-id.md) | 1342 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [Spec.foldM_iter](declarations/foldm-iter.md) | 1366 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [Spec.foldM_iterM_id](declarations/foldm-iterm-id.md) | 1386 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Spec.IterM.forIn_filterMapWithPostcondition](declarations/forin-filtermapwithpostcondition-source-line-1406-occurrence-2.md) | 1406 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Spec.IterM.forIn_filterMapM](declarations/forin-filtermapm-source-line-1426-occurrence-2.md) | 1426 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Spec.IterM.forIn_filterMap](declarations/forin-filtermap-source-line-1447-occurrence-2.md) | 1447 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Spec.IterM.forIn_mapWithPostcondition](declarations/forin-mapwithpostcondition-source-line-1465-occurrence-2.md) | 1465 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Spec.IterM.forIn_mapM](declarations/forin-mapm-source-line-1482-occurrence-2.md) | 1482 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [Spec.IterM.forIn_map](declarations/forin-map-source-line-1500-occurrence-2.md) | 1500 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Spec.IterM.forIn_filterWithPostcondition](declarations/forin-filterwithpostcondition-source-line-1514-occurrence-2.md) | 1514 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [Spec.IterM.forIn_filterM](declarations/forin-filterm-source-line-1531-occurrence-2.md) | 1531 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Spec.IterM.forIn_filter](declarations/forin-filter-source-line-1549-occurrence-2.md) | 1549 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [Spec.IterM.foldM_filterMapWithPostcondition](declarations/foldm-filtermapwithpostcondition-source-line-1563-occurrence-2.md) | 1563 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Spec.IterM.foldM_filterMapM](declarations/foldm-filtermapm-source-line-1583-occurrence-2.md) | 1583 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [Spec.IterM.foldM_mapWithPostcondition](declarations/foldm-mapwithpostcondition-source-line-1605-occurrence-2.md) | 1605 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [Spec.IterM.foldM_mapM](declarations/foldm-mapm-source-line-1623-occurrence-2.md) | 1623 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [Spec.IterM.foldM_filterWithPostcondition](declarations/foldm-filterwithpostcondition-source-line-1643-occurrence-2.md) | 1643 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [Spec.IterM.foldM_filterM](declarations/foldm-filterm-source-line-1661-occurrence-2.md) | 1661 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [Spec.IterM.foldM_filterMap](declarations/foldm-filtermap-source-line-1681-occurrence-2.md) | 1681 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [Spec.IterM.foldM_map](declarations/foldm-map-source-line-1698-occurrence-2.md) | 1698 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [Spec.IterM.foldM_filter](declarations/foldm-filter-source-line-1712-occurrence-2.md) | 1712 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [Spec.IterM.fold_filterMapWithPostcondition](declarations/fold-filtermapwithpostcondition-source-line-1727-occurrence-2.md) | 1727 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [Spec.IterM.fold_filterMapM](declarations/fold-filtermapm-source-line-1745-occurrence-2.md) | 1745 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Spec.IterM.fold_mapWithPostcondition](declarations/fold-mapwithpostcondition-source-line-1763-occurrence-2.md) | 1763 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [Spec.IterM.fold_mapM](declarations/fold-mapm-source-line-1779-occurrence-2.md) | 1779 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [Spec.IterM.fold_filterWithPostcondition](declarations/fold-filterwithpostcondition-source-line-1795-occurrence-2.md) | 1795 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [Spec.IterM.fold_filterM](declarations/fold-filterm-source-line-1811-occurrence-2.md) | 1811 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [Spec.IterM.fold_filterMap](declarations/fold-filtermap.md) | 1827 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [Spec.IterM.fold_map](declarations/fold-map.md) | 1843 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [Spec.IterM.fold_filter](declarations/fold-filter.md) | 1856 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [Spec.Iter.forIn_filterMapWithPostcondition](declarations/forin-filtermapwithpostcondition.md) | 1869 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [Spec.Iter.forIn_filterMapM](declarations/forin-filtermapm.md) | 1887 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [Spec.Iter.forIn_filterMap](declarations/forin-filtermap.md) | 1906 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [Spec.Iter.forIn_mapWithPostcondition](declarations/forin-mapwithpostcondition.md) | 1923 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [Spec.Iter.forIn_mapM](declarations/forin-mapm.md) | 1938 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [Spec.Iter.forIn_map](declarations/forin-map.md) | 1955 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [Spec.Iter.forIn_filterWithPostcondition](declarations/forin-filterwithpostcondition.md) | 1969 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [Spec.Iter.forIn_filterM](declarations/forin-filterm.md) | 1984 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [Spec.Iter.forIn_filter](declarations/forin-filter.md) | 2000 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [Spec.Iter.foldM_filterMapWithPostcondition](declarations/foldm-filtermapwithpostcondition.md) | 2014 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [Spec.Iter.foldM_filterMapM](declarations/foldm-filtermapm.md) | 2032 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [Spec.Iter.foldM_mapWithPostcondition](declarations/foldm-mapwithpostcondition.md) | 2051 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [Spec.Iter.foldM_mapM](declarations/foldm-mapm.md) | 2067 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [Spec.Iter.foldM_filterWithPostcondition](declarations/foldm-filterwithpostcondition.md) | 2084 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [Spec.Iter.foldM_filterM](declarations/foldm-filterm.md) | 2100 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [Spec.Iter.foldM_filterMap](declarations/foldm-filtermap.md) | 2117 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [Spec.Iter.foldM_map](declarations/foldm-map.md) | 2133 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [Spec.Iter.foldM_filter](declarations/foldm-filter.md) | 2146 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [Spec.Iter.fold_filterMapWithPostcondition](declarations/fold-filtermapwithpostcondition.md) | 2159 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [Spec.Iter.fold_filterMapM](declarations/fold-filtermapm.md) | 2175 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [Spec.Iter.fold_mapWithPostcondition](declarations/fold-mapwithpostcondition.md) | 2191 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [Spec.Iter.fold_mapM](declarations/fold-mapm.md) | 2205 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [Spec.Iter.fold_filterWithPostcondition](declarations/fold-filterwithpostcondition.md) | 2219 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [Spec.Iter.fold_filterM](declarations/fold-filterm.md) | 2233 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [Spec.forIn'_array](declarations/forin-array-source-line-2250-occurrence-2.md) | 2250 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [Spec.forIn_array](declarations/forin-array.md) | 2270 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [Spec.foldlM_array](declarations/foldlm-array.md) | 2290 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `def` | [StringInvariant](declarations/stringinvariant.md) | 2312 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `abbrev` | [StringInvariant.withEarlyReturnNewDo](declarations/withearlyreturnnewdo-source-line-2318-occurrence-2.md) | 2318 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [Spec.forIn_string](declarations/forin-string.md) | 2328 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [StringSliceInvariant](declarations/stringsliceinvariant.md) | 2369 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `abbrev` | [StringSliceInvariant.withEarlyReturnNewDo](declarations/withearlyreturnnewdo-source-line-2375-occurrence-2.md) | 2375 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [Spec.forIn_stringSlice](declarations/forin-stringslice.md) | 2385 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `def` | [RepeatInvariant](declarations/repeatinvariant.md) | 2434 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `def` | [RepeatVariant](declarations/repeatvariant.md) | 2439 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [Spec.repeatM](declarations/repeatm.md) | 2448 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `abbrev` | [RepeatInvariant.ofInvariantAndBreak](declarations/ofinvariantandbreak.md) | 2500 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [Spec.forIn_loop](declarations/forin-loop.md) | 2511 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=024b5c64813f27f17c92ee793f2f91334a714f90f6bdd36fbb21f82c544e16e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant352ced72fc74646a5dc68d28dfeb2cdb756038d61458976e61007f9aa28cc573.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
