# Open Immersion Scheme

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**106 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66cb4afeae676271592ffb515e0707f44280a402`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/OpenImmersionScheme.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsOpenImmersion](declarations/isopenimmersion.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [scheme](declarations/scheme.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsOpenImmersion.open_range](declarations/isopenimmersion-open-range.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [OpenCover](declarations/opencover.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [affineCover](declarations/affinecover.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [OpenCover.bind](declarations/opencover-bind.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [openCoverOfIsIso](declarations/opencoverofisiso.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [OpenCover.copy](declarations/opencover-copy.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [OpenCover.pushforwardIso](declarations/opencover-pushforwardiso.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [OpenCover.add](declarations/opencover-add.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [val_base_isIso](declarations/val-base-isiso.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [basic_open_isOpenImmersion](declarations/basic-open-isopenimmersion.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [affineBasisCoverOfAffine](declarations/affinebasiscoverofaffine.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [affineBasisCover](declarations/affinebasiscover.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [affineBasisCoverRing](declarations/affinebasiscoverring.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [affineBasisCover_obj](declarations/affinebasiscover-obj.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [affineBasisCover_map_range](declarations/affinebasiscover-map-range.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [affineBasisCover_is_basis](declarations/affinebasiscover-is-basis.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [OpenCover.finiteSubcover](declarations/opencover-finitesubcover.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toScheme](declarations/toscheme.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toScheme_toLocallyRingedSpace](declarations/toscheme-tolocallyringedspace.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [toSchemeHom](declarations/toschemehom.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toSchemeHom_val](declarations/toschemehom-val.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [toSchemeHom_isOpenImmersion](declarations/toschemehom-isopenimmersion.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [scheme_eq_of_locallyRingedSpace_eq](declarations/scheme-eq-of-locallyringedspace-eq.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [scheme_toScheme](declarations/scheme-toscheme.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Scheme.restrict](declarations/scheme-restrict.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Scheme.ofRestrict](declarations/scheme-ofrestrict.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [IsOpenImmersion.ofRestrict](declarations/isopenimmersion-ofrestrict.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [to_iso](declarations/to-iso.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [of_stalk_iso](declarations/of-stalk-iso.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [iff_stalk_iso](declarations/iff-stalk-iso.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [_root_.AlgebraicGeometry.isIso_iff_isOpenImmersion](declarations/root-algebraicgeometry-isiso-iff-isopenimmersion.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [_root_.AlgebraicGeometry.isIso_iff_stalk_iso](declarations/root-algebraicgeometry-isiso-iff-stalk-iso.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [isoRestrict](declarations/isorestrict.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [mono](declarations/mono.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [forget_map_isOpenImmersion](declarations/forget-map-isopenimmersion.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [hasLimit_cospan_forget_of_left](declarations/haslimit-cospan-forget-of-left.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [hasLimit_cospan_forget_of_left'](declarations/haslimit-cospan-forget-of-left-source-edition-2.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [hasLimit_cospan_forget_of_right](declarations/haslimit-cospan-forget-of-right.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [hasLimit_cospan_forget_of_right'](declarations/haslimit-cospan-forget-of-right-source-edition-2.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [forgetCreatesPullbackOfLeft](declarations/forgetcreatespullbackofleft.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [forgetCreatesPullbackOfRight](declarations/forgetcreatespullbackofright.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [forgetPreservesOfLeft](declarations/forgetpreservesofleft.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [forgetPreservesOfRight](declarations/forgetpreservesofright.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [hasPullback_of_left](declarations/haspullback-of-left.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [hasPullback_of_right](declarations/haspullback-of-right.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [pullback_snd_of_left](declarations/pullback-snd-of-left.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [pullback_fst_of_right](declarations/pullback-fst-of-right.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [pullback_to_base](declarations/pullback-to-base.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [forgetToTopPreservesOfLeft](declarations/forgettotoppreservesofleft.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [forgetToTopPreservesOfRight](declarations/forgettotoppreservesofright.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [range_pullback_snd_of_left](declarations/range-pullback-snd-of-left.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [range_pullback_fst_of_right](declarations/range-pullback-fst-of-right.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [range_pullback_to_base_of_left](declarations/range-pullback-to-base-of-left.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [range_pullback_to_base_of_right](declarations/range-pullback-to-base-of-right.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [lift](declarations/lift.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [lift_fac](declarations/lift-fac.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [lift_uniq](declarations/lift-uniq.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [isoOfRangeEq](declarations/isoofrangeeq.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `abbrev` | [_root_.AlgebraicGeometry.Scheme.Hom.opensFunctor](declarations/root-algebraicgeometry-scheme-hom-opensfunctor.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [_root_.AlgebraicGeometry.Scheme.Hom.invApp](declarations/root-algebraicgeometry-scheme-hom-invapp.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [app_eq_inv_app_app_of_comp_eq_aux](declarations/app-eq-inv-app-app-of-comp-eq-aux.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [app_eq_invApp_app_of_comp_eq](declarations/app-eq-invapp-app-of-comp-eq.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [lift_app](declarations/lift-app.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [image_basicOpen](declarations/image-basicopen.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [Hom.opensRange](declarations/hom-opensrange.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [Scheme.restrictFunctor](declarations/scheme-restrictfunctor-source-edition-2.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [Scheme.restrictFunctor_obj_left](declarations/scheme-restrictfunctor-obj-left.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [Scheme.restrictFunctor_obj_hom](declarations/scheme-restrictfunctor-obj-hom.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [Scheme.restrictFunctor_map_left](declarations/scheme-restrictfunctor-map-left.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Scheme.restrictFunctor_map_ofRestrict](declarations/scheme-restrictfunctor-map-ofrestrict.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Scheme.restrictFunctor_map_base](declarations/scheme-restrictfunctor-map-base.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Scheme.restrictFunctor_map_app_aux](declarations/scheme-restrictfunctor-map-app-aux.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Scheme.restrictFunctor_map_app](declarations/scheme-restrictfunctor-map-app.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [Scheme.restrictFunctorΓ](declarations/scheme-restrictfunctor.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `abbrev` | [Scheme.restrictMapIso](declarations/scheme-restrictmapiso.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [Scheme.OpenCover.pullbackCover](declarations/scheme-opencover-pullbackcover.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [Scheme.OpenCover.iUnion_range](declarations/scheme-opencover-iunion-range.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Scheme.OpenCover.iSup_opensRange](declarations/scheme-opencover-isup-opensrange.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Scheme.OpenCover.compactSpace](declarations/scheme-opencover-compactspace.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [Scheme.OpenCover.inter](declarations/scheme-opencover-inter.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [Scheme.openCoverOfSuprEqTop](declarations/scheme-opencoverofsupreqtop.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [pullbackRestrictIsoRestrict](declarations/pullbackrestrictisorestrict.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [pullbackRestrictIsoRestrict_inv_fst](declarations/pullbackrestrictisorestrict-inv-fst.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [pullbackRestrictIsoRestrict_hom_restrict](declarations/pullbackrestrictisorestrict-hom-restrict.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [morphismRestrict](declarations/morphismrestrict-source-edition-2.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [pullbackRestrictIsoRestrict_hom_morphismRestrict](declarations/pullbackrestrictisorestrict-hom-morphismrestrict.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [morphismRestrict_ι](declarations/morphismrestrict.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [isPullback_morphismRestrict](declarations/ispullback-morphismrestrict.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [morphismRestrict_comp](declarations/morphismrestrict-comp.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [morphismRestrict_base_coe](declarations/morphismrestrict-base-coe.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [morphismRestrict_val_base](declarations/morphismrestrict-val-base.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [image_morphismRestrict_preimage](declarations/image-morphismrestrict-preimage.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [morphismRestrict_c_app](declarations/morphismrestrict-c-app.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Γ_map_morphismRestrict](declarations/map-morphismrestrict.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [morphismRestrictOpensRange](declarations/morphismrestrictopensrange.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [morphismRestrictEq](declarations/morphismrestricteq.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [morphismRestrictRestrict](declarations/morphismrestrictrestrict.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [morphismRestrictRestrictBasicOpen](declarations/morphismrestrictrestrictbasicopen.md) | 1110 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [morphismRestrictStalkMap](declarations/morphismrestrictstalkmap.md) | 1133 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [(anonymous)](declarations/instance.md) | 1159 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7eb7a07da2bb21f38c99394eba23eff6991e8d56c5df19372f3f6a564a2db6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
