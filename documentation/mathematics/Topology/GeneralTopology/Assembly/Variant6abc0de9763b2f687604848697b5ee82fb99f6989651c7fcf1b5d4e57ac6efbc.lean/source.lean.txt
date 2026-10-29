-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.VertexCompatibleS2HierarchyResult.Variant2374a65c2a5138a3d209b190cbb2b11d4d2d6b3b56bbdfe5d70d918735fb683b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2374a65c2a5138a3d209b190cbb2b11d4d2d6b3b56bbdfe5d70d918735fb683b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.VertexCompatibleS2HierarchyResult.Variant2374a65c2a5138a3d209b190cbb2b11d4d2d6b3b56bbdfe5d70d918735fb683b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"2374a65c2a5138a3d209b190cbb2b11d4d2d6b3b56bbdfe5d70d918735fb683b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/Assembly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Registry


namespace GRWTSK.Topology.GeneralTopology.VertexCompatibleS2HierarchyResult.Variant2374a65c2a5138a3d209b190cbb2b11d4d2d6b3b56bbdfe5d70d918735fb683b

universe uObj uHom vObj vHom uData

namespace FCRS.ControlledSpherical

open FCRS
open FCRS.ControlledPlane

/--
Construct the witness-bearing hierarchy from one coherent spherical package
and one explicit decoder.  The package is research evidence; only the
controlled-product consequences are derived here.
-/
def assembleControlledSphericalHierarchy
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (SM : ControlledSphericalModel S M)
    (planeRegistry : ControlledPlaneResearchRegistry S M)
    (planeResult : ControlledPlaneCompleteness S M)
    (sphericalWitnesses : ControlledSphericalWitnessPackage S M SM)
    (D : LosslessDecoder M.observation)
    (hSignature :
      ControlledSignaturePreservation
        SM.provenanceSignature M.observation SM.observedSignature) :
    ControlledSphericalHierarchyResult S M SM := by
  have hHom :
      OperationHomomorphic
        M.sourceOperation M.observedOperation M.observation := by
    rw [← SM.sourceOperationAgrees, ← SM.observedOperationAgrees]
    exact hSignature.designatedBinaryOperationPreserved
  exact {
    planeResearchBoundary := planeRegistry
    planeCompleteness := planeResult
    sphericalWitnesses := sphericalWitnesses
    sphere1Compact := sphericalWitnesses.sphere1Compact
    selectedCarrierCompact := sphericalWitnesses.selectedCarrierCompact
    controlledDecoder := D
    controlledInjective := controlledProduct_injective D
    kernelDiagonal := controlledProduct_kernel_diagonal D
    imageReconstruction := imageDecoder_leftInverse D
    operationReconstruction := by
      intro x y
      exact controlledSpherical_decode_operation
        M.sourceOperation M.observedOperation D hHom x y
    signatureReconstruction :=
      controlledSignatureIso_of_decoder
        SM.provenanceSignature SM.observedSignature D hSignature
  }

/--
Public data-valued scoped assembly.  Its spherical research inputs arrive as
one package so branch, vertex, coherence, and compactness witnesses cannot
drift apart.  The decoder stays explicit because proposition elimination
cannot construct this data-valued result.
-/
def controlled_spherical_scoped_hierarchy
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (SM : ControlledSphericalModel S M)
    (planeRegistry : ControlledPlaneResearchRegistry S M)
    (planeResult : ControlledPlaneCompleteness S M)
    (sphericalWitnesses : ControlledSphericalWitnessPackage S M SM)
    (D : LosslessDecoder M.observation)
    (hSignature :
      ControlledSignaturePreservation
        SM.provenanceSignature M.observation SM.observedSignature) :
    ControlledSphericalHierarchyResult S M SM :=
  assembleControlledSphericalHierarchy
    S M SM planeRegistry planeResult sphericalWitnesses D hSignature

/--
The stronger `S²` result retains the exact selected injection, point-placement
map, and vertex-coordinate compatibility equation.  It adds no edge or
topological boundary condition.
-/
structure VertexCompatibleS2HierarchyResult
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (SM : ControlledSphericalModel S M) where
  hierarchy : ControlledSphericalHierarchyResult S M SM
  s2Realization : InjectiveS2Realization SM.realization SM.sphere2
  choiceMatches :
    hierarchy.sphericalWitnesses.selectedRealization =
      .sphere2 s2Realization
  sphere1ToSphere2 :
    InjectiveS1ToS2Placement SM.sphere1 SM.sphere2
  vertexCompatible :
    VertexCompatibleS2Realization
      SM.realization SM.sphere1 SM.sphere2
      hierarchy.sphericalWitnesses.vertexPlacement sphere1ToSphere2
      s2Realization

/--
Assemble the stronger vertex-compatible `S²` branch from the same package
used by the hierarchy.  Exact choice equality is an explicit premise.
-/
def controlled_spherical_vertex_compatible_s2_hierarchy
    (S : RealizationSystem.{uObj, uHom})
    (M : ControlledPlaneModel.{uObj, uHom, vObj, vHom, uData} S)
    (SM : ControlledSphericalModel S M)
    (planeRegistry : ControlledPlaneResearchRegistry S M)
    (planeResult : ControlledPlaneCompleteness S M)
    (sphericalWitnesses : ControlledSphericalWitnessPackage S M SM)
    (E : InjectiveS2Realization SM.realization SM.sphere2)
    (hChoice : sphericalWitnesses.selectedRealization = .sphere2 E)
    (B : InjectiveS1ToS2Placement SM.sphere1 SM.sphere2)
    (hVertex :
      VertexCompatibleS2Realization
        SM.realization SM.sphere1 SM.sphere2
        sphericalWitnesses.vertexPlacement B E)
    (D : LosslessDecoder M.observation)
    (hSignature :
      ControlledSignaturePreservation
        SM.provenanceSignature M.observation SM.observedSignature) :
    VertexCompatibleS2HierarchyResult S M SM := by
  let hierarchy :=
    controlled_spherical_scoped_hierarchy
      S M SM planeRegistry planeResult sphericalWitnesses D hSignature
  exact {
    hierarchy := hierarchy
    s2Realization := E
    choiceMatches := hChoice
    sphere1ToSphere2 := B
    vertexCompatible := hVertex
  }

end FCRS.ControlledSpherical
