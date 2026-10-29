# Spherical Kakeya Lift Boundary

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variant069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b92293af7a14a1f69e09f58e2135424ba91d48e4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundary.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SphericalLiftResidue](declarations/sphericalliftresidue.md) | 11 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [SphericalLiftResidue.token](declarations/sphericalliftresidue-token.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [VerticalSign](declarations/verticalsign.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [VerticalSign.toInt](declarations/verticalsign-toint.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [verticalSignOfNumerator](declarations/verticalsignofnumerator.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [intAbsNat](declarations/intabsnat.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [LongitudeSource](declarations/longitudesource.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [SphericalLongitude](declarations/sphericallongitude.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [SignedTorsionHeight](declarations/signedtorsionheight.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [FiniteEmlSphericalSite](declarations/finiteemlsphericalsite.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [branchInUnitInterval](declarations/branchinunitinterval.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [torsionHeightDenominator](declarations/torsionheightdenominator.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [torsionHeightNumerator](declarations/torsionheightnumerator.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [signedTorsionHeight](declarations/signedtorsionheight-source-edition-2.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [siteAdmissibleForSphericalLift](declarations/siteadmissibleforsphericallift.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [longitudeOfSite](declarations/longitudeofsite.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [SymbolicSphericalPoint](declarations/symbolicsphericalpoint.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [symbolicSphericalPoint](declarations/symbolicsphericalpoint-source-edition-2.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [SphericalLiftedSite](declarations/sphericalliftedsite.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [siteLiftResidues](declarations/siteliftresidues.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [sphericalLiftSite](declarations/sphericalliftsite.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [liftAllFiniteSites](declarations/liftallfinitesites.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [allSitesLiftedBeforeMedoid](declarations/allsitesliftedbeforemedoid.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [verticalSignDistance](declarations/verticalsigndistance.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [natAbsDiff](declarations/natabsdiff.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [finiteSphericalDistanceSquared](declarations/finitesphericaldistancesquared.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [sphericalMedoidObjective](declarations/sphericalmedoidobjective.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [sphericalMedoidBetter](declarations/sphericalmedoidbetter.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [chooseSphericalMedoid](declarations/choosesphericalmedoid.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [sphericalMedoidOfLiftedSites](declarations/sphericalmedoidofliftedsites.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [SphericalMedoidSelection](declarations/sphericalmedoidselection.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [sphericalMedoidSelection](declarations/sphericalmedoidselection-source-edition-2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [heightExceedsThreshold](declarations/heightexceedsthreshold.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [residueDecreases](declarations/residuedecreases.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [boundaryBitFromLiftedSite](declarations/boundarybitfromliftedsite.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [TangentScatterDirection](declarations/tangentscatterdirection-source-edition-2.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [tangentScatterDirection](declarations/tangentscatterdirection.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [KakeyaTubeGrain3D](declarations/kakeyatubegrain3d.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [kakeyaTubeGrainAtLiftedSite](declarations/kakeyatubegrainatliftedsite.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [weightedVerticalSign](declarations/weightedverticalsign.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [signedFrequencyCollapse](declarations/signedfrequencycollapse.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [totalWeight](declarations/totalweight.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [NormalizedFrequency](declarations/normalizedfrequency.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [normalizedFrequency](declarations/normalizedfrequency-source-edition-2.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [medoidFrequencySign](declarations/medoidfrequencysign.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [FiniteSphericalSpectralOperator](declarations/finitesphericalspectraloperator-source-edition-2.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [finiteSphericalSpectralOperator](declarations/finitesphericalspectraloperator.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [SphericalKakeyaLiftSurface](declarations/sphericalkakeyaliftsurface.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [buildSphericalKakeyaLiftSurface](declarations/buildsphericalkakeyaliftsurface.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [positiveSphericalSite](declarations/positivesphericalsite.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [negativeSphericalSite](declarations/negativesphericalsite.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [balancedSphericalSite](declarations/balancedsphericalsite.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [sampleSphericalSites](declarations/samplesphericalsites.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [sampleSphericalLiftSurface](declarations/samplesphericalliftsurface.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [signed_torsion_height_detects_positive_negative_balanced](declarations/signed-torsion-height-detects-positive-negative-balanced.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [complex_phase_fallback_to_branch_coordinate](declarations/complex-phase-fallback-to-branch-coordinate.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [every_site_lifted_before_spherical_medoid](declarations/every-site-lifted-before-spherical-medoid.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [spherical_medoid_recomputed_on_lifted_cloud](declarations/spherical-medoid-recomputed-on-lifted-cloud.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [boundary_bit_uses_height_and_residue_decrease](declarations/boundary-bit-uses-height-and-residue-decrease.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [kakeya_grain_is_tube_at_lifted_site](declarations/kakeya-grain-is-tube-at-lifted-site.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [frequency_collapse_records_positive_mode](declarations/frequency-collapse-records-positive-mode.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [finite_spectral_language_stays_boundary_level](declarations/finite-spectral-language-stays-boundary-level.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=430d276c66d84dd04e0aa294d0103e0bc92efe3a9a4438e321c0c7644a73c952 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variant069b0ce74f6e8a4a6ad127c558fe5bba5e4af23a0304507ca80076c7a4adbf39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
