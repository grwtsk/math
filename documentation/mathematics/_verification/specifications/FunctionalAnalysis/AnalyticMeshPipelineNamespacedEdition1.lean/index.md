# Verification target: Analytic Mesh Pipeline Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "147267af0f0dee52ae8958cb566c7ff539048945",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant617508b9a5fdec366bda86c6bb5a7b3618bd88983883c4034f4d3f390080193b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `147267af0f0dee52ae8958cb566c7ff539048945`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant617508b9a5fdec366bda86c6bb5a7b3618bd88983883c4034f4d3f390080193b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant617508b9a5fdec366bda86c6bb5a7b3618bd88983883c4034f4d3f390080193b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.HilbertMeshShadow` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.TheoremResolution` — import line 7; external provider; requires a separately pinned dependency.
- `AnalyticNumber.BoundaryCalculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticSourceNode](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/analyticsourcenode.md) | 26 | `declaration-track:40a6f2b1b5f18bf73d5738571db434c6ab136aa226a5b5decac1a911ffa5355f` |
| 2 | `structure` | [AnalyticSourceTree](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/analyticsourcetree.md) | 34 | `declaration-track:85bf629cb4d5262dedc90f854e644978fdd1e9b7b99a0ec1e23f4267f9d9b134` |
| 3 | `inductive` | [MeshFaceKind](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/meshfacekind.md) | 40 | `declaration-track:c8226035555654412bb44c0d83270ee1ccd899e6e9bbb594d2d36ff50cd34b5f` |
| 4 | `structure` | [TheoremFaceSource](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/theoremfacesource.md) | 57 | `declaration-track:68612f33df323ff15158be153f3051fc5eaf1cfe59a24c800b2ceeab142663d6` |
| 5 | `structure` | [BinaryMeshSchema](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/binarymeshschema.md) | 67 | `declaration-track:d10d4854fb0dd4e8be4d2b2742d6af89f224563031d36e31969e8c26c7da1814` |
| 6 | `structure` | [BinaryMeshMatrix](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/binarymeshmatrix.md) | 74 | `declaration-track:d00850c1f995648efabe439dfff95d9bab956753ca3aed516fef8bb58f2da147` |
| 7 | `structure` | [MeshFace](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/meshface.md) | 81 | `declaration-track:d4cae4f84a056de6d49a0370f00750a4ce77f9022f3d731c32639a39938b75e8` |
| 8 | `structure` | [AnalyticMesh](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/analyticmesh.md) | 93 | `declaration-track:da79cafb0ab439c5629b1c1032bb991a4a10070be4cae12d4aef08e87c2bcac6` |
| 9 | `structure` | [DomNodeDescriptor](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/domnodedescriptor.md) | 100 | `declaration-track:c51e5d25836c404da04d858988eadfe0bfefb98a5c43b2a1e9c9bf46154c0894` |
| 10 | `structure` | [ProceduralDomPresentation](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/proceduraldompresentation.md) | 109 | `declaration-track:ce32b156053a09d7616543e2ba032fbc4f16b5de186bf87359e7e896093d7600` |
| 11 | `inductive` | [ReducerOperatorKind](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/reduceroperatorkind.md) | 115 | `declaration-track:8479066e76b830925737f6f2a1f268139685667758f0b5a59446fdd930fbdc75` |
| 12 | `structure` | [ReducerOperator](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/reduceroperator.md) | 129 | `declaration-track:10303a999c01af3a339614685bb4d7a2816a7ed860061b9a86d260f5346ccddc` |
| 13 | `structure` | [ReducerWitness](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/reducerwitness.md) | 138 | `declaration-track:5ea854fd462ef6c87797241f611b1c39b41fb598a68760b39582edb63a4fa011` |
| 14 | `structure` | [ReducerStep](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/reducerstep.md) | 157 | `declaration-track:d63ce624357930963536fb3c54423261dfa2dc4139fe1ca73312817442655213` |
| 15 | `structure` | [ReducerTrace](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/reducertrace.md) | 162 | `declaration-track:c48e8333db43c27ca38a3a3c2a9caa5e942543c6e5c24d61911aa9c312b16126` |
| 16 | `structure` | [CertifiedAnalyticMeshPipeline](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/certifiedanalyticmeshpipeline.md) | 167 | `declaration-track:389f18169a49351fde8f8242f44f596e9ff60e2f5f2a4a4898c34abee45b589c` |
| 17 | `def` | [MeshFaceProvesAnalyticTheorem](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/meshfaceprovesanalytictheorem.md) | 209 | `declaration-track:6baf3ceb18b4f040cdf5d4c97646714a7b8640f7a9d5386aa4ca1c7fddf563b5` |
| 18 | `def` | [BinaryMatrixOwnsAnalyticAuthority](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/binarymatrixownsanalyticauthority.md) | 210 | `declaration-track:d08fb75da8f0da25a360a5bc7609a03d83de150275f83e719aeab98fd937d130` |
| 19 | `def` | [ReducerCreatesTheoremAuthority](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/reducercreatestheoremauthority.md) | 211 | `declaration-track:8d31cad462cd7f93e6951a3e2466525e4d38ff0f4e0e3420ec400ecc522242a5` |
| 20 | `def` | [ProceduralDomProvesMathematics](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/proceduraldomprovesmathematics.md) | 212 | `declaration-track:e8169f04d74108e0c796247712ce3789fd6f0da91f22dc757e9d7c69336eac8b` |
| 21 | `def` | [EnergyReductionProvesAnalyticTruth](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/energyreductionprovesanalytictruth.md) | 213 | `declaration-track:8195feec0c0340ace4d64436a7d44e9575675078d54aaf14da51b5ec3d88f1da` |
| 22 | `def` | [MeshFaceConstructsHilbertSpaceObject](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/meshfaceconstructshilbertspaceobject.md) | 214 | `declaration-track:e3b736b039bdc6c24bbe598c0a5615755878f1270b58c38f31bf2550d97f8573` |
| 23 | `def` | [PrismaticFaceConstructsPrismaticCohomology](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/prismaticfaceconstructsprismaticcohomology.md) | 215 | `declaration-track:91ec046843024f24d617b5b60cc1f3271cb15556b08c37daf3739f5b6b1b1daa` |
| 24 | `def` | [TheoremNameHashOrLabelIsProof](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/theoremnamehashorlabelisproof.md) | 216 | `declaration-track:a35e9fc321c0bd9a22d93e2e927d5d2092522cfb82dd2edc7811ec60a0ff28cf` |
| 25 | `theorem` | [mesh_face_not_analytic_theorem](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/mesh-face-not-analytic-theorem.md) | 218 | `result-track:4fbaa3fb55639ce5cbef64bb371ad7833f10d1395c6e5e3d1eea5de849372613` |
| 26 | `theorem` | [binary_matrix_not_analytic_authority](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/binary-matrix-not-analytic-authority.md) | 224 | `result-track:9c108a0fb09e47c6364b6626771579ded46af5920c74f824fa64d39f0044cbad` |
| 27 | `theorem` | [reducer_not_theorem_authority](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/reducer-not-theorem-authority.md) | 230 | `result-track:1b7b51bbe7304ae93fc74105e0d4c91376e2303e852a31e6df2f4fc46cd84f1c` |
| 28 | `theorem` | [procedural_dom_not_mathematics_proof](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/procedural-dom-not-mathematics-proof.md) | 236 | `result-track:0a7cc94434653a29d93e31cf0684a6b2ffe5776c66665268290e26d6a3a9bc11` |
| 29 | `theorem` | [energy_reduction_not_analytic_truth](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/energy-reduction-not-analytic-truth.md) | 242 | `result-track:3d2359fe5b67916c019eb74cdaa16ba1a3d0859bceb1c568590e6403dc64a891` |
| 30 | `theorem` | [mesh_face_not_hilbert_object](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/mesh-face-not-hilbert-object.md) | 248 | `result-track:28fdd91390845aeff8a54652b389d45e95f56abc9611deda077c8075c18905fc` |
| 31 | `theorem` | [prismatic_face_not_prismatic_cohomology](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/prismatic-face-not-prismatic-cohomology.md) | 254 | `result-track:af4c9c1f38216e0a4a2b6bd07ff687056af1c095f901b901b141046328fbe86a` |
| 32 | `theorem` | [theorem_name_hash_or_label_not_proof](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/theorem-name-hash-or-label-not-proof.md) | 260 | `result-track:55d20c6b43bc0ff10e1e73a524c3f5841368d78e7b16c17728960115626d227e` |
| 33 | `theorem` | [reducer_step_witness_sound](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/reducer-step-witness-sound.md) | 267 | `result-track:2e72ac1bdc997407eb5409fa683fe00965e397148270095b10b4cab5972029d3` |
| 34 | `theorem` | [certified_reducible_analytic_mesh_pipeline](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/certified-reducible-analytic-mesh-pipeline.md) | 285 | `result-track:1380744de0798a48a157c834c086f00d77f1e5cedcc8087041043e98dd081bbe` |
| 35 | `theorem` | [analytic_mesh_pipeline_boundary_summary](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition1.lean/declarations/analytic-mesh-pipeline-boundary-summary.md) | 322 | `result-track:8e1c076defd6b607a0be4932fc7bc4feb0b6a43c7385fffd8b0e9dd0c31adf3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4aedb184a6035b2b45d452016d31c179ced3150717c9346ea0c70a0585b8d88a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant617508b9a5fdec366bda86c6bb5a7b3618bd88983883c4034f4d3f390080193b.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant617508b9a5fdec366bda86c6bb5a7b3618bd88983883c4034f4d3f390080193b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
