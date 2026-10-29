# Ring Hom Properties Is Stable Under Base Change

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0585bd799331b3ff8dd4654fd068c8780ac86bc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RingHomPropertiesIsStableUnderBaseChange.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsStableUnderBaseChange.pullback_fst_appTop](declarations/isstableunderbasechange-pullback-fst-apptop.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sourceAffineLocally](declarations/sourceaffinelocally.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [affineLocally](declarations/affinelocally.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [sourceAffineLocally_respectsIso](declarations/sourceaffinelocally-respectsiso.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [affineLocally_respectsIso](declarations/affinelocally-respectsiso.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sourceAffineLocally_morphismRestrict](declarations/sourceaffinelocally-morphismrestrict.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [affineLocally_iff_affineOpens_le](declarations/affinelocally-iff-affineopens-le.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sourceAffineLocally_isLocal](declarations/sourceaffinelocally-islocal.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [affineLocally_le](declarations/affinelocally-le.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [exists_basicOpen_le_appLE_of_appLE_of_isAffine](declarations/exists-basicopen-le-apple-of-apple-of-isaffine.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [exists_affineOpens_le_appLE_of_appLE](declarations/exists-affineopens-le-apple-of-apple.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `class` | [HasRingHomProperty](declarations/hasringhomproperty.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [copy](declarations/copy.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [eq_affineLocally](declarations/eq-affinelocally.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [HasAffineProperty](declarations/hasaffineproperty.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [appLE](declarations/apple.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [appTop](declarations/apptop.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [comp_of_isOpenImmersion](declarations/comp-of-isopenimmersion.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [iff_appLE](declarations/iff-apple.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [of_source_openCover](declarations/of-source-opencover.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [iff_of_source_openCover](declarations/iff-of-source-opencover.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [iff_of_isAffine](declarations/iff-of-isaffine.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Spec_iff](declarations/spec-iff.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [of_iSup_eq_top](declarations/of-isup-eq-top.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [iff_of_iSup_eq_top](declarations/iff-of-isup-eq-top.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [containsIdentities](declarations/containsidentities.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [isLocal_ringHomProperty_of_isLocalAtSource_of_isLocalAtTarget](declarations/islocal-ringhomproperty-of-islocalatsource-of-islocalattarget.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [of_isLocalAtSource_of_isLocalAtTarget](declarations/of-islocalatsource-of-islocalattarget.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [stalkwise](declarations/stalkwise.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [stableUnderComposition](declarations/stableundercomposition.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [of_comp](declarations/of-comp.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [isMultiplicative](declarations/ismultiplicative.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [of_isOpenImmersion](declarations/of-isopenimmersion.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [isStableUnderBaseChange](declarations/isstableunderbasechange.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [respects_isOpenImmersion_aux](declarations/respects-isopenimmersion-aux.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [respects_isOpenImmersion](declarations/respects-isopenimmersion.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [iff_exists_appLE_locally](declarations/iff-exists-apple-locally.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [iff_exists_appLE](declarations/iff-exists-apple.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [locally_of_iff](declarations/locally-of-iff.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [of_stalkMap](declarations/of-stalkmap.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [stalkMap](declarations/stalkmap.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1cc2dd525f5b8aa4bad22ef18ffc4464fbb18f8d931193f7f87e29385807373 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantb5fbeae3593f697d3d82ab6cd614704d4ffdd8f41571269df3196dcea078eaf6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
