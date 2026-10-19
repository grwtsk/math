import DAF.Manifest

/-!
# Simplicial fabric manifests

Fabric manifests are operational metadata.  Cell identifiers, module names,
versions, fingerprints, and certificate names can be checked structurally, but
none of them is theorem authority.  In particular, a certificate name in a
manifest has no API that produces a Lean proof, and a presentation manifest is
not itself a proof certificate.

DOM, Rust, worker, and Kubernetes hosts remain external refinement targets.
-/

namespace DAF.Fabric

/-- Metadata for one hosted fabric cell. -/
structure CellManifest where
  id : Lean.Name
  dimension : Nat
  faceIds : List Lean.Name
  presentationModule : Lean.Name
  presentationVersion : DAF.Version
  modelFingerprint : DAF.Fingerprint
  implementationArtifact : Option DAF.Fingerprint
  certificateNames : List Lean.Name

/-- Metadata for a complete fabric deployment description. -/
structure FabricManifest where
  formatVersion : Nat
  fabricId : Lean.Name
  cells : List CellManifest

namespace FabricManifest

/-- Cell identifiers are structurally unique. -/
def UniqueCellIds (M : FabricManifest) : Prop :=
  (M.cells.map CellManifest.id).Nodup

/-- Every named face refers to a cell present in the same manifest. -/
def ValidFaceReferences (M : FabricManifest) : Prop :=
  ∀ (cell : CellManifest), cell ∈ M.cells →
    ∀ (faceId : Lean.Name), faceId ∈ cell.faceIds →
      ∃ target ∈ M.cells, target.id = faceId

/-- The structural checks supported by the pure manifest model. -/
def StructurallyValid (M : FabricManifest) : Prop :=
  M.UniqueCellIds ∧ M.ValidFaceReferences

theorem uniqueCellIds_of_structurallyValid
    {M : FabricManifest}
    (h : M.StructurallyValid) :
    M.UniqueCellIds :=
  h.1

theorem validFaceReferences_of_structurallyValid
    {M : FabricManifest}
    (h : M.StructurallyValid) :
    M.ValidFaceReferences :=
  h.2

end FabricManifest

end DAF.Fabric
