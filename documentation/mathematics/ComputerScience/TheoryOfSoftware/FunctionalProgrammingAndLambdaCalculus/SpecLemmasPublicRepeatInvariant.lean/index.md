# Spec Lemmas Public Repeat Invariant

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**170 observed declarations and anonymous commands**, 161 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c750f0d07dbb6dc5e4bac3f98eaafb7d4a3d5fd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SpecLemmasPublicRepeatInvariant.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [Spec.pure](declarations/pure.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Spec.bind](declarations/bind.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Spec.map](declarations/map.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Spec.seq](declarations/seq.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Spec.monadLift_StateT](declarations/monadlift-statet.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Spec.monadLift_ReaderT](declarations/monadlift-readert.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Spec.monadLift_ExceptT](declarations/monadlift-exceptt.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Spec.monadLift_OptionT](declarations/monadlift-optiont.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Spec.monadLift_Id](declarations/monadlift-id.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Spec.UnfoldLift.monadLift_trans](declarations/monadlift-trans.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Spec.UnfoldLift.monadLift_refl](declarations/monadlift-refl.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Spec.monadMap_StateT](declarations/monadmap-statet.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Spec.monadMap_ReaderT](declarations/monadmap-readert.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Spec.monadMap_ExceptT](declarations/monadmap-exceptt.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Spec.monadMap_OptionT](declarations/monadmap-optiont.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Spec.monadMap_refl](declarations/monadmap-refl.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Spec.liftWith_StateT](declarations/liftwith-statet.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Spec.liftWith_ReaderT](declarations/liftwith-readert.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Spec.liftWith_ExceptT](declarations/liftwith-exceptt.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Spec.liftWith_OptionT](declarations/liftwith-optiont.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Spec.restoreM_StateT](declarations/restorem-statet.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Spec.restoreM_ReaderT](declarations/restorem-readert.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Spec.restoreM_ExceptT](declarations/restorem-exceptt.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Spec.restoreM_OptionT](declarations/restorem-optiont.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Spec.liftWith_refl](declarations/liftwith-refl.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Spec.restoreM_refl](declarations/restorem-refl.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Spec.read_ReaderT](declarations/read-readert.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Spec.withReader_ReaderT](declarations/withreader-readert.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Spec.adapt_ReaderT](declarations/adapt-readert.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Spec.get_StateT](declarations/get-statet.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Spec.set_StateT](declarations/set-statet.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Spec.modifyGet_StateT](declarations/modifyget-statet.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Spec.UnfoldLift.get](declarations/get.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Spec.UnfoldLift.set](declarations/set.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Spec.UnfoldLift.modifyGet](declarations/modifyget.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Spec.UnfoldLift.read](declarations/read.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Spec.UnfoldLift.withReader](declarations/withreader.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Spec.run_ExceptT](declarations/run-exceptt.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Spec.throw_ExceptT](declarations/throw-exceptt.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Spec.tryCatch_ExceptT](declarations/trycatch-exceptt.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Spec.orElse_ExceptT](declarations/orelse-exceptt.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Spec.adapt_ExceptT](declarations/adapt-exceptt.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Spec.throw_Except](declarations/throw-except.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Spec.tryCatch_Except](declarations/trycatch-except.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Spec.orElse_Except](declarations/orelse-except.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Spec.run_OptionT](declarations/run-optiont.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Spec.throw_OptionT](declarations/throw-optiont.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Spec.tryCatch_OptionT](declarations/trycatch-optiont.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Spec.orElse_OptionT](declarations/orelse-optiont.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Spec.throw_Option](declarations/throw-option.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Spec.tryCatch_Option](declarations/trycatch-option.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Spec.orElse_Option](declarations/orelse-option.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Spec.get_EStateM](declarations/get-estatem.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Spec.set_EStateM](declarations/set-estatem.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Spec.modifyGet_EStateM](declarations/modifyget-estatem.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Spec.throw_EStateM](declarations/throw-estatem.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Spec.tryCatch_EStateM](declarations/trycatch-estatem.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Spec.orElse_EStateM](declarations/orelse-estatem.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Spec.adaptExcept_EStateM](declarations/adaptexcept-estatem.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [Spec.throw_MonadExcept](declarations/throw-monadexcept.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Spec.tryCatch_MonadExcept](declarations/trycatch-monadexcept.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Spec.throw_ReaderT](declarations/throw-readert.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Spec.throw_StateT](declarations/throw-statet.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Spec.throw_ExceptT_lift](declarations/throw-exceptt-lift.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Spec.throw_Option_lift](declarations/throw-option-lift.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Spec.tryCatch_ReaderT](declarations/trycatch-readert.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Spec.tryCatch_StateT](declarations/trycatch-statet.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Spec.tryCatch_ExceptT_lift](declarations/trycatch-exceptt-lift.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Spec.tryCatch_OptionT_lift](declarations/trycatch-optiont-lift.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Spec.monadMap_trans](declarations/monadmap-trans.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Spec.liftWith_trans](declarations/liftwith-trans.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Spec.restoreM_trans](declarations/restorem-trans.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [Invariant](declarations/invariant.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `abbrev` | [Invariant.withEarlyReturnNewDo](declarations/withearlyreturnnewdo.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Spec.forIn'_list](declarations/forin-list-source-line-632-occurrence-2.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Spec.forIn'_list_const_inv](declarations/forin-list-const-inv.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Spec.forIn_list](declarations/forin-list.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Spec.forIn_list_const_inv](declarations/forin-list-const-inv-source-line-714-occurrence-2.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Spec.foldlM_list](declarations/foldlm-list.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Spec.foldlM_list_const_inv](declarations/foldlm-list-const-inv.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Spec.forIn'_range](declarations/forin-range.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [Spec.forIn_range](declarations/forin-range-source-line-791-occurrence-2.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Spec.forIn'_rcc](declarations/forin-rcc.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Spec.forIn_rcc](declarations/forin-rcc-source-line-841-occurrence-2.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Spec.forIn'_rco](declarations/forin-rco-source-line-867-occurrence-2.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Spec.forIn_rco](declarations/forin-rco.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Spec.forIn'_rci](declarations/forin-rci-source-line-919-occurrence-2.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Spec.forIn_rci](declarations/forin-rci.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Spec.forIn'_roc](declarations/forin-roc.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Spec.forIn_roc](declarations/forin-roc-source-line-996-occurrence-2.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Spec.forIn'_roo](declarations/forin-roo-source-line-1022-occurrence-2.md) | 1022 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Spec.forIn_roo](declarations/forin-roo.md) | 1048 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [Spec.forIn'_roi](declarations/forin-roi.md) | 1074 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Spec.forIn_roi](declarations/forin-roi-source-line-1100-occurrence-2.md) | 1100 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [Spec.forIn'_ric](declarations/forin-ric-source-line-1126-occurrence-2.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Spec.forIn_ric](declarations/forin-ric.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Spec.forIn'_rio](declarations/forin-rio.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [Spec.forIn_rio](declarations/forin-rio-source-line-1204-occurrence-2.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [Spec.forIn'_rii](declarations/forin-rii.md) | 1230 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Spec.forIn_rii](declarations/forin-rii-source-line-1256-occurrence-2.md) | 1256 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [Spec.forIn_slice](declarations/forin-slice.md) | 1282 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Spec.forIn_iter](declarations/forin-iter.md) | 1312 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Spec.forIn_iterM_id](declarations/forin-iterm-id.md) | 1334 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [Spec.foldM_iter](declarations/foldm-iter.md) | 1358 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [Spec.foldM_iterM_id](declarations/foldm-iterm-id.md) | 1378 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Spec.IterM.forIn_filterMapWithPostcondition](declarations/forin-filtermapwithpostcondition-source-line-1398-occurrence-2.md) | 1398 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Spec.IterM.forIn_filterMapM](declarations/forin-filtermapm-source-line-1418-occurrence-2.md) | 1418 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Spec.IterM.forIn_filterMap](declarations/forin-filtermap-source-line-1439-occurrence-2.md) | 1439 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Spec.IterM.forIn_mapWithPostcondition](declarations/forin-mapwithpostcondition-source-line-1457-occurrence-2.md) | 1457 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Spec.IterM.forIn_mapM](declarations/forin-mapm-source-line-1474-occurrence-2.md) | 1474 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [Spec.IterM.forIn_map](declarations/forin-map-source-line-1492-occurrence-2.md) | 1492 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Spec.IterM.forIn_filterWithPostcondition](declarations/forin-filterwithpostcondition-source-line-1506-occurrence-2.md) | 1506 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [Spec.IterM.forIn_filterM](declarations/forin-filterm-source-line-1523-occurrence-2.md) | 1523 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Spec.IterM.forIn_filter](declarations/forin-filter-source-line-1541-occurrence-2.md) | 1541 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [Spec.IterM.foldM_filterMapWithPostcondition](declarations/foldm-filtermapwithpostcondition-source-line-1555-occurrence-2.md) | 1555 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Spec.IterM.foldM_filterMapM](declarations/foldm-filtermapm-source-line-1575-occurrence-2.md) | 1575 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [Spec.IterM.foldM_mapWithPostcondition](declarations/foldm-mapwithpostcondition-source-line-1597-occurrence-2.md) | 1597 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [Spec.IterM.foldM_mapM](declarations/foldm-mapm-source-line-1615-occurrence-2.md) | 1615 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [Spec.IterM.foldM_filterWithPostcondition](declarations/foldm-filterwithpostcondition-source-line-1635-occurrence-2.md) | 1635 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [Spec.IterM.foldM_filterM](declarations/foldm-filterm-source-line-1653-occurrence-2.md) | 1653 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [Spec.IterM.foldM_filterMap](declarations/foldm-filtermap-source-line-1673-occurrence-2.md) | 1673 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [Spec.IterM.foldM_map](declarations/foldm-map-source-line-1690-occurrence-2.md) | 1690 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [Spec.IterM.foldM_filter](declarations/foldm-filter-source-line-1704-occurrence-2.md) | 1704 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [Spec.IterM.fold_filterMapWithPostcondition](declarations/fold-filtermapwithpostcondition-source-line-1719-occurrence-2.md) | 1719 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [Spec.IterM.fold_filterMapM](declarations/fold-filtermapm-source-line-1737-occurrence-2.md) | 1737 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Spec.IterM.fold_mapWithPostcondition](declarations/fold-mapwithpostcondition-source-line-1755-occurrence-2.md) | 1755 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [Spec.IterM.fold_mapM](declarations/fold-mapm-source-line-1771-occurrence-2.md) | 1771 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [Spec.IterM.fold_filterWithPostcondition](declarations/fold-filterwithpostcondition-source-line-1787-occurrence-2.md) | 1787 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [Spec.IterM.fold_filterM](declarations/fold-filterm-source-line-1803-occurrence-2.md) | 1803 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [Spec.IterM.fold_filterMap](declarations/fold-filtermap.md) | 1819 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [Spec.IterM.fold_map](declarations/fold-map.md) | 1835 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [Spec.IterM.fold_filter](declarations/fold-filter.md) | 1848 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [Spec.Iter.forIn_filterMapWithPostcondition](declarations/forin-filtermapwithpostcondition.md) | 1861 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [Spec.Iter.forIn_filterMapM](declarations/forin-filtermapm.md) | 1879 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [Spec.Iter.forIn_filterMap](declarations/forin-filtermap.md) | 1898 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [Spec.Iter.forIn_mapWithPostcondition](declarations/forin-mapwithpostcondition.md) | 1915 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [Spec.Iter.forIn_mapM](declarations/forin-mapm.md) | 1930 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [Spec.Iter.forIn_map](declarations/forin-map.md) | 1947 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [Spec.Iter.forIn_filterWithPostcondition](declarations/forin-filterwithpostcondition.md) | 1961 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [Spec.Iter.forIn_filterM](declarations/forin-filterm.md) | 1976 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [Spec.Iter.forIn_filter](declarations/forin-filter.md) | 1992 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [Spec.Iter.foldM_filterMapWithPostcondition](declarations/foldm-filtermapwithpostcondition.md) | 2006 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [Spec.Iter.foldM_filterMapM](declarations/foldm-filtermapm.md) | 2024 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [Spec.Iter.foldM_mapWithPostcondition](declarations/foldm-mapwithpostcondition.md) | 2043 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [Spec.Iter.foldM_mapM](declarations/foldm-mapm.md) | 2059 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [Spec.Iter.foldM_filterWithPostcondition](declarations/foldm-filterwithpostcondition.md) | 2076 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [Spec.Iter.foldM_filterM](declarations/foldm-filterm.md) | 2092 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [Spec.Iter.foldM_filterMap](declarations/foldm-filtermap.md) | 2109 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [Spec.Iter.foldM_map](declarations/foldm-map.md) | 2125 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [Spec.Iter.foldM_filter](declarations/foldm-filter.md) | 2138 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [Spec.Iter.fold_filterMapWithPostcondition](declarations/fold-filtermapwithpostcondition.md) | 2151 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [Spec.Iter.fold_filterMapM](declarations/fold-filtermapm.md) | 2167 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [Spec.Iter.fold_mapWithPostcondition](declarations/fold-mapwithpostcondition.md) | 2183 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [Spec.Iter.fold_mapM](declarations/fold-mapm.md) | 2197 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [Spec.Iter.fold_filterWithPostcondition](declarations/fold-filterwithpostcondition.md) | 2211 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [Spec.Iter.fold_filterM](declarations/fold-filterm.md) | 2225 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [Spec.forIn'_array](declarations/forin-array.md) | 2242 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [Spec.forIn_array](declarations/forin-array-source-line-2262-occurrence-2.md) | 2262 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [Spec.foldlM_array](declarations/foldlm-array.md) | 2282 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `def` | [StringInvariant](declarations/stringinvariant.md) | 2304 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `abbrev` | [StringInvariant.withEarlyReturnNewDo](declarations/withearlyreturnnewdo-source-line-2310-occurrence-2.md) | 2310 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [Spec.forIn_string](declarations/forin-string.md) | 2320 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [StringSliceInvariant](declarations/stringsliceinvariant.md) | 2361 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `abbrev` | [StringSliceInvariant.withEarlyReturnNewDo](declarations/withearlyreturnnewdo-source-line-2367-occurrence-2.md) | 2367 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [Spec.forIn_stringSlice](declarations/forin-stringslice.md) | 2377 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `def` | [RepeatInvariant](declarations/repeatinvariant.md) | 2426 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `def` | [RepeatVariant](declarations/repeatvariant.md) | 2431 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [Spec.repeatM](declarations/repeatm.md) | 2440 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `abbrev` | [RepeatInvariant.ofInvariantAndBreak](declarations/ofinvariantandbreak.md) | 2492 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [Spec.forIn_loop](declarations/forin-loop.md) | 2503 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28b9cdb8bbde2a50e1fa9c71bc17b9e72c18bdd6911339da64c768230c9c20ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant8fdfdd4c4dd0fc74f1e2f40bb318b21915f47e5a02cd2c0dd2dbfaaf74761fd0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
