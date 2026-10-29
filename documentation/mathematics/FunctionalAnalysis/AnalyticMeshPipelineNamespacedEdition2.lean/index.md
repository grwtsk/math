# Analytic Mesh Pipeline Namespaced Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant693d7ac39274969bf269b9aa88223ded9e478be327ab42f17a4ff22683d2acbb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e93bd274c60de74a957e4208af12e76cd4be97eb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticSourceNode](declarations/analyticsourcenode.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [AnalyticSourceTree](declarations/analyticsourcetree.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [MeshFaceKind](declarations/meshfacekind.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [TheoremFaceSource](declarations/theoremfacesource.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [BinaryMeshSchema](declarations/binarymeshschema.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [BinaryMeshMatrix](declarations/binarymeshmatrix.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [MeshFace](declarations/meshface.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [AnalyticMesh](declarations/analyticmesh.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [DomNodeDescriptor](declarations/domnodedescriptor.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ProceduralDomPresentation](declarations/proceduraldompresentation.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [ReducerOperatorKind](declarations/reduceroperatorkind.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ReducerOperator](declarations/reduceroperator.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [ReducerWitness](declarations/reducerwitness.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [ReducerStep](declarations/reducerstep.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [ReducerTrace](declarations/reducertrace.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [CertifiedAnalyticMeshPipeline](declarations/certifiedanalyticmeshpipeline.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [MeshFaceProvesAnalyticTheorem](declarations/meshfaceprovesanalytictheorem.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [BinaryMatrixOwnsAnalyticAuthority](declarations/binarymatrixownsanalyticauthority.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ReducerCreatesTheoremAuthority](declarations/reducercreatestheoremauthority.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [ProceduralDomProvesMathematics](declarations/proceduraldomprovesmathematics.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [EnergyReductionProvesAnalyticTruth](declarations/energyreductionprovesanalytictruth.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [MeshFaceConstructsHilbertSpaceObject](declarations/meshfaceconstructshilbertspaceobject.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [PrismaticFaceConstructsPrismaticCohomology](declarations/prismaticfaceconstructsprismaticcohomology.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [TheoremNameHashOrLabelIsProof](declarations/theoremnamehashorlabelisproof.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mesh_face_not_analytic_theorem](declarations/mesh-face-not-analytic-theorem.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [binary_matrix_not_analytic_authority](declarations/binary-matrix-not-analytic-authority.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [reducer_not_theorem_authority](declarations/reducer-not-theorem-authority.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [procedural_dom_not_mathematics_proof](declarations/procedural-dom-not-mathematics-proof.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [energy_reduction_not_analytic_truth](declarations/energy-reduction-not-analytic-truth.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mesh_face_not_hilbert_object](declarations/mesh-face-not-hilbert-object.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [prismatic_face_not_prismatic_cohomology](declarations/prismatic-face-not-prismatic-cohomology.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [theorem_name_hash_or_label_not_proof](declarations/theorem-name-hash-or-label-not-proof.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [reducer_step_witness_sound](declarations/reducer-step-witness-sound.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [certified_reducible_analytic_mesh_pipeline](declarations/certified-reducible-analytic-mesh-pipeline.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [analytic_mesh_pipeline_boundary_summary](declarations/analytic-mesh-pipeline-boundary-summary.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be0d4fd5b3819d08b8013c2053305f438b2087d556b8300d305aed25419cce40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant693d7ac39274969bf269b9aa88223ded9e478be327ab42f17a4ff22683d2acbb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
