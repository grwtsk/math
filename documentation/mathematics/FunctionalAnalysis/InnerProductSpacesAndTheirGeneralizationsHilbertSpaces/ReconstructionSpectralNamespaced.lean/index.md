# Reconstruction Spectral Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**73 observed declarations and anonymous commands**, 50 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fa68aec1ca6b87549c76394c1db963d802ed455`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ReconstructionSpectralNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PostSurgeryPointCloud](declarations/postsurgerypointcloud.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [point_type_realizes_surgery](declarations/point-type-realizes-surgery.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ambientDistance](declarations/ambientdistance.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ambientDistanceInUnits](declarations/ambientdistanceinunits.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [manifoldImage](declarations/manifoldimage.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [sampleSupport](declarations/samplesupport.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [PointCloudGeometricSemantics](declarations/pointcloudgeometricsemantics.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [PointCloudReconstructionHypotheses](declarations/pointcloudreconstructionhypotheses.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Admissible](declarations/admissible-source-edition-2.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reconstruction_has_reach](declarations/reconstruction-has-reach.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reconstruction_core_separated](declarations/reconstruction-core-separated.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [reconstruction_framing_separated](declarations/reconstruction-framing-separated.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [reconstruction_exterior_separated](declarations/reconstruction-exterior-separated.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [reconstruction_has_collar_width](declarations/reconstruction-has-collar-width.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [carrier_to_sample_error_le](declarations/carrier-to-sample-error-le.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sample_to_carrier_error_le](declarations/sample-to-carrier-error-le.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reconstruction_core_identifiable](declarations/reconstruction-core-identifiable.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [reconstruction_framing_identifiable](declarations/reconstruction-framing-identifiable.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [reconstruction_exterior_identifiable](declarations/reconstruction-exterior-identifiable.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [reconstruction_collar_identifiable](declarations/reconstruction-collar-identifiable.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [PointCloudRecoverySemantics](declarations/pointcloudrecoverysemantics.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [PointCloudRecovery](declarations/pointcloudrecovery.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [PointCloudCorrespondenceBridge](declarations/pointcloudcorrespondencebridge.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [all_target_correspondences_exact](declarations/all-target-correspondences-exact.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [PointCloudReconstructionCapability](declarations/pointcloudreconstructioncapability.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [manifold_recovered](declarations/manifold-recovered.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [core_recovered](declarations/core-recovered.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [core_recovered_with_target_bridge](declarations/core-recovered-with-target-bridge.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [framing_recovered](declarations/framing-recovered.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [framing_recovered_with_target_bridge](declarations/framing-recovered-with-target-bridge.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [exterior_recovered](declarations/exterior-recovered.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [exterior_recovered_with_target_bridge](declarations/exterior-recovered-with-target-bridge.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [collar_recovered](declarations/collar-recovered.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [collar_recovered_with_target_bridge](declarations/collar-recovered-with-target-bridge.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [all_recovered](declarations/all-recovered.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [all_target_correspondences_exact](declarations/all-target-correspondences-exact-source-edition-2.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [GraphLaplacianNormalization](declarations/graphlaplaciannormalization.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `inductive` | [LaplaceBoundaryCondition](declarations/laplaceboundarycondition.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `inductive` | [SpectralSamplingRegime](declarations/spectralsamplingregime.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `inductive` | [SpectralOperatorSign](declarations/spectraloperatorsign.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [FiniteGraphLaplacian](declarations/finitegraphlaplacian.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [eigenvector_nonzero](declarations/eigenvector-nonzero.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [inner_product_formula](declarations/inner-product-formula.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [operator_formula](declarations/operator-formula.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [weighted_self_adjoint](declarations/weighted-self-adjoint.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [LaplaceBeltramiSpectralModel](declarations/laplacebeltramispectralmodel.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [analytic_semantics](declarations/analytic-semantics.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [compact_resolvent_semantics](declarations/compact-resolvent-semantics.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [eigenfunction_mem_domain](declarations/eigenfunction-mem-domain.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [eigenfunction_equation](declarations/eigenfunction-equation.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [eigenfunction_nonzero](declarations/eigenfunction-nonzero.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [SpectralComparisonData](declarations/spectralcomparisondata.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [restrict_interpolate_apply](declarations/restrict-interpolate-apply.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [interpolation_norm_error_bound](declarations/interpolation-norm-error-bound.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [interpolation_actual_norm_error_bound](declarations/interpolation-actual-norm-error-bound.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [eigenspace_distance_eq_operatorNorm](declarations/eigenspace-distance-eq-operatornorm.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [projector_distance_eq_operatorNorm](declarations/projector-distance-eq-operatornorm.md) | 1083 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [graph_projector_is_actual_orthogonal_cluster_projector](declarations/graph-projector-is-actual-orthogonal-cluster-projector.md) | 1105 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [continuum_projector_is_actual_orthogonal_cluster_projector](declarations/continuum-projector-is-actual-orthogonal-cluster-projector.md) | 1134 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `structure` | [SpectralComparisonHypotheses](declarations/spectralcomparisonhypotheses.md) | 1167 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [Admissible](declarations/admissible.md) | 1197 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [selected_normalization](declarations/selected-normalization.md) | 1214 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [selected_boundary_condition](declarations/selected-boundary-condition.md) | 1227 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [selected_operator_sign](declarations/selected-operator-sign.md) | 1240 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [selected_density_bounds](declarations/selected-density-bounds.md) | 1253 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `structure` | [FiniteModeSpectralComparisonCertificate](declarations/finitemodespectralcomparisoncertificate.md) | 1273 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [FiniteModeSpectralComparisonCapability](declarations/finitemodespectralcomparisoncapability.md) | 1327 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [eigenvalue_error_le](declarations/eigenvalue-error-le.md) | 1365 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [eigenspace_error_le](declarations/eigenspace-error-le.md) | 1376 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [projector_error_le](declarations/projector-error-le.md) | 1388 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [all_spectral_errors_bounded](declarations/all-spectral-errors-bounded.md) | 1400 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [selected_clusters_isolated](declarations/selected-clusters-isolated.md) | 1421 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [selected_descriptors_represent_operators](declarations/selected-descriptors-represent-operators.md) | 1443 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5989b5c3140240e069a5834d04065c612a15794bf803d17ee03d65a570915464 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/ReconstructionSpectral/Variant4fbcf40e9010bba137a79df3a129b18e53ac1cb83413c8fd370b27931eb8e93c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
