# Ringed Space Open Immersion Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**140 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b5cad5c5347d96072ffac32f1c447d094d643a9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Geometry/RingedSpaceOpenImmersionNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [PresheafedSpace.IsOpenImmersion](declarations/presheafedspace-isopenimmersion.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [SheafedSpace.IsOpenImmersion](declarations/sheafedspace-isopenimmersion.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [SheafedSpace.isOpenImmersion_iff_hom](declarations/sheafedspace-isopenimmersion-iff-hom.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [LocallyRingedSpace.IsOpenImmersion](declarations/locallyringedspace-isopenimmersion.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [opensFunctor](declarations/opensfunctor.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [isoRestrict](declarations/isorestrict-source-edition-2.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isoRestrict_hom_ofRestrict](declarations/isorestrict-hom-ofrestrict.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isoRestrict_inv_ofRestrict](declarations/isorestrict-inv-ofrestrict.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [mono](declarations/mono.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [c_iso'](declarations/c-iso.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [comp](declarations/comp-source-edition-3.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [invApp](declarations/invapp.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [inv_naturality](declarations/inv-naturality-source-edition-2.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [inv_invApp](declarations/inv-invapp.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [invApp_app](declarations/invapp-app.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [app_invApp](declarations/app-invapp-source-edition-2.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [app_inv_app'](declarations/app-inv-app-source-edition-3.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [ofIso](declarations/ofiso.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [ofRestrict](declarations/ofrestrict-source-edition-2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ofRestrict_invApp](declarations/ofrestrict-invapp-source-edition-3.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [to_iso](declarations/to-iso.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [stalk_iso](declarations/stalk-iso-source-edition-2.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [pullbackConeOfLeftFst](declarations/pullbackconeofleftfst.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [pullback_cone_of_left_condition](declarations/pullback-cone-of-left-condition.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [pullbackConeOfLeft](declarations/pullbackconeofleft-source-edition-2.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [pullbackConeOfLeftLift](declarations/pullbackconeofleftlift.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [pullbackConeOfLeftLift_fst](declarations/pullbackconeofleftlift-fst.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pullbackConeOfLeftLift_snd](declarations/pullbackconeofleftlift-snd.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [pullbackConeSndIsOpenImmersion](declarations/pullbackconesndisopenimmersion.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [pullbackConeOfLeftIsLimit](declarations/pullbackconeofleftislimit-source-edition-2.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [hasPullback_of_left](declarations/haspullback-of-left-source-edition-2.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [hasPullback_of_right](declarations/haspullback-of-right.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [pullbackSndOfLeft](declarations/pullbacksndofleft.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [pullbackFstOfRight](declarations/pullbackfstofright.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [pullbackToBaseIsOpenImmersion](declarations/pullbacktobaseisopenimmersion.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [forget_preservesLimitsOfLeft](declarations/forget-preserveslimitsofleft.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [forget_preservesLimitsOfRight](declarations/forget-preserveslimitsofright.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [pullback_snd_isIso_of_range_subset](declarations/pullback-snd-isiso-of-range-subset.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [lift](declarations/lift-source-edition-2.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [lift_fac](declarations/lift-fac.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [lift_uniq](declarations/lift-uniq.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [isoOfRangeEq](declarations/isoofrangeeq.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [toSheafedSpace](declarations/tosheafedspace.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [toSheafedSpace_toPresheafedSpace](declarations/tosheafedspace-topresheafedspace.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [toSheafedSpaceHom](declarations/tosheafedspacehom.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toSheafedSpaceHom_hom_base](declarations/tosheafedspacehom-hom-base.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toSheafedSpaceHom_hom_c](declarations/tosheafedspacehom-hom-c.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [toSheafedSpace_isOpenImmersion](declarations/tosheafedspace-isopenimmersion.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [sheafedSpace_toSheafedSpace](declarations/sheafedspace-tosheafedspace.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [toLocallyRingedSpace](declarations/tolocallyringedspace.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toLocallyRingedSpace_toSheafedSpace](declarations/tolocallyringedspace-tosheafedspace.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [toLocallyRingedSpaceHom](declarations/tolocallyringedspacehom.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [toLocallyRingedSpaceHom_val](declarations/tolocallyringedspacehom-val.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [toLocallyRingedSpace_isOpenImmersion](declarations/tolocallyringedspace-isopenimmersion.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [locallyRingedSpace_toLocallyRingedSpace](declarations/locallyringedspace-tolocallyringedspace.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [isIso_of_subset](declarations/isiso-of-subset.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [comp](declarations/comp-source-edition-2.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [forgetMapIsOpenImmersion](declarations/forgetmapisopenimmersion.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [hasLimit_cospan_forget_of_left](declarations/haslimit-cospan-forget-of-left.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [hasLimit_cospan_forget_of_left'](declarations/haslimit-cospan-forget-of-left-source-edition-2.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [hasLimit_cospan_forget_of_right](declarations/haslimit-cospan-forget-of-right-source-edition-2.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [hasLimit_cospan_forget_of_right'](declarations/haslimit-cospan-forget-of-right.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [forgetCreatesPullbackOfLeft](declarations/forgetcreatespullbackofleft.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [forgetCreatesPullbackOfRight](declarations/forgetcreatespullbackofright.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [sheafedSpace_forgetPreserves_of_left](declarations/sheafedspace-forgetpreserves-of-left.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [sheafedSpace_forgetPreserves_of_right](declarations/sheafedspace-forgetpreserves-of-right.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [sheafedSpace_hasPullback_of_left](declarations/sheafedspace-haspullback-of-left.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [sheafedSpace_hasPullback_of_right](declarations/sheafedspace-haspullback-of-right.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [sheafedSpace_pullback_snd_of_left](declarations/sheafedspace-pullback-snd-of-left.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [sheafedSpace_pullback_fst_of_right](declarations/sheafedspace-pullback-fst-of-right.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [sheafedSpace_pullback_to_base_isOpenImmersion](declarations/sheafedspace-pullback-to-base-isopenimmersion.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [of_stalk_iso](declarations/of-stalk-iso.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `abbrev` | [opensFunctor](declarations/opensfunctor-source-edition-2.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [isoRestrict](declarations/isorestrict-source-edition-3.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [isoRestrict_hom_ofRestrict](declarations/isorestrict-hom-ofrestrict-source-edition-3.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [isoRestrict_inv_ofRestrict](declarations/isorestrict-inv-ofrestrict-source-edition-2.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [invApp](declarations/invapp-source-edition-3.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [inv_naturality](declarations/inv-naturality-source-edition-3.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [inv_invApp](declarations/inv-invapp-source-edition-2.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [invApp_app](declarations/invapp-app-source-edition-3.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [app_invApp](declarations/app-invapp-source-edition-3.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [app_inv_app'](declarations/app-inv-app.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [ofRestrict](declarations/ofrestrict.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [ofRestrict_invApp](declarations/ofrestrict-invapp.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [to_iso](declarations/to-iso-source-edition-3.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [stalk_iso](declarations/stalk-iso-source-edition-3.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [sigma_ι_isOpenEmbedding](declarations/sigma-isopenembedding.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [image_preimage_is_empty](declarations/image-preimage-is-empty.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [sigma_ι_isOpenImmersion_aux](declarations/sigma-isopenimmersion-aux.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [sigma_ι_isOpenImmersion](declarations/sigma-isopenimmersion.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [comp](declarations/comp.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [mono](declarations/mono-source-edition-2.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [pullbackConeOfLeft](declarations/pullbackconeofleft.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 1022 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [pullbackConeOfLeftIsLimit](declarations/pullbackconeofleftislimit.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [hasPullback_of_left](declarations/haspullback-of-left.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [hasPullback_of_right](declarations/haspullback-of-right-source-edition-2.md) | 1056 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [pullback_snd_of_left](declarations/pullback-snd-of-left.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [pullback_fst_of_right](declarations/pullback-fst-of-right.md) | 1067 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [pullback_to_base_isOpenImmersion](declarations/pullback-to-base-isopenimmersion.md) | 1072 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [forget_preservesPullbackOfLeft](declarations/forget-preservespullbackofleft.md) | 1077 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [forgetToPresheafedSpace_preservesPullback_of_left](declarations/forgettopresheafedspace-preservespullback-of-left.md) | 1084 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [forgetToPresheafedSpacePreservesOpenImmersion](declarations/forgettopresheafedspacepreservesopenimmersion.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [forgetToTop_preservesPullback_of_left](declarations/forgettotop-preservespullback-of-left.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [forget_reflectsPullback_of_left](declarations/forget-reflectspullback-of-left.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `instance` | [forget_preservesPullback_of_right](declarations/forget-preservespullback-of-right.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [forgetToPresheafedSpace_preservesPullback_of_right](declarations/forgettopresheafedspace-preservespullback-of-right.md) | 1117 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [forget_reflectsPullback_of_right](declarations/forget-reflectspullback-of-right.md) | 1122 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `instance` | [forgetToPresheafedSpace_reflectsPullback_of_left](declarations/forgettopresheafedspace-reflectspullback-of-left.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `instance` | [forgetToPresheafedSpace_reflectsPullback_of_right](declarations/forgettopresheafedspace-reflectspullback-of-right.md) | 1131 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [pullback_snd_isIso_of_range_subset](declarations/pullback-snd-isiso-of-range-subset-source-edition-2.md) | 1136 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [lift](declarations/lift.md) | 1153 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [lift_fac](declarations/lift-fac-source-edition-2.md) | 1158 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [lift_uniq](declarations/lift-uniq-source-edition-2.md) | 1161 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [lift_range](declarations/lift-range.md) | 1165 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [isoRestrict](declarations/isorestrict.md) | 1186 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `abbrev` | [opensFunctor](declarations/opensfunctor-source-edition-3.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [of_stalk_iso](declarations/of-stalk-iso-source-edition-2.md) | 1205 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [isoRestrict_hom_ofRestrict](declarations/isorestrict-hom-ofrestrict-source-edition-2.md) | 1217 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [isoRestrict_inv_ofRestrict](declarations/isorestrict-inv-ofrestrict-source-edition-3.md) | 1222 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [invApp](declarations/invapp-source-edition-2.md) | 1225 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [inv_naturality](declarations/inv-naturality.md) | 1233 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 1239 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [inv_invApp](declarations/inv-invapp-source-edition-3.md) | 1242 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [invApp_app](declarations/invapp-app-source-edition-2.md) | 1253 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [app_invApp](declarations/app-invapp.md) | 1264 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [app_inv_app'](declarations/app-inv-app-source-edition-2.md) | 1273 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `instance` | [ofRestrict](declarations/ofrestrict-source-edition-3.md) | 1282 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [ofRestrict_invApp](declarations/ofrestrict-invapp-source-edition-2.md) | 1287 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [stalk_iso](declarations/stalk-iso.md) | 1292 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [to_iso](declarations/to-iso-source-edition-2.md) | 1295 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=665189d562446ba7c7ecf2448b173761c1ce8a9003cdd12fd4cee9a3c41577d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variantf4b71e44d999d0a187447f378cb60ba47452ee7de8f0bbfdb91770c937c91cd6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
