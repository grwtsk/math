# Ringed Space Open Immersion Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**140 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4840c3b01c4996cb4862762efb493c8d4fe546f0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Geometry/RingedSpaceOpenImmersionPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [PresheafedSpace.IsOpenImmersion](declarations/presheafedspace-isopenimmersion.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [SheafedSpace.IsOpenImmersion](declarations/sheafedspace-isopenimmersion.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [SheafedSpace.isOpenImmersion_iff_hom](declarations/sheafedspace-isopenimmersion-iff-hom.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [LocallyRingedSpace.IsOpenImmersion](declarations/locallyringedspace-isopenimmersion.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [opensFunctor](declarations/opensfunctor-source-edition-3.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [isoRestrict](declarations/isorestrict.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isoRestrict_hom_ofRestrict](declarations/isorestrict-hom-ofrestrict-source-edition-3.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isoRestrict_inv_ofRestrict](declarations/isorestrict-inv-ofrestrict-source-edition-2.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [mono](declarations/mono.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [c_iso'](declarations/c-iso.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [comp](declarations/comp-source-edition-2.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [invApp](declarations/invapp-source-edition-2.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [inv_naturality](declarations/inv-naturality.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [inv_invApp](declarations/inv-invapp-source-edition-3.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [invApp_app](declarations/invapp-app-source-edition-3.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [app_invApp](declarations/app-invapp-source-edition-3.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [app_inv_app'](declarations/app-inv-app-source-edition-3.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [ofIso](declarations/ofiso.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [ofRestrict](declarations/ofrestrict-source-edition-2.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ofRestrict_invApp](declarations/ofrestrict-invapp-source-edition-3.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [to_iso](declarations/to-iso.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [stalk_iso](declarations/stalk-iso.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [pullbackConeOfLeftFst](declarations/pullbackconeofleftfst.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [pullback_cone_of_left_condition](declarations/pullback-cone-of-left-condition.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [pullbackConeOfLeft](declarations/pullbackconeofleft-source-edition-2.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [pullbackConeOfLeftLift](declarations/pullbackconeofleftlift.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [pullbackConeOfLeftLift_fst](declarations/pullbackconeofleftlift-fst.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pullbackConeOfLeftLift_snd](declarations/pullbackconeofleftlift-snd.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [pullbackConeSndIsOpenImmersion](declarations/pullbackconesndisopenimmersion.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [pullbackConeOfLeftIsLimit](declarations/pullbackconeofleftislimit.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [hasPullback_of_left](declarations/haspullback-of-left-source-edition-2.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [hasPullback_of_right](declarations/haspullback-of-right-source-edition-2.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [pullbackSndOfLeft](declarations/pullbacksndofleft.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [pullbackFstOfRight](declarations/pullbackfstofright.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [pullbackToBaseIsOpenImmersion](declarations/pullbacktobaseisopenimmersion.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [forget_preservesLimitsOfLeft](declarations/forget-preserveslimitsofleft.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [forget_preservesLimitsOfRight](declarations/forget-preserveslimitsofright.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [pullback_snd_isIso_of_range_subset](declarations/pullback-snd-isiso-of-range-subset.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [lift](declarations/lift-source-edition-2.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [lift_fac](declarations/lift-fac-source-edition-2.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [lift_uniq](declarations/lift-uniq.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [isoOfRangeEq](declarations/isoofrangeeq.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [toSheafedSpace](declarations/tosheafedspace.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [toSheafedSpace_toPresheafedSpace](declarations/tosheafedspace-topresheafedspace.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [toSheafedSpaceHom](declarations/tosheafedspacehom.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toSheafedSpaceHom_hom_base](declarations/tosheafedspacehom-hom-base.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toSheafedSpaceHom_hom_c](declarations/tosheafedspacehom-hom-c.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [toSheafedSpace_isOpenImmersion](declarations/tosheafedspace-isopenimmersion.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [sheafedSpace_toSheafedSpace](declarations/sheafedspace-tosheafedspace.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [toLocallyRingedSpace](declarations/tolocallyringedspace.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toLocallyRingedSpace_toSheafedSpace](declarations/tolocallyringedspace-tosheafedspace.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [toLocallyRingedSpaceHom](declarations/tolocallyringedspacehom.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [toLocallyRingedSpaceHom_val](declarations/tolocallyringedspacehom-val.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [toLocallyRingedSpace_isOpenImmersion](declarations/tolocallyringedspace-isopenimmersion.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [locallyRingedSpace_toLocallyRingedSpace](declarations/locallyringedspace-tolocallyringedspace.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [isIso_of_subset](declarations/isiso-of-subset.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [comp](declarations/comp.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [forgetMapIsOpenImmersion](declarations/forgetmapisopenimmersion.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [hasLimit_cospan_forget_of_left](declarations/haslimit-cospan-forget-of-left.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [hasLimit_cospan_forget_of_left'](declarations/haslimit-cospan-forget-of-left-source-edition-2.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [hasLimit_cospan_forget_of_right](declarations/haslimit-cospan-forget-of-right-source-edition-2.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [hasLimit_cospan_forget_of_right'](declarations/haslimit-cospan-forget-of-right.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [forgetCreatesPullbackOfLeft](declarations/forgetcreatespullbackofleft.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [forgetCreatesPullbackOfRight](declarations/forgetcreatespullbackofright.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [sheafedSpace_forgetPreserves_of_left](declarations/sheafedspace-forgetpreserves-of-left.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [sheafedSpace_forgetPreserves_of_right](declarations/sheafedspace-forgetpreserves-of-right.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [sheafedSpace_hasPullback_of_left](declarations/sheafedspace-haspullback-of-left.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [sheafedSpace_hasPullback_of_right](declarations/sheafedspace-haspullback-of-right.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [sheafedSpace_pullback_snd_of_left](declarations/sheafedspace-pullback-snd-of-left.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [sheafedSpace_pullback_fst_of_right](declarations/sheafedspace-pullback-fst-of-right.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [sheafedSpace_pullback_to_base_isOpenImmersion](declarations/sheafedspace-pullback-to-base-isopenimmersion.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [of_stalk_iso](declarations/of-stalk-iso.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `abbrev` | [opensFunctor](declarations/opensfunctor.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [isoRestrict](declarations/isorestrict-source-edition-3.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [isoRestrict_hom_ofRestrict](declarations/isorestrict-hom-ofrestrict-source-edition-2.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [isoRestrict_inv_ofRestrict](declarations/isorestrict-inv-ofrestrict.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [invApp](declarations/invapp-source-edition-3.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [inv_naturality](declarations/inv-naturality-source-edition-2.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [inv_invApp](declarations/inv-invapp.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [invApp_app](declarations/invapp-app.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [app_invApp](declarations/app-invapp-source-edition-2.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [app_inv_app'](declarations/app-inv-app-source-edition-2.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [ofRestrict](declarations/ofrestrict.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [ofRestrict_invApp](declarations/ofrestrict-invapp-source-edition-2.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [to_iso](declarations/to-iso-source-edition-3.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [stalk_iso](declarations/stalk-iso-source-edition-2.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [sigma_ι_isOpenEmbedding](declarations/sigma-isopenembedding.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [image_preimage_is_empty](declarations/image-preimage-is-empty.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [sigma_ι_isOpenImmersion_aux](declarations/sigma-isopenimmersion-aux.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [sigma_ι_isOpenImmersion](declarations/sigma-isopenimmersion.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [(anonymous)](declarations/instance.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [comp](declarations/comp-source-edition-3.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [mono](declarations/mono-source-edition-2.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [pullbackConeOfLeft](declarations/pullbackconeofleft.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [pullbackConeOfLeftIsLimit](declarations/pullbackconeofleftislimit-source-edition-2.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [hasPullback_of_left](declarations/haspullback-of-left.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [hasPullback_of_right](declarations/haspullback-of-right.md) | 1048 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [pullback_snd_of_left](declarations/pullback-snd-of-left.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [pullback_fst_of_right](declarations/pullback-fst-of-right.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [pullback_to_base_isOpenImmersion](declarations/pullback-to-base-isopenimmersion.md) | 1064 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [forget_preservesPullbackOfLeft](declarations/forget-preservespullbackofleft.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [forgetToPresheafedSpace_preservesPullback_of_left](declarations/forgettopresheafedspace-preservespullback-of-left.md) | 1076 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [forgetToPresheafedSpacePreservesOpenImmersion](declarations/forgettopresheafedspacepreservesopenimmersion.md) | 1083 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [forgetToTop_preservesPullback_of_left](declarations/forgettotop-preservespullback-of-left.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [forget_reflectsPullback_of_left](declarations/forget-reflectspullback-of-left.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `instance` | [forget_preservesPullback_of_right](declarations/forget-preservespullback-of-right.md) | 1105 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [forgetToPresheafedSpace_preservesPullback_of_right](declarations/forgettopresheafedspace-preservespullback-of-right.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [forget_reflectsPullback_of_right](declarations/forget-reflectspullback-of-right.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `instance` | [forgetToPresheafedSpace_reflectsPullback_of_left](declarations/forgettopresheafedspace-reflectspullback-of-left.md) | 1118 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `instance` | [forgetToPresheafedSpace_reflectsPullback_of_right](declarations/forgettopresheafedspace-reflectspullback-of-right.md) | 1123 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [pullback_snd_isIso_of_range_subset](declarations/pullback-snd-isiso-of-range-subset-source-edition-2.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [lift](declarations/lift.md) | 1145 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [lift_fac](declarations/lift-fac.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [lift_uniq](declarations/lift-uniq-source-edition-2.md) | 1153 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [lift_range](declarations/lift-range.md) | 1157 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [isoRestrict](declarations/isorestrict-source-edition-2.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `abbrev` | [opensFunctor](declarations/opensfunctor-source-edition-2.md) | 1186 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [of_stalk_iso](declarations/of-stalk-iso-source-edition-2.md) | 1197 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [isoRestrict_hom_ofRestrict](declarations/isorestrict-hom-ofrestrict.md) | 1209 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [isoRestrict_inv_ofRestrict](declarations/isorestrict-inv-ofrestrict-source-edition-3.md) | 1214 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [invApp](declarations/invapp.md) | 1217 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [inv_naturality](declarations/inv-naturality-source-edition-3.md) | 1225 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 1231 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [inv_invApp](declarations/inv-invapp-source-edition-2.md) | 1234 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [invApp_app](declarations/invapp-app-source-edition-2.md) | 1245 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [app_invApp](declarations/app-invapp.md) | 1256 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [app_inv_app'](declarations/app-inv-app.md) | 1265 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `instance` | [ofRestrict](declarations/ofrestrict-source-edition-3.md) | 1274 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [ofRestrict_invApp](declarations/ofrestrict-invapp.md) | 1279 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [stalk_iso](declarations/stalk-iso-source-edition-3.md) | 1284 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [to_iso](declarations/to-iso-source-edition-2.md) | 1287 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afbed3c1a968b1691e838cf80a8c98d151921335fc279387969719f101ca0bef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
