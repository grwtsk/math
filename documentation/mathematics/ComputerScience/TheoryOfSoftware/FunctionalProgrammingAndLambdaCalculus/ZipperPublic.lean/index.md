# Zipper Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**212 observed declarations and anonymous commands**, 71 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `217d12380e966e0d49c510bbfe6785f0b6ba63d8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ZipperPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pruneLE](declarations/prunele.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [pruneLT](declarations/prunelt.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toList_pruneLE](declarations/tolist-prunele.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toList_pruneLT](declarations/tolist-prunelt.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [Zipper](declarations/zipper.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Zipper.toList](declarations/zipper-tolist.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Zipper.Ordered](declarations/zipper-ordered.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Zipper.size](declarations/zipper-size.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Zipper.prependMap](declarations/zipper-prependmap.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Zipper.prependMapGE](declarations/zipper-prependmapge.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Zipper.prependMapGT](declarations/zipper-prependmapgt.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Zipper.prependMap_pruneLE_eq_prependMapGE](declarations/zipper-prependmap-prunele-eq-prependmapge.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Zipper.prependMap_eq_prependMapGT_self](declarations/zipper-prependmap-eq-prependmapgt-self.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Zipper.prependMap_pruneLT_eq_prependMapGT](declarations/zipper-prependmap-prunelt-eq-prependmapgt.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Zipper.toList_prependMap_eq_append](declarations/zipper-tolist-prependmap-eq-append.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Zipper.toList_prependMap_done](declarations/zipper-tolist-prependmap-done.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Zipper.ordered_prependMap](declarations/zipper-ordered-prependmap.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Zipper.ordered_prependMap_done](declarations/zipper-ordered-prependmap-done.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Zipper.ordered_of_ordered_cons](declarations/zipper-ordered-of-ordered-cons.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Zipper.size_prependMap](declarations/zipper-size-prependmap.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Zipper.step](declarations/zipper-step.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Zipper.FinitenessRelation](declarations/zipper-finitenessrelation.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [Zipper.instFinite](declarations/zipper-instfinite.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Zipper.iter](declarations/zipper-iter.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Zipper.iterOfTree](declarations/zipper-iteroftree.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Zipper.instToIterator](declarations/zipper-insttoiterator.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Zipper.toList_done](declarations/zipper-tolist-done.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Zipper.toList_cons](declarations/zipper-tolist-cons.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Zipper.step_done](declarations/zipper-step-done.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Zipper.step_cons](declarations/zipper-step-cons.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Zipper.val_run_step_toIterM_iter](declarations/zipper-val-run-step-toiterm-iter.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Zipper.eq_toIterM_iter](declarations/zipper-eq-toiterm-iter.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Zipper.size_cons](declarations/zipper-size-cons.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Zipper.toList_iter](declarations/zipper-tolist-iter.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Zipper.toList_iterOfTree](declarations/zipper-tolist-iteroftree.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [RxcIterator](declarations/rxciterator.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [RxcIterator.step](declarations/rxciterator-step.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [RxcIterator.FinitenessRelation](declarations/rxciterator-finitenessrelation.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [instFinite](declarations/instfinite.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [RxcIterator.step_done](declarations/rxciterator-step-done.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [RxcIterator.step_cons_of_LE](declarations/rxciterator-step-cons-of-le.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [RxcIterator.step_cons_of_not_LE](declarations/rxciterator-step-cons-of-not-le.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [RxcIterator.val_run_step_toIterM_iter](declarations/rxciterator-val-run-step-toiterm-iter.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [RxcIterator.eq_toIterM_iter](declarations/rxciterator-eq-toiterm-iter.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [RxcIterator.toList_rxcIter](declarations/rxciterator-tolist-rxciter.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [List.takeWhile_eq_filter_of_pairwise](declarations/list-takewhile-eq-filter-of-pairwise.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [RxcIterator.takeWhile_eq_filter](declarations/rxciterator-takewhile-eq-filter.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [RxcIterator.takeWhile_toList](declarations/rxciterator-takewhile-tolist.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `structure` | [RxoIterator](declarations/rxoiterator.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [RxoIterator.step](declarations/rxoiterator-step.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-30.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [RxoIterator.instFinitenessRelation](declarations/rxoiterator-instfinitenessrelation.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [Rxo.instFinite](declarations/rxo-instfinite.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [RxoIterator.step_done](declarations/rxoiterator-step-done.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [RxoIterator.step_cons_of_isLT](declarations/rxoiterator-step-cons-of-islt.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [RxoIterator.step_cons_of_isLT_eq_false](declarations/rxoiterator-step-cons-of-islt-eq-false.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [RxoIterator.val_run_step_toIterM_iter](declarations/rxoiterator-val-run-step-toiterm-iter.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [RxoIterator.eq_toIterM_iter](declarations/rxoiterator-eq-toiterm-iter.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [RxoIterator.toList_rxoIter](declarations/rxoiterator-tolist-rxoiter.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [RxoIterator.takeWhile_eq_filter](declarations/rxoiterator-takewhile-eq-filter.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [RxoIterator.takeWhile_toList](declarations/rxoiterator-takewhile-tolist.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `structure` | [RicSliceData](declarations/ricslicedata-source-edition-2.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `abbrev` | [RicSlice](declarations/ricslice-source-edition-3.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [RicSlice.instToIterator](declarations/ricslice-insttoiterator-source-edition-2.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [toList_ric](declarations/tolist-ric-source-edition-3.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `structure` | [RicSliceData](declarations/ricslicedata-source-edition-3.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `abbrev` | [RicSlice](declarations/ricslice.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [RicSlice.instToIterator](declarations/ricslice-insttoiterator-source-edition-3.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [toList_ric](declarations/tolist-ric-source-edition-2.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `structure` | [RicSliceData](declarations/ricslicedata.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `abbrev` | [RicSlice](declarations/ricslice-source-edition-2.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [RicSlice.instToIterator](declarations/ricslice-insttoiterator.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [toList_ric](declarations/tolist-ric.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `structure` | [RioSliceData](declarations/rioslicedata-source-edition-3.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `abbrev` | [RioSlice](declarations/rioslice.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-22.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [RioSlice.instToIterator](declarations/rioslice-insttoiterator.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [toList_rio](declarations/tolist-rio-source-edition-3.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `structure` | [RioSliceData](declarations/rioslicedata-source-edition-2.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `abbrev` | [RioSlice](declarations/rioslice-source-edition-3.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [RioSlice.instToIterator](declarations/rioslice-insttoiterator-source-edition-2.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [toList_rio](declarations/tolist-rio.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `structure` | [RioSliceData](declarations/rioslicedata.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `abbrev` | [RioSlice](declarations/rioslice-source-edition-2.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [RioSlice.instToIterator](declarations/rioslice-insttoiterator-source-edition-3.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [toList_rio](declarations/tolist-rio-source-edition-2.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [rccIterator](declarations/rcciterator.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [toList_rccIter](declarations/tolist-rcciter.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `structure` | [RccSliceData](declarations/rccslicedata.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `abbrev` | [RccSlice](declarations/rccslice.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [RccSlice.instToIterator](declarations/rccslice-insttoiterator.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [toList_rcc](declarations/tolist-rcc-source-edition-3.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `structure` | [RccSliceData](declarations/rccslicedata-source-edition-2.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `abbrev` | [RccSlice](declarations/rccslice-source-edition-3.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [RccSlice.instToIterator](declarations/rccslice-insttoiterator-source-edition-2.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [toList_rcc](declarations/tolist-rcc.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `structure` | [RccSliceData](declarations/rccslicedata-source-edition-3.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `abbrev` | [RccSlice](declarations/rccslice-source-edition-2.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [RccSlice.instToIterator](declarations/rccslice-insttoiterator-source-edition-3.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [toList_rcc](declarations/tolist-rcc-source-edition-2.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [rcoIterator](declarations/rcoiterator.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [toList_rcoIter](declarations/tolist-rcoiter.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `structure` | [RcoSliceData](declarations/rcoslicedata-source-edition-3.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `abbrev` | [RcoSlice](declarations/rcoslice-source-edition-2.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `instance` | [(anonymous)](declarations/instance-source-edition-21.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [RcoSlice.instToIterator](declarations/rcoslice-insttoiterator.md) | 1048 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [toList_rco](declarations/tolist-rco-source-edition-3.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `structure` | [RcoSliceData](declarations/rcoslicedata-source-edition-2.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `abbrev` | [RcoSlice](declarations/rcoslice-source-edition-3.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `instance` | [(anonymous)](declarations/instance-source-edition-29.md) | 1071 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [RcoSlice.instToIterator](declarations/rcoslice-insttoiterator-source-edition-2.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [toList_rco](declarations/tolist-rco.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `structure` | [RcoSliceData](declarations/rcoslicedata.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `abbrev` | [RcoSlice](declarations/rcoslice.md) | 1105 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 1107 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [RcoSlice.instToIterator](declarations/rcoslice-insttoiterator-source-edition-3.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [toList_rco](declarations/tolist-rco-source-edition-2.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [rooIterator](declarations/rooiterator.md) | 1139 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [toList_rooIter](declarations/tolist-rooiter.md) | 1142 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `structure` | [RooSliceData](declarations/rooslicedata-source-edition-2.md) | 1171 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `abbrev` | [RooSlice](declarations/rooslice-source-edition-2.md) | 1175 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [RooSlice.instToIterator](declarations/rooslice-insttoiterator-source-edition-2.md) | 1181 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [toList_roo](declarations/tolist-roo-source-edition-3.md) | 1186 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `structure` | [RooSliceData](declarations/rooslicedata-source-edition-3.md) | 1198 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `abbrev` | [RooSlice](declarations/rooslice.md) | 1202 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [RooSlice.instToIterator](declarations/rooslice-insttoiterator.md) | 1208 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [toList_roo](declarations/tolist-roo.md) | 1213 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `structure` | [RooSliceData](declarations/rooslicedata.md) | 1234 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `abbrev` | [RooSlice](declarations/rooslice-source-edition-3.md) | 1238 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1240 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [RooSlice.instToIterator](declarations/rooslice-insttoiterator-source-edition-3.md) | 1244 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [toList_roo](declarations/tolist-roo-source-edition-2.md) | 1249 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [rocIterator](declarations/rociterator.md) | 1273 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [toList_rocIter](declarations/tolist-rociter.md) | 1276 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `structure` | [RocSliceData](declarations/rocslicedata-source-edition-3.md) | 1305 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `abbrev` | [RocSlice](declarations/rocslice-source-edition-3.md) | 1309 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `instance` | [(anonymous)](declarations/instance-source-edition-24.md) | 1311 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [RocSlice.instToIterator](declarations/rocslice-insttoiterator-source-edition-3.md) | 1315 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [toList_roc](declarations/tolist-roc.md) | 1320 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `structure` | [RocSliceData](declarations/rocslicedata-source-edition-2.md) | 1332 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `abbrev` | [RocSlice](declarations/rocslice-source-edition-2.md) | 1336 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `instance` | [(anonymous)](declarations/instance-source-edition-27.md) | 1338 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [RocSlice.instToIterator](declarations/rocslice-insttoiterator-source-edition-2.md) | 1342 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [toList_roc](declarations/tolist-roc-source-edition-2.md) | 1347 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `structure` | [RocSliceData](declarations/rocslicedata.md) | 1368 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `abbrev` | [RocSlice](declarations/rocslice.md) | 1372 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 1374 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `def` | [RocSlice.instToIterator](declarations/rocslice-insttoiterator.md) | 1378 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [toList_roc](declarations/tolist-roc-source-edition-3.md) | 1383 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `def` | [rciIterator](declarations/rciiterator.md) | 1407 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [toList_rciIter](declarations/tolist-rciiter.md) | 1410 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `structure` | [RciSliceData](declarations/rcislicedata-source-edition-2.md) | 1424 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `abbrev` | [RciSlice](declarations/rcislice-source-edition-2.md) | 1428 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 1430 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `def` | [RciSlice.instToIterator](declarations/rcislice-insttoiterator-source-edition-2.md) | 1434 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [toList_rci](declarations/tolist-rci-source-edition-3.md) | 1439 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `structure` | [RciSliceData](declarations/rcislicedata-source-edition-3.md) | 1451 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `abbrev` | [RciSlice](declarations/rcislice-source-edition-3.md) | 1455 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `instance` | [(anonymous)](declarations/instance-source-edition-28.md) | 1457 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `def` | [RciSlice.instToIterator](declarations/rcislice-insttoiterator.md) | 1461 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [toList_rci](declarations/tolist-rci-source-edition-2.md) | 1466 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `structure` | [RciSliceData](declarations/rcislicedata.md) | 1490 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `abbrev` | [RciSlice](declarations/rcislice.md) | 1494 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 1496 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `def` | [RciSlice.instToIterator](declarations/rcislice-insttoiterator-source-edition-3.md) | 1500 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [toList_rci](declarations/tolist-rci.md) | 1505 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `def` | [roiIterator](declarations/roiiterator.md) | 1530 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [toList_roiIter](declarations/tolist-roiiter.md) | 1533 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `structure` | [RoiSliceData](declarations/roislicedata-source-edition-3.md) | 1547 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `abbrev` | [RoiSlice](declarations/roislice.md) | 1551 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 1553 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `def` | [RoiSlice.instToIterator](declarations/roislice-insttoiterator.md) | 1557 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [toList_roi](declarations/tolist-roi-source-edition-3.md) | 1562 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `structure` | [RoiSliceData](declarations/roislicedata-source-edition-2.md) | 1574 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `abbrev` | [RoiSlice](declarations/roislice-source-edition-2.md) | 1578 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `instance` | [(anonymous)](declarations/instance.md) | 1580 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `def` | [RoiSlice.instToIterator](declarations/roislice-insttoiterator-source-edition-2.md) | 1584 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [toList_roi](declarations/tolist-roi-source-edition-2.md) | 1589 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `structure` | [RoiSliceData](declarations/roislicedata.md) | 1613 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `abbrev` | [RoiSlice](declarations/roislice-source-edition-3.md) | 1617 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `instance` | [(anonymous)](declarations/instance-source-edition-25.md) | 1619 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `def` | [RoiSlice.instToIterator](declarations/roislice-insttoiterator-source-edition-3.md) | 1623 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [toList_roi](declarations/tolist-roi.md) | 1628 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `def` | [riiIterator](declarations/riiiterator.md) | 1651 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `theorem` | [toList_riiIter](declarations/tolist-riiiter.md) | 1654 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `structure` | [RiiSliceData](declarations/riislicedata-source-edition-2.md) | 1664 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `abbrev` | [RiiSlice](declarations/riislice.md) | 1668 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 1670 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `def` | [RiiSlice.instToIterator](declarations/riislice-insttoiterator-source-edition-3.md) | 1674 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [toList_rii](declarations/tolist-rii.md) | 1679 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `structure` | [RiiSliceData](declarations/riislicedata-source-edition-3.md) | 1689 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `abbrev` | [RiiSlice](declarations/riislice-source-edition-3.md) | 1693 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `instance` | [(anonymous)](declarations/instance-source-edition-23.md) | 1695 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `def` | [RiiSlice.instToIterator](declarations/riislice-insttoiterator.md) | 1699 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [toList_rii](declarations/tolist-rii-source-edition-3.md) | 1704 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `structure` | [RiiSliceData](declarations/riislicedata.md) | 1721 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `abbrev` | [RiiSlice](declarations/riislice-source-edition-2.md) | 1725 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `instance` | [(anonymous)](declarations/instance-source-edition-26.md) | 1727 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `def` | [RiiSlice.instToIterator](declarations/riislice-insttoiterator-source-edition-2.md) | 1731 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `theorem` | [toList_rii](declarations/tolist-rii-source-edition-2.md) | 1736 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=649cf5cc498a4dc14beb9b3f9c176c732c413afb9806104acba12b61a56846ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Zipper/Variant8565af4f9368da621fa266f5dad9fc6dee619f61d05bec76785c8eb6fd6f10c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
