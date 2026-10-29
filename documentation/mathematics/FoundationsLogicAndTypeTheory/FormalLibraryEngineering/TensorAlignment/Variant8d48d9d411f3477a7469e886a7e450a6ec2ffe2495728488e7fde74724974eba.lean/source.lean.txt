-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorAlignedUnifiedCandidate.Variant06316cf5c99ad2c928ef31b4bc22114876c2d677bed9701439cc368c134452c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06316cf5c99ad2c928ef31b4bc22114876c2d677bed9701439cc368c134452c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.TensorAlignedUnifiedCandidate.Variant06316cf5c99ad2c928ef31b4bc22114876c2d677bed9701439cc368c134452c0","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"06316cf5c99ad2c928ef31b4bc22114876c2d677bed9701439cc368c134452c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/TensorAlignment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.Unified
import Mathematics.TensorNetwork.All

/-!
# Abel--Reynolds tensor-alignment integration

Tensor alignment refines a proof-bearing unified candidate.  Missing tensor
evidence cannot manufacture a unified domain candidate.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorAlignedUnifiedCandidate.Variant06316cf5c99ad2c928ef31b4bc22114876c2d677bed9701439cc368c134452c0

namespace Mathematics.AbelReynolds

open Mathematics.TensorNetwork

universe u

structure TensorAlignedUnifiedCandidate
    (cut : UnifiedCutBinding)
    (Context : Type u)
    (N D : Nat) where
  base : UnifiedCandidate cut
  alignment : TensorAlignmentCandidate Context N D
  alignmentCertificate :
    CertifiedTensorAlignment alignment

/-- The wrapper preserves the complete Abel--Reynolds proof-bearing payload. -/
theorem TensorAlignedUnifiedCandidate.base_sound
    {cut : UnifiedCutBinding}
    (candidate :
      TensorAlignedUnifiedCandidate cut Context N D) :
    CertifiedSymmetryFixedTallyLiftedSEAReuse
      cut candidate.base.payload :=
  candidate.base.certificate

/-- The tensor candidate cannot bypass its branch-specific certificate. -/
theorem TensorAlignedUnifiedCandidate.alignment_sound
    {cut : UnifiedCutBinding}
    (candidate :
      TensorAlignedUnifiedCandidate cut Context N D) :
    CertifiedTensorAlignment candidate.alignment :=
  candidate.alignmentCertificate

end Mathematics.AbelReynolds
