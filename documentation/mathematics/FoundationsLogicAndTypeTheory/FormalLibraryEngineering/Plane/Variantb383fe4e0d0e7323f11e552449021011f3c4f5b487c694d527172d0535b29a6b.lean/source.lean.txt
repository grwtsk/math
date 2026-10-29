-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalPlane.Variant79c31fb8c29224ae9411735945f03160993678db83ccb7a0137eacb49af793c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79c31fb8c29224ae9411735945f03160993678db83ccb7a0137eacb49af793c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FormalPlane.Variant79c31fb8c29224ae9411735945f03160993678db83ccb7a0137eacb49af793c1","mathematical_subject":"Foundations.Unclassified","original_sha256":"79c31fb8c29224ae9411735945f03160993678db83ccb7a0137eacb49af793c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/contracts/ContractElements/Plane.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ContractElements.Authority
import ContractElements.BitSquare

/-! # Proof-indexed formal planes and nonauthoritative operational planes. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalPlane.Variant79c31fb8c29224ae9411735945f03160993678db83ccb7a0137eacb49af793c1

namespace URSM.Contracts

structure FormalPlane
    (n : Nat)
    (Meaning : Fin n → Fin n → Prop) where
  descriptor : PlaneDescriptor
  square : ResolvedSquare n
  positive :
    ∀ i j, square.read? i j = some true → Meaning i j
  negative :
    ∀ i j, square.read? i j = some false → ¬ Meaning i j
  certificateRoot : String

structure OperationalPlane (n : Nat) where
  descriptor : PlaneDescriptor
  square : ResolvedSquare n
  evidenceRoot : String
  epoch : Nat

/--
The canonical formalization of an exact Boolean relation.  Its proposition is
the relation itself, not a theorem inferred from runtime bytes.
-/
def FormalPlane.ofBits
    (descriptor : PlaneDescriptor)
    (bits : BitSquare n)
    (certificateRoot : String) :
    FormalPlane n (fun i j ↦ bits i j = true) where
  descriptor := descriptor
  square := ResolvedSquare.fullyResolved bits
  positive := by
    intro i j observed
    simpa using observed
  negative := by
    intro i j observed
    have isFalse : bits i j = false := by
      simpa using observed
    simp [isFalse]
  certificateRoot := certificateRoot

end URSM.Contracts
