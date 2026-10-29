# Verification target: Analytic Mesh Pipeline Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e93bd274c60de74a957e4208af12e76cd4be97eb",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant693d7ac39274969bf269b9aa88223ded9e478be327ab42f17a4ff22683d2acbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e93bd274c60de74a957e4208af12e76cd4be97eb`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant693d7ac39274969bf269b9aa88223ded9e478be327ab42f17a4ff22683d2acbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant693d7ac39274969bf269b9aa88223ded9e478be327ab42f17a4ff22683d2acbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.HilbertMeshShadow` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.TheoremResolution` — import line 7; external provider; requires a separately pinned dependency.
- `AnalyticNumber.BoundaryCalculus` — import line 8; external provider; requires a separately pinned dependency.
- `Presentation.Binary` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticSourceNode](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/analyticsourcenode.md) | 27 | `declaration-track:767d97e2cf8c290aa9eb00ba27762b608c5cf4adb05aff9e8f9cf0c560c998bf` |
| 2 | `structure` | [AnalyticSourceTree](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/analyticsourcetree.md) | 35 | `declaration-track:9a314be8f00544d5cc4aa1ff7c0d41a1b7dc647a7b880752176d02118f8a9983` |
| 3 | `inductive` | [MeshFaceKind](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/meshfacekind.md) | 41 | `declaration-track:0451b15c81ee64d6c3a8f7010b3c4c69783d29edcdf76aa2bb76d2c5325d6dfd` |
| 4 | `structure` | [TheoremFaceSource](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/theoremfacesource.md) | 58 | `declaration-track:2efbf194942a0cb463c03d1c4389799fcbd0709acfab28ac6cd8e6bca7156159` |
| 5 | `structure` | [BinaryMeshSchema](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/binarymeshschema.md) | 68 | `declaration-track:5cfd16cd302df8de9915e09cb0201f608e0dad13ccfb9d3bf5c3012bdd20d111` |
| 6 | `structure` | [BinaryMeshMatrix](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/binarymeshmatrix.md) | 75 | `declaration-track:c9fb14fcc7cd76cacd70814d4584daba1e99b89d76219b64ee447fc0fb893e3c` |
| 7 | `structure` | [MeshFace](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/meshface.md) | 82 | `declaration-track:683ab6ddee31e20828c35cc17ba3782f83ad323db2d616a9b565d7a9e9bf96d2` |
| 8 | `structure` | [AnalyticMesh](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/analyticmesh.md) | 94 | `declaration-track:5f63132ee1b315e59bf97a98c4cd7a55a688066031f6b2d9baa5afa391f55e39` |
| 9 | `structure` | [DomNodeDescriptor](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/domnodedescriptor.md) | 101 | `declaration-track:b901668bba0becf808e87be184d1c686ccb1578d2cb1c77cc3bd0ed7bc69543e` |
| 10 | `structure` | [ProceduralDomPresentation](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/proceduraldompresentation.md) | 110 | `declaration-track:194573fe5677b5bff1d5f7f638a7cc7f13655a066f0b47b5da558b3f81662004` |
| 11 | `inductive` | [ReducerOperatorKind](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/reduceroperatorkind.md) | 116 | `declaration-track:6990dee67c6f1b4fce45a27893639ad01600c3545c45cdf91ecd689cd6e5e8f7` |
| 12 | `structure` | [ReducerOperator](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/reduceroperator.md) | 130 | `declaration-track:de1ac7e26d1de5a2e10d9c5229352f072b0feeb1ee41f6e566830394335a97b1` |
| 13 | `structure` | [ReducerWitness](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/reducerwitness.md) | 139 | `declaration-track:37f2dbb060580c83fccd1c9a1b590a310978631d20fcf6204792c7e52eab90d1` |
| 14 | `structure` | [ReducerStep](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/reducerstep.md) | 158 | `declaration-track:6224aba586996ac9d752f44f29e4180bc9c9f76a07393077b2292a9eaa054e9a` |
| 15 | `structure` | [ReducerTrace](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/reducertrace.md) | 163 | `declaration-track:0287a9dcc1ee0c65301ec6624b40b400d78669d65b9a2f46d62253ea9dabfefc` |
| 16 | `structure` | [CertifiedAnalyticMeshPipeline](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/certifiedanalyticmeshpipeline.md) | 168 | `declaration-track:32c1c2b309d3c3fe73e4fd4a943493e7a67cee50a8e20bd617fa95a52b3e9b84` |
| 17 | `def` | [MeshFaceProvesAnalyticTheorem](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/meshfaceprovesanalytictheorem.md) | 210 | `declaration-track:15e16e8382995bb0d8c0257c39c67b5763748976c402ea37b9f0e928278ea822` |
| 18 | `def` | [BinaryMatrixOwnsAnalyticAuthority](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/binarymatrixownsanalyticauthority.md) | 211 | `declaration-track:647ea26ac7e478069736ba13c499e9565075067bf183c2d4738938a3b36f3b03` |
| 19 | `def` | [ReducerCreatesTheoremAuthority](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/reducercreatestheoremauthority.md) | 212 | `declaration-track:57a8f063f5b218097afe9cb327255018723502287e7c91a445b62c09f5c3bd7f` |
| 20 | `def` | [ProceduralDomProvesMathematics](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/proceduraldomprovesmathematics.md) | 213 | `declaration-track:4a851b933c3b6f28464b1ff34cd410da89e60e98897612b89708af0309c33b25` |
| 21 | `def` | [EnergyReductionProvesAnalyticTruth](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/energyreductionprovesanalytictruth.md) | 214 | `declaration-track:f65bedc4767a8f727ee722bfa9accd59b30908fa5405e3cc20fd968c74aba09b` |
| 22 | `def` | [MeshFaceConstructsHilbertSpaceObject](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/meshfaceconstructshilbertspaceobject.md) | 215 | `declaration-track:84620d14e57887ec2e913278e29cf86e68fb9fdba0c322027bea8b76d3bbd25d` |
| 23 | `def` | [PrismaticFaceConstructsPrismaticCohomology](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/prismaticfaceconstructsprismaticcohomology.md) | 216 | `declaration-track:ef18737091f55ad101c9383ac90b5bbaa5d19f6066150834167ab273e2800882` |
| 24 | `def` | [TheoremNameHashOrLabelIsProof](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/theoremnamehashorlabelisproof.md) | 217 | `declaration-track:f22db9859f60268f60d816ea14e95421990aaef998dd2adfda1e0f0b0eaef408` |
| 25 | `theorem` | [mesh_face_not_analytic_theorem](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/mesh-face-not-analytic-theorem.md) | 219 | `result-track:5da3b97ccc6fa2c935756e65414eb5c22d19fe08f60ab41df077dc77ddd98ba0` |
| 26 | `theorem` | [binary_matrix_not_analytic_authority](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/binary-matrix-not-analytic-authority.md) | 225 | `result-track:6a97b7be6729705522897bdbc9162f24450e4c0384e3419e1493405e67067c58` |
| 27 | `theorem` | [reducer_not_theorem_authority](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/reducer-not-theorem-authority.md) | 231 | `result-track:0544203a4f5faa24ae2e287087d2a8a7575b963622eef0486e69b3839a9f6c03` |
| 28 | `theorem` | [procedural_dom_not_mathematics_proof](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/procedural-dom-not-mathematics-proof.md) | 237 | `result-track:2831541b7eba9592d9d599a2962b27d0e4034b89c90bce7b6043f891f24ae06d` |
| 29 | `theorem` | [energy_reduction_not_analytic_truth](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/energy-reduction-not-analytic-truth.md) | 243 | `result-track:6eb53c888747c718c7584ec2a499fd9aadbaf406f5542750b8554b4f2d6b97c0` |
| 30 | `theorem` | [mesh_face_not_hilbert_object](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/mesh-face-not-hilbert-object.md) | 249 | `result-track:96db4fddbb08b1d6dee12818091d485ebb8fe7dc930a1551b68a24f401cd6e01` |
| 31 | `theorem` | [prismatic_face_not_prismatic_cohomology](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/prismatic-face-not-prismatic-cohomology.md) | 255 | `result-track:8d66ab38a9b9e4070753ffbf3c26047806c1345699cfd638263d1828071776bd` |
| 32 | `theorem` | [theorem_name_hash_or_label_not_proof](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/theorem-name-hash-or-label-not-proof.md) | 261 | `result-track:0760954794c771dac464351708fa261b65291fdb5c64f43188e73c387e03bdf5` |
| 33 | `theorem` | [reducer_step_witness_sound](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/reducer-step-witness-sound.md) | 268 | `result-track:872901334714a1b9c9f1552a76b5413567832deb73eafba5024905668169a3e8` |
| 34 | `theorem` | [certified_reducible_analytic_mesh_pipeline](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/certified-reducible-analytic-mesh-pipeline.md) | 286 | `result-track:46426732de92a70526ac368068fa44016cc91c58999dd8807915f37ae9cfcb83` |
| 35 | `theorem` | [analytic_mesh_pipeline_boundary_summary](../../../../FunctionalAnalysis/AnalyticMeshPipelineNamespacedEdition2.lean/declarations/analytic-mesh-pipeline-boundary-summary.md) | 323 | `result-track:8652ac16aa79a03a920b60c78a62b35c191229c8726f2e1543bf560c25f36ca0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=decec9af87852d713af80b6664bee24a7f6c3497ac8600a00eebb3160502e7bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant693d7ac39274969bf269b9aa88223ded9e478be327ab42f17a4ff22683d2acbb.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant693d7ac39274969bf269b9aa88223ded9e478be327ab42f17a4ff22683d2acbb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
