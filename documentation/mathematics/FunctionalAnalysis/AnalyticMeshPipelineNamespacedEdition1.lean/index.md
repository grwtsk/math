# Analytic Mesh Pipeline Namespaced Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant617508b9a5fdec366bda86c6bb5a7b3618bd88983883c4034f4d3f390080193b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `147267af0f0dee52ae8958cb566c7ff539048945`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticSourceNode](declarations/analyticsourcenode.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [AnalyticSourceTree](declarations/analyticsourcetree.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [MeshFaceKind](declarations/meshfacekind.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [TheoremFaceSource](declarations/theoremfacesource.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [BinaryMeshSchema](declarations/binarymeshschema.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [BinaryMeshMatrix](declarations/binarymeshmatrix.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [MeshFace](declarations/meshface.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [AnalyticMesh](declarations/analyticmesh.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [DomNodeDescriptor](declarations/domnodedescriptor.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ProceduralDomPresentation](declarations/proceduraldompresentation.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [ReducerOperatorKind](declarations/reduceroperatorkind.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ReducerOperator](declarations/reduceroperator.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [ReducerWitness](declarations/reducerwitness.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [ReducerStep](declarations/reducerstep.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [ReducerTrace](declarations/reducertrace.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [CertifiedAnalyticMeshPipeline](declarations/certifiedanalyticmeshpipeline.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [MeshFaceProvesAnalyticTheorem](declarations/meshfaceprovesanalytictheorem.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [BinaryMatrixOwnsAnalyticAuthority](declarations/binarymatrixownsanalyticauthority.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ReducerCreatesTheoremAuthority](declarations/reducercreatestheoremauthority.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [ProceduralDomProvesMathematics](declarations/proceduraldomprovesmathematics.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [EnergyReductionProvesAnalyticTruth](declarations/energyreductionprovesanalytictruth.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [MeshFaceConstructsHilbertSpaceObject](declarations/meshfaceconstructshilbertspaceobject.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [PrismaticFaceConstructsPrismaticCohomology](declarations/prismaticfaceconstructsprismaticcohomology.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [TheoremNameHashOrLabelIsProof](declarations/theoremnamehashorlabelisproof.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mesh_face_not_analytic_theorem](declarations/mesh-face-not-analytic-theorem.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [binary_matrix_not_analytic_authority](declarations/binary-matrix-not-analytic-authority.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [reducer_not_theorem_authority](declarations/reducer-not-theorem-authority.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [procedural_dom_not_mathematics_proof](declarations/procedural-dom-not-mathematics-proof.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [energy_reduction_not_analytic_truth](declarations/energy-reduction-not-analytic-truth.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mesh_face_not_hilbert_object](declarations/mesh-face-not-hilbert-object.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [prismatic_face_not_prismatic_cohomology](declarations/prismatic-face-not-prismatic-cohomology.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [theorem_name_hash_or_label_not_proof](declarations/theorem-name-hash-or-label-not-proof.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [reducer_step_witness_sound](declarations/reducer-step-witness-sound.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [certified_reducible_analytic_mesh_pipeline](declarations/certified-reducible-analytic-mesh-pipeline.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [analytic_mesh_pipeline_boundary_summary](declarations/analytic-mesh-pipeline-boundary-summary.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae2fbbcc31ecd665c5b106cb52be2dbab7ec896a518a45417567a2f80cd67bb3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant617508b9a5fdec366bda86c6bb5a7b3618bd88983883c4034f4d3f390080193b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
