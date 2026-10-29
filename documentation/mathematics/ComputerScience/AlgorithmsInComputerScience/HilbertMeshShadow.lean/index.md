# Hilbert Mesh Shadow

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HilbertMeshShadow/Variantc33b97dac7a49bd3486e41aaf52d3e7dd891d0fd9253f38fe93462371eadafa9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2425fe8dcb52ab2b0d482846825953fbd9f6f98`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/HilbertMeshShadow.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [HilbertObjectDescriptor](declarations/hilbertobjectdescriptor.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [MeshPoint](declarations/meshpoint.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [MeshPointList](declarations/meshpointlist.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [MeshHash](declarations/meshhash.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [MeshCardinality](declarations/meshcardinality.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [FiniteMesh](declarations/finitemesh.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [FormulaRepresentation](declarations/formularepresentation.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [KernelSymbol](declarations/kernelsymbol.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [KernelMatrix](declarations/kernelmatrix.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [KernelMatrixCertificate](declarations/kernelmatrixcertificate.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [SamplingRule](declarations/samplingrule.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [SamplingCertificate](declarations/samplingcertificate.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [CoolingMode](declarations/coolingmode.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [MeshEnergyReport](declarations/meshenergyreport.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [FiniteEntropyReport](declarations/finiteentropyreport.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [RelaxationCertificate](declarations/relaxationcertificate.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [RefinementStep](declarations/refinementstep.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [RefinementTower](declarations/refinementtower.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [RefinementCertificate](declarations/refinementcertificate.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [BinaryMatrixSchema](declarations/binarymatrixschema.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [BinaryShadowMatrix](declarations/binaryshadowmatrix.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [BinaryEncodingCertificate](declarations/binaryencodingcertificate.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [PrismaticFiniteShadowDescriptor](declarations/prismaticfiniteshadowdescriptor.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [CertificateResolutionTable](declarations/certificateresolutiontable.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [HilbertMeshShadowCertificate](declarations/hilbertmeshshadowcertificate.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [FiniteMeshConstructsAnalyticObject](declarations/finitemeshconstructsanalyticobject.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [FiniteMeshProvesSmoothness](declarations/finitemeshprovessmoothness.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [FiniteMeshProvesCompactness](declarations/finitemeshprovescompactness.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FiniteMeshProvesTopology](declarations/finitemeshprovestopology.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [KernelMatrixProvesHeatKernelTheorem](declarations/kernelmatrixprovesheatkerneltheorem.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [KernelMatrixProvesLaplacianConvergence](declarations/kernelmatrixproveslaplacianconvergence.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [KernelMatrixProvesGeometry](declarations/kernelmatrixprovesgeometry.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [RefinementTowerConstructsAnalyticObject](declarations/refinementtowerconstructsanalyticobject.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [BinaryMatrixOwnsAnalyticGeometry](declarations/binarymatrixownsanalyticgeometry.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [BinaryMatrixProvesAnalyticTheorem](declarations/binarymatrixprovesanalytictheorem.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [PrismaticShadowConstructsPrismaticCohomology](declarations/prismaticshadowconstructsprismaticcohomology.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [PrismaticShadowOwnsComparisonIsomorphism](declarations/prismaticshadowownscomparisonisomorphism.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [PrismaticShadowProvesComparisonTheorem](declarations/prismaticshadowprovescomparisontheorem.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [finite_mesh_not_analytic_object](declarations/finite-mesh-not-analytic-object.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [finite_mesh_not_smoothness_authority](declarations/finite-mesh-not-smoothness-authority.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [finite_mesh_not_compactness_authority](declarations/finite-mesh-not-compactness-authority.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [finite_mesh_not_topology_authority](declarations/finite-mesh-not-topology-authority.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [kernel_matrix_not_heat_kernel_authority](declarations/kernel-matrix-not-heat-kernel-authority.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [kernel_matrix_not_laplacian_convergence_authority](declarations/kernel-matrix-not-laplacian-convergence-authority.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [kernel_matrix_not_geometry_authority](declarations/kernel-matrix-not-geometry-authority.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [refinement_tower_not_analytic_object](declarations/refinement-tower-not-analytic-object.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [binary_matrix_not_analytic_geometry](declarations/binary-matrix-not-analytic-geometry.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [binary_matrix_not_analytic_theorem](declarations/binary-matrix-not-analytic-theorem.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [prismatic_shadow_not_prismatic_cohomology](declarations/prismatic-shadow-not-prismatic-cohomology.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [prismatic_shadow_not_comparison_isomorphism](declarations/prismatic-shadow-not-comparison-isomorphism.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [prismatic_shadow_not_comparison_theorem](declarations/prismatic-shadow-not-comparison-theorem.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [certified_finite_mesh_shadow](declarations/certified-finite-mesh-shadow.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mesh_shadow_boundary_summary](declarations/mesh-shadow-boundary-summary.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ff5507825afc363723b59694d4ee6eb3fedc0a7c39160f021cb8405f450ac75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HilbertMeshShadow/Variantc33b97dac7a49bd3486e41aaf52d3e7dd891d0fd9253f38fe93462371eadafa9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
