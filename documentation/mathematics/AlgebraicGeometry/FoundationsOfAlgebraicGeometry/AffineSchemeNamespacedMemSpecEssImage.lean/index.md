# Affine Scheme Namespaced Mem Spec Ess Image

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**71 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7419be8a90ea807aa3d0f0926d47c4493835a7a1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineSchemeNamespacedMemSpecEssImage.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [AffineScheme](declarations/affinescheme.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [IsAffine](declarations/isaffine.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Scheme.isoSpec](declarations/scheme-isospec.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [AffineScheme.mk](declarations/affinescheme-mk.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [AffineScheme.of](declarations/affinescheme-of.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [AffineScheme.ofHom](declarations/affinescheme-ofhom.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_Spec_essImage](declarations/mem-spec-essimage.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [isAffineAffineScheme](declarations/isaffineaffinescheme.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [SpecIsAffine](declarations/specisaffine.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isAffineOfIso](declarations/isaffineofiso.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Spec](declarations/spec.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [Spec_full](declarations/spec-full.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [Spec_faithful](declarations/spec-faithful.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [Spec_essSurj](declarations/spec-esssurj.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [forgetToScheme](declarations/forgettoscheme.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [forgetToScheme_full](declarations/forgettoscheme-full.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [forgetToScheme_faithful](declarations/forgettoscheme-faithful.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Γ](declarations/anonymous.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [equivCommRingCat](declarations/equivcommringcat.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [ΓIsEquiv](declarations/isequiv.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [hasColimits](declarations/hascolimits.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [hasLimits](declarations/haslimits.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Γ_preservesLimits](declarations/preserveslimits.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [forgetToScheme_preservesLimits](declarations/forgettoscheme-preserveslimits.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [IsAffineOpen](declarations/isaffineopen.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Scheme.affineOpens](declarations/scheme-affineopens.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rangeIsAffineOpenOfOpenImmersion](declarations/rangeisaffineopenofopenimmersion.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [topIsAffineOpen](declarations/topisaffineopen.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [Scheme.affineCoverIsAffine](declarations/scheme-affinecoverisaffine.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [Scheme.affineBasisCoverIsAffine](declarations/scheme-affinebasiscoverisaffine.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isBasis_affine_open](declarations/isbasis-affine-open.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [IsAffineOpen.fromSpec](declarations/isaffineopen-fromspec.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [IsAffineOpen.isOpenImmersion_fromSpec](declarations/isaffineopen-isopenimmersion-fromspec.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsAffineOpen.fromSpec_range](declarations/isaffineopen-fromspec-range.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsAffineOpen.fromSpec_image_top](declarations/isaffineopen-fromspec-image-top.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsAffineOpen.isCompact](declarations/isaffineopen-iscompact.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsAffineOpen.imageIsOpenImmersion](declarations/isaffineopen-imageisopenimmersion.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isAffineOpen_iff_of_isOpenImmersion](declarations/isaffineopen-iff-of-isopenimmersion.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [Scheme.quasi_compact_of_affine](declarations/scheme-quasi-compact-of-affine.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsAffineOpen.fromSpec_base_preimage](declarations/isaffineopen-fromspec-base-preimage.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Scheme.Spec_map_presheaf_map_eqToHom](declarations/scheme-spec-map-presheaf-map-eqtohom.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IsAffineOpen.SpecΓIdentity_hom_app_fromSpec](declarations/isaffineopen-spec-identity-hom-app-fromspec.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [IsAffineOpen.fromSpec_app_eq](declarations/isaffineopen-fromspec-app-eq.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsAffineOpen.basicOpenIsAffine](declarations/isaffineopen-basicopenisaffine.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsAffineOpen.mapRestrictBasicOpen](declarations/isaffineopen-maprestrictbasicopen.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Scheme.map_PrimeSpectrum_basicOpen_of_affine](declarations/scheme-map-primespectrum-basicopen-of-affine.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isBasis_basicOpen](declarations/isbasis-basicopen.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsAffineOpen.exists_basicOpen_le](declarations/isaffineopen-exists-basicopen-le.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [algebra_section_section_basicOpen](declarations/algebra-section-section-basicopen.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IsAffineOpen.opens_map_fromSpec_basicOpen](declarations/isaffineopen-opens-map-fromspec-basicopen.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [basicOpenSectionsToAffine](declarations/basicopensectionstoaffine.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [basicOpenSectionsToAffine_isIso](declarations/basicopensectionstoaffine-isiso.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isLocalization_basicOpen](declarations/islocalization-basicopen.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [isLocalization_away_of_isAffine](declarations/islocalization-away-of-isaffine.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isLocalization_of_eq_basicOpen](declarations/islocalization-of-eq-basicopen.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [ΓRestrictAlgebra](declarations/restrictalgebra.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [Γ_restrict_isLocalization](declarations/restrict-islocalization.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [basicOpen_basicOpen_is_basicOpen](declarations/basicopen-basicopen-is-basicopen.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [exists_basicOpen_le_affine_inter](declarations/exists-basicopen-le-affine-inter.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [IsAffineOpen.primeIdealOf](declarations/isaffineopen-primeidealof.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [IsAffineOpen.fromSpec_primeIdealOf](declarations/isaffineopen-fromspec-primeidealof.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsAffineOpen.isLocalization_stalk_aux](declarations/isaffineopen-islocalization-stalk-aux-source-edition-2.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsAffineOpen.isLocalization_stalk_aux'](declarations/isaffineopen-islocalization-stalk-aux.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [IsAffineOpen.isLocalization_stalk'](declarations/isaffineopen-islocalization-stalk.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [IsAffineOpen.isLocalization_stalk](declarations/isaffineopen-islocalization-stalk-source-edition-2.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [Scheme.affineBasicOpen](declarations/scheme-affinebasicopen.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [IsAffineOpen.basicOpen_fromSpec_app](declarations/isaffineopen-basicopen-fromspec-app.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [IsAffineOpen.fromSpec_map_basicOpen](declarations/isaffineopen-fromspec-map-basicopen.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [IsAffineOpen.basicOpen_union_eq_self_iff](declarations/isaffineopen-basicopen-union-eq-self-iff.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [IsAffineOpen.self_le_basicOpen_union_iff](declarations/isaffineopen-self-le-basicopen-union-iff.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [of_affine_open_cover](declarations/of-affine-open-cover.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08efd24d6a0ba66ed6f41bb441e476ed3b1fc90a8997f29215ea8d99a74a2544 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variantc4fd828abf57ebc7d79771077be9f958134b02d09465eab972ea121565a68181.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
