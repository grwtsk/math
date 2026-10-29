# Limits Shapes Pullbacks

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**319 observed declarations and anonymous commands**, 172 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `491c5ad64b6bb8914918c2875cb764857511420e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesPullbacks.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


Declaration pages: [1](index.md) · [2](declarations-2.md)

| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WalkingCospan](declarations/walkingcospan.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [WalkingCospan.left](declarations/walkingcospan-left.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [WalkingCospan.right](declarations/walkingcospan-right.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [WalkingCospan.one](declarations/walkingcospan-one.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [WalkingSpan](declarations/walkingspan.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [WalkingSpan.left](declarations/walkingspan-left.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [WalkingSpan.right](declarations/walkingspan-right.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [WalkingSpan.zero](declarations/walkingspan-zero.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [Hom](declarations/hom-source-edition-2.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [Hom.inl](declarations/hom-inl.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [Hom.inr](declarations/hom-inr.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [Hom.id](declarations/hom-id.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [Hom](declarations/hom.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [Hom.fst](declarations/hom-fst.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [Hom.snd](declarations/hom-snd.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [Hom.id](declarations/hom-id-source-edition-2.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [WalkingCospan.ext](declarations/walkingcospan-ext.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [WalkingSpan.ext](declarations/walkingspan-ext.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [cospan](declarations/cospan.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [span](declarations/span.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cospan_left](declarations/cospan-left.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [span_left](declarations/span-left.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cospan_right](declarations/cospan-right.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [span_right](declarations/span-right.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cospan_one](declarations/cospan-one.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [span_zero](declarations/span-zero.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cospan_map_inl](declarations/cospan-map-inl.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [span_map_fst](declarations/span-map-fst.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [cospan_map_inr](declarations/cospan-map-inr.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [span_map_snd](declarations/span-map-snd.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [cospan_map_id](declarations/cospan-map-id.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [span_map_id](declarations/span-map-id.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [diagramIsoCospan](declarations/diagramisocospan.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [diagramIsoSpan](declarations/diagramisospan.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [cospanCompIso](declarations/cospancompiso.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [cospanCompIso_app_left](declarations/cospancompiso-app-left.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [cospanCompIso_app_right](declarations/cospancompiso-app-right.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cospanCompIso_app_one](declarations/cospancompiso-app-one.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cospanCompIso_hom_app_left](declarations/cospancompiso-hom-app-left.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [cospanCompIso_hom_app_right](declarations/cospancompiso-hom-app-right.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [cospanCompIso_hom_app_one](declarations/cospancompiso-hom-app-one.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [cospanCompIso_inv_app_left](declarations/cospancompiso-inv-app-left.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [cospanCompIso_inv_app_right](declarations/cospancompiso-inv-app-right.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [cospanCompIso_inv_app_one](declarations/cospancompiso-inv-app-one.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [spanCompIso](declarations/spancompiso.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [spanCompIso_app_left](declarations/spancompiso-app-left.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [spanCompIso_app_right](declarations/spancompiso-app-right.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [spanCompIso_app_zero](declarations/spancompiso-app-zero.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [spanCompIso_hom_app_left](declarations/spancompiso-hom-app-left.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [spanCompIso_hom_app_right](declarations/spancompiso-hom-app-right.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [spanCompIso_hom_app_zero](declarations/spancompiso-hom-app-zero.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [spanCompIso_inv_app_left](declarations/spancompiso-inv-app-left.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [spanCompIso_inv_app_right](declarations/spancompiso-inv-app-right.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [spanCompIso_inv_app_zero](declarations/spancompiso-inv-app-zero.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [cospanExt](declarations/cospanext.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [cospanExt_app_left](declarations/cospanext-app-left.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [cospanExt_app_right](declarations/cospanext-app-right.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [cospanExt_app_one](declarations/cospanext-app-one.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [cospanExt_hom_app_left](declarations/cospanext-hom-app-left.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [cospanExt_hom_app_right](declarations/cospanext-hom-app-right.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [cospanExt_hom_app_one](declarations/cospanext-hom-app-one.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [cospanExt_inv_app_left](declarations/cospanext-inv-app-left.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [cospanExt_inv_app_right](declarations/cospanext-inv-app-right.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [cospanExt_inv_app_one](declarations/cospanext-inv-app-one.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [spanExt](declarations/spanext.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [spanExt_app_left](declarations/spanext-app-left.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [spanExt_app_right](declarations/spanext-app-right.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [spanExt_app_one](declarations/spanext-app-one.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [spanExt_hom_app_left](declarations/spanext-hom-app-left.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [spanExt_hom_app_right](declarations/spanext-hom-app-right.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [spanExt_hom_app_zero](declarations/spanext-hom-app-zero.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [spanExt_inv_app_left](declarations/spanext-inv-app-left.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [spanExt_inv_app_right](declarations/spanext-inv-app-right.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [spanExt_inv_app_zero](declarations/spanext-inv-app-zero.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `abbrev` | [PullbackCone](declarations/pullbackcone.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `abbrev` | [fst](declarations/fst.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `abbrev` | [snd](declarations/snd.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [π_app_left](declarations/app-left-source-edition-2.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [π_app_right](declarations/app-right-source-edition-2.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [condition_one](declarations/condition-one.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [isLimitAux](declarations/islimitaux-source-edition-2.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [isLimitAux'](declarations/islimitaux.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [mk](declarations/mk.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [mk_π_app_left](declarations/mk-app-left-source-edition-2.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [mk_π_app_right](declarations/mk-app-right.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [mk_π_app_one](declarations/mk-app-one.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [mk_fst](declarations/mk-fst.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [mk_snd](declarations/mk-snd.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [condition](declarations/condition-source-edition-2.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [equalizer_ext](declarations/equalizer-ext.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [IsLimit.hom_ext](declarations/islimit-hom-ext.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [mono_snd_of_is_pullback_of_mono](declarations/mono-snd-of-is-pullback-of-mono.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [mono_fst_of_is_pullback_of_mono](declarations/mono-fst-of-is-pullback-of-mono.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [ext](declarations/ext.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [IsLimit.lift](declarations/islimit-lift-source-edition-2.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [IsLimit.lift_fst](declarations/islimit-lift-fst.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [IsLimit.lift_snd](declarations/islimit-lift-snd.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [IsLimit.lift'](declarations/islimit-lift.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [IsLimit.mk](declarations/islimit-mk.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [flipIsLimit](declarations/flipislimit.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [isLimitMkIdId](declarations/islimitmkidid.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [mono_of_isLimitMkIdId](declarations/mono-of-islimitmkidid.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [isLimitOfFactors](declarations/islimitoffactors.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [isLimitOfCompMono](declarations/islimitofcompmono.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `abbrev` | [PushoutCocone](declarations/pushoutcocone.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `abbrev` | [inl](declarations/inl.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `abbrev` | [inr](declarations/inr.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [ι_app_left](declarations/app-left.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [ι_app_right](declarations/app-right.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [condition_zero](declarations/condition-zero.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [isColimitAux](declarations/iscolimitaux-source-edition-2.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [isColimitAux'](declarations/iscolimitaux.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [mk](declarations/mk-source-edition-2.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [mk_ι_app_left](declarations/mk-app-left.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [mk_ι_app_right](declarations/mk-app-right-source-edition-2.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [mk_ι_app_zero](declarations/mk-app-zero.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [mk_inl](declarations/mk-inl.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [mk_inr](declarations/mk-inr.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [condition](declarations/condition.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [coequalizer_ext](declarations/coequalizer-ext.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [IsColimit.hom_ext](declarations/iscolimit-hom-ext.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [IsColimit.desc](declarations/iscolimit-desc.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [IsColimit.inl_desc](declarations/iscolimit-inl-desc.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [IsColimit.inr_desc](declarations/iscolimit-inr-desc.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [IsColimit.desc'](declarations/iscolimit-desc-source-edition-2.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [epi_inr_of_is_pushout_of_epi](declarations/epi-inr-of-is-pushout-of-epi.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [epi_inl_of_is_pushout_of_epi](declarations/epi-inl-of-is-pushout-of-epi.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [ext](declarations/ext-source-edition-2.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [IsColimit.mk](declarations/iscolimit-mk.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [flipIsColimit](declarations/flipiscolimit.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [isColimitMkIdId](declarations/iscolimitmkidid.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [epi_of_isColimitMkIdId](declarations/epi-of-iscolimitmkidid.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [isColimitOfFactors](declarations/iscolimitoffactors.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `def` | [isColimitOfEpiComp](declarations/iscolimitofepicomp.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [Cone.ofPullbackCone](declarations/cone-ofpullbackcone.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [Cocone.ofPushoutCocone](declarations/cocone-ofpushoutcocone.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [PullbackCone.ofCone](declarations/pullbackcone-ofcone.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [PullbackCone.isoMk](declarations/pullbackcone-isomk.md) | 1056 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [PushoutCocone.ofCocone](declarations/pushoutcocone-ofcocone.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `def` | [PushoutCocone.isoMk](declarations/pushoutcocone-isomk.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `abbrev` | [HasPullback](declarations/haspullback.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `abbrev` | [HasPushout](declarations/haspushout.md) | 1098 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `abbrev` | [pullback](declarations/pullback.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `abbrev` | [pushout](declarations/pushout.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `abbrev` | [pullback.fst](declarations/pullback-fst.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `abbrev` | [pullback.snd](declarations/pullback-snd.md) | 1118 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `abbrev` | [pushout.inl](declarations/pushout-inl.md) | 1123 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `abbrev` | [pushout.inr](declarations/pushout-inr.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `abbrev` | [pullback.lift](declarations/pullback-lift.md) | 1134 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `abbrev` | [pushout.desc](declarations/pushout-desc.md) | 1141 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [PullbackCone.fst_colimit_cocone](declarations/pullbackcone-fst-colimit-cocone.md) | 1147 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [PullbackCone.snd_colimit_cocone](declarations/pullbackcone-snd-colimit-cocone.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [PushoutCocone.inl_colimit_cocone](declarations/pushoutcocone-inl-colimit-cocone.md) | 1157 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [PushoutCocone.inr_colimit_cocone](declarations/pushoutcocone-inr-colimit-cocone.md) | 1162 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [pullback.lift_fst](declarations/pullback-lift-fst.md) | 1168 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [pullback.lift_snd](declarations/pullback-lift-snd.md) | 1175 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [pushout.inl_desc](declarations/pushout-inl-desc.md) | 1182 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [pushout.inr_desc](declarations/pushout-inr-desc.md) | 1189 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `def` | [pullback.lift'](declarations/pullback-lift-source-edition-2.md) | 1196 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `def` | [pullback.desc'](declarations/pullback-desc.md) | 1203 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [pullback.condition](declarations/pullback-condition.md) | 1209 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [pushout.condition](declarations/pushout-condition.md) | 1215 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `abbrev` | [pullback.map](declarations/pullback-map.md) | 1229 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `abbrev` | [pullback.mapDesc](declarations/pullback-mapdesc.md) | 1237 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `abbrev` | [pushout.map](declarations/pushout-map.md) | 1251 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `abbrev` | [pushout.mapLift](declarations/pushout-maplift.md) | 1261 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [pullback.hom_ext](declarations/pullback-hom-ext.md) | 1269 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `def` | [pullbackIsPullback](declarations/pullbackispullback.md) | 1276 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `instance` | [pullback.fst_of_mono](declarations/pullback-fst-of-mono.md) | 1283 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `instance` | [pullback.snd_of_mono](declarations/pullback-snd-of-mono.md) | 1289 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `instance` | [mono_pullback_to_prod](declarations/mono-pullback-to-prod.md) | 1295 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [pushout.hom_ext](declarations/pushout-hom-ext.md) | 1307 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `def` | [pushoutIsPushout](declarations/pushoutispushout.md) | 1314 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `instance` | [pushout.inl_of_epi](declarations/pushout-inl-of-epi.md) | 1321 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `instance` | [pushout.inr_of_epi](declarations/pushout-inr-of-epi.md) | 1327 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `instance` | [epi_coprod_to_pushout](declarations/epi-coprod-to-pushout.md) | 1333 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `instance` | [pullback.map_isIso](declarations/pullback-map-isiso.md) | 1342 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `def` | [pullback.congrHom](declarations/pullback-congrhom.md) | 1356 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [pullback.congrHom_inv](declarations/pullback-congrhom-inv.md) | 1362 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `instance` | [pushout.map_isIso](declarations/pushout-map-isiso.md) | 1377 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [pullback.mapDesc_comp](declarations/pullback-mapdesc-comp.md) | 1388 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `def` | [pushout.congrHom](declarations/pushout-congrhom.md) | 1399 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [pushout.congrHom_inv](declarations/pushout-congrhom-inv.md) | 1405 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [pushout.mapLift_comp](declarations/pushout-maplift-comp.md) | 1420 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `def` | [pullbackComparison](declarations/pullbackcomparison.md) | 1437 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [pullbackComparison_comp_fst](declarations/pullbackcomparison-comp-fst.md) | 1444 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [pullbackComparison_comp_snd](declarations/pullbackcomparison-comp-snd.md) | 1451 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [map_lift_pullbackComparison](declarations/map-lift-pullbackcomparison.md) | 1458 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `def` | [pushoutComparison](declarations/pushoutcomparison.md) | 1469 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [inl_comp_pushoutComparison](declarations/inl-comp-pushoutcomparison.md) | 1476 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [inr_comp_pushoutComparison](declarations/inr-comp-pushoutcomparison.md) | 1482 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [pushoutComparison_map_desc](declarations/pushoutcomparison-map-desc.md) | 1488 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [hasPullback_symmetry](declarations/haspullback-symmetry.md) | 1504 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `def` | [pullbackSymmetry](declarations/pullbacksymmetry.md) | 1512 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `theorem` | [pullbackSymmetry_hom_comp_fst](declarations/pullbacksymmetry-hom-comp-fst.md) | 1520 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [pullbackSymmetry_hom_comp_snd](declarations/pullbacksymmetry-hom-comp-snd.md) | 1525 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [pullbackSymmetry_inv_comp_fst](declarations/pullbacksymmetry-inv-comp-fst.md) | 1530 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [pullbackSymmetry_inv_comp_snd](declarations/pullbacksymmetry-inv-comp-snd.md) | 1535 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [hasPushout_symmetry](declarations/haspushout-symmetry.md) | 1548 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `def` | [pushoutSymmetry](declarations/pushoutsymmetry.md) | 1556 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [inl_comp_pushoutSymmetry_hom](declarations/inl-comp-pushoutsymmetry-hom.md) | 1564 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `theorem` | [inr_comp_pushoutSymmetry_hom](declarations/inr-comp-pushoutsymmetry-hom.md) | 1571 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [inl_comp_pushoutSymmetry_inv](declarations/inl-comp-pushoutsymmetry-inv.md) | 1578 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [inr_comp_pushoutSymmetry_inv](declarations/inr-comp-pushoutsymmetry-inv.md) | 1583 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `def` | [pullbackIsPullbackOfCompMono](declarations/pullbackispullbackofcompmono.md) | 1594 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `instance` | [hasPullback_of_comp_mono](declarations/haspullback-of-comp-mono.md) | 1601 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `def` | [pullbackConeOfLeftIso](declarations/pullbackconeofleftiso.md) | 1609 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `theorem` | [pullbackConeOfLeftIso_x](declarations/pullbackconeofleftiso-x.md) | 1614 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `theorem` | [pullbackConeOfLeftIso_fst](declarations/pullbackconeofleftiso-fst.md) | 1619 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `theorem` | [pullbackConeOfLeftIso_snd](declarations/pullbackconeofleftiso-snd.md) | 1623 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `theorem` | [pullbackConeOfLeftIso_π_app_none](declarations/pullbackconeofleftiso-app-none.md) | 1627 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `theorem` | [pullbackConeOfLeftIso_π_app_left](declarations/pullbackconeofleftiso-app-left.md) | 1631 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `theorem` | [pullbackConeOfLeftIso_π_app_right](declarations/pullbackconeofleftiso-app-right.md) | 1636 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `def` | [pullbackConeOfLeftIsoIsLimit](declarations/pullbackconeofleftisoislimit.md) | 1640 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `theorem` | [hasPullback_of_left_iso](declarations/haspullback-of-left-iso.md) | 1644 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `instance` | [pullback_snd_iso_of_left_iso](declarations/pullback-snd-iso-of-left-iso.md) | 1650 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `instance` | [hasPullback_of_right_factors_mono](declarations/haspullback-of-right-factors-mono.md) | 1659 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `instance` | [pullback_snd_iso_of_right_factors_mono](declarations/pullback-snd-iso-of-right-factors-mono.md) | 1666 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `def` | [pullbackConeOfRightIso](declarations/pullbackconeofrightiso.md) | 1684 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `theorem` | [pullbackConeOfRightIso_x](declarations/pullbackconeofrightiso-x.md) | 1689 | `BLOCKED_NATIVE_ADMISSION` |
| 223 | `theorem` | [pullbackConeOfRightIso_fst](declarations/pullbackconeofrightiso-fst.md) | 1694 | `BLOCKED_NATIVE_ADMISSION` |
| 224 | `theorem` | [pullbackConeOfRightIso_snd](declarations/pullbackconeofrightiso-snd.md) | 1698 | `BLOCKED_NATIVE_ADMISSION` |
| 225 | `theorem` | [pullbackConeOfRightIso_π_app_none](declarations/pullbackconeofrightiso-app-none.md) | 1702 | `BLOCKED_NATIVE_ADMISSION` |
| 226 | `theorem` | [pullbackConeOfRightIso_π_app_left](declarations/pullbackconeofrightiso-app-left.md) | 1706 | `BLOCKED_NATIVE_ADMISSION` |
| 227 | `theorem` | [pullbackConeOfRightIso_π_app_right](declarations/pullbackconeofrightiso-app-right.md) | 1711 | `BLOCKED_NATIVE_ADMISSION` |
| 228 | `def` | [pullbackConeOfRightIsoIsLimit](declarations/pullbackconeofrightisoislimit.md) | 1716 | `BLOCKED_NATIVE_ADMISSION` |
| 229 | `theorem` | [hasPullback_of_right_iso](declarations/haspullback-of-right-iso.md) | 1720 | `BLOCKED_NATIVE_ADMISSION` |
| 230 | `instance` | [pullback_snd_iso_of_right_iso](declarations/pullback-snd-iso-of-right-iso.md) | 1726 | `BLOCKED_NATIVE_ADMISSION` |
| 231 | `instance` | [hasPullback_of_left_factors_mono](declarations/haspullback-of-left-factors-mono.md) | 1735 | `BLOCKED_NATIVE_ADMISSION` |
| 232 | `instance` | [pullback_snd_iso_of_left_factors_mono](declarations/pullback-snd-iso-of-left-factors-mono.md) | 1742 | `BLOCKED_NATIVE_ADMISSION` |
| 233 | `def` | [pushoutIsPushoutOfEpiComp](declarations/pushoutispushoutofepicomp.md) | 1758 | `BLOCKED_NATIVE_ADMISSION` |
| 234 | `instance` | [hasPushout_of_epi_comp](declarations/haspushout-of-epi-comp.md) | 1765 | `BLOCKED_NATIVE_ADMISSION` |
| 235 | `def` | [pushoutCoconeOfLeftIso](declarations/pushoutcoconeofleftiso.md) | 1773 | `BLOCKED_NATIVE_ADMISSION` |
| 236 | `theorem` | [pushoutCoconeOfLeftIso_x](declarations/pushoutcoconeofleftiso-x.md) | 1778 | `BLOCKED_NATIVE_ADMISSION` |
| 237 | `theorem` | [pushoutCoconeOfLeftIso_inl](declarations/pushoutcoconeofleftiso-inl.md) | 1783 | `BLOCKED_NATIVE_ADMISSION` |
| 238 | `theorem` | [pushoutCoconeOfLeftIso_inr](declarations/pushoutcoconeofleftiso-inr.md) | 1787 | `BLOCKED_NATIVE_ADMISSION` |
| 239 | `theorem` | [pushoutCoconeOfLeftIso_ι_app_none](declarations/pushoutcoconeofleftiso-app-none.md) | 1791 | `BLOCKED_NATIVE_ADMISSION` |
| 240 | `theorem` | [pushoutCoconeOfLeftIso_ι_app_left](declarations/pushoutcoconeofleftiso-app-left.md) | 1796 | `BLOCKED_NATIVE_ADMISSION` |
| 241 | `theorem` | [pushoutCoconeOfLeftIso_ι_app_right](declarations/pushoutcoconeofleftiso-app-right.md) | 1801 | `BLOCKED_NATIVE_ADMISSION` |
| 242 | `def` | [pushoutCoconeOfLeftIsoIsLimit](declarations/pushoutcoconeofleftisoislimit.md) | 1805 | `BLOCKED_NATIVE_ADMISSION` |
| 243 | `theorem` | [hasPushout_of_left_iso](declarations/haspushout-of-left-iso.md) | 1809 | `BLOCKED_NATIVE_ADMISSION` |
| 244 | `instance` | [pushout_inr_iso_of_left_iso](declarations/pushout-inr-iso-of-left-iso.md) | 1815 | `BLOCKED_NATIVE_ADMISSION` |
| 245 | `instance` | [hasPushout_of_right_factors_epi](declarations/haspushout-of-right-factors-epi.md) | 1824 | `BLOCKED_NATIVE_ADMISSION` |
| 246 | `instance` | [pushout_inr_iso_of_right_factors_epi](declarations/pushout-inr-iso-of-right-factors-epi.md) | 1831 | `BLOCKED_NATIVE_ADMISSION` |
| 247 | `def` | [pushoutCoconeOfRightIso](declarations/pushoutcoconeofrightiso.md) | 1849 | `BLOCKED_NATIVE_ADMISSION` |
| 248 | `theorem` | [pushoutCoconeOfRightIso_x](declarations/pushoutcoconeofrightiso-x.md) | 1854 | `BLOCKED_NATIVE_ADMISSION` |
| 249 | `theorem` | [pushoutCoconeOfRightIso_inl](declarations/pushoutcoconeofrightiso-inl.md) | 1859 | `BLOCKED_NATIVE_ADMISSION` |
| 250 | `theorem` | [pushoutCoconeOfRightIso_inr](declarations/pushoutcoconeofrightiso-inr.md) | 1863 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df28e602afd77dd707867c62205ec10073ca6f65f8bb8cd7fa6dc5b52e3af571 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant134ebd9f1e592aaf50d2da20256ec7824cd7af50202a5cad367f441ef618d3ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
