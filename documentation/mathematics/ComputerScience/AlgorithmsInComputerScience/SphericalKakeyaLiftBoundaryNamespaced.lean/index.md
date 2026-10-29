# Spherical Kakeya Lift Boundary Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15712ec73c7da2bf44a4f95c367dbd67a0c86ff6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SphericalLiftResidue](declarations/sphericalliftresidue.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [SphericalLiftResidue.token](declarations/sphericalliftresidue-token.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [VerticalSign](declarations/verticalsign.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [VerticalSign.toInt](declarations/verticalsign-toint.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [verticalSignOfNumerator](declarations/verticalsignofnumerator.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [intAbsNat](declarations/intabsnat.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [LongitudeSource](declarations/longitudesource.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [SphericalLongitude](declarations/sphericallongitude.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [SignedTorsionHeight](declarations/signedtorsionheight-source-edition-2.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [FiniteEmlSphericalSite](declarations/finiteemlsphericalsite.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [branchInUnitInterval](declarations/branchinunitinterval.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [torsionHeightDenominator](declarations/torsionheightdenominator.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [torsionHeightNumerator](declarations/torsionheightnumerator.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [signedTorsionHeight](declarations/signedtorsionheight.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [siteAdmissibleForSphericalLift](declarations/siteadmissibleforsphericallift.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [longitudeOfSite](declarations/longitudeofsite.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [SymbolicSphericalPoint](declarations/symbolicsphericalpoint-source-edition-2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [symbolicSphericalPoint](declarations/symbolicsphericalpoint.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [SphericalLiftedSite](declarations/sphericalliftedsite.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [siteLiftResidues](declarations/siteliftresidues.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [sphericalLiftSite](declarations/sphericalliftsite.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [liftAllFiniteSites](declarations/liftallfinitesites.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [allSitesLiftedBeforeMedoid](declarations/allsitesliftedbeforemedoid.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [verticalSignDistance](declarations/verticalsigndistance.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [natAbsDiff](declarations/natabsdiff.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [finiteSphericalDistanceSquared](declarations/finitesphericaldistancesquared.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [sphericalMedoidObjective](declarations/sphericalmedoidobjective.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [sphericalMedoidBetter](declarations/sphericalmedoidbetter.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [chooseSphericalMedoid](declarations/choosesphericalmedoid.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [sphericalMedoidOfLiftedSites](declarations/sphericalmedoidofliftedsites.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [SphericalMedoidSelection](declarations/sphericalmedoidselection-source-edition-2.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [sphericalMedoidSelection](declarations/sphericalmedoidselection.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [heightExceedsThreshold](declarations/heightexceedsthreshold.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [residueDecreases](declarations/residuedecreases.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [boundaryBitFromLiftedSite](declarations/boundarybitfromliftedsite.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [TangentScatterDirection](declarations/tangentscatterdirection.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [tangentScatterDirection](declarations/tangentscatterdirection-source-edition-2.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [KakeyaTubeGrain3D](declarations/kakeyatubegrain3d.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [kakeyaTubeGrainAtLiftedSite](declarations/kakeyatubegrainatliftedsite.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [weightedVerticalSign](declarations/weightedverticalsign.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [signedFrequencyCollapse](declarations/signedfrequencycollapse.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [totalWeight](declarations/totalweight.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [NormalizedFrequency](declarations/normalizedfrequency-source-edition-2.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [normalizedFrequency](declarations/normalizedfrequency.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [medoidFrequencySign](declarations/medoidfrequencysign.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [FiniteSphericalSpectralOperator](declarations/finitesphericalspectraloperator-source-edition-2.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [finiteSphericalSpectralOperator](declarations/finitesphericalspectraloperator.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [SphericalKakeyaLiftSurface](declarations/sphericalkakeyaliftsurface.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [buildSphericalKakeyaLiftSurface](declarations/buildsphericalkakeyaliftsurface.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [positiveSphericalSite](declarations/positivesphericalsite.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [negativeSphericalSite](declarations/negativesphericalsite.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [balancedSphericalSite](declarations/balancedsphericalsite.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [sampleSphericalSites](declarations/samplesphericalsites.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [sampleSphericalLiftSurface](declarations/samplesphericalliftsurface.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [signed_torsion_height_detects_positive_negative_balanced](declarations/signed-torsion-height-detects-positive-negative-balanced.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [complex_phase_fallback_to_branch_coordinate](declarations/complex-phase-fallback-to-branch-coordinate.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [every_site_lifted_before_spherical_medoid](declarations/every-site-lifted-before-spherical-medoid.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [spherical_medoid_recomputed_on_lifted_cloud](declarations/spherical-medoid-recomputed-on-lifted-cloud.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [boundary_bit_uses_height_and_residue_decrease](declarations/boundary-bit-uses-height-and-residue-decrease.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [kakeya_grain_is_tube_at_lifted_site](declarations/kakeya-grain-is-tube-at-lifted-site.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [frequency_collapse_records_positive_mode](declarations/frequency-collapse-records-positive-mode.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [finite_spectral_language_stays_boundary_level](declarations/finite-spectral-language-stays-boundary-level.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=709031bf3ae7b515bed725d596b48eb01b6bed5ac18fa2ebbb185bfab80e6ae2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
