# Hilbert Mesh Shadow Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HilbertMeshShadow/Variant14c1fd22d4a9d93429a7f3a673325286373c65ab31ec3520197ef9292cbcb0c2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4c39fc8e3e7e6adf0bdf877c1083b9155e2887f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/HilbertMeshShadowNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [HilbertObjectDescriptor](declarations/hilbertobjectdescriptor.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [MeshPoint](declarations/meshpoint.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [MeshPointList](declarations/meshpointlist.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [MeshHash](declarations/meshhash.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [MeshCardinality](declarations/meshcardinality.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [FiniteMesh](declarations/finitemesh.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [FormulaRepresentation](declarations/formularepresentation.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [KernelSymbol](declarations/kernelsymbol.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [KernelMatrix](declarations/kernelmatrix.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [KernelMatrixCertificate](declarations/kernelmatrixcertificate.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [SamplingRule](declarations/samplingrule.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [SamplingCertificate](declarations/samplingcertificate.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [CoolingMode](declarations/coolingmode.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [MeshEnergyReport](declarations/meshenergyreport.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [FiniteEntropyReport](declarations/finiteentropyreport.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [RelaxationCertificate](declarations/relaxationcertificate.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [RefinementStep](declarations/refinementstep.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [RefinementTower](declarations/refinementtower.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [RefinementCertificate](declarations/refinementcertificate.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [BinaryMatrixSchema](declarations/binarymatrixschema.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [BinaryShadowMatrix](declarations/binaryshadowmatrix.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [BinaryEncodingCertificate](declarations/binaryencodingcertificate.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [PrismaticFiniteShadowDescriptor](declarations/prismaticfiniteshadowdescriptor.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [CertificateResolutionTable](declarations/certificateresolutiontable.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [HilbertMeshShadowCertificate](declarations/hilbertmeshshadowcertificate.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [FiniteMeshConstructsAnalyticObject](declarations/finitemeshconstructsanalyticobject.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [FiniteMeshProvesSmoothness](declarations/finitemeshprovessmoothness.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [FiniteMeshProvesCompactness](declarations/finitemeshprovescompactness.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FiniteMeshProvesTopology](declarations/finitemeshprovestopology.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [KernelMatrixProvesHeatKernelTheorem](declarations/kernelmatrixprovesheatkerneltheorem.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [KernelMatrixProvesLaplacianConvergence](declarations/kernelmatrixproveslaplacianconvergence.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [KernelMatrixProvesGeometry](declarations/kernelmatrixprovesgeometry.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [RefinementTowerConstructsAnalyticObject](declarations/refinementtowerconstructsanalyticobject.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [BinaryMatrixOwnsAnalyticGeometry](declarations/binarymatrixownsanalyticgeometry.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [BinaryMatrixProvesAnalyticTheorem](declarations/binarymatrixprovesanalytictheorem.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [PrismaticShadowConstructsPrismaticCohomology](declarations/prismaticshadowconstructsprismaticcohomology.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [PrismaticShadowOwnsComparisonIsomorphism](declarations/prismaticshadowownscomparisonisomorphism.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [PrismaticShadowProvesComparisonTheorem](declarations/prismaticshadowprovescomparisontheorem.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [finite_mesh_not_analytic_object](declarations/finite-mesh-not-analytic-object.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [finite_mesh_not_smoothness_authority](declarations/finite-mesh-not-smoothness-authority.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [finite_mesh_not_compactness_authority](declarations/finite-mesh-not-compactness-authority.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [finite_mesh_not_topology_authority](declarations/finite-mesh-not-topology-authority.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [kernel_matrix_not_heat_kernel_authority](declarations/kernel-matrix-not-heat-kernel-authority.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [kernel_matrix_not_laplacian_convergence_authority](declarations/kernel-matrix-not-laplacian-convergence-authority.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [kernel_matrix_not_geometry_authority](declarations/kernel-matrix-not-geometry-authority.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [refinement_tower_not_analytic_object](declarations/refinement-tower-not-analytic-object.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [binary_matrix_not_analytic_geometry](declarations/binary-matrix-not-analytic-geometry.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [binary_matrix_not_analytic_theorem](declarations/binary-matrix-not-analytic-theorem.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [prismatic_shadow_not_prismatic_cohomology](declarations/prismatic-shadow-not-prismatic-cohomology.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [prismatic_shadow_not_comparison_isomorphism](declarations/prismatic-shadow-not-comparison-isomorphism.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [prismatic_shadow_not_comparison_theorem](declarations/prismatic-shadow-not-comparison-theorem.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [certified_finite_mesh_shadow](declarations/certified-finite-mesh-shadow.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mesh_shadow_boundary_summary](declarations/mesh-shadow-boundary-summary.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81a1fa1d9a9b98ecd5c618191ddf4a0b9557cf54431c2583f09b345f3e1e8302 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HilbertMeshShadow/Variant14c1fd22d4a9d93429a7f3a673325286373c65ab31ec3520197ef9292cbcb0c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
